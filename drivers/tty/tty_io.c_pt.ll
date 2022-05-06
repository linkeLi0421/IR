; ModuleID = '/llk/IR/drivers/tty/tty_io.c_pt.bc'
source_filename = "../drivers/tty/tty_io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_std_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_std_termios\22\09\09\09\09\09"
module asm "__kstrtabns_tty_std_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_name:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_name\22\09\09\09\09\09"
module asm "__kstrtabns_tty_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_dev_name_to_number:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_dev_name_to_number\22\09\09\09\09\09"
module asm "__kstrtabns_tty_dev_name_to_number:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_tty_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_hangup:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_hangup\22\09\09\09\09\09"
module asm "__kstrtabns_tty_hangup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_vhangup:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_vhangup\22\09\09\09\09\09"
module asm "__kstrtabns_tty_vhangup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_hung_up_p:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_hung_up_p\22\09\09\09\09\09"
module asm "__kstrtabns_tty_hung_up_p:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stop_tty:\09\09\09\09\09"
module asm "\09.asciz \09\22stop_tty\22\09\09\09\09\09"
module asm "__kstrtabns_stop_tty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_start_tty:\09\09\09\09\09"
module asm "\09.asciz \09\22start_tty\22\09\09\09\09\09"
module asm "__kstrtabns_start_tty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_init_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_init_termios\22\09\09\09\09\09"
module asm "__kstrtabns_tty_init_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_standard_install:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_standard_install\22\09\09\09\09\09"
module asm "__kstrtabns_tty_standard_install:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_save_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_save_termios\22\09\09\09\09\09"
module asm "__kstrtabns_tty_save_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_kref_put:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_kref_put\22\09\09\09\09\09"
module asm "__kstrtabns_tty_kref_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_kclose:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_kclose\22\09\09\09\09\09"
module asm "__kstrtabns_tty_kclose:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_release_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_release_struct\22\09\09\09\09\09"
module asm "__kstrtabns_tty_release_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_kopen_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_kopen_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_tty_kopen_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_kopen_shared:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_kopen_shared\22\09\09\09\09\09"
module asm "__kstrtabns_tty_kopen_shared:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_do_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_do_resize\22\09\09\09\09\09"
module asm "__kstrtabns_tty_do_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_get_icount:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_get_icount\22\09\09\09\09\09"
module asm "__kstrtabns_tty_get_icount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_SAK:\09\09\09\09\09"
module asm "\09.asciz \09\22do_SAK\22\09\09\09\09\09"
module asm "__kstrtabns_do_SAK:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_put_char:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_put_char\22\09\09\09\09\09"
module asm "__kstrtabns_tty_put_char:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_tty_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_register_device_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_register_device_attr\22\09\09\09\09\09"
module asm "__kstrtabns_tty_register_device_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_tty_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tty_alloc_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__tty_alloc_driver\22\09\09\09\09\09"
module asm "__kstrtabns___tty_alloc_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_driver_kref_put:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_driver_kref_put\22\09\09\09\09\09"
module asm "__kstrtabns_tty_driver_kref_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_tty_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_tty_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_devnum:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_devnum\22\09\09\09\09\09"
module asm "__kstrtabns_tty_devnum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.lock_class_key = type {}
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.tty_file_private = type { ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.43, %struct.anon.44, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.43 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.44 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.64 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.66 = type { ptr }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.19, %union.anon.20 }
%union.anon.19 = type { ptr }
%union.anon.20 = type { i64 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.42, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.42 = type { ptr }
%struct.llist_head = type { ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@tty_std_termios = dso_local global %struct.ktermios { i32 1280, i32 5, i32 1215, i32 35387, i8 0, [19 x i8] c"\03\1C\7F\15\04\00\01\00\11\13\1A\00\12\0F\17\16\00\00\00", i32 38400, i32 38400 }, align 4
@__kstrtab_tty_std_termios = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_std_termios = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_std_termios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_std_termios to i32), ptr @__kstrtab_tty_std_termios, ptr @__kstrtabns_tty_std_termios }, section "___ksymtab+tty_std_termios", align 4
@tty_drivers = dso_local global %struct.list_head { ptr @tty_drivers, ptr @tty_drivers }, align 4
@tty_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tty_mutex, i64 12), ptr getelementptr (i8, ptr @tty_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [9 x i8] c"NULL tty\00", align 1
@__kstrtab_tty_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_name = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_name to i32), ptr @__kstrtab_tty_name, ptr @__kstrtabns_tty_name }, section "___ksymtab+tty_name", align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab_tty_dev_name_to_number = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_dev_name_to_number = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_dev_name_to_number = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_dev_name_to_number to i32), ptr @__kstrtab_tty_dev_name_to_number, ptr @__kstrtabns_tty_dev_name_to_number }, section "___ksymtab_gpl+tty_dev_name_to_number", align 4
@__kstrtab_tty_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_wakeup to i32), ptr @__kstrtab_tty_wakeup, ptr @__kstrtabns_tty_wakeup }, section "___ksymtab_gpl+tty_wakeup", align 4
@__kstrtab_tty_hangup = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_hangup = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_hangup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_hangup to i32), ptr @__kstrtab_tty_hangup, ptr @__kstrtabns_tty_hangup }, section "___ksymtab+tty_hangup", align 4
@__kstrtab_tty_vhangup = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_vhangup = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_vhangup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_vhangup to i32), ptr @__kstrtab_tty_vhangup, ptr @__kstrtabns_tty_vhangup }, section "___ksymtab+tty_vhangup", align 4
@hung_up_tty_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr @hung_up_tty_read, ptr @hung_up_tty_write, ptr null, ptr null, ptr null, ptr @hung_up_tty_poll, ptr @hung_up_tty_ioctl, ptr @hung_up_tty_compat_ioctl, ptr null, i32 0, ptr null, ptr null, ptr @tty_release, ptr null, ptr @hung_up_tty_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_tty_hung_up_p = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_hung_up_p = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_hung_up_p = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_hung_up_p to i32), ptr @__kstrtab_tty_hung_up_p, ptr @__kstrtabns_tty_hung_up_p }, section "___ksymtab+tty_hung_up_p", align 4
@__kstrtab_stop_tty = external dso_local constant [0 x i8], align 1
@__kstrtabns_stop_tty = external dso_local constant [0 x i8], align 1
@__ksymtab_stop_tty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stop_tty to i32), ptr @__kstrtab_stop_tty, ptr @__kstrtabns_stop_tty }, section "___ksymtab+stop_tty", align 4
@__kstrtab_start_tty = external dso_local constant [0 x i8], align 1
@__kstrtabns_start_tty = external dso_local constant [0 x i8], align 1
@__ksymtab_start_tty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @start_tty to i32), ptr @__kstrtab_start_tty, ptr @__kstrtabns_start_tty }, section "___ksymtab+start_tty", align 4
@redirect_lock = internal global %struct.spinlock zeroinitializer, align 4
@redirect = internal unnamed_addr global ptr null, align 4
@__kstrtab_tty_init_termios = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_init_termios = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_init_termios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_init_termios to i32), ptr @__kstrtab_tty_init_termios, ptr @__kstrtabns_tty_init_termios }, section "___ksymtab_gpl+tty_init_termios", align 4
@__kstrtab_tty_standard_install = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_standard_install = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_standard_install = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_standard_install to i32), ptr @__kstrtab_tty_standard_install, ptr @__kstrtabns_tty_standard_install }, section "___ksymtab_gpl+tty_standard_install", align 4
@tty_init_dev._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.tty_init_dev = private unnamed_addr constant [13 x i8] c"tty_init_dev\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"drivers/tty/tty_io.c\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"%s: %s driver does not set tty->port. This would crash the kernel. Fix the driver!\0A\00", align 1
@tty_init_dev._rs.4 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"\016%s %s: ldisc open failed (%d), clearing slot %d\0A\00", align 1
@__kstrtab_tty_save_termios = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_save_termios = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_save_termios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_save_termios to i32), ptr @__kstrtab_tty_save_termios, ptr @__kstrtabns_tty_save_termios }, section "___ksymtab_gpl+tty_save_termios", align 4
@__kstrtab_tty_kref_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_kref_put = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_kref_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_kref_put to i32), ptr @__kstrtab_tty_kref_put, ptr @__kstrtabns_tty_kref_put }, section "___ksymtab+tty_kref_put", align 4
@__kstrtab_tty_kclose = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_kclose = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_kclose = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_kclose to i32), ptr @__kstrtab_tty_kclose, ptr @__kstrtabns_tty_kclose }, section "___ksymtab_gpl+tty_kclose", align 4
@__kstrtab_tty_release_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_release_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_release_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_release_struct to i32), ptr @__kstrtab_tty_release_struct, ptr @__kstrtabns_tty_release_struct }, section "___ksymtab_gpl+tty_release_struct", align 4
@__func__.tty_release = private unnamed_addr constant [12 x i8] c"tty_release\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\014%s %s: read/write wait queue active!\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\014%s %s: bad slave count (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\014%s %s: bad tty->count (%d)\0A\00", align 1
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@__kstrtab_tty_kopen_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_kopen_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_kopen_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_kopen_exclusive to i32), ptr @__kstrtab_tty_kopen_exclusive, ptr @__kstrtabns_tty_kopen_exclusive }, section "___ksymtab_gpl+tty_kopen_exclusive", align 4
@__kstrtab_tty_kopen_shared = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_kopen_shared = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_kopen_shared = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_kopen_shared to i32), ptr @__kstrtab_tty_kopen_shared, ptr @__kstrtabns_tty_kopen_shared }, section "___ksymtab_gpl+tty_kopen_shared", align 4
@__kstrtab_tty_do_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_do_resize = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_do_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_do_resize to i32), ptr @__kstrtab_tty_do_resize, ptr @__kstrtabns_tty_do_resize }, section "___ksymtab+tty_do_resize", align 4
@__kstrtab_tty_get_icount = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_get_icount = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_get_icount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_get_icount to i32), ptr @__kstrtab_tty_get_icount, ptr @__kstrtabns_tty_get_icount }, section "___ksymtab_gpl+tty_get_icount", align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"tty_ioctl\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"\015%s %s: SAK: killed process %d (%s): by session\0A\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@.str.11 = private unnamed_addr constant [58 x i8] c"\015%s %s: SAK: killed process %d (%s): by controlling tty\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"\015%s %s: SAK: killed process %d (%s): by fd#%d\0A\00", align 1
@__kstrtab_do_SAK = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_SAK = external dso_local constant [0 x i8], align 1
@__ksymtab_do_SAK = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_SAK to i32), ptr @__kstrtab_do_SAK, ptr @__kstrtabns_do_SAK }, section "___ksymtab+do_SAK", align 4
@alloc_tty_struct.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"&tty->legacy_mutex\00", align 1
@alloc_tty_struct.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"&tty->throttle_mutex\00", align 1
@alloc_tty_struct.__key.16 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"&tty->termios_rwsem\00", align 1
@alloc_tty_struct.__key.18 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"&tty->winsize_mutex\00", align 1
@alloc_tty_struct.__key.20 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"&tty->ldisc_sem\00", align 1
@alloc_tty_struct.__key.22 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"&tty->write_wait\00", align 1
@alloc_tty_struct.__key.24 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"&tty->read_wait\00", align 1
@alloc_tty_struct.__key.26 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"&tty->atomic_write_lock\00", align 1
@__kstrtab_tty_put_char = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_put_char = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_put_char = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_put_char to i32), ptr @__kstrtab_tty_put_char, ptr @__kstrtabns_tty_put_char }, section "___ksymtab_gpl+tty_put_char", align 4
@__kstrtab_tty_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_register_device to i32), ptr @__kstrtab_tty_register_device, ptr @__kstrtabns_tty_register_device }, section "___ksymtab+tty_register_device", align 4
@.str.28 = private unnamed_addr constant [56 x i8] c"\013%s: Attempt to register invalid tty line number (%d)\0A\00", align 1
@tty_class = dso_local local_unnamed_addr global ptr null, align 4
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_tty_register_device_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_register_device_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_register_device_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_register_device_attr to i32), ptr @__kstrtab_tty_register_device_attr, ptr @__kstrtabns_tty_register_device_attr }, section "___ksymtab_gpl+tty_register_device_attr", align 4
@__kstrtab_tty_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_unregister_device to i32), ptr @__kstrtab_tty_unregister_device, ptr @__kstrtabns_tty_unregister_device }, section "___ksymtab+tty_unregister_device", align 4
@__kstrtab___tty_alloc_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___tty_alloc_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___tty_alloc_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tty_alloc_driver to i32), ptr @__kstrtab___tty_alloc_driver, ptr @__kstrtabns___tty_alloc_driver }, section "___ksymtab+__tty_alloc_driver", align 4
@__kstrtab_tty_driver_kref_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_driver_kref_put = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_driver_kref_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_driver_kref_put to i32), ptr @__kstrtab_tty_driver_kref_put, ptr @__kstrtabns_tty_driver_kref_put }, section "___ksymtab+tty_driver_kref_put", align 4
@__kstrtab_tty_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_register_driver to i32), ptr @__kstrtab_tty_register_driver, ptr @__kstrtabns_tty_register_driver }, section "___ksymtab+tty_register_driver", align 4
@__kstrtab_tty_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_unregister_driver to i32), ptr @__kstrtab_tty_unregister_driver, ptr @__kstrtabns_tty_unregister_driver }, section "___ksymtab+tty_unregister_driver", align 4
@__kstrtab_tty_devnum = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_devnum = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_devnum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_devnum to i32), ptr @__kstrtab_tty_devnum, ptr @__kstrtabns_tty_devnum }, section "___ksymtab+tty_devnum", align 4
@tty_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr @tty_read, ptr @tty_write, ptr null, ptr null, ptr null, ptr @tty_poll, ptr @tty_ioctl, ptr null, ptr null, i32 0, ptr @tty_open, ptr null, ptr @tty_release, ptr null, ptr @tty_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr @tty_show_fdinfo, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_tty_io__238_3525_tty_class_init2 = internal global ptr @tty_class_init, section ".initcall2.init", align 4
@consdev = internal unnamed_addr global ptr null, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@tty_cdev = internal global %struct.cdev zeroinitializer, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"Couldn't register /dev/tty driver\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@console_cdev = internal global %struct.cdev zeroinitializer, align 4
@console_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr @tty_read, ptr @redirected_tty_write, ptr null, ptr null, ptr null, ptr @tty_poll, ptr @tty_ioctl, ptr null, ptr null, i32 0, ptr @tty_open, ptr null, ptr @tty_release, ptr null, ptr @tty_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"Couldn't register /dev/console driver\0A\00", align 1
@cons_dev_groups = internal global [2 x ptr] [ptr @cons_dev_group, ptr null], align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = private unnamed_addr constant [11 x i8] c"tty_hangup\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"tty_write\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"\013%s %s: missing write_room method\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"\014(%d:%d): %s: NULL tty\0A\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"\014(%d:%d): %s: bad magic number\0A\00", align 1
@.str.44 = private unnamed_addr constant [59 x i8] c"\014%s %s: %s: tty->count(%d) != (#fd's(%d) + #kopen's(%d))\0A\00", align 1
@console_driver = external dso_local local_unnamed_addr global ptr, align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@.str.45 = private unnamed_addr constant [11 x i8] c"tty_fasync\00", align 1
@tty_set_serial._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.tty_set_serial = private unnamed_addr constant [15 x i8] c"tty_set_serial\00", align 1
@.str.46 = private unnamed_addr constant [68 x i8] c"\014%s: '%s' is using deprecated serial flags (with no effect): %.8x\0A\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"tty_read\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@pty_line_name.ptychar = internal unnamed_addr constant [17 x i8] c"pqrstuvwxyzabcde\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"%s%c%x\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"tty_poll\00", align 1
@__func__.tty_open = private unnamed_addr constant [9 x i8] c"tty_open\00", align 1
@tty_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@cons_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cons_dev_attrs, ptr null }, align 4
@cons_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_active, ptr null], align 4
@dev_attr_active = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @show_cons_active, ptr null }, align 4
@console_drivers = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [30 x ptr] [ptr @__initcall__kmod_tty_io__238_3525_tty_class_init2, ptr @__ksymtab___tty_alloc_driver, ptr @__ksymtab_do_SAK, ptr @__ksymtab_start_tty, ptr @__ksymtab_stop_tty, ptr @__ksymtab_tty_dev_name_to_number, ptr @__ksymtab_tty_devnum, ptr @__ksymtab_tty_do_resize, ptr @__ksymtab_tty_driver_kref_put, ptr @__ksymtab_tty_get_icount, ptr @__ksymtab_tty_hangup, ptr @__ksymtab_tty_hung_up_p, ptr @__ksymtab_tty_init_termios, ptr @__ksymtab_tty_kclose, ptr @__ksymtab_tty_kopen_exclusive, ptr @__ksymtab_tty_kopen_shared, ptr @__ksymtab_tty_kref_put, ptr @__ksymtab_tty_name, ptr @__ksymtab_tty_put_char, ptr @__ksymtab_tty_register_device, ptr @__ksymtab_tty_register_device_attr, ptr @__ksymtab_tty_register_driver, ptr @__ksymtab_tty_release_struct, ptr @__ksymtab_tty_save_termios, ptr @__ksymtab_tty_standard_install, ptr @__ksymtab_tty_std_termios, ptr @__ksymtab_tty_unregister_device, ptr @__ksymtab_tty_unregister_driver, ptr @__ksymtab_tty_vhangup, ptr @__ksymtab_tty_wakeup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_alloc_file(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 16) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %3, ptr %6, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_add_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tty_file_private, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %6) #21
  %7 = getelementptr inbounds %struct.tty_file_private, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  store ptr %9, ptr %7, align 4
  %11 = getelementptr inbounds %struct.tty_file_private, ptr %4, i32 0, i32 2, i32 1
  store ptr %8, ptr %11, align 4
  store volatile ptr %7, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %12 = load i16, ptr %6, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_free_file(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @tty_name(ptr noundef readnone %0) #3 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 15
  %4 = select i1 %2, ptr @.str, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @tty_driver_name(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3, %1
  %11 = phi ptr [ %9, %7 ], [ @.str.1, %3 ], [ @.str.1, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_dev_name_to_number(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !12
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %53, label %6

6:                                                ; preds = %12, %2
  %7 = phi i8 [ %14, %12 ], [ %4, %2 ]
  %8 = phi ptr [ %13, %12 ], [ %0, %2 ]
  %9 = zext i8 %7 to i32
  %10 = add nsw i32 %9, -58
  %11 = icmp ult i32 %10, -10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %8, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %53, label %6

16:                                               ; preds = %6
  %17 = call i32 @kstrtoint(ptr noundef %8, i32 noundef 10, ptr noundef nonnull %3) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = ptrtoint ptr %8 to i32
  %21 = ptrtoint ptr %0 to i32
  %22 = sub i32 %20, %21
  call void @mutex_lock(ptr noundef nonnull @tty_mutex) #21
  %23 = load ptr, ptr @tty_drivers, align 4
  %24 = icmp eq ptr %23, @tty_drivers
  br i1 %24, label %51, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %3, align 4
  br label %27

27:                                               ; preds = %48, %25
  %28 = phi ptr [ %23, %25 ], [ %49, %48 ]
  %29 = getelementptr i8, ptr %28, i32 -100
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @strlen(ptr noundef %30)
  %32 = icmp eq i32 %22, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = call i32 @strncmp(ptr noundef %0, ptr noundef %30, i32 noundef %22)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %28, i32 -84
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %26, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %28, i32 -92
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 20
  %44 = getelementptr i8, ptr %28, i32 -88
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %26
  %47 = or i32 %46, %43
  store i32 %47, ptr %1, align 4
  br label %51

48:                                               ; preds = %36, %33, %27
  %49 = load ptr, ptr %28, align 4
  %50 = icmp eq ptr %49, @tty_drivers
  br i1 %50, label %51, label %27

51:                                               ; preds = %48, %40, %19
  %52 = phi i32 [ 0, %40 ], [ -19, %19 ], [ -19, %48 ]
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  br label %53

53:                                               ; preds = %51, %16, %12, %2
  %54 = phi i32 [ %52, %51 ], [ %17, %16 ], [ -22, %2 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @tty_ldisc_ref(ptr noundef %0) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %10, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void %12(ptr noundef %0) #21
  br label %15

15:                                               ; preds = %14, %9
  tail call void @tty_ldisc_deref(ptr noundef nonnull %7) #21
  br label %16

16:                                               ; preds = %15, %6, %1
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_hangup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_vhangup(ptr noundef %0) #0 {
  tail call fastcc void @__tty_hangup(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__tty_hangup(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %128, label %4

4:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @redirect_lock) #21
  %5 = load ptr, ptr @redirect, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store ptr null, ptr @redirect, align 4
  br label %13

13:                                               ; preds = %12, %7, %4
  %14 = phi ptr [ %5, %12 ], [ null, %7 ], [ null, %4 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %15 = load i16, ptr @redirect_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @redirect_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  tail call void @tty_lock(ptr noundef nonnull %0) #21
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 262144
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void @tty_unlock(ptr noundef nonnull %0) #21
  br label %128

22:                                               ; preds = %13
  tail call void @_set_bit(i32 noundef 19, ptr noundef %17) #21
  tail call fastcc void @check_tty_count(ptr noundef nonnull %0, ptr noundef nonnull @.str.37)
  %23 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %23) #21
  %24 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 32
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %66, label %27

27:                                               ; preds = %62, %22
  %28 = phi ptr [ %64, %62 ], [ %25, %22 ]
  %29 = phi ptr [ %38, %62 ], [ null, %22 ]
  %30 = phi i32 [ %63, %62 ], [ 0, %22 ]
  %31 = getelementptr i8, ptr %28, i32 -4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, @redirected_tty_write
  %38 = select i1 %37, ptr %32, ptr %29
  %39 = icmp eq ptr %36, @tty_write
  br i1 %39, label %40, label %62

40:                                               ; preds = %27
  %41 = add i32 %30, 1
  %42 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 15
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %44, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, ptr %44, align 4
  %50 = icmp eq i32 %49, 21505
  br i1 %50, label %58, label %51

51:                                               ; preds = %48, %40
  %52 = phi ptr [ @.str.42, %40 ], [ @.str.43, %48 ]
  %53 = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 20
  %56 = and i32 %54, 1048575
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %52, i32 noundef %55, i32 noundef %56, ptr noundef nonnull @.str.45) #22
  br label %61

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.tty_struct, ptr %44, i32 0, i32 25
  %60 = tail call i32 @fasync_helper(i32 noundef -1, ptr noundef %32, i32 noundef 0, ptr noundef %59) #21
  br label %61

61:                                               ; preds = %58, %51
  store ptr @hung_up_tty_fops, ptr %33, align 4
  br label %62

62:                                               ; preds = %61, %27
  %63 = phi i32 [ %30, %27 ], [ %41, %61 ]
  %64 = load ptr, ptr %28, align 4
  %65 = icmp eq ptr %64, %24
  br i1 %65, label %66, label %27

66:                                               ; preds = %62, %22
  %67 = phi i32 [ 0, %22 ], [ %63, %62 ]
  %68 = phi ptr [ null, %22 ], [ %38, %62 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %69 = load i16, ptr %23, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %71 = tail call i32 @tty_signal_session_leader(ptr noundef nonnull %0, i32 noundef %1) #21
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 1
  %75 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28
  %76 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28, i32 1
  %77 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28, i32 1, i32 1
  %78 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28, i32 2
  br label %79

79:                                               ; preds = %91, %73
  %80 = phi i32 [ %71, %73 ], [ %81, %91 ]
  %81 = add i32 %80, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #21, !srcloc !14
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #21, !srcloc !15
  %83 = extractvalue { i32, i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = icmp sgt i32 %83, 0
  br i1 %86, label %91, label %87, !prof !16

87:                                               ; preds = %85
  tail call void @refcount_warn_saturate(ptr noundef %74, i32 noundef 3) #21
  br label %91

88:                                               ; preds = %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  store i32 -32, ptr %75, align 4
  store volatile ptr %76, ptr %76, align 4
  store ptr %76, ptr %77, align 4
  store ptr @release_one_tty, ptr %78, align 4
  %89 = load ptr, ptr @system_wq, align 4
  %90 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %89, ptr noundef %75) #21
  br label %91

91:                                               ; preds = %88, %87, %85
  %92 = icmp eq i32 %81, 0
  br i1 %92, label %93, label %79

93:                                               ; preds = %91, %66
  %94 = icmp ne ptr %68, null
  tail call void @tty_ldisc_hangup(ptr noundef nonnull %0, i1 noundef zeroext %94) #21
  %95 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %95) #21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %17) #21
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %17) #21
  %96 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 2
  %97 = load ptr, ptr %96, align 4
  tail call void @put_pid(ptr noundef %97) #21
  %98 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 1
  %99 = load ptr, ptr %98, align 4
  tail call void @put_pid(ptr noundef %99) #21
  store ptr null, ptr %96, align 4
  store ptr null, ptr %98, align 4
  %100 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 3
  store i8 0, ptr %100, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %101 = load i16, ptr %95, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %95, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !19
  %103 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %104 = load ptr, ptr %103, align 4
  br i1 %94, label %105, label %120

105:                                              ; preds = %93
  %106 = getelementptr inbounds %struct.tty_operations, ptr %104, i32 0, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = icmp ne ptr %107, null
  %109 = icmp sgt i32 %67, 0
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  tail call void %107(ptr noundef nonnull %0, ptr noundef nonnull %68) #21
  %112 = icmp eq i32 %67, 1
  br i1 %112, label %125, label %113

113:                                              ; preds = %113, %111
  %114 = phi i32 [ %118, %113 ], [ 1, %111 ]
  %115 = load ptr, ptr %103, align 4
  %116 = getelementptr inbounds %struct.tty_operations, ptr %115, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  tail call void %117(ptr noundef nonnull %0, ptr noundef nonnull %68) #21
  %118 = add nuw nsw i32 %114, 1
  %119 = icmp eq i32 %118, %67
  br i1 %119, label %125, label %113

120:                                              ; preds = %93
  %121 = getelementptr inbounds %struct.tty_operations, ptr %104, i32 0, i32 19
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void %122(ptr noundef nonnull %0) #21
  br label %125

125:                                              ; preds = %124, %120, %113, %111, %105
  tail call void @_set_bit(i32 noundef 18, ptr noundef %17) #21
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %17) #21
  tail call void @tty_unlock(ptr noundef nonnull %0) #21
  %126 = icmp eq ptr %14, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %125
  tail call void @fput(ptr noundef nonnull %14) #21
  br label %128

128:                                              ; preds = %127, %125, %21, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_vhangup_self() local_unnamed_addr #0 {
  %1 = tail call ptr @get_current_tty() #21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %0
  tail call fastcc void @__tty_hangup(ptr noundef nonnull %1, i32 noundef 0) #21
  %4 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #21, !srcloc !14
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #21, !srcloc !15
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %18, label %10, !prof !16

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #21
  br label %18

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %12 = getelementptr %struct.tty_struct, ptr %1, i32 0, i32 28
  store i32 -32, ptr %12, align 4
  %13 = getelementptr %struct.tty_struct, ptr %1, i32 0, i32 28, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr %struct.tty_struct, ptr %1, i32 0, i32 28, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr %struct.tty_struct, ptr %1, i32 0, i32 28, i32 2
  store ptr @release_one_tty, ptr %15, align 4
  %16 = load ptr, ptr @system_wq, align 4
  %17 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %12) #21
  br label %18

18:                                               ; preds = %11, %10, %8, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_current_tty() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_kref_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #21, !srcloc !14
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #21, !srcloc !15
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %18, label %10, !prof !16

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #21
  br label %18

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %12 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28
  store i32 -32, ptr %12, align 4
  %13 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28, i32 2
  store ptr @release_one_tty, ptr %15, align 4
  %16 = load ptr, ptr @system_wq, align 4
  %17 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %12) #21
  br label %18

18:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_vhangup_session(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @__tty_hangup(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tty_hung_up_p(ptr noundef readonly %0) #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @hung_up_tty_fops
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__stop_tty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %3 = load i8, ptr %2, align 4, !range !20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  store i8 1, ptr %2, align 4
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tty_operations, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void %9(ptr noundef %0) #21
  br label %12

12:                                               ; preds = %11, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stop_tty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #21
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %5 = load i8, ptr %4, align 4, !range !20
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  store i8 1, ptr %4, align 4
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tty_operations, ptr %9, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void %11(ptr noundef %0) #21
  br label %14

14:                                               ; preds = %13, %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__start_tty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %3 = load i8, ptr %2, align 4, !range !20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 2
  %7 = load i8, ptr %6, align 1, !range !20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  store i8 0, ptr %2, align 4
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tty_operations, ptr %11, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void %13(ptr noundef %0) #21
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @tty_ldisc_ref(ptr noundef %0) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %25, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void %27(ptr noundef %0) #21
  br label %30

30:                                               ; preds = %29, %24
  tail call void @tty_ldisc_deref(ptr noundef nonnull %22) #21
  br label %31

31:                                               ; preds = %30, %21, %16
  %32 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %32, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #21
  br label %33

33:                                               ; preds = %31, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @start_tty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #21
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %5 = load i8, ptr %4, align 4, !range !20
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 2
  %9 = load i8, ptr %8, align 1, !range !20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  store i8 0, ptr %4, align 4
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0) #21
  br label %18

18:                                               ; preds = %17, %11
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @tty_ldisc_ref(ptr noundef %0) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %27, i32 0, i32 13
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void %29(ptr noundef %0) #21
  br label %32

32:                                               ; preds = %31, %26
  tail call void @tty_ldisc_deref(ptr noundef nonnull %24) #21
  br label %33

33:                                               ; preds = %32, %23, %18
  %34 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %34, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #21
  br label %35

35:                                               ; preds = %33, %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_write_message(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #21
  tail call void @tty_lock(ptr noundef nonnull %0) #21
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tty_operations, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call i32 @strlen(ptr noundef %1)
  %17 = tail call i32 %9(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %16) #21
  br label %18

18:                                               ; preds = %15, %11, %4
  tail call void @tty_unlock(ptr noundef nonnull %0) #21
  tail call void @mutex_unlock(ptr noundef %5) #21
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %19, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #21
  br label %20

20:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @redirected_tty_write(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @redirect_lock) #21
  %3 = load ptr, ptr @redirect, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #21, !srcloc !21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %8 = load i16, ptr @redirect_lock, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr @redirect_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %10 = tail call fastcc i32 @file_tty_write(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1)
  tail call void @fput(ptr noundef nonnull %3) #21
  br label %16

11:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %12 = load i16, ptr @redirect_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @redirect_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %14 = load ptr, ptr %0, align 8
  %15 = tail call fastcc i32 @file_tty_write(ptr noundef %14, ptr noundef %0, ptr noundef %1) #21
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi i32 [ %10, %5 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @file_tty_write(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %6, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %6, align 4
  %12 = icmp eq i32 %11, 21505
  br i1 %12, label %20, label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ @.str.42, %3 ], [ @.str.43, %10 ]
  %15 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 20
  %18 = and i32 %16, 1048575
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %14, i32 noundef %17, i32 noundef %18, ptr noundef nonnull @.str.38) #22
  br label %136

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tty_operations, ptr %22, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %136, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %136

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tty_operations, ptr %22, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tty_driver, ptr %37, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi ptr [ %41, %39 ], [ @.str.1, %35 ]
  %44 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 15
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %43, ptr noundef %44) #22
  br label %46

46:                                               ; preds = %42, %31
  %47 = tail call ptr @tty_ldisc_ref_wait(ptr noundef nonnull %6) #21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %136, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %134, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 8
  %60 = tail call i32 @mutex_trylock(ptr noundef %59) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = and i32 %58, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %134

65:                                               ; preds = %62
  %66 = tail call i32 @mutex_lock_interruptible(ptr noundef %59) #21
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %134

68:                                               ; preds = %65, %54
  %69 = load volatile i32, ptr %27, align 4
  %70 = and i32 %69, 131072
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 2048, i32 65536
  %73 = tail call i32 @llvm.umin.i32(i32 %56, i32 %72) #21
  %74 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 35
  %75 = load i32, ptr %74, align 4
  %76 = icmp ult i32 %75, %73
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = tail call i32 @llvm.umax.i32(i32 %73, i32 1024) #21
  %79 = tail call noalias ptr @kvmalloc_node(i32 noundef %78, i32 noundef 19648, i32 noundef -1) #23
  %80 = icmp eq ptr %79, null
  br i1 %80, label %131, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 34
  %83 = load ptr, ptr %82, align 4
  tail call void @kvfree(ptr noundef %83) #21
  store i32 %78, ptr %74, align 4
  store ptr %79, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %68
  %85 = phi i32 [ %73, %68 ], [ %78, %81 ]
  %86 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 34
  br label %87

87:                                               ; preds = %117, %84
  %88 = phi i32 [ %56, %84 ], [ %106, %117 ]
  %89 = phi i32 [ 0, %84 ], [ %99, %117 ]
  %90 = tail call i32 @llvm.umin.i32(i32 %88, i32 %85) #21
  %91 = load ptr, ptr %86, align 4
  %92 = tail call i32 @_copy_from_iter(ptr noundef %91, i32 noundef %90, ptr noundef %2) #21
  %93 = icmp eq i32 %92, %90
  br i1 %93, label %94, label %119

94:                                               ; preds = %87
  %95 = load ptr, ptr %86, align 4
  %96 = tail call i32 %52(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %95, i32 noundef %90) #21
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %119, label %98

98:                                               ; preds = %94
  %99 = add i32 %96, %89
  %100 = icmp ult i32 %90, %96
  br i1 %100, label %119, label %101

101:                                              ; preds = %98
  %102 = icmp eq i32 %90, %96
  br i1 %102, label %105, label %103

103:                                              ; preds = %101
  %104 = sub i32 %90, %96
  tail call void @iov_iter_revert(ptr noundef %2, i32 noundef %104) #21
  br label %105

105:                                              ; preds = %103, %101
  %106 = sub i32 %88, %96
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %105
  %109 = tail call ptr @llvm.thread.pointer() #21
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 256
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119, !prof !16

113:                                              ; preds = %108
  %114 = load volatile i32, ptr %109, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = tail call i32 @__cond_resched() #21
  br label %87

119:                                              ; preds = %113, %108, %105, %98, %94, %87
  %120 = phi i32 [ -512, %113 ], [ %96, %105 ], [ %96, %98 ], [ %96, %94 ], [ -14, %87 ], [ -512, %108 ]
  %121 = phi i32 [ %99, %113 ], [ %99, %105 ], [ %99, %98 ], [ %89, %94 ], [ %89, %87 ], [ %99, %108 ]
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %7, align 8
  %125 = getelementptr inbounds %struct.inode, ptr %124, i32 0, i32 15
  %126 = tail call i64 @ktime_get_real_seconds() #21
  %127 = load i64, ptr %125, align 8
  %128 = xor i64 %127, %126
  %129 = icmp ult i64 %128, 8
  br i1 %129, label %131, label %130

130:                                              ; preds = %123
  store i64 %126, ptr %125, align 8
  br label %131

131:                                              ; preds = %130, %123, %119, %77
  %132 = phi i32 [ %120, %119 ], [ -12, %77 ], [ %121, %123 ], [ %121, %130 ]
  tail call void @mutex_unlock(ptr noundef %59) #21
  %133 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %133, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #21
  br label %134

134:                                              ; preds = %131, %65, %62, %49
  %135 = phi i32 [ -5, %49 ], [ %132, %131 ], [ -512, %65 ], [ -11, %62 ]
  tail call void @tty_ldisc_deref(ptr noundef nonnull %47) #21
  br label %136

136:                                              ; preds = %134, %46, %26, %20, %13
  %137 = phi i32 [ %135, %134 ], [ -5, %26 ], [ -5, %20 ], [ -5, %13 ], [ -5, %46 ]
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tty_write(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call fastcc i32 @file_tty_write(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_send_xchar(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %5 = load i8, ptr %4, align 4, !range !20
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tty_operations, ptr %8, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_read(ptr noundef %13) #21
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.tty_operations, ptr %14, i32 0, i32 24
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %0, i8 noundef zeroext %1) #21
  tail call void @up_read(ptr noundef %13) #21
  br label %49

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 8
  %19 = tail call i32 @mutex_trylock(ptr noundef %18) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call i32 @mutex_lock_interruptible(ptr noundef %18) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_read(ptr noundef %25) #21
  br i1 %6, label %42, label %26

26:                                               ; preds = %24
  tail call void @start_tty(ptr noundef %0)
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.tty_operations, ptr %27, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #21
  %31 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19
  %32 = call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #21
  %33 = load i8, ptr %4, align 4, !range !20
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  store i8 1, ptr %4, align 4
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.tty_operations, ptr %36, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void %38(ptr noundef %0) #21
  br label %41

41:                                               ; preds = %40, %35, %26
  call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #21
  br label %47

42:                                               ; preds = %24
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.tty_operations, ptr %43, i32 0, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 %45(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #21
  br label %47

47:                                               ; preds = %42, %41
  call void @up_read(ptr noundef %25) #21
  call void @mutex_unlock(ptr noundef %18) #21
  %48 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  call void @__wake_up(ptr noundef %48, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #21
  br label %49

49:                                               ; preds = %47, %21, %12
  %50 = phi i32 [ 0, %12 ], [ 0, %47 ], [ -512, %21 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_init_termios(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %10 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %9, ptr noundef align 4 dereferenceable(44) %10, i32 44, i1 false)
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr ptr, ptr %15, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  br i1 %18, label %24, label %20

20:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %19, ptr noundef nonnull align 4 dereferenceable(44) %17, i32 44, i1 false)
  %21 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 12, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 4
  store i8 %22, ptr %23, align 4
  br label %26

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %19, ptr noundef align 4 dereferenceable(44) %25, i32 44, i1 false)
  br label %26

26:                                               ; preds = %24, %20, %8
  %27 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %28 = tail call i32 @tty_termios_input_baud_rate(ptr noundef %27) #21
  %29 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 6
  store i32 %28, ptr %29, align 4
  %30 = tail call i32 @tty_termios_baud_rate(ptr noundef %27) #21
  %31 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 7
  store i32 %30, ptr %31, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_input_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_standard_install(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  %11 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %10, ptr noundef align 4 dereferenceable(44) %11, i32 44, i1 false) #21
  br label %27

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr ptr, ptr %16, i32 %14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  br i1 %19, label %25, label %21

21:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %20, ptr noundef nonnull align 4 dereferenceable(44) %18, i32 44, i1 false) #21
  %22 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 12, i32 4
  %23 = load i8, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 4
  store i8 %23, ptr %24, align 4
  br label %27

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %20, ptr noundef align 4 dereferenceable(44) %26, i32 44, i1 false) #21
  br label %27

27:                                               ; preds = %25, %21, %9
  %28 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  %29 = tail call i32 @tty_termios_input_baud_rate(ptr noundef %28) #21
  %30 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 6
  store i32 %29, ptr %30, align 4
  %31 = tail call i32 @tty_termios_baud_rate(ptr noundef %28) #21
  %32 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #21, !srcloc !14
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #21, !srcloc !22
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !23

37:                                               ; preds = %27
  %38 = add i32 %35, 1
  %39 = or i32 %38, %35
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %43, label %41, !prof !16

41:                                               ; preds = %37, %27
  %42 = phi i32 [ 2, %27 ], [ 1, %37 ]
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef %42) #21
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 16
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr ptr, ptr %48, i32 %50
  store ptr %1, ptr %51, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_init_dev(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call zeroext i1 @try_module_get(ptr noundef %4) #21
  br i1 %5, label %6, label %74

6:                                                ; preds = %2
  %7 = tail call ptr @alloc_tty_struct(ptr noundef %0, i32 noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %6
  tail call void @tty_lock(ptr noundef nonnull %7) #21
  %10 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tty_operations, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 @tty_standard_install(ptr noundef %0, ptr noundef nonnull %7) #21
  br label %20

17:                                               ; preds = %9
  %18 = tail call i32 %13(ptr noundef %0, ptr noundef nonnull %7) #21
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %17, %15
  %21 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 37
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr ptr, ptr %26, i32 %1
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %21, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = tail call i32 @___ratelimit(ptr noundef nonnull @tty_init_dev._rs, ptr noundef nonnull @__func__.tty_init_dev) #21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %71, label %33, !prof !16

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tty_driver, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1428, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tty_init_dev, ptr noundef %37) #21
  br label %71

38:                                               ; preds = %24, %20
  %39 = tail call i32 @tty_ldisc_lock(ptr noundef nonnull %7, i32 noundef 500) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr inbounds %struct.tty_port, ptr %42, i32 0, i32 2
  store ptr %7, ptr %43, align 4
  %44 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 24
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @tty_ldisc_setup(ptr noundef nonnull %7, ptr noundef %45) #21
  %47 = icmp eq i32 %46, 0
  tail call void @tty_ldisc_unlock(ptr noundef nonnull %7) #21
  br i1 %47, label %74, label %57

48:                                               ; preds = %17
  tail call void @tty_unlock(ptr noundef nonnull %7) #21
  tail call void @tty_ldisc_deinit(ptr noundef nonnull %7) #21
  %49 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void @put_device(ptr noundef %50) #21
  %51 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 34
  %52 = load ptr, ptr %51, align 4
  tail call void @kvfree(ptr noundef %52) #21
  store i32 -559030611, ptr %7, align 4
  tail call void @kfree(ptr noundef nonnull %7) #21
  %53 = inttoptr i32 %18 to ptr
  br label %54

54:                                               ; preds = %48, %6
  %55 = phi ptr [ %53, %48 ], [ inttoptr (i32 -12 to ptr), %6 ]
  %56 = load ptr, ptr %3, align 4
  tail call void @module_put(ptr noundef %56) #21
  br label %74

57:                                               ; preds = %41
  %58 = tail call i32 @___ratelimit(ptr noundef nonnull @tty_init_dev._rs.4, ptr noundef nonnull @__func__.tty_init_dev) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tty_driver, ptr %62, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi ptr [ %66, %64 ], [ @.str.1, %60 ]
  %69 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 15
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %68, ptr noundef %69, i32 noundef %46, i32 noundef %1) #22
  br label %71

71:                                               ; preds = %67, %57, %38, %33, %30
  %72 = phi i32 [ %39, %38 ], [ %46, %67 ], [ %46, %57 ], [ -22, %33 ], [ -22, %30 ]
  tail call void @tty_unlock(ptr noundef nonnull %7) #21
  tail call fastcc void @release_tty(ptr noundef nonnull %7, i32 noundef %1)
  %73 = inttoptr i32 %72 to ptr
  br label %74

74:                                               ; preds = %71, %54, %41, %2
  %75 = phi ptr [ %55, %54 ], [ %73, %71 ], [ inttoptr (i32 -19 to ptr), %2 ], [ %7, %41 ]
  ret ptr %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_tty_struct(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 464) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 1
  store volatile i32 1, ptr %8, align 4
  store i32 21505, ptr %5, align 8
  %9 = tail call i32 @tty_ldisc_init(ptr noundef nonnull %5) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #21
  br label %70

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 20
  %14 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 20, i32 2
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 20, i32 1
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.13, ptr noundef nonnull @alloc_tty_struct.__key) #21
  %17 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.15, ptr noundef nonnull @alloc_tty_struct.__key.14) #21
  %18 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 11
  tail call void @__init_rwsem(ptr noundef %18, ptr noundef nonnull @.str.17, ptr noundef nonnull @alloc_tty_struct.__key.16) #21
  %19 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.19, ptr noundef nonnull @alloc_tty_struct.__key.18) #21
  %20 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 6
  tail call void @__init_ldsem(ptr noundef %20, ptr noundef nonnull @.str.21, ptr noundef nonnull @alloc_tty_struct.__key.20) #21
  %21 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 26
  tail call void @__init_waitqueue_head(ptr noundef %21, ptr noundef nonnull @.str.23, ptr noundef nonnull @alloc_tty_struct.__key.22) #21
  %22 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 27
  tail call void @__init_waitqueue_head(ptr noundef %22, ptr noundef nonnull @.str.25, ptr noundef nonnull @alloc_tty_struct.__key.24) #21
  %23 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 28
  store i32 -32, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 28, i32 1
  store volatile ptr %24, ptr %24, align 8
  %25 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 28, i32 1, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 28, i32 2
  store ptr @do_tty_hangup, ptr %26, align 8
  %27 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %27, ptr noundef nonnull @.str.27, ptr noundef nonnull @alloc_tty_struct.__key.26) #21
  store i32 0, ptr %13, align 8
  %28 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 19
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 31
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 32
  store volatile ptr %30, ptr %30, align 8
  %31 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 32, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 36
  store i32 -32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 36, i32 1
  store volatile ptr %33, ptr %33, align 8
  %34 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 36, i32 1, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 36, i32 2
  store ptr @do_SAK_work, ptr %35, align 8
  %36 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 3
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 20
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 4
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 5
  store i32 %1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 15
  %42 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 13
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  br i1 %45, label %50, label %48

48:                                               ; preds = %12
  %49 = tail call ptr @strcpy(ptr noundef %41, ptr noundef %47)
  br label %57

50:                                               ; preds = %12
  %51 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %1
  %54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %41, ptr noundef nonnull @.str.48, ptr noundef %47, i32 noundef %53) #21
  %55 = load ptr, ptr %36, align 4
  %56 = load i32, ptr %40, align 4
  br label %57

57:                                               ; preds = %50, %48
  %58 = phi i32 [ %1, %48 ], [ %56, %50 ]
  %59 = phi ptr [ %0, %48 ], [ %55, %50 ]
  %60 = getelementptr inbounds %struct.tty_driver, ptr %59, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  %62 = shl i32 %61, 20
  %63 = getelementptr inbounds %struct.tty_driver, ptr %59, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %62, %64
  %66 = add i32 %65, %58
  %67 = load ptr, ptr @tty_class, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 %66, ptr %3, align 4
  %68 = call ptr @class_find_device(ptr noundef %67, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @device_match_devt) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  %69 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 2
  store ptr %68, ptr %69, align 8
  br label %70

70:                                               ; preds = %57, %11, %2
  %71 = phi ptr [ null, %11 ], [ %5, %57 ], [ null, %2 ]
  ret ptr %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @release_tty(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %7, label %6, !prof !16

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1590, i32 noundef 9, ptr noundef null) #21
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @tty_mutex) #21
  br i1 %8, label %10, label %9, !prof !16

9:                                                ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1591, i32 noundef 9, ptr noundef null) #21
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_operations, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void %14(ptr noundef %0) #21
  br label %17

17:                                               ; preds = %16, %10
  %18 = load i32, ptr %3, align 4
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tty_driver, ptr %20, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tty_driver, ptr %20, i32 0, i32 18
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr ptr, ptr %27, i32 %18
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 44) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr inbounds %struct.tty_driver, ptr %36, i32 0, i32 18
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr ptr, ptr %38, i32 %18
  store ptr %33, ptr %39, align 4
  br label %40

40:                                               ; preds = %35, %25
  %41 = phi ptr [ %33, %35 ], [ %29, %25 ]
  %42 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %41, ptr noundef align 4 dereferenceable(44) %42, i32 44, i1 false) #21
  br label %43

43:                                               ; preds = %40, %31, %17
  %44 = load ptr, ptr %19, align 4
  %45 = getelementptr inbounds %struct.tty_driver, ptr %44, i32 0, i32 20
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tty_operations, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  tail call void %48(ptr noundef %44, ptr noundef %0) #21
  br label %56

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.tty_driver, ptr %44, i32 0, i32 16
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %3, align 4
  %55 = getelementptr ptr, ptr %53, i32 %54
  store ptr null, ptr %55, align 4
  br label %56

56:                                               ; preds = %51, %50
  %57 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tty_port, ptr %58, i32 0, i32 2
  store ptr null, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tty_struct, ptr %64, i32 0, i32 37
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.tty_port, ptr %68, i32 0, i32 2
  store ptr null, ptr %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load ptr, ptr %57, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call zeroext i1 @tty_buffer_cancel_work(ptr noundef nonnull %71) #21
  br label %75

75:                                               ; preds = %73, %70
  %76 = load ptr, ptr %63, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tty_struct, ptr %76, i32 0, i32 37
  %80 = load ptr, ptr %79, align 4
  %81 = tail call zeroext i1 @tty_buffer_cancel_work(ptr noundef %80) #21
  %82 = load ptr, ptr %63, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %99, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.tty_struct, ptr %82, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #21, !srcloc !14
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 1, ptr elementtype(i32) %85) #21, !srcloc !15
  %87 = extractvalue { i32, i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = icmp sgt i32 %87, 0
  br i1 %90, label %99, label %91, !prof !16

91:                                               ; preds = %89
  tail call void @refcount_warn_saturate(ptr noundef %85, i32 noundef 3) #21
  br label %99

92:                                               ; preds = %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %93 = getelementptr %struct.tty_struct, ptr %82, i32 0, i32 28
  store i32 -32, ptr %93, align 4
  %94 = getelementptr %struct.tty_struct, ptr %82, i32 0, i32 28, i32 1
  store volatile ptr %94, ptr %94, align 4
  %95 = getelementptr %struct.tty_struct, ptr %82, i32 0, i32 28, i32 1, i32 1
  store ptr %94, ptr %95, align 4
  %96 = getelementptr %struct.tty_struct, ptr %82, i32 0, i32 28, i32 2
  store ptr @release_one_tty, ptr %96, align 4
  %97 = load ptr, ptr @system_wq, align 4
  %98 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %97, ptr noundef %93) #21
  br label %99

99:                                               ; preds = %92, %91, %89, %78, %75
  %100 = icmp eq ptr %0, null
  br i1 %100, label %116, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #21, !srcloc !14
  %103 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #21, !srcloc !15
  %104 = extractvalue { i32, i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = icmp sgt i32 %104, 0
  br i1 %107, label %116, label %108, !prof !16

108:                                              ; preds = %106
  tail call void @refcount_warn_saturate(ptr noundef %102, i32 noundef 3) #21
  br label %116

109:                                              ; preds = %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %110 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28
  store i32 -32, ptr %110, align 4
  %111 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28, i32 1
  store volatile ptr %111, ptr %111, align 4
  %112 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28, i32 1, i32 1
  store ptr %111, ptr %112, align 4
  %113 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 28, i32 2
  store ptr @release_one_tty, ptr %113, align 4
  %114 = load ptr, ptr @system_wq, align 4
  %115 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %114, ptr noundef %110) #21
  br label %116

116:                                              ; preds = %109, %108, %106, %99
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_save_termios(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr ptr, ptr %12, i32 %3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 44) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.tty_driver, ptr %21, i32 0, i32 18
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr ptr, ptr %23, i32 %3
  store ptr %18, ptr %24, align 4
  br label %25

25:                                               ; preds = %20, %10
  %26 = phi ptr [ %18, %20 ], [ %14, %10 ]
  %27 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %26, ptr noundef align 4 dereferenceable(44) %27, i32 44, i1 false)
  br label %28

28:                                               ; preds = %25, %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_kclose(ptr noundef %0) #0 {
  tail call void @tty_ldisc_release(ptr noundef %0) #21
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 36
  %3 = tail call zeroext i1 @flush_work(ptr noundef %2) #21
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 28
  %5 = tail call zeroext i1 @flush_work(ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 36
  %11 = tail call zeroext i1 @flush_work(ptr noundef %10) #21
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.tty_struct, ptr %12, i32 0, i32 28
  %14 = tail call zeroext i1 @flush_work(ptr noundef %13) #21
  br label %15

15:                                               ; preds = %9, %1
  tail call void @mutex_lock(ptr noundef nonnull @tty_mutex) #21
  %16 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tty_port, ptr %17, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %18) #21
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  tail call fastcc void @release_tty(ptr noundef %0, i32 noundef %20)
  tail call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_release_struct(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @tty_ldisc_release(ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 36
  %4 = tail call zeroext i1 @flush_work(ptr noundef %3) #21
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 28
  %6 = tail call zeroext i1 @flush_work(ptr noundef %5) #21
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 36
  %12 = tail call zeroext i1 @flush_work(ptr noundef %11) #21
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 28
  %15 = tail call zeroext i1 @flush_work(ptr noundef %14) #21
  br label %16

16:                                               ; preds = %10, %2
  tail call void @mutex_lock(ptr noundef nonnull @tty_mutex) #21
  tail call fastcc void @release_tty(ptr noundef %0, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_release(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 21505
  br i1 %9, label %17, label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ @.str.42, %2 ], [ @.str.43, %7 ]
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 20
  %15 = and i32 %13, 1048575
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %11, i32 noundef %14, i32 noundef %15, ptr noundef nonnull @__func__.tty_release) #22
  br label %221

17:                                               ; preds = %7
  tail call void @tty_lock(ptr noundef nonnull %5) #21
  tail call fastcc void @check_tty_count(ptr noundef nonnull %5, ptr noundef nonnull @__func__.tty_release)
  %18 = load ptr, ptr %3, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %19, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %19, align 4
  %25 = icmp eq i32 %24, 21505
  br i1 %25, label %33, label %26

26:                                               ; preds = %23, %17
  %27 = phi ptr [ @.str.42, %17 ], [ @.str.43, %23 ]
  %28 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 20
  %31 = and i32 %29, 1048575
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %27, i32 noundef %30, i32 noundef %31, ptr noundef nonnull @.str.45) #22
  br label %36

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 25
  %35 = tail call i32 @fasync_helper(i32 noundef -1, ptr noundef %1, i32 noundef 0, ptr noundef %34) #21
  br label %36

36:                                               ; preds = %33, %26
  %37 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tty_driver, ptr %40, i32 0, i32 10
  %42 = load i16, ptr %41, align 4
  %43 = icmp eq i16 %42, 4
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.tty_driver, ptr %40, i32 0, i32 11
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 24
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %44, %36
  %52 = phi ptr [ %50, %48 ], [ null, %44 ], [ null, %36 ]
  %53 = icmp slt i32 %38, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tty_driver, ptr %40, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, %38
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tty_driver, ptr %40, i32 0, i32 13
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tty_driver, ptr %40, i32 0, i32 16
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr ptr, ptr %65, i32 %38
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %5
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.tty_driver, ptr %40, i32 0, i32 15
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 24
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.tty_driver, ptr %71, i32 0, i32 16
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr ptr, ptr %77, i32 %38
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %75, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.tty_struct, ptr %75, i32 0, i32 24
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %5
  br i1 %84, label %86, label %85

85:                                               ; preds = %81, %73, %63, %54, %51
  tail call void @tty_unlock(ptr noundef nonnull %5) #21
  br label %221

86:                                               ; preds = %81, %69, %58
  %87 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.tty_operations, ptr %88, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  tail call void %90(ptr noundef nonnull %5, ptr noundef %1) #21
  br label %93

93:                                               ; preds = %92, %86
  tail call void @tty_lock_slave(ptr noundef %52) #21
  %94 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 17
  %95 = icmp eq ptr %52, null
  %96 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 27, i32 1
  %97 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 27
  %98 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 26, i32 1
  %99 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 26
  %100 = getelementptr inbounds %struct.tty_struct, ptr %52, i32 0, i32 17
  %101 = getelementptr inbounds %struct.tty_struct, ptr %52, i32 0, i32 27, i32 1
  %102 = getelementptr inbounds %struct.tty_struct, ptr %52, i32 0, i32 27
  %103 = getelementptr inbounds %struct.tty_struct, ptr %52, i32 0, i32 26, i32 1
  %104 = getelementptr inbounds %struct.tty_struct, ptr %52, i32 0, i32 26
  %105 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 15
  br label %106

106:                                              ; preds = %153, %93
  %107 = phi i32 [ 0, %93 ], [ %158, %153 ]
  %108 = phi i1 [ false, %93 ], [ true, %153 ]
  %109 = load i32, ptr %94, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load volatile ptr, ptr %96, align 4
  %113 = icmp eq ptr %112, %96
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  tail call void @__wake_up(ptr noundef %97, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #21
  br label %115

115:                                              ; preds = %114, %111
  %116 = phi i32 [ 1, %114 ], [ 0, %111 ]
  %117 = load volatile ptr, ptr %98, align 4
  %118 = icmp eq ptr %117, %98
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  tail call void @__wake_up(ptr noundef %99, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #21
  %120 = add nuw nsw i32 %116, 1
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi i32 [ %120, %119 ], [ %116, %115 ]
  br i1 %95, label %141, label %124

123:                                              ; preds = %106
  br i1 %95, label %172, label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ 0, %123 ], [ %122, %121 ]
  %126 = load i32, ptr %100, align 4
  %127 = icmp slt i32 %126, 2
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load volatile ptr, ptr %101, align 4
  %130 = icmp eq ptr %129, %101
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  tail call void @__wake_up(ptr noundef %102, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #21
  %132 = add nuw nsw i32 %125, 1
  br label %133

133:                                              ; preds = %131, %128
  %134 = phi i32 [ %132, %131 ], [ %125, %128 ]
  %135 = load volatile ptr, ptr %103, align 4
  %136 = icmp eq ptr %135, %103
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  tail call void @__wake_up(ptr noundef %104, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #21
  br label %143

138:                                              ; preds = %133, %124
  %139 = phi i32 [ %134, %133 ], [ %125, %124 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %159, label %143

141:                                              ; preds = %121
  %142 = icmp eq i32 %122, 0
  br i1 %142, label %172, label %143

143:                                              ; preds = %141, %138, %137
  br i1 %108, label %153, label %144

144:                                              ; preds = %143
  %145 = load ptr, ptr %39, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.tty_driver, ptr %145, i32 0, i32 5
  %149 = load ptr, ptr %148, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = phi ptr [ %149, %147 ], [ @.str.1, %144 ]
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %151, ptr noundef %105) #22
  br label %153

153:                                              ; preds = %150, %143
  %154 = tail call i32 @schedule_timeout_killable(i32 noundef %107) #21
  %155 = icmp slt i32 %107, 12000
  %156 = shl i32 %107, 1
  %157 = or i32 %156, 1
  %158 = select i1 %155, i32 %157, i32 2147483647
  br label %106

159:                                              ; preds = %138
  %160 = load i32, ptr %100, align 4
  %161 = add i32 %160, -1
  store i32 %161, ptr %100, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load ptr, ptr %39, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.tty_driver, ptr %164, i32 0, i32 5
  %168 = load ptr, ptr %167, align 4
  br label %169

169:                                              ; preds = %166, %163
  %170 = phi ptr [ %168, %166 ], [ @.str.1, %163 ]
  %171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %170, ptr noundef %105, i32 noundef %161) #22
  store i32 0, ptr %100, align 4
  br label %172

172:                                              ; preds = %169, %159, %141, %123
  %173 = phi i1 [ false, %159 ], [ false, %169 ], [ true, %141 ], [ true, %123 ]
  %174 = load i32, ptr %94, align 4
  %175 = add i32 %174, -1
  store i32 %175, ptr %94, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load ptr, ptr %39, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.tty_driver, ptr %178, i32 0, i32 5
  %182 = load ptr, ptr %181, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = phi ptr [ %182, %180 ], [ @.str.1, %177 ]
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %184, ptr noundef %105, i32 noundef %175) #22
  store i32 0, ptr %94, align 4
  br label %186

186:                                              ; preds = %183, %172
  %187 = load ptr, ptr %3, align 8
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.tty_struct, ptr %188, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %189) #21
  %190 = getelementptr inbounds %struct.tty_file_private, ptr %187, i32 0, i32 2
  %191 = getelementptr inbounds %struct.tty_file_private, ptr %187, i32 0, i32 2, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = load ptr, ptr %190, align 4
  %194 = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  store ptr %192, ptr %194, align 4
  store volatile ptr %193, ptr %192, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %190, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %191, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %195 = load i16, ptr %189, align 4
  %196 = add i16 %195, 1
  store i16 %196, ptr %189, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %197 = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  tail call void @kfree(ptr noundef %197) #21
  %198 = load i32, ptr %94, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %186
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #21
  %201 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 20, i32 2
  %202 = load ptr, ptr %201, align 4
  tail call void @session_clear_tty(ptr noundef %202) #21
  br i1 %173, label %206, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.tty_struct, ptr %52, i32 0, i32 20, i32 2
  %205 = load ptr, ptr %204, align 4
  tail call void @session_clear_tty(ptr noundef %205) #21
  br label %206

206:                                              ; preds = %203, %200
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #21, !srcloc !14
  %207 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #21, !srcloc !25
  %208 = extractvalue { i32, i32 } %207, 0
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  br label %211

211:                                              ; preds = %210, %206
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  %212 = load i32, ptr %94, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  br i1 %173, label %219, label %215

215:                                              ; preds = %214
  %216 = load i32, ptr %100, align 4
  %217 = icmp eq i32 %216, 0
  tail call void @tty_unlock_slave(ptr noundef %52) #21
  tail call void @tty_unlock(ptr noundef nonnull %5) #21
  br i1 %217, label %220, label %221

218:                                              ; preds = %211, %186
  tail call void @tty_unlock_slave(ptr noundef %52) #21
  tail call void @tty_unlock(ptr noundef nonnull %5) #21
  br label %221

219:                                              ; preds = %214
  tail call void @tty_unlock_slave(ptr noundef %52) #21
  tail call void @tty_unlock(ptr noundef nonnull %5) #21
  br label %220

220:                                              ; preds = %219, %215
  tail call void @tty_release_struct(ptr noundef nonnull %5, i32 noundef %38)
  br label %221

221:                                              ; preds = %220, %218, %215, %85, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @check_tty_count(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 32
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %4, %2 ], [ %8, %5 ]
  %7 = phi i32 [ 0, %2 ], [ %10, %5 ]
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %4
  %10 = add i32 %7, 1
  br i1 %9, label %11, label %5

11:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %12 = load i16, ptr %3, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %14 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tty_driver, ptr %15, i32 0, i32 10
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 4
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tty_driver, ptr %15, i32 0, i32 11
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tty_struct, ptr %25, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = add i32 %7, %31
  br label %33

33:                                               ; preds = %27, %23, %19, %11
  %34 = phi i32 [ %7, %23 ], [ %7, %19 ], [ %7, %11 ], [ %32, %27 ]
  %35 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tty_port, ptr %36, i32 0, i32 11
  %38 = load volatile i32, ptr %37, align 4
  %39 = lshr i32 %38, 5
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %40, %34
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %33
  %46 = icmp eq ptr %0, null
  %47 = icmp eq ptr %15, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tty_driver, ptr %15, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi ptr [ %51, %49 ], [ @.str.1, %45 ]
  %54 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 15
  %55 = select i1 %46, ptr @.str, ptr %54
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %53, ptr noundef %55, ptr noundef %1, i32 noundef %42, i32 noundef %34, i32 noundef %40) #22
  br label %57

57:                                               ; preds = %52, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock_slave(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_killable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @session_clear_tty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock_slave(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_kopen_exclusive(i32 noundef %0) #0 {
  %2 = tail call fastcc ptr @tty_kopen(i32 noundef %0, i32 noundef 0)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tty_kopen(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 -1, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @tty_mutex) #21
  %4 = call fastcc ptr @tty_lookup_driver(i32 noundef %0, ptr noundef null, ptr noundef nonnull %3)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  br label %61

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %59

12:                                               ; preds = %7
  %13 = load i32, ptr %3, align 4
  %14 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr ptr, ptr %15, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %59, label %19

19:                                               ; preds = %12
  %20 = icmp eq ptr %17, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #21, !srcloc !14
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #21, !srcloc !22
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !23

26:                                               ; preds = %21
  %27 = add i32 %24, 1
  %28 = or i32 %27, %24
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30, !prof !16

30:                                               ; preds = %26, %21
  %31 = phi i32 [ 2, %21 ], [ 1, %26 ]
  call void @refcount_warn_saturate(ptr noundef %22, i32 noundef %31) #21
  br label %32

32:                                               ; preds = %30, %26
  %33 = icmp ne i32 %1, 0
  %34 = or i1 %33, %18
  br i1 %34, label %59, label %37

35:                                               ; preds = %19
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %52, label %59

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #21, !srcloc !14
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #21, !srcloc !15
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %59, label %44, !prof !16

44:                                               ; preds = %42
  call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 3) #21
  br label %59

45:                                               ; preds = %37
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %46 = getelementptr %struct.tty_struct, ptr %17, i32 0, i32 28
  store i32 -32, ptr %46, align 4
  %47 = getelementptr %struct.tty_struct, ptr %17, i32 0, i32 28, i32 1
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr %struct.tty_struct, ptr %17, i32 0, i32 28, i32 1, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr %struct.tty_struct, ptr %17, i32 0, i32 28, i32 2
  store ptr @release_one_tty, ptr %49, align 4
  %50 = load ptr, ptr @system_wq, align 4
  %51 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %50, ptr noundef %46) #21
  br label %59

52:                                               ; preds = %35
  %53 = call ptr @tty_init_dev(ptr noundef %4, i32 noundef %13)
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.tty_struct, ptr %53, i32 0, i32 37
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.tty_port, ptr %57, i32 0, i32 11
  call void @_set_bit(i32 noundef 5, ptr noundef %58) #21
  br label %59

59:                                               ; preds = %55, %52, %45, %44, %42, %35, %32, %12, %7
  %60 = phi ptr [ %17, %32 ], [ %53, %52 ], [ %53, %55 ], [ null, %35 ], [ inttoptr (i32 -16 to ptr), %42 ], [ inttoptr (i32 -16 to ptr), %44 ], [ inttoptr (i32 -16 to ptr), %45 ], [ inttoptr (i32 -5 to ptr), %7 ], [ %17, %12 ]
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  call void @tty_driver_kref_put(ptr noundef %4)
  br label %61

61:                                               ; preds = %59, %6
  %62 = phi ptr [ %4, %6 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret ptr %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_kopen_shared(i32 noundef %0) #0 {
  %2 = tail call fastcc ptr @tty_kopen(i32 noundef %0, i32 noundef 1)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_do_resize(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 18
  %5 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %1, ptr noundef dereferenceable(8) %4, i32 8)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @tty_get_pgrp(ptr noundef %0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @kill_pgrp(ptr noundef nonnull %8, i32 noundef 28, i32 noundef 1) #21
  br label %12

12:                                               ; preds = %10, %7
  tail call void @put_pid(ptr noundef %8) #21
  %13 = load i64, ptr %1, align 2
  store i64 %13, ptr %4, align 4
  br label %14

14:                                               ; preds = %12, %2
  tail call void @mutex_unlock(ptr noundef %3) #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_get_pgrp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_get_icount(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %1, i8 0, i32 80, i1 false)
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_operations, ptr %4, i32 0, i32 28
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #21
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ -25, %2 ]
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = inttoptr i32 %2 to ptr
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %6, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr %6, align 4
  %13 = icmp eq i32 %12, 21505
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ @.str.42, %3 ], [ @.str.43, %11 ]
  %16 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 20
  %19 = and i32 %17, 1048575
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %15, i32 noundef %18, i32 noundef %19, ptr noundef nonnull @.str.9) #22
  br label %204

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tty_driver, ptr %23, i32 0, i32 10
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 4
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tty_driver, ptr %23, i32 0, i32 11
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 24
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %27, %21
  %35 = phi ptr [ %33, %31 ], [ %6, %27 ], [ %6, %21 ]
  switch i32 %1, label %175 [
    i32 21539, label %36
    i32 21543, label %36
    i32 21544, label %36
    i32 21513, label %36
    i32 21541, label %36
    i32 21522, label %51
    i32 21523, label %53
    i32 21524, label %55
    i32 21533, label %57
    i32 21516, label %61
    i32 21517, label %63
    i32 -2147199936, label %65
    i32 21540, label %76
    i32 21559, label %80
    i32 -2147199950, label %83
    i32 21525, label %133
    i32 21528, label %135
    i32 21527, label %135
    i32 21526, label %135
    i32 21597, label %165
    i32 21515, label %167
    i32 21535, label %169
    i32 21534, label %171
    i32 21569, label %173
  ]

36:                                               ; preds = %34, %34, %34, %34, %34
  %37 = tail call i32 @tty_check_change(ptr noundef nonnull %6) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %204

39:                                               ; preds = %36
  %40 = icmp eq i32 %1, 21544
  br i1 %40, label %116, label %41

41:                                               ; preds = %39
  tail call void @tty_wait_until_sent(ptr noundef nonnull %6, i32 noundef 0) #21
  %42 = tail call ptr @llvm.thread.pointer() #21
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %204, !prof !16

46:                                               ; preds = %41
  %47 = load volatile i32, ptr %42, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %204

50:                                               ; preds = %46
  switch i32 %1, label %175 [
    i32 21522, label %51
    i32 21523, label %53
    i32 21524, label %55
    i32 21533, label %57
    i32 21516, label %61
    i32 21517, label %63
    i32 21534, label %171
    i32 21540, label %76
    i32 21539, label %78
    i32 21535, label %169
    i32 21515, label %167
    i32 21543, label %108
    i32 21526, label %135
    i32 21513, label %124
    i32 21541, label %128
    i32 21525, label %133
    i32 21528, label %135
    i32 21527, label %135
  ]

51:                                               ; preds = %50, %34
  %52 = tail call fastcc i32 @tiocsti(ptr noundef nonnull %6, ptr noundef %7)
  br label %204

53:                                               ; preds = %50, %34
  %54 = tail call fastcc i32 @tiocgwinsz(ptr noundef %35, ptr noundef %7)
  br label %204

55:                                               ; preds = %50, %34
  %56 = tail call fastcc i32 @tiocswinsz(ptr noundef %35, ptr noundef %7)
  br label %204

57:                                               ; preds = %50, %34
  %58 = icmp eq ptr %35, %6
  br i1 %58, label %59, label %204

59:                                               ; preds = %57
  %60 = tail call fastcc i32 @tioccons(ptr noundef %0)
  br label %204

61:                                               ; preds = %50, %34
  %62 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 3, ptr noundef %62) #21
  br label %204

63:                                               ; preds = %50, %34
  %64 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %64) #21
  br label %204

65:                                               ; preds = %34
  %66 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 16
  %67 = load volatile i32, ptr %66, align 4
  %68 = lshr i32 %67, 3
  %69 = and i32 %68, 1
  %70 = tail call ptr @llvm.thread.pointer() #21
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %72 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #24, !srcloc !27
  %73 = and i32 %72, -13
  %74 = or i32 %73, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %75 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %69, i32 -1090519041) #21, !srcloc !30
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  br label %204

76:                                               ; preds = %50, %34
  %77 = tail call fastcc i32 @tiocgetd(ptr noundef nonnull %6, ptr noundef %7)
  br label %204

78:                                               ; preds = %50
  %79 = tail call fastcc i32 @tiocsetd(ptr noundef nonnull %6, ptr noundef %7)
  br label %204

80:                                               ; preds = %34
  %81 = tail call zeroext i1 @capable(i32 noundef 21) #21
  br i1 %81, label %82, label %204

82:                                               ; preds = %80
  tail call fastcc void @__tty_hangup(ptr noundef nonnull %6, i32 noundef 0) #21
  br label %204

83:                                               ; preds = %34
  %84 = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.tty_driver, ptr %85, i32 0, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = shl i32 %87, 20
  %89 = getelementptr inbounds %struct.tty_driver, ptr %85, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %88, %90
  %92 = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %91, %93
  %95 = and i32 %94, 255
  %96 = lshr i32 %94, 12
  %97 = and i32 %96, 1048320
  %98 = or i32 %97, %95
  %99 = shl i32 %94, 12
  %100 = and i32 %99, -1048576
  %101 = or i32 %98, %100
  %102 = tail call ptr @llvm.thread.pointer() #21
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 3
  %104 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %103) #24, !srcloc !27
  %105 = and i32 %104, -13
  %106 = or i32 %105, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %107 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %101, i32 -1090519041) #21, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  br label %204

108:                                              ; preds = %50
  %109 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.tty_operations, ptr %110, i32 0, i32 20
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %204, label %114

114:                                              ; preds = %108
  %115 = tail call i32 %112(ptr noundef nonnull %6, i32 noundef -1) #21
  br label %204

116:                                              ; preds = %39
  %117 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.tty_operations, ptr %118, i32 0, i32 20
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %204, label %122

122:                                              ; preds = %116
  %123 = tail call i32 %120(ptr noundef nonnull %6, i32 noundef 0) #21
  br label %204

124:                                              ; preds = %50
  %125 = icmp eq i32 %2, 0
  br i1 %125, label %126, label %204

126:                                              ; preds = %124
  %127 = tail call fastcc i32 @send_break(ptr noundef nonnull %6, i32 noundef 250)
  br label %204

128:                                              ; preds = %50
  %129 = icmp eq i32 %2, 0
  %130 = mul i32 %2, 100
  %131 = select i1 %129, i32 250, i32 %130
  %132 = tail call fastcc i32 @send_break(ptr noundef nonnull %6, i32 noundef %131)
  br label %204

133:                                              ; preds = %50, %34
  %134 = tail call fastcc i32 @tty_tiocmget(ptr noundef nonnull %6, ptr noundef %7)
  br label %204

135:                                              ; preds = %50, %50, %50, %34, %34, %34
  %136 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 4
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.tty_operations, ptr %137, i32 0, i32 26
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %204, label %141

141:                                              ; preds = %135
  %142 = tail call ptr @llvm.thread.pointer() #21
  %143 = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 3
  %144 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %143) #24, !srcloc !27
  %145 = and i32 %144, -13
  %146 = or i32 %145, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %147 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %7, i32 -1090519041) #21, !srcloc !32
  %148 = extractvalue { i32, i32 } %147, 0
  %149 = extractvalue { i32, i32 } %147, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %144) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %151, label %204

151:                                              ; preds = %141
  switch i32 %1, label %156 [
    i32 21526, label %152
    i32 21527, label %153
    i32 21528, label %154
  ]

152:                                              ; preds = %151
  br label %156

153:                                              ; preds = %151
  br label %156

154:                                              ; preds = %151
  %155 = xor i32 %149, -1
  br label %156

156:                                              ; preds = %154, %153, %152, %151
  %157 = phi i32 [ 0, %151 ], [ %155, %154 ], [ %149, %153 ], [ 0, %152 ]
  %158 = phi i32 [ 0, %151 ], [ %149, %154 ], [ 0, %153 ], [ %149, %152 ]
  %159 = and i32 %158, 57350
  %160 = and i32 %157, 57350
  %161 = load ptr, ptr %136, align 4
  %162 = getelementptr inbounds %struct.tty_operations, ptr %161, i32 0, i32 26
  %163 = load ptr, ptr %162, align 4
  %164 = tail call i32 %163(ptr noundef nonnull %6, i32 noundef %159, i32 noundef %160) #21
  br label %204

165:                                              ; preds = %34
  %166 = tail call fastcc i32 @tty_tiocgicount(ptr noundef nonnull %6, ptr noundef %7)
  br label %204

167:                                              ; preds = %50, %34
  switch i32 %2, label %178 [
    i32 0, label %168
    i32 2, label %168
  ]

168:                                              ; preds = %167, %167
  tail call void @tty_buffer_flush(ptr noundef nonnull %6, ptr noundef null) #21
  br label %178

169:                                              ; preds = %50, %34
  %170 = tail call fastcc i32 @tty_tiocsserial(ptr noundef nonnull %6, ptr noundef %7)
  br label %204

171:                                              ; preds = %50, %34
  %172 = tail call fastcc i32 @tty_tiocgserial(ptr noundef nonnull %6, ptr noundef %7)
  br label %204

173:                                              ; preds = %34
  %174 = tail call i32 @ptm_open_peer(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2) #21
  br label %204

175:                                              ; preds = %50, %34
  %176 = tail call i32 @tty_jobctrl_ioctl(ptr noundef nonnull %6, ptr noundef %35, ptr noundef %0, i32 noundef %1, i32 noundef %2) #21
  %177 = icmp eq i32 %176, -515
  br i1 %177, label %178, label %204

178:                                              ; preds = %175, %168, %167
  %179 = getelementptr inbounds %struct.tty_struct, ptr %6, i32 0, i32 4
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.tty_operations, ptr %180, i32 0, i32 12
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %178
  %185 = tail call i32 %182(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #21
  %186 = icmp eq i32 %185, -515
  br i1 %186, label %187, label %204

187:                                              ; preds = %184, %178
  %188 = tail call ptr @tty_ldisc_ref_wait(ptr noundef nonnull %6) #21
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = icmp eq i32 %1, 21520
  %192 = select i1 %191, i32 -25, i32 -5
  br label %204

193:                                              ; preds = %187
  %194 = load ptr, ptr %188, align 4
  %195 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %194, i32 0, i32 7
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %193
  %199 = tail call i32 %196(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2) #21
  %200 = icmp eq i32 %199, -515
  %201 = select i1 %200, i32 -25, i32 %199
  br label %202

202:                                              ; preds = %198, %193
  %203 = phi i32 [ %201, %198 ], [ -22, %193 ]
  tail call void @tty_ldisc_deref(ptr noundef nonnull %188) #21
  br label %204

204:                                              ; preds = %202, %190, %184, %175, %173, %171, %169, %165, %156, %141, %135, %133, %128, %126, %124, %122, %116, %114, %108, %83, %82, %80, %78, %76, %65, %63, %61, %59, %57, %55, %53, %51, %46, %41, %36, %14
  %205 = phi i32 [ %203, %202 ], [ %192, %190 ], [ %174, %173 ], [ %172, %171 ], [ %170, %169 ], [ %166, %165 ], [ %134, %133 ], [ %132, %128 ], [ %127, %126 ], [ %123, %122 ], [ %115, %114 ], [ %107, %83 ], [ 0, %82 ], [ %79, %78 ], [ %77, %76 ], [ %75, %65 ], [ 0, %63 ], [ 0, %61 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ], [ -22, %14 ], [ %37, %36 ], [ -4, %46 ], [ %60, %59 ], [ -22, %57 ], [ -1, %80 ], [ 0, %108 ], [ 0, %116 ], [ 0, %124 ], [ %176, %175 ], [ %185, %184 ], [ %164, %156 ], [ -25, %135 ], [ %148, %141 ], [ -4, %41 ]
  ret i32 %205
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_check_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wait_until_sent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tiocsti(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #21
  store i8 0, ptr %4, align 1
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call zeroext i1 @capable(i32 noundef 21) #21
  br i1 %12, label %13, label %36

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #24, !srcloc !27
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #21, !srcloc !33
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %3, align 1
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = tail call ptr @tty_ldisc_ref_wait(ptr noundef %0) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %28 = load ptr, ptr %27, align 4
  tail call void @tty_buffer_lock_exclusive(ptr noundef %28) #21
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %29, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  call void %31(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #21
  br label %34

34:                                               ; preds = %33, %26
  %35 = load ptr, ptr %27, align 4
  call void @tty_buffer_unlock_exclusive(ptr noundef %35) #21
  call void @tty_ldisc_deref(ptr noundef nonnull %24) #21
  br label %36

36:                                               ; preds = %34, %23, %13, %11
  %37 = phi i32 [ 0, %34 ], [ -1, %11 ], [ -14, %13 ], [ -5, %23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tiocgwinsz(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #21
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #25, !srcloc !34
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @mutex_unlock(ptr noundef %3) #21
  br label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 18
  %10 = tail call ptr @llvm.thread.pointer() #21
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #24, !srcloc !27
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %15 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %9, i32 noundef 8) #21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  tail call void @mutex_unlock(ptr noundef %3) #21
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 -14
  br label %18

18:                                               ; preds = %8, %7
  %19 = phi i32 [ -14, %7 ], [ %17, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tiocswinsz(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.winsize, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !annotation !12
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #25, !srcloc !35
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !16

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #21
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #24, !srcloc !27
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #21, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !16

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 8, %2 ]
  %17 = sub i32 8, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #21
  br label %40

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tty_operations, ptr %21, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = call i32 %23(ptr noundef %0, ptr noundef nonnull %3) #21
  br label %40

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 12
  call void @mutex_lock(ptr noundef %28) #21
  %29 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 18
  %30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %3, ptr noundef dereferenceable(8) %29, i32 8) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = call ptr @tty_get_pgrp(ptr noundef %0) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @kill_pgrp(ptr noundef nonnull %33, i32 noundef 28, i32 noundef 1) #21
  br label %37

37:                                               ; preds = %35, %32
  call void @put_pid(ptr noundef %33) #21
  %38 = load i64, ptr %3, align 8
  store i64 %38, ptr %29, align 4
  br label %39

39:                                               ; preds = %37, %27
  call void @mutex_unlock(ptr noundef %28) #21
  br label %40

40:                                               ; preds = %39, %25, %15
  %41 = phi i32 [ %26, %25 ], [ 0, %39 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tioccons(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i1 @capable(i32 noundef 21) #21
  br i1 %2, label %3, label %36

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @redirected_tty_write
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  tail call void @_raw_spin_lock(ptr noundef nonnull @redirect_lock) #21
  %10 = load ptr, ptr @redirect, align 4
  store ptr null, ptr @redirect, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %11 = load i16, ptr @redirect_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @redirect_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %13 = icmp eq ptr %10, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %9
  tail call void @fput(ptr noundef nonnull %10) #21
  br label %36

15:                                               ; preds = %3
  %16 = icmp eq ptr %7, @tty_write
  br i1 %16, label %17, label %36

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, 262144
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  tail call void @_raw_spin_lock(ptr noundef nonnull @redirect_lock) #21
  %26 = load ptr, ptr @redirect, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %29 = load i16, ptr @redirect_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @redirect_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  br label %36

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #21, !srcloc !14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #21, !srcloc !21
  store ptr %0, ptr @redirect, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %34 = load i16, ptr @redirect_lock, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr @redirect_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  br label %36

36:                                               ; preds = %31, %28, %22, %17, %15, %14, %9, %1
  %37 = phi i32 [ -16, %28 ], [ 0, %31 ], [ -1, %1 ], [ 0, %14 ], [ 0, %9 ], [ -25, %15 ], [ -9, %17 ], [ -22, %22 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tiocgetd(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @tty_ldisc_ref_wait(ptr noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #21
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #24, !srcloc !27
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %8, i32 -1090519041) #21, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  tail call void @tty_ldisc_deref(ptr noundef nonnull %3) #21
  br label %15

15:                                               ; preds = %5, %2
  %16 = phi i32 [ %14, %5 ], [ -5, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tiocsetd(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #21
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %4) #24, !srcloc !27
  %6 = and i32 %5, -13
  %7 = or i32 %6, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %8 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #21, !srcloc !37
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = extractvalue { i32, i32 } %8, 1
  %13 = tail call i32 @tty_set_ldisc(ptr noundef %0, i32 noundef %12) #21
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %13, %11 ], [ -14, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tty_devnum(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 20
  %7 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %6, %8
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @send_break(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_operations, ptr %4, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tty_driver, ptr %10, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 %6(ptr noundef %0, i32 noundef %1) #21
  br label %58

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 8
  %19 = tail call i32 @mutex_trylock(ptr noundef %18) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call i32 @mutex_lock_interruptible(ptr noundef %18) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.tty_operations, ptr %25, i32 0, i32 20
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0, i32 noundef -1) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = tail call ptr @llvm.thread.pointer() #21
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41, !prof !16

35:                                               ; preds = %30
  %36 = load volatile i32, ptr %31, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 @msleep_interruptible(i32 noundef %1) #21
  br label %41

41:                                               ; preds = %39, %35, %30
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.tty_operations, ptr %42, i32 0, i32 20
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef %0, i32 noundef 0) #21
  br label %46

46:                                               ; preds = %41, %24
  %47 = phi i32 [ %28, %24 ], [ %45, %41 ]
  tail call void @mutex_unlock(ptr noundef %18) #21
  %48 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %48, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 4 to ptr)) #21
  %49 = tail call ptr @llvm.thread.pointer() #21
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 256
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58, !prof !16

53:                                               ; preds = %46
  %54 = load volatile i32, ptr %49, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 %47, i32 -4
  br label %58

58:                                               ; preds = %53, %46, %21, %15, %2
  %59 = phi i32 [ 0, %2 ], [ %16, %15 ], [ -4, %21 ], [ -4, %46 ], [ %57, %53 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tty_tiocmget(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_operations, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0) #21
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = tail call ptr @llvm.thread.pointer() #21
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #24, !srcloc !27
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %9, i32 -1090519041) #21, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  br label %18

18:                                               ; preds = %11, %8, %2
  %19 = phi i32 [ %17, %11 ], [ %9, %8 ], [ -25, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tty_tiocgicount(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.serial_icounter_struct, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = call i32 %7(ptr noundef %0, ptr noundef nonnull %3) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 80, i32 -1090519040) #25, !srcloc !34
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #21
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #24, !srcloc !27
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #21, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %22 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 80) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #21, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 -14
  br label %25

25:                                               ; preds = %16, %12, %9, %2
  %26 = phi i32 [ %10, %9 ], [ -25, %2 ], [ -14, %12 ], [ %24, %16 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #21
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tty_tiocsserial(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [16 x i8], align 1
  %4 = alloca %struct.serial_struct, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %4, i8 0, i32 60, i1 false), !annotation !12
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 60, i32 -1090519040) #25, !srcloc !35
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !16

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #21
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #24, !srcloc !27
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #21, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 60) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #21, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !16

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %14, %8 ], [ 60, %2 ]
  %18 = sub i32 60, %17
  %19 = getelementptr i8, ptr %4, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #21
  br label %41

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false) #21, !annotation !12
  %21 = getelementptr inbounds %struct.serial_struct, ptr %4, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 34568
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = call i32 @___ratelimit(ptr noundef nonnull @tty_set_serial._rs, ptr noundef nonnull @__func__.tty_set_serial) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = call ptr @__get_task_comm(ptr noundef nonnull %3, i32 noundef 16, ptr noundef %9) #21
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.tty_set_serial, ptr noundef %29, i32 noundef %23) #22
  br label %31

31:                                               ; preds = %28, %25, %20
  %32 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tty_operations, ptr %33, i32 0, i32 30
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 %35(ptr noundef %0, ptr noundef nonnull %4) #21
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi i32 [ %38, %37 ], [ -25, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  br label %41

41:                                               ; preds = %39, %16
  %42 = phi i32 [ %40, %39 ], [ -14, %16 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #21
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tty_tiocgserial(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.serial_struct, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %3, i8 0, i64 60, i1 false)
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = call i32 %7(ptr noundef %0, ptr noundef nonnull %3) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 60, i32 -1090519040) #25, !srcloc !34
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #21
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #24, !srcloc !27
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #21, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %22 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 60) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #21, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !29
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 -14
  br label %25

25:                                               ; preds = %16, %12, %9, %2
  %26 = phi i32 [ -25, %2 ], [ %10, %9 ], [ -14, %12 ], [ %24, %16 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #21
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptm_open_peer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_jobctrl_ioctl(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hung_up_tty_ioctl(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %1, 21520
  %5 = select i1 %4, i32 -25, i32 -5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__do_SAK(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #21
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 20, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #21, !srcloc !14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #21, !srcloc !22
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !23

11:                                               ; preds = %7
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !16

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 2, %7 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef %16) #21
  br label %17

17:                                               ; preds = %15, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #21
  tail call void @tty_ldisc_flush(ptr noundef %0) #21
  tail call void @tty_driver_flush_buffer(ptr noundef %0) #21
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #21
  %18 = getelementptr %struct.pid, ptr %5, i32 0, i32 3, i32 3
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -1372
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %51, label %24

24:                                               ; preds = %17
  %25 = icmp eq ptr %0, null
  %26 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %27 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 15
  %28 = select i1 %25, ptr @.str, ptr %27
  br label %29

29:                                               ; preds = %37, %24
  %30 = phi ptr [ %21, %24 ], [ %47, %37 ]
  br i1 %25, label %37, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %26, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tty_driver, ptr %32, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %31, %29
  %38 = phi ptr [ %36, %34 ], [ @.str.1, %31 ], [ @.str.1, %29 ]
  %39 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 52
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 85
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %38, ptr noundef %28, i32 noundef %40, ptr noundef %41) #22
  %43 = tail call i32 @group_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %30, i32 noundef 3) #21
  %44 = getelementptr %struct.task_struct, ptr %30, i32 0, i32 63, i32 3
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  %47 = getelementptr i8, ptr %45, i32 -1372
  %48 = icmp eq ptr %47, null
  %49 = or i1 %46, %48
  br i1 %49, label %51, label %29

50:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #21
  tail call void @tty_ldisc_flush(ptr noundef %0) #21
  tail call void @tty_driver_flush_buffer(ptr noundef %0) #21
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #21
  br label %51

51:                                               ; preds = %50, %37, %17
  %52 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %53 = getelementptr i8, ptr %52, i32 -1116
  %54 = icmp eq ptr %53, @init_task
  br i1 %54, label %117, label %55

55:                                               ; preds = %51
  %56 = icmp eq ptr %0, null
  %57 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %58 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 15
  %59 = select i1 %56, ptr @.str, ptr %58
  br label %65

60:                                               ; preds = %112
  %61 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 34
  %62 = load volatile ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 -1116
  %64 = icmp eq ptr %63, @init_task
  br i1 %64, label %117, label %65

65:                                               ; preds = %60, %55
  %66 = phi ptr [ %53, %55 ], [ %63, %60 ]
  br label %67

67:                                               ; preds = %112, %65
  %68 = phi ptr [ %115, %112 ], [ %66, %65 ]
  %69 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 93
  %70 = load ptr, ptr %69, align 16
  %71 = getelementptr inbounds %struct.signal_struct, ptr %70, i32 0, i32 25
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, %0
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  br i1 %56, label %81, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %57, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tty_driver, ptr %76, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %75, %74
  %82 = phi ptr [ %80, %78 ], [ @.str.1, %75 ], [ @.str.1, %74 ]
  %83 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 52
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 85
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %82, ptr noundef %59, i32 noundef %84, ptr noundef %85) #22
  %87 = tail call i32 @group_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %68, i32 noundef 3) #21
  br label %112

88:                                               ; preds = %67
  %89 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %89) #21
  %90 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 90
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 @iterate_fd(ptr noundef %91, i32 noundef 0, ptr noundef nonnull @this_tty, ptr noundef %0) #21
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %88
  br i1 %56, label %101, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr %57, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.tty_driver, ptr %96, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %95, %94
  %102 = phi ptr [ %100, %98 ], [ @.str.1, %95 ], [ @.str.1, %94 ]
  %103 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 52
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 85
  %106 = add i32 %92, -1
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %102, ptr noundef %59, i32 noundef %104, ptr noundef %105, i32 noundef %106) #22
  %108 = tail call i32 @group_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %68, i32 noundef 3) #21
  br label %109

109:                                              ; preds = %101, %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %110 = load i16, ptr %89, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %89, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  br label %112

112:                                              ; preds = %109, %81
  %113 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 64
  %114 = load volatile ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %114, i32 -1380
  %116 = icmp eq ptr %115, %66
  br i1 %116, label %60, label %67

117:                                              ; preds = %60, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #21, !srcloc !14
  %118 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #21, !srcloc !25
  %119 = extractvalue { i32, i32 } %118, 0
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  br label %122

122:                                              ; preds = %121, %117
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !26
  tail call void @put_pid(ptr noundef %5) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @group_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_fd(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @this_tty(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @tty_read
  br i1 %8, label %9, label %16, !prof !23

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  %14 = add i32 %2, 1
  %15 = select i1 %13, i32 %14, i32 0
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ %15, %9 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_SAK(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 36
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #21
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_ldsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_tty_hangup(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -396
  tail call fastcc void @__tty_hangup(ptr noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_SAK_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -444
  tail call void @__do_SAK(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_put_char(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 %7(ptr noundef %0, i8 noundef zeroext %1) #21
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #21
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i32 [ %10, %9 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_register_device(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @tty_register_device_attr(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tty_register_device_attr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !12
  %7 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 20
  %10 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %9, %11
  %13 = add i32 %12, %1
  %14 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %19, i32 noundef %1) #22
  br label %123

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 10
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 4
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 11
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %33, %31 ], [ @.str.33, %25 ]
  %36 = add i32 %27, %1
  %37 = lshr i32 %36, 4
  %38 = and i32 %37, 15
  %39 = getelementptr [17 x i8], ptr @pty_line_name.ptychar, i32 0, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %36, 15
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.49, ptr noundef %35, i32 noundef %41, i32 noundef %42) #21
  br label %58

44:                                               ; preds = %21
  %45 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 13
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 128
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  br i1 %48, label %53, label %51

51:                                               ; preds = %44
  %52 = call ptr @strcpy(ptr noundef nonnull %6, ptr noundef %50)
  br label %58

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %1
  %57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.48, ptr noundef %50, i32 noundef %56) #21
  br label %58

58:                                               ; preds = %53, %51, %34
  %59 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %60 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 472) #20
  %61 = icmp eq ptr %60, null
  br i1 %61, label %123, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 27
  store i32 %13, ptr %63, align 8
  %64 = load ptr, ptr @tty_class, align 4
  %65 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 31
  store ptr %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 1
  store ptr %2, ptr %66, align 4
  %67 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 33
  store ptr @tty_device_create_release, ptr %67, align 4
  %68 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %60, ptr noundef nonnull @.str.29, ptr noundef nonnull %6) #21
  %69 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 32
  store ptr %4, ptr %69, align 8
  %70 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 8
  store ptr %3, ptr %70, align 8
  %71 = getelementptr inbounds %struct.kobject, ptr %60, i32 0, i32 7
  %72 = load i8, ptr %71, align 8
  %73 = or i8 %72, 16
  store i8 %73, ptr %71, align 8
  %74 = call i32 @device_register(ptr noundef nonnull %60) #21
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %120

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 13
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 64
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 18
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr ptr, ptr %83, i32 %1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  store ptr null, ptr %84, align 4
  call void @kfree(ptr noundef nonnull %85) #21
  br label %88

88:                                               ; preds = %87, %81
  %89 = call ptr @cdev_alloc() #21
  %90 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr ptr, ptr %91, i32 %1
  store ptr %89, ptr %92, align 4
  %93 = load ptr, ptr %90, align 4
  %94 = getelementptr ptr, ptr %93, i32 %1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %118, label %97

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.cdev, ptr %95, i32 0, i32 2
  store ptr @tty_fops, ptr %98, align 4
  %99 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %90, align 4
  %102 = getelementptr ptr, ptr %101, i32 %1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.cdev, ptr %103, i32 0, i32 1
  store ptr %100, ptr %104, align 4
  %105 = load ptr, ptr %90, align 4
  %106 = getelementptr ptr, ptr %105, i32 %1
  %107 = load ptr, ptr %106, align 4
  %108 = call i32 @cdev_add(ptr noundef %107, i32 noundef %13, i32 noundef 1) #21
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %97
  %111 = load ptr, ptr %90, align 4
  %112 = getelementptr ptr, ptr %111, i32 %1
  %113 = load ptr, ptr %112, align 4
  call void @kobject_put(ptr noundef %113) #21
  br label %118

114:                                              ; preds = %97, %76
  %115 = load i8, ptr %71, align 8
  %116 = and i8 %115, -17
  store i8 %116, ptr %71, align 8
  %117 = call i32 @kobject_uevent(ptr noundef nonnull %60, i32 noundef 0) #21
  br label %123

118:                                              ; preds = %110, %88
  %119 = phi i32 [ %108, %110 ], [ -12, %88 ]
  call void @device_del(ptr noundef nonnull %60) #21
  br label %120

120:                                              ; preds = %118, %62
  %121 = phi i32 [ %74, %62 ], [ %119, %118 ]
  call void @put_device(ptr noundef nonnull %60) #21
  %122 = inttoptr i32 %121 to ptr
  br label %123

123:                                              ; preds = %120, %114, %58, %17
  %124 = phi ptr [ inttoptr (i32 -22 to ptr), %17 ], [ %122, %120 ], [ %60, %114 ], [ inttoptr (i32 -12 to ptr), %58 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  ret ptr %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tty_device_create_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_unregister_device(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @tty_class, align 4
  %4 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 20
  %7 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %6, %8
  %10 = add i32 %9, %1
  tail call void @device_destroy(ptr noundef %3, i32 noundef %10) #21
  %11 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %1
  %19 = load ptr, ptr %18, align 4
  tail call void @cdev_del(ptr noundef %19) #21
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr ptr, ptr %20, i32 %1
  store ptr null, ptr %21, align 4
  br label %22

22:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__tty_alloc_driver(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %65, label %5

5:                                                ; preds = %3
  %6 = and i32 %2, 128
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne i32 %0, 1
  %9 = and i1 %8, %7
  br i1 %9, label %65, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 128) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 1
  store volatile i32 1, ptr %15, align 4
  store i32 21506, ptr %12, align 8
  %16 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 9
  store i32 %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 3
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 13
  store i32 %2, ptr %18, align 8
  %19 = and i32 %2, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #21
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %24, label %27, !prof !23

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 16
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 18
  store ptr null, ptr %26, align 4
  br label %56

27:                                               ; preds = %21
  %28 = extractvalue { i32, i1 } %22, 0
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #23
  %30 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 16
  store ptr %29, ptr %30, align 4
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #23
  %32 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 18
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr %30, align 4
  %34 = icmp eq ptr %33, null
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %56, label %37

37:                                               ; preds = %27, %14
  %38 = and i32 %2, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #21
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %43, label %45, !prof !23

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 17
  store ptr null, ptr %44, align 8
  br label %56

45:                                               ; preds = %40
  %46 = extractvalue { i32, i1 } %41, 0
  %47 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #23
  %48 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 17
  store ptr %47, ptr %48, align 8
  %49 = icmp eq ptr %47, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %45, %37
  %51 = phi i32 [ 1, %37 ], [ %0, %45 ]
  %52 = shl nuw i32 %51, 2
  %53 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #23
  %54 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 2
  store ptr %53, ptr %54, align 8
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %50, %45, %43, %27, %24
  %57 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 17
  %58 = load ptr, ptr %57, align 8
  tail call void @kfree(ptr noundef %58) #21
  %59 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 16
  %60 = load ptr, ptr %59, align 4
  tail call void @kfree(ptr noundef %60) #21
  %61 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 18
  %62 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %62) #21
  %63 = getelementptr inbounds %struct.tty_driver, ptr %12, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  tail call void @kfree(ptr noundef %64) #21
  tail call void @kfree(ptr noundef nonnull %12) #21
  br label %65

65:                                               ; preds = %56, %50, %10, %5, %3
  %66 = phi ptr [ inttoptr (i32 -12 to ptr), %56 ], [ %12, %50 ], [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_driver_kref_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #21, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #21, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %71, label %8, !prof !16

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #21
  br label %71

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %10 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 18
  %20 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 7
  %21 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 8
  %22 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 2
  br label %23

23:                                               ; preds = %50, %18
  %24 = phi i32 [ 0, %18 ], [ %51, %50 ]
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr ptr, ptr %25, i32 %24
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store ptr null, ptr %26, align 4
  tail call void @kfree(ptr noundef nonnull %27) #21
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, ptr %10, align 4
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load ptr, ptr @tty_class, align 4
  %36 = load i32, ptr %20, align 4
  %37 = shl i32 %36, 20
  %38 = load i32, ptr %21, align 4
  %39 = or i32 %37, %38
  %40 = add i32 %39, %24
  tail call void @device_destroy(ptr noundef %35, i32 noundef %40) #21
  %41 = load i32, ptr %10, align 4
  %42 = and i32 %41, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load ptr, ptr %22, align 4
  %46 = getelementptr ptr, ptr %45, i32 %24
  %47 = load ptr, ptr %46, align 4
  tail call void @cdev_del(ptr noundef %47) #21
  %48 = load ptr, ptr %22, align 4
  %49 = getelementptr ptr, ptr %48, i32 %24
  store ptr null, ptr %49, align 4
  br label %50

50:                                               ; preds = %44, %34, %30
  %51 = add nuw i32 %24, 1
  %52 = load i32, ptr %15, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %23, label %54

54:                                               ; preds = %50, %14
  tail call void @proc_tty_unregister_driver(ptr noundef %0) #21
  %55 = load i32, ptr %10, align 4
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  tail call void @cdev_del(ptr noundef %61) #21
  br label %62

62:                                               ; preds = %58, %54, %9
  %63 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  tail call void @kfree(ptr noundef %64) #21
  %65 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %66) #21
  %67 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 18
  %68 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %68) #21
  %69 = getelementptr %struct.tty_driver, ptr %0, i32 0, i32 16
  %70 = load ptr, ptr %69, align 4
  tail call void @kfree(ptr noundef %70) #21
  tail call void @kfree(ptr noundef %0) #21
  br label %71

71:                                               ; preds = %62, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_register_driver(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @alloc_chrdev_region(ptr noundef nonnull %2, i32 noundef %8, i32 noundef %10, ptr noundef %12) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %6
  %16 = load i32, ptr %2, align 4
  %17 = lshr i32 %16, 20
  store i32 %17, ptr %3, align 4
  %18 = and i32 %16, 1048575
  store i32 %18, ptr %7, align 4
  br label %32

19:                                               ; preds = %1
  %20 = shl i32 %4, 20
  %21 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, ptr %2, align 4
  %24 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @register_chrdev_region(i32 noundef %23, i32 noundef %25, ptr noundef %27) #21
  br label %29

29:                                               ; preds = %19, %6
  %30 = phi i32 [ %28, %19 ], [ %13, %6 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %120, label %32

32:                                               ; preds = %29, %15
  %33 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 64
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %2, align 4
  %39 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = call ptr @cdev_alloc() #21
  %42 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  store ptr %41, ptr %43, align 4
  %44 = load ptr, ptr %42, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %115, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.cdev, ptr %45, i32 0, i32 2
  store ptr @tty_fops, ptr %48, align 4
  %49 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %42, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.cdev, ptr %52, i32 0, i32 1
  store ptr %50, ptr %53, align 4
  %54 = load ptr, ptr %42, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 @cdev_add(ptr noundef %55, i32 noundef %38, i32 noundef %40) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load ptr, ptr %42, align 4
  %60 = load ptr, ptr %59, align 4
  call void @kobject_put(ptr noundef %60) #21
  br label %115

61:                                               ; preds = %47, %32
  call void @mutex_lock(ptr noundef nonnull @tty_mutex) #21
  %62 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 21
  %63 = load ptr, ptr @tty_drivers, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store ptr %63, ptr %62, align 4
  %65 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 21, i32 1
  store ptr @tty_drivers, ptr %65, align 4
  store volatile ptr %62, ptr @tty_drivers, align 4
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  %66 = load i32, ptr %33, align 4
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 9
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %84, %69
  %74 = phi i32 [ %85, %84 ], [ 0, %69 ]
  %75 = call ptr @tty_register_device_attr(ptr noundef %0, i32 noundef %74, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = ptrtoint ptr %75 to i32
  %79 = add i32 %74, -1
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 8
  %83 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 2
  br label %91

84:                                               ; preds = %73
  %85 = add nuw i32 %74, 1
  %86 = load i32, ptr %70, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %73, label %88

88:                                               ; preds = %84, %69, %61
  call void @proc_tty_register_driver(ptr noundef %0) #21
  %89 = load i32, ptr %33, align 4
  %90 = or i32 %89, 1
  store i32 %90, ptr %33, align 4
  br label %120

91:                                               ; preds = %108, %81
  %92 = phi i32 [ %79, %81 ], [ %109, %108 ]
  %93 = load ptr, ptr @tty_class, align 4
  %94 = load i32, ptr %3, align 4
  %95 = shl i32 %94, 20
  %96 = load i32, ptr %82, align 4
  %97 = or i32 %95, %96
  %98 = add i32 %97, %92
  call void @device_destroy(ptr noundef %93, i32 noundef %98) #21
  %99 = load i32, ptr %33, align 4
  %100 = and i32 %99, 64
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %91
  %103 = load ptr, ptr %83, align 4
  %104 = getelementptr ptr, ptr %103, i32 %92
  %105 = load ptr, ptr %104, align 4
  call void @cdev_del(ptr noundef %105) #21
  %106 = load ptr, ptr %83, align 4
  %107 = getelementptr ptr, ptr %106, i32 %92
  store ptr null, ptr %107, align 4
  br label %108

108:                                              ; preds = %102, %91
  %109 = add i32 %92, -1
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %91, label %111

111:                                              ; preds = %108, %77
  call void @mutex_lock(ptr noundef nonnull @tty_mutex) #21
  %112 = load ptr, ptr %65, align 4
  %113 = load ptr, ptr %62, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %112, ptr %114, align 4
  store volatile ptr %113, ptr %112, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %62, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %65, align 4
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  br label %115

115:                                              ; preds = %111, %58, %37
  %116 = phi i32 [ %78, %111 ], [ %56, %58 ], [ -12, %37 ]
  %117 = load i32, ptr %2, align 4
  %118 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 9
  %119 = load i32, ptr %118, align 4
  call void @unregister_chrdev_region(i32 noundef %117, i32 noundef %119) #21
  br label %120

120:                                              ; preds = %115, %88, %29
  %121 = phi i32 [ 0, %88 ], [ %30, %29 ], [ %116, %115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_unregister_driver(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 20
  %5 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %4, %6
  %8 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  tail call void @unregister_chrdev_region(i32 noundef %7, i32 noundef %9) #21
  tail call void @mutex_lock(ptr noundef nonnull @tty_mutex) #21
  %10 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 21
  %11 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 21, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tty_default_fops(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) @tty_fops, i32 128, i1 false)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tty_class_init() #11 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @tty_class_init.__key) #21
  store ptr %1, ptr @tty_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  br label %7

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 6
  store ptr @tty_devnode, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %4, %3 ], [ 0, %5 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @console_sysfs_notify() local_unnamed_addr #0 {
  %1 = load ptr, ptr @consdev, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @sysfs_notify(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @.str.30) #21
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tty_init() local_unnamed_addr #11 section ".init.text" {
  tail call void @tty_sysctl_init() #21
  tail call void @cdev_init(ptr noundef nonnull @tty_cdev, ptr noundef nonnull @tty_fops) #21
  %1 = tail call i32 @cdev_add(ptr noundef nonnull @tty_cdev, i32 noundef 5242880, i32 noundef 1) #21
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @register_chrdev_region(i32 noundef 5242880, i32 noundef 1, ptr noundef nonnull @.str.31) #21
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.32) #26
  unreachable

7:                                                ; preds = %3
  %8 = load ptr, ptr @tty_class, align 4
  %9 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %8, ptr noundef null, i32 noundef 5242880, ptr noundef null, ptr noundef nonnull @.str.33) #21
  tail call void @cdev_init(ptr noundef nonnull @console_cdev, ptr noundef nonnull @console_fops) #21
  %10 = tail call i32 @cdev_add(ptr noundef nonnull @console_cdev, i32 noundef 5242881, i32 noundef 1) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call i32 @register_chrdev_region(i32 noundef 5242881, i32 noundef 1, ptr noundef nonnull @.str.34) #21
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %7
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.35) #26
  unreachable

16:                                               ; preds = %12
  %17 = load ptr, ptr @tty_class, align 4
  %18 = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef %17, ptr noundef null, i32 noundef 5242881, ptr noundef null, ptr noundef nonnull @cons_dev_groups, ptr noundef nonnull @.str.36) #21
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %20 = select i1 %19, ptr null, ptr %18
  store ptr %20, ptr @consdev, align 4
  %21 = tail call i32 @vty_init(ptr noundef nonnull @console_fops) #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_sysctl_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vty_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_signal_session_leader(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hung_up_tty_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hung_up_tty_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #3 {
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hung_up_tty_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #3 {
  ret i32 349
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hung_up_tty_compat_ioctl(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %1, 21520
  %5 = select i1 %4, i32 -25, i32 -5
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hung_up_tty_fasync(i32 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #3 {
  ret i32 -25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release_one_tty(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -396
  %3 = getelementptr i8, ptr %0, i32 -384
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -380
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tty_operations, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void %10(ptr noundef %2) #21
  br label %13

13:                                               ; preds = %12, %1
  store i32 0, ptr %2, align 4
  tail call void @tty_driver_kref_put(ptr noundef %4)
  tail call void @module_put(ptr noundef %6) #21
  %14 = getelementptr i8, ptr %0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %14) #21
  %15 = getelementptr i8, ptr %0, i32 28
  %16 = getelementptr i8, ptr %0, i32 32
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %20 = load i16, ptr %14, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  %22 = getelementptr i8, ptr %0, i32 -56
  %23 = load ptr, ptr %22, align 4
  tail call void @put_pid(ptr noundef %23) #21
  %24 = getelementptr i8, ptr %0, i32 -52
  %25 = load ptr, ptr %24, align 4
  tail call void @put_pid(ptr noundef %25) #21
  tail call void @tty_ldisc_deinit(ptr noundef %2) #21
  %26 = getelementptr i8, ptr %0, i32 -388
  %27 = load ptr, ptr %26, align 4
  tail call void @put_device(ptr noundef %27) #21
  %28 = getelementptr i8, ptr %0, i32 40
  %29 = load ptr, ptr %28, align 4
  tail call void @kvfree(ptr noundef %29) #21
  store i32 -559030611, ptr %2, align 4
  tail call void @kfree(ptr noundef %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tty_buffer_cancel_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tty_lookup_driver(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  switch i32 %0, label %39 [
    i32 4194304, label %4
    i32 5242881, label %18
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr @console_driver, align 4
  %6 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #21, !srcloc !22
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !23

10:                                               ; preds = %4
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !16

14:                                               ; preds = %10, %4
  %15 = phi i32 [ 2, %4 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #21
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, ptr @fg_console, align 4
  store i32 %17, ptr %2, align 4
  br label %74

18:                                               ; preds = %3
  %19 = tail call ptr @console_device(ptr noundef %2) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %76, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tty_driver, ptr %19, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #21, !srcloc !14
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #21, !srcloc !22
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !23

26:                                               ; preds = %21
  %27 = add i32 %24, 1
  %28 = or i32 %27, %24
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30, !prof !16

30:                                               ; preds = %26, %21
  %31 = phi i32 [ 2, %21 ], [ 1, %26 ]
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef %31) #21
  br label %32

32:                                               ; preds = %30, %26
  %33 = icmp eq ptr %1, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void @tty_driver_kref_put(ptr noundef nonnull %19)
  br label %76

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, 2048
  store i32 %38, ptr %36, align 4
  br label %74

39:                                               ; preds = %3
  %40 = load ptr, ptr @tty_drivers, align 4
  %41 = icmp eq ptr %40, @tty_drivers
  br i1 %41, label %76, label %42

42:                                               ; preds = %69, %39
  %43 = phi ptr [ %70, %69 ], [ %40, %39 ]
  %44 = getelementptr i8, ptr %43, i32 -92
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 20
  %47 = getelementptr i8, ptr %43, i32 -88
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %46, %48
  %50 = icmp ugt i32 %49, %0
  br i1 %50, label %69, label %51

51:                                               ; preds = %42
  %52 = getelementptr i8, ptr %43, i32 -84
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %49
  %55 = icmp ugt i32 %54, %0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %43, i32 -120
  %58 = sub i32 %0, %49
  store i32 %58, ptr %2, align 4
  %59 = getelementptr i8, ptr %43, i32 -116
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #21, !srcloc !14
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #21, !srcloc !22
  %61 = extractvalue { i32, i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63, !prof !23

63:                                               ; preds = %56
  %64 = add i32 %61, 1
  %65 = or i32 %64, %61
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %72, label %67, !prof !16

67:                                               ; preds = %63, %56
  %68 = phi i32 [ 2, %56 ], [ 1, %63 ]
  tail call void @refcount_warn_saturate(ptr noundef %59, i32 noundef %68) #21
  br label %72

69:                                               ; preds = %51, %42
  %70 = load ptr, ptr %43, align 4
  %71 = icmp eq ptr %70, @tty_drivers
  br i1 %71, label %76, label %42

72:                                               ; preds = %67, %63
  %73 = icmp eq ptr %57, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %72, %35, %16
  %75 = phi ptr [ %57, %72 ], [ %19, %35 ], [ %5, %16 ]
  br label %76

76:                                               ; preds = %74, %72, %69, %39, %34, %18
  %77 = phi ptr [ %75, %74 ], [ inttoptr (i32 -19 to ptr), %72 ], [ inttoptr (i32 -19 to ptr), %34 ], [ inttoptr (i32 -19 to ptr), %18 ], [ inttoptr (i32 -19 to ptr), %39 ], [ inttoptr (i32 -19 to ptr), %69 ]
  ret ptr %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @console_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_setown(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_lock_exclusive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_unlock_exclusive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_ldisc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tty_read(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca [64 x i8], align 1
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %10, align 4
  %14 = icmp eq i32 %13, 21505
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ @.str.42, %2 ], [ @.str.43, %12 ]
  %17 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 20
  %20 = and i32 %18, 1048575
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %16, i32 noundef %19, i32 noundef %20, ptr noundef nonnull @.str.47) #22
  br label %85

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 16
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %85

27:                                               ; preds = %22
  %28 = tail call ptr @tty_ldisc_ref_wait(ptr noundef nonnull %10) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %85, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @tty_ldisc_deref(ptr noundef nonnull %28) #21
  br label %85

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false) #21, !annotation !12
  %37 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  br label %39

39:                                               ; preds = %67, %36
  %40 = phi i32 [ 0, %36 ], [ %68, %67 ]
  %41 = phi i32 [ 0, %36 ], [ %63, %67 ]
  %42 = phi i32 [ %38, %36 ], [ %69, %67 ]
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 64) #21
  %44 = load ptr, ptr %28, align 4
  %45 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %43, ptr noundef nonnull %3, i32 noundef %41) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %39
  %50 = icmp slt i32 %47, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = icmp eq i32 %40, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %51
  %54 = icmp eq i32 %47, -75
  %55 = select i1 %54, i32 0, i32 %41
  br label %72

56:                                               ; preds = %49
  %57 = icmp ugt i32 %47, 64
  br i1 %57, label %58, label %59, !prof !23

58:                                               ; preds = %56
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.41, i32 noundef 64, i32 noundef %47) #21
  br label %61

59:                                               ; preds = %56
  %60 = call i32 @_copy_to_iter(ptr noundef nonnull %4, i32 noundef %47, ptr noundef %1) #21
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i32 [ %60, %59 ], [ 0, %58 ]
  %63 = add i32 %62, %41
  %64 = sub i32 %42, %62
  %65 = icmp eq i32 %62, %47
  br i1 %65, label %67, label %66, !prof !16

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %61
  %68 = phi i32 [ -14, %66 ], [ %40, %61 ]
  %69 = phi i32 [ 0, %66 ], [ %64, %61 ]
  %70 = load ptr, ptr %3, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %39

72:                                               ; preds = %67, %53, %51, %39
  %73 = phi i32 [ %41, %51 ], [ %55, %53 ], [ %63, %67 ], [ %41, %39 ]
  %74 = phi i32 [ %40, %51 ], [ %47, %53 ], [ %68, %67 ], [ %40, %39 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false) #21
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #21, !srcloc !39
  %75 = icmp eq i32 %73, 0
  %76 = select i1 %75, i32 %74, i32 %73
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  call void @tty_ldisc_deref(ptr noundef nonnull %28) #21
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %80 = call i64 @ktime_get_real_seconds() #21
  %81 = load i64, ptr %79, align 8
  %82 = xor i64 %81, %80
  %83 = icmp ult i64 %82, 8
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store i64 %80, ptr %79, align 8
  br label %85

85:                                               ; preds = %84, %78, %72, %35, %27, %22, %15
  %86 = phi i32 [ -5, %22 ], [ %76, %72 ], [ -5, %15 ], [ 0, %27 ], [ -5, %35 ], [ %76, %78 ], [ %76, %84 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_devt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tty_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %5, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 4
  %11 = icmp eq i32 %10, 21505
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ @.str.42, %2 ], [ @.str.43, %9 ]
  %14 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 20
  %17 = and i32 %15, 1048575
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %13, i32 noundef %16, i32 noundef %17, ptr noundef nonnull @.str.50) #22
  br label %31

19:                                               ; preds = %9
  %20 = tail call ptr @tty_ldisc_ref_wait(ptr noundef nonnull %5) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %23, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call i32 %25(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #21
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ %28, %27 ], [ 0, %22 ]
  tail call void @tty_ldisc_deref(ptr noundef nonnull %20) #21
  br label %31

31:                                               ; preds = %29, %19, %12
  %32 = phi i32 [ %30, %29 ], [ 0, %12 ], [ 349, %19 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tty_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #21
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 16) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %215, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %14 = icmp eq i32 %5, 5242880
  %15 = icmp eq ptr %1, null
  %16 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  br label %17

17:                                               ; preds = %152, %12
  %18 = phi ptr [ %10, %12 ], [ %154, %152 ]
  store ptr %18, ptr %13, align 8
  br i1 %14, label %19, label %44

19:                                               ; preds = %17
  %20 = call ptr @get_current_tty() #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %138, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %6, align 4
  %24 = or i32 %23, 2048
  store i32 %24, ptr %6, align 4
  call void @tty_lock(ptr noundef nonnull %20) #21
  %25 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #21, !srcloc !14
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #21, !srcloc !15
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %39, label %31, !prof !16

31:                                               ; preds = %29
  call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 3) #21
  br label %39

32:                                               ; preds = %22
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %33 = getelementptr %struct.tty_struct, ptr %20, i32 0, i32 28
  store i32 -32, ptr %33, align 4
  %34 = getelementptr %struct.tty_struct, ptr %20, i32 0, i32 28, i32 1
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr %struct.tty_struct, ptr %20, i32 0, i32 28, i32 1, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr %struct.tty_struct, ptr %20, i32 0, i32 28, i32 2
  store ptr @release_one_tty, ptr %36, align 4
  %37 = load ptr, ptr @system_wq, align 4
  %38 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %33) #21
  br label %39

39:                                               ; preds = %32, %31, %29
  %40 = call fastcc i32 @tty_reopen(ptr noundef nonnull %20) #21
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %135

42:                                               ; preds = %39
  call void @tty_unlock(ptr noundef nonnull %20) #21
  %43 = inttoptr i32 %40 to ptr
  br label %135

44:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 -1, ptr %3, align 4
  call void @mutex_lock(ptr noundef nonnull @tty_mutex) #21
  %45 = call fastcc ptr @tty_lookup_driver(i32 noundef %5, ptr noundef %1, ptr noundef nonnull %3) #21
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  br label %133

48:                                               ; preds = %44
  %49 = load i32, ptr %3, align 4
  %50 = getelementptr inbounds %struct.tty_driver, ptr %45, i32 0, i32 20
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  br i1 %15, label %78, label %55

55:                                               ; preds = %54
  %56 = call ptr %52(ptr noundef %45, ptr noundef nonnull %1, i32 noundef %49) #21
  br label %62

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.tty_driver, ptr %45, i32 0, i32 16
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr ptr, ptr %59, i32 %49
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi ptr [ %56, %55 ], [ %61, %57 ]
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = icmp eq ptr %63, null
  br i1 %66, label %128, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.tty_struct, ptr %63, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #21, !srcloc !14
  %69 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #21, !srcloc !22
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72, !prof !23

72:                                               ; preds = %67
  %73 = add i32 %70, 1
  %74 = or i32 %73, %70
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %80, label %76, !prof !16

76:                                               ; preds = %72, %67
  %77 = phi i32 [ 2, %67 ], [ 1, %72 ]
  call void @refcount_warn_saturate(ptr noundef %68, i32 noundef %77) #21
  br label %80

78:                                               ; preds = %62, %54
  %79 = phi ptr [ inttoptr (i32 -5 to ptr), %54 ], [ %63, %62 ]
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  br label %131

80:                                               ; preds = %76, %72
  %81 = getelementptr inbounds %struct.tty_struct, ptr %63, i32 0, i32 37
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.tty_port, ptr %82, i32 0, i32 11
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %80
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #21, !srcloc !14
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #21, !srcloc !15
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = icmp sgt i32 %89, 0
  br i1 %92, label %101, label %93, !prof !16

93:                                               ; preds = %91
  call void @refcount_warn_saturate(ptr noundef %68, i32 noundef 3) #21
  br label %101

94:                                               ; preds = %87
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %95 = getelementptr %struct.tty_struct, ptr %63, i32 0, i32 28
  store i32 -32, ptr %95, align 4
  %96 = getelementptr %struct.tty_struct, ptr %63, i32 0, i32 28, i32 1
  store volatile ptr %96, ptr %96, align 4
  %97 = getelementptr %struct.tty_struct, ptr %63, i32 0, i32 28, i32 1, i32 1
  store ptr %96, ptr %97, align 4
  %98 = getelementptr %struct.tty_struct, ptr %63, i32 0, i32 28, i32 2
  store ptr @release_one_tty, ptr %98, align 4
  %99 = load ptr, ptr @system_wq, align 4
  %100 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %99, ptr noundef %95) #21
  br label %101

101:                                              ; preds = %94, %93, %91
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  br label %131

102:                                              ; preds = %80
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  %103 = call i32 @tty_lock_interruptible(ptr noundef nonnull %63) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #21, !srcloc !14
  %104 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #21, !srcloc !15
  %105 = extractvalue { i32, i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = icmp sgt i32 %105, 0
  br i1 %108, label %117, label %109, !prof !16

109:                                              ; preds = %107
  call void @refcount_warn_saturate(ptr noundef %68, i32 noundef 3) #21
  br label %117

110:                                              ; preds = %102
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  %111 = getelementptr %struct.tty_struct, ptr %63, i32 0, i32 28
  store i32 -32, ptr %111, align 4
  %112 = getelementptr %struct.tty_struct, ptr %63, i32 0, i32 28, i32 1
  store volatile ptr %112, ptr %112, align 4
  %113 = getelementptr %struct.tty_struct, ptr %63, i32 0, i32 28, i32 1, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr %struct.tty_struct, ptr %63, i32 0, i32 28, i32 2
  store ptr @release_one_tty, ptr %114, align 4
  %115 = load ptr, ptr @system_wq, align 4
  %116 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %115, ptr noundef %111) #21
  br label %117

117:                                              ; preds = %110, %109, %107
  %118 = icmp eq i32 %103, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %117
  %120 = icmp eq i32 %103, -4
  %121 = select i1 %120, i32 -512, i32 %103
  %122 = inttoptr i32 %121 to ptr
  br label %131

123:                                              ; preds = %117
  %124 = call fastcc i32 @tty_reopen(ptr noundef nonnull %63) #21
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  call void @tty_unlock(ptr noundef nonnull %63) #21
  %127 = inttoptr i32 %124 to ptr
  br label %131

128:                                              ; preds = %65
  %129 = load i32, ptr %3, align 4
  %130 = call ptr @tty_init_dev(ptr noundef %45, i32 noundef %129) #21
  call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #21
  br label %131

131:                                              ; preds = %128, %126, %123, %119, %101, %78
  %132 = phi ptr [ %79, %78 ], [ inttoptr (i32 -16 to ptr), %101 ], [ %122, %119 ], [ %127, %126 ], [ %63, %123 ], [ %130, %128 ]
  call void @tty_driver_kref_put(ptr noundef %45) #21
  br label %133

133:                                              ; preds = %131, %47
  %134 = phi ptr [ %45, %47 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %135

135:                                              ; preds = %133, %42, %39
  %136 = phi ptr [ %43, %42 ], [ %134, %133 ], [ %20, %39 ]
  %137 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %138, label %156

138:                                              ; preds = %135, %19
  %139 = phi ptr [ %136, %135 ], [ inttoptr (i32 -6 to ptr), %19 ]
  %140 = load ptr, ptr %13, align 8
  store ptr null, ptr %13, align 8
  call void @kfree(ptr noundef %140) #21
  %141 = icmp eq ptr %139, inttoptr (i32 -11 to ptr)
  br i1 %141, label %142, label %213

142:                                              ; preds = %138
  %143 = tail call ptr @llvm.thread.pointer() #21
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %144, 256
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %215, !prof !16

147:                                              ; preds = %142
  %148 = load volatile i32, ptr %143, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %215

151:                                              ; preds = %147
  call void @schedule() #21
  br label %152

152:                                              ; preds = %193, %190, %189, %151
  %153 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %154 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %153, i32 noundef 3264, i32 noundef 16) #20
  %155 = icmp eq ptr %154, null
  br i1 %155, label %215, label %17

156:                                              ; preds = %135
  %157 = load ptr, ptr %13, align 8
  store ptr %136, ptr %157, align 4
  %158 = getelementptr inbounds %struct.tty_file_private, ptr %157, i32 0, i32 1
  store ptr %1, ptr %158, align 4
  %159 = getelementptr inbounds %struct.tty_struct, ptr %136, i32 0, i32 31
  call void @_raw_spin_lock(ptr noundef %159) #21
  %160 = getelementptr inbounds %struct.tty_file_private, ptr %157, i32 0, i32 2
  %161 = getelementptr inbounds %struct.tty_struct, ptr %136, i32 0, i32 32
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.list_head, ptr %162, i32 0, i32 1
  store ptr %160, ptr %163, align 4
  store ptr %162, ptr %160, align 4
  %164 = getelementptr inbounds %struct.tty_file_private, ptr %157, i32 0, i32 2, i32 1
  store ptr %161, ptr %164, align 4
  store volatile ptr %160, ptr %161, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !8
  %165 = load i16, ptr %159, align 4
  %166 = add i16 %165, 1
  store i16 %166, ptr %159, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !11
  call fastcc void @check_tty_count(ptr noundef %136, ptr noundef nonnull @__func__.tty_open)
  %167 = getelementptr inbounds %struct.tty_struct, ptr %136, i32 0, i32 4
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.tty_operations, ptr %168, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %156
  store i32 %7, ptr %6, align 4
  br label %176

173:                                              ; preds = %156
  %174 = call i32 %170(ptr noundef %136, ptr noundef %1) #21
  store i32 %7, ptr %6, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %194, label %176

176:                                              ; preds = %173, %172
  %177 = phi i32 [ -19, %172 ], [ %174, %173 ]
  call void @tty_unlock(ptr noundef %136) #21
  %178 = call i32 @tty_release(ptr noundef %0, ptr noundef %1)
  %179 = icmp eq i32 %177, -512
  br i1 %179, label %180, label %215

180:                                              ; preds = %176
  %181 = tail call ptr @llvm.thread.pointer() #21
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 256
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %215, !prof !16

185:                                              ; preds = %180
  %186 = load volatile i32, ptr %181, align 4
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %215

189:                                              ; preds = %185
  call void @schedule() #21
  br i1 %15, label %152, label %190

190:                                              ; preds = %189
  %191 = load ptr, ptr %16, align 4
  %192 = icmp eq ptr %191, @hung_up_tty_fops
  br i1 %192, label %193, label %152

193:                                              ; preds = %190
  store ptr @tty_fops, ptr %16, align 4
  br label %152

194:                                              ; preds = %173
  %195 = getelementptr inbounds %struct.tty_struct, ptr %136, i32 0, i32 16
  call void @_clear_bit(i32 noundef 18, ptr noundef %195) #21
  %196 = load i32, ptr %6, align 4
  %197 = freeze i32 %196
  %198 = and i32 %197, 256
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %194
  switch i32 %5, label %201 [
    i32 5242881, label %212
    i32 4194304, label %212
  ]

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.tty_struct, ptr %136, i32 0, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.tty_driver, ptr %203, i32 0, i32 10
  %205 = load i16, ptr %204, align 4
  %206 = icmp eq i16 %205, 4
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.tty_driver, ptr %203, i32 0, i32 11
  %209 = load i16, ptr %208, align 2
  %210 = icmp eq i16 %209, 1
  br i1 %210, label %212, label %211

211:                                              ; preds = %207, %201
  call void @tty_open_proc_set_tty(ptr noundef %1, ptr noundef %136) #21
  br label %212

212:                                              ; preds = %211, %207, %200, %200, %194
  call void @tty_unlock(ptr noundef %136) #21
  br label %215

213:                                              ; preds = %138
  %214 = ptrtoint ptr %139 to i32
  br label %215

215:                                              ; preds = %213, %212, %185, %180, %176, %152, %147, %142, %2
  %216 = phi i32 [ 0, %212 ], [ %214, %213 ], [ -12, %2 ], [ -11, %147 ], [ %177, %176 ], [ -512, %185 ], [ -12, %152 ], [ -11, %142 ], [ -512, %180 ]
  ret i32 %216
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tty_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  tail call void @tty_lock(ptr noundef %6) #21
  %7 = icmp eq ptr %1, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @hung_up_tty_fops
  br i1 %11, label %60, label %12

12:                                               ; preds = %8, %3
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %14, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %14, align 4
  %20 = icmp eq i32 %19, 21505
  br i1 %20, label %28, label %21

21:                                               ; preds = %18, %12
  %22 = phi ptr [ @.str.42, %12 ], [ @.str.43, %18 ]
  %23 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 20
  %26 = and i32 %24, 1048575
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %22, i32 noundef %25, i32 noundef %26, ptr noundef nonnull @.str.45) #22
  br label %60

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 25
  %30 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %29) #21
  %31 = icmp sgt i32 %30, 0
  %32 = icmp ne i32 %2, 0
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 20
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #21
  %37 = getelementptr inbounds %struct.tty_struct, ptr %14, i32 0, i32 20, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = tail call ptr @llvm.thread.pointer() #21
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 62
  %43 = load ptr, ptr %42, align 64
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %40, %34
  %46 = phi ptr [ %43, %40 ], [ %38, %34 ]
  %47 = phi i32 [ 1, %40 ], [ 2, %34 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %46) #21, !srcloc !14
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %46, ptr nonnull %46, i32 1, ptr nonnull elementtype(i32) %46) #21, !srcloc !22
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !23

51:                                               ; preds = %45
  %52 = add i32 %49, 1
  %53 = or i32 %52, %49
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55, !prof !16

55:                                               ; preds = %51, %45
  %56 = phi i32 [ 2, %45 ], [ 1, %51 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %46, i32 noundef %56) #21
  br label %57

57:                                               ; preds = %55, %51, %40
  %58 = phi ptr [ null, %40 ], [ %46, %51 ], [ %46, %55 ]
  %59 = phi i32 [ 1, %40 ], [ %47, %51 ], [ %47, %55 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #21
  tail call void @__f_setown(ptr noundef %1, ptr noundef %58, i32 noundef %59, i32 noundef 0) #21
  tail call void @put_pid(ptr noundef %58) #21
  br label %60

60:                                               ; preds = %57, %28, %21, %8
  %61 = phi i32 [ -25, %8 ], [ 0, %21 ], [ 0, %57 ], [ %30, %28 ]
  tail call void @tty_unlock(ptr noundef %6) #21
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tty_show_fdinfo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tty_operations, ptr %9, i32 0, i32 31
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef nonnull %5, ptr noundef %0) #21
  br label %16

16:                                               ; preds = %15, %11, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_open_proc_set_tty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tty_reopen(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 10
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 11
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %43, label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call zeroext i1 @capable(i32 noundef 21) #21
  br i1 %21, label %22, label %43

22:                                               ; preds = %20, %15
  %23 = tail call ptr @tty_ldisc_ref_wait(ptr noundef %0) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @tty_ldisc_deref(ptr noundef nonnull %23) #21
  br label %40

26:                                               ; preds = %22
  %27 = tail call i32 @tty_ldisc_lock(ptr noundef %0, i32 noundef 500) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @tty_ldisc_unlock(ptr noundef %0) #21
  br label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = tail call i32 @tty_ldisc_reinit(ptr noundef %0, i32 noundef %37) #21
  tail call void @tty_ldisc_unlock(ptr noundef %0) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %33, %25
  %41 = load i32, ptr %12, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %12, align 4
  br label %43

43:                                               ; preds = %40, %34, %26, %20, %11, %7
  %44 = phi i32 [ -5, %7 ], [ -11, %11 ], [ -16, %20 ], [ %27, %26 ], [ 0, %40 ], [ %38, %34 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_reinit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal noalias ptr @tty_devnode(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #18 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %8 [
    i32 5242880, label %7
    i32 5242882, label %7
  ]

7:                                                ; preds = %4, %4
  store i16 438, ptr %1, align 2
  br label %8

8:                                                ; preds = %7, %4, %2
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cons_active(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca [16 x ptr], align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !12
  tail call void @console_lock() #21
  %6 = load ptr, ptr @console_drivers, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %87, label %8

8:                                                ; preds = %27, %3
  %9 = phi ptr [ %30, %27 ], [ %6, %3 ]
  %10 = phi i32 [ %28, %27 ], [ 0, %3 ]
  %11 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 8
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = add i32 %10, 1
  %25 = getelementptr [16 x ptr], ptr %4, i32 0, i32 %10
  store ptr %9, ptr %25, align 4
  %26 = icmp ugt i32 %24, 15
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %18, %14, %8
  %28 = phi i32 [ %10, %18 ], [ %24, %23 ], [ %10, %14 ], [ %10, %8 ]
  %29 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 14
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %8

32:                                               ; preds = %27
  %33 = icmp eq i32 %28, 0
  br i1 %33, label %87, label %34

34:                                               ; preds = %32, %23
  %35 = phi i32 [ %28, %32 ], [ %24, %23 ]
  br label %36

36:                                               ; preds = %79, %34
  %37 = phi i32 [ %39, %79 ], [ %35, %34 ]
  %38 = phi i32 [ %86, %79 ], [ 0, %34 ]
  %39 = add i32 %37, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %40 = getelementptr [16 x ptr], ptr %4, i32 0, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.console, ptr %41, i32 0, i32 9
  %43 = load i16, ptr %42, align 2
  %44 = sext i16 %43 to i32
  store i32 %44, ptr %5, align 4
  %45 = getelementptr inbounds %struct.console, ptr %41, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = call ptr %46(ptr noundef %41, ptr noundef nonnull %5) #21
  %48 = icmp eq ptr %47, null
  %49 = load i16, ptr %42, align 2
  br i1 %48, label %75, label %50

50:                                               ; preds = %36
  %51 = icmp sgt i16 %49, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.tty_driver, ptr %47, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %75, label %56

56:                                               ; preds = %52, %50
  %57 = getelementptr i8, ptr %2, i32 %38
  %58 = getelementptr inbounds %struct.tty_driver, ptr %47, i32 0, i32 13
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.tty_driver, ptr %47, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  br i1 %61, label %69, label %64

64:                                               ; preds = %56
  %65 = call ptr @stpcpy(ptr %57, ptr %63) #21
  %66 = ptrtoint ptr %65 to i32
  %67 = ptrtoint ptr %57 to i32
  %68 = sub i32 %66, %67
  br label %79

69:                                               ; preds = %56
  %70 = load i32, ptr %5, align 4
  %71 = getelementptr inbounds %struct.tty_driver, ptr %47, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %70
  %74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %57, ptr noundef nonnull @.str.48, ptr noundef %63, i32 noundef %73) #21
  br label %79

75:                                               ; preds = %52, %36
  %76 = getelementptr i8, ptr %2, i32 %38
  %77 = sext i16 %49 to i32
  %78 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %76, ptr noundef nonnull @.str.48, ptr noundef %41, i32 noundef %77)
  br label %79

79:                                               ; preds = %75, %69, %64
  %80 = phi i32 [ %78, %75 ], [ %68, %64 ], [ %74, %69 ]
  %81 = add i32 %80, %38
  %82 = getelementptr i8, ptr %2, i32 %81
  %83 = icmp eq i32 %39, 0
  %84 = select i1 %83, i8 10, i8 32
  store i8 %84, ptr %82, align 1
  %85 = getelementptr i8, ptr %82, i32 1
  store i8 0, ptr %85, align 1
  %86 = add i32 %81, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br i1 %83, label %87, label %36

87:                                               ; preds = %79, %32, %3
  %88 = phi i32 [ 0, %32 ], [ 0, %3 ], [ %86, %79 ]
  call void @console_unlock() #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias nocapture readonly) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readonly }
attributes #25 = { nounwind readnone }
attributes #26 = { cold noreturn nounwind }

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
!8 = !{i64 2149384050}
!9 = !{i64 2149379874}
!10 = !{i64 2149379949, i64 2149379976, i64 2149380023, i64 2149380045, i64 2149380073, i64 2149380093}
!11 = !{i64 2149407053}
!12 = !{!"auto-init"}
!13 = !{i64 2148323184}
!14 = !{i64 720118, i64 2148210089, i64 2148210115, i64 2148210162, i64 2148210184, i64 2148210212, i64 2148210232}
!15 = !{i64 2148225319, i64 2148225351, i64 2148225380, i64 2148225414, i64 2148225445, i64 2148225468}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149457965}
!18 = !{i64 626041}
!19 = !{i64 2149408194}
!20 = !{i8 0, i8 2}
!21 = !{i64 2148221504, i64 2148221530, i64 2148221559, i64 2148221593, i64 2148221624, i64 2148221647}
!22 = !{i64 2148222962, i64 2148222994, i64 2148223023, i64 2148223057, i64 2148223088, i64 2148223111}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2149391932}
!25 = !{i64 1895356, i64 1895379, i64 1895399, i64 1895423, i64 1895439}
!26 = !{i64 2149429535}
!27 = !{i64 2571999}
!28 = !{i64 2572196}
!29 = !{i64 2150057475}
!30 = !{i64 2153421642, i64 2153421922, i64 2153422256, i64 2153422590}
!31 = !{i64 2153430679, i64 2153430959, i64 2153431293, i64 2153431627}
!32 = !{i64 2153407057, i64 2153407337, i64 2153407671, i64 2153408005}
!33 = !{i64 2153360562, i64 2153360842, i64 2153361176, i64 2153361510}
!34 = !{i64 2150076465, i64 2150076490}
!35 = !{i64 2150075887, i64 2150075912}
!36 = !{i64 2153387747, i64 2153388027, i64 2153388361, i64 2153388695}
!37 = !{i64 2153378845, i64 2153379125, i64 2153379459, i64 2153379793}
!38 = !{i64 2153395912, i64 2153396192, i64 2153396526, i64 2153396860}
!39 = !{i64 2148084129}
