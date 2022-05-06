; ModuleID = '/llk/IR/drivers/tty/vt/vt.c_pt.bc'
source_filename = "../drivers/tty/vt/vt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_vt_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_vt_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_vt_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_vt_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_vt_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_vt_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_unbind_con_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22do_unbind_con_driver\22\09\09\09\09\09"
module asm "__kstrtabns_do_unbind_con_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_con_is_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22con_is_bound\22\09\09\09\09\09"
module asm "__kstrtabns_con_is_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_con_is_visible:\09\09\09\09\09"
module asm "\09.asciz \09\22con_is_visible\22\09\09\09\09\09"
module asm "__kstrtabns_con_is_visible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_con_debug_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22con_debug_enter\22\09\09\09\09\09"
module asm "__kstrtabns_con_debug_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_con_debug_leave:\09\09\09\09\09"
module asm "\09.asciz \09\22con_debug_leave\22\09\09\09\09\09"
module asm "__kstrtabns_con_debug_leave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_unregister_con_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22do_unregister_con_driver\22\09\09\09\09\09"
module asm "__kstrtabns_do_unregister_con_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_take_over_console:\09\09\09\09\09"
module asm "\09.asciz \09\22do_take_over_console\22\09\09\09\09\09"
module asm "__kstrtabns_do_take_over_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_blank_screen:\09\09\09\09\09"
module asm "\09.asciz \09\22do_blank_screen\22\09\09\09\09\09"
module asm "__kstrtabns_do_blank_screen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_unblank_screen:\09\09\09\09\09"
module asm "\09.asciz \09\22do_unblank_screen\22\09\09\09\09\09"
module asm "__kstrtabns_do_unblank_screen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_screen_glyph:\09\09\09\09\09"
module asm "\09.asciz \09\22screen_glyph\22\09\09\09\09\09"
module asm "__kstrtabns_screen_glyph:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_screen_glyph_unicode:\09\09\09\09\09"
module asm "\09.asciz \09\22screen_glyph_unicode\22\09\09\09\09\09"
module asm "__kstrtabns_screen_glyph_unicode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_screen_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22screen_pos\22\09\09\09\09\09"
module asm "__kstrtabns_screen_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vc_scrolldelta_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22vc_scrolldelta_helper\22\09\09\09\09\09"
module asm "__kstrtabns_vc_scrolldelta_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_color_table:\09\09\09\09\09"
module asm "\09.asciz \09\22color_table\22\09\09\09\09\09"
module asm "__kstrtabns_color_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_default_red:\09\09\09\09\09"
module asm "\09.asciz \09\22default_red\22\09\09\09\09\09"
module asm "__kstrtabns_default_red:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_default_grn:\09\09\09\09\09"
module asm "\09.asciz \09\22default_grn\22\09\09\09\09\09"
module asm "__kstrtabns_default_grn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_default_blu:\09\09\09\09\09"
module asm "\09.asciz \09\22default_blu\22\09\09\09\09\09"
module asm "__kstrtabns_default_blu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_update_region:\09\09\09\09\09"
module asm "\09.asciz \09\22update_region\22\09\09\09\09\09"
module asm "__kstrtabns_update_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_redraw_screen:\09\09\09\09\09"
module asm "\09.asciz \09\22redraw_screen\22\09\09\09\09\09"
module asm "__kstrtabns_redraw_screen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vc_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22vc_resize\22\09\09\09\09\09"
module asm "__kstrtabns_vc_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fg_console:\09\09\09\09\09"
module asm "\09.asciz \09\22fg_console\22\09\09\09\09\09"
module asm "__kstrtabns_fg_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_blank_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22console_blank_hook\22\09\09\09\09\09"
module asm "__kstrtabns_console_blank_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_blanked:\09\09\09\09\09"
module asm "\09.asciz \09\22console_blanked\22\09\09\09\09\09"
module asm "__kstrtabns_console_blanked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vc_cons:\09\09\09\09\09"
module asm "\09.asciz \09\22vc_cons\22\09\09\09\09\09"
module asm "__kstrtabns_vc_cons:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_global_cursor_default:\09\09\09\09\09"
module asm "\09.asciz \09\22global_cursor_default\22\09\09\09\09\09"
module asm "__kstrtabns_global_cursor_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_give_up_console:\09\09\09\09\09"
module asm "\09.asciz \09\22give_up_console\22\09\09\09\09\09"
module asm "__kstrtabns_give_up_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vc = type { ptr, %struct.work_struct }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.con_driver = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.consw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.interval = type { i32, i32 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.34, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.34 = type { ptr }
%struct.llist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vt_notifier_param = type { ptr, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.35, %struct.anon.36, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.anon.35 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.36 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.console_font_op = type { i32, i32, i32, i32, i32, ptr }
%struct.rgb = type { i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@default_utf8 = dso_local global i32 1, align 4
@__param_str_default_utf8 = internal constant [16 x i8] c"vt.default_utf8\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_default_utf8 = internal constant %struct.kernel_param { ptr @__param_str_default_utf8, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @default_utf8 } }, section "__param", align 4
@__UNIQUE_ID_default_utf8type224 = internal constant [29 x i8] c"vt.parmtype=default_utf8:int\00", section ".modinfo", align 1
@global_cursor_default = dso_local global i32 -1, align 4
@__param_str_global_cursor_default = internal constant [25 x i8] c"vt.global_cursor_default\00", align 1
@__param_global_cursor_default = internal constant %struct.kernel_param { ptr @__param_str_global_cursor_default, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @global_cursor_default } }, section "__param", align 4
@__UNIQUE_ID_global_cursor_defaulttype225 = internal constant [38 x i8] c"vt.parmtype=global_cursor_default:int\00", section ".modinfo", align 1
@__param_str_cur_default = internal constant [15 x i8] c"vt.cur_default\00", align 1
@cur_default = internal global i32 2, align 4
@__param_cur_default = internal constant %struct.kernel_param { ptr @__param_str_cur_default, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @cur_default } }, section "__param", align 4
@__UNIQUE_ID_cur_defaulttype226 = internal constant [28 x i8] c"vt.parmtype=cur_default:int\00", section ".modinfo", align 1
@__param_str_consoleblank = internal constant [13 x i8] c"consoleblank\00", align 1
@blankinterval = internal global i32 0, align 4
@__param_consoleblank = internal constant %struct.kernel_param { ptr @__param_str_consoleblank, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.63 { ptr @blankinterval } }, section "__param", align 4
@want_console = dso_local local_unnamed_addr global i32 -1, align 4
@vt_notifier_list = internal global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_register_vt_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_vt_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_vt_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_vt_notifier to i32), ptr @__kstrtab_register_vt_notifier, ptr @__kstrtabns_register_vt_notifier }, section "___ksymtab_gpl+register_vt_notifier", align 4
@__kstrtab_unregister_vt_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_vt_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_vt_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_vt_notifier to i32), ptr @__kstrtab_unregister_vt_notifier, ptr @__kstrtabns_unregister_vt_notifier }, section "___ksymtab_gpl+unregister_vt_notifier", align 4
@console_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @console_work, i64 4), ptr getelementptr (i8, ptr @console_work, i64 4) }, ptr @console_callback }, align 4
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [20 x i8] c"drivers/tty/vt/vt.c\00", align 1
@complement_pos.old_offset = internal unnamed_addr global i32 -1, align 4
@complement_pos.old = internal unnamed_addr global i16 0, align 2
@complement_pos.oldx = internal unnamed_addr global i16 0, align 2
@complement_pos.oldy = internal unnamed_addr global i16 0, align 2
@vc_cons = dso_local global [63 x %struct.vc] zeroinitializer, align 4
@fg_console = dso_local global i32 0, align 4
@tty0dev = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@vc_port_ops = internal constant %struct.tty_port_operations { ptr null, ptr null, ptr null, ptr null, ptr @vc_port_destruct }, align 4
@color_table = dso_local constant [16 x i8] c"\00\04\02\06\01\05\03\07\08\0C\0A\0E\09\0D\0B\0F", align 1
@default_red = dso_local global [16 x i8] c"\00\AA\00\AA\00\AA\00\AAU\FFU\FFU\FFU\FF", align 1
@__param_str_default_red = internal constant [15 x i8] c"vt.default_red\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_default_red = internal constant %struct.kparam_array { i32 16, i32 1, ptr null, ptr @param_ops_byte, ptr @default_red }, align 4
@__param_default_red = internal constant %struct.kernel_param { ptr @__param_str_default_red, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @__param_arr_default_red } }, section "__param", align 4
@__UNIQUE_ID_default_redtype233 = internal constant [38 x i8] c"vt.parmtype=default_red:array of byte\00", section ".modinfo", align 1
@default_grn = dso_local global [16 x i8] c"\00\00\AAU\00\00\AA\AAUU\FF\FFUU\FF\FF", align 1
@__param_str_default_grn = internal constant [15 x i8] c"vt.default_grn\00", align 1
@__param_arr_default_grn = internal constant %struct.kparam_array { i32 16, i32 1, ptr null, ptr @param_ops_byte, ptr @default_grn }, align 4
@__param_default_grn = internal constant %struct.kernel_param { ptr @__param_str_default_grn, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @__param_arr_default_grn } }, section "__param", align 4
@__UNIQUE_ID_default_grntype234 = internal constant [38 x i8] c"vt.parmtype=default_grn:array of byte\00", section ".modinfo", align 1
@default_blu = dso_local global [16 x i8] c"\00\00\00\00\AA\AA\AA\AAUUUU\FF\FF\FF\FF", align 1
@__param_str_default_blu = internal constant [15 x i8] c"vt.default_blu\00", align 1
@__param_arr_default_blu = internal constant %struct.kparam_array { i32 16, i32 1, ptr null, ptr @param_ops_byte, ptr @default_blu }, align 4
@__param_default_blu = internal constant %struct.kernel_param { ptr @__param_str_default_blu, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @__param_arr_default_blu } }, section "__param", align 4
@__UNIQUE_ID_default_blutype235 = internal constant [38 x i8] c"vt.parmtype=default_blu:array of byte\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\1B[M%c%c%c\00", align 1
@vt_dont_switch = external dso_local local_unnamed_addr global i8, align 1
@vt_kmsg_redirect.kmsg_con = internal global i32 0, align 4
@ignore_poke = internal unnamed_addr global i1 false, align 4
@console_blanked = dso_local global i32 0, align 4
@__param_str_color = internal constant [9 x i8] c"vt.color\00", align 1
@default_color = internal global i32 7, align 4
@__param_color = internal constant %struct.kernel_param { ptr @__param_str_color, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @default_color } }, section "__param", align 4
@__UNIQUE_ID_colortype248 = internal constant [22 x i8] c"vt.parmtype=color:int\00", section ".modinfo", align 1
@__param_str_italic = internal constant [10 x i8] c"vt.italic\00", align 1
@default_italic_color = internal global i32 2, align 4
@__param_italic = internal constant %struct.kernel_param { ptr @__param_str_italic, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @default_italic_color } }, section "__param", align 4
@__UNIQUE_ID_italictype249 = internal constant [23 x i8] c"vt.parmtype=italic:int\00", section ".modinfo", align 1
@__param_str_underline = internal constant [13 x i8] c"vt.underline\00", align 1
@default_underline_color = internal global i32 3, align 4
@__param_underline = internal constant %struct.kernel_param { ptr @__param_str_underline, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @default_underline_color } }, section "__param", align 4
@__UNIQUE_ID_underlinetype250 = internal constant [26 x i8] c"vt.parmtype=underline:int\00", section ".modinfo", align 1
@__initcall__kmod_vt__251_3549_con_initcon = internal global ptr @con_init, section ".con_initcall.init", align 4
@vc0_cdev = internal global %struct.cdev zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"/dev/vc/0\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Couldn't register /dev/tty0 driver\0A\00", align 1
@tty_class = external dso_local local_unnamed_addr global ptr, align 4
@vt_dev_groups = internal global [2 x ptr] [ptr @vt_dev_group, ptr null], align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"tty0\00", align 1
@console_driver = dso_local local_unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Couldn't allocate console driver\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@con_ops = internal constant %struct.tty_operations { ptr null, ptr @con_install, ptr null, ptr @con_open, ptr @con_close, ptr @con_shutdown, ptr @con_cleanup, ptr @con_write, ptr @con_put_char, ptr @con_flush_chars, ptr @con_write_room, ptr null, ptr @vt_ioctl, ptr null, ptr null, ptr @con_throttle, ptr @con_unthrottle, ptr @con_stop, ptr @con_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vt_resize, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Couldn't register console driver\0A\00", align 1
@registered_con_driver = internal global [16 x %struct.con_driver] zeroinitializer, align 4
@con_driver_map = internal unnamed_addr global [63 x ptr] zeroinitializer, align 4
@conswitchp = dso_local local_unnamed_addr global ptr null, align 4
@__kstrtab_do_unbind_con_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_unbind_con_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_do_unbind_con_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_unbind_con_driver to i32), ptr @__kstrtab_do_unbind_con_driver, ptr @__kstrtabns_do_unbind_con_driver }, section "___ksymtab_gpl+do_unbind_con_driver", align 4
@__kstrtab_con_is_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_con_is_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_con_is_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @con_is_bound to i32), ptr @__kstrtab_con_is_bound, ptr @__kstrtabns_con_is_bound }, section "___ksymtab+con_is_bound", align 4
@__kstrtab_con_is_visible = external dso_local constant [0 x i8], align 1
@__kstrtabns_con_is_visible = external dso_local constant [0 x i8], align 1
@__ksymtab_con_is_visible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @con_is_visible to i32), ptr @__kstrtab_con_is_visible, ptr @__kstrtabns_con_is_visible }, section "___ksymtab+con_is_visible", align 4
@saved_fg_console = internal unnamed_addr global i32 0, align 4
@last_console = dso_local local_unnamed_addr global i32 0, align 4
@saved_last_console = internal unnamed_addr global i32 0, align 4
@saved_want_console = internal unnamed_addr global i32 0, align 4
@saved_vc_mode = internal unnamed_addr global i32 0, align 4
@saved_console_blanked = internal unnamed_addr global i32 0, align 4
@__kstrtab_con_debug_enter = external dso_local constant [0 x i8], align 1
@__kstrtabns_con_debug_enter = external dso_local constant [0 x i8], align 1
@__ksymtab_con_debug_enter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @con_debug_enter to i32), ptr @__kstrtab_con_debug_enter, ptr @__kstrtabns_con_debug_enter }, section "___ksymtab_gpl+con_debug_enter", align 4
@__kstrtab_con_debug_leave = external dso_local constant [0 x i8], align 1
@__kstrtabns_con_debug_leave = external dso_local constant [0 x i8], align 1
@__ksymtab_con_debug_leave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @con_debug_leave to i32), ptr @__kstrtab_con_debug_leave, ptr @__kstrtabns_con_debug_leave }, section "___ksymtab_gpl+con_debug_leave", align 4
@con_driver_unregister_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @con_driver_unregister_work, i64 4), ptr getelementptr (i8, ptr @con_driver_unregister_work, i64 4) }, ptr @con_driver_unregister_callback }, align 4
@__kstrtab_do_unregister_con_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_unregister_con_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_do_unregister_con_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_unregister_con_driver to i32), ptr @__kstrtab_do_unregister_con_driver, ptr @__kstrtabns_do_unregister_con_driver }, section "___ksymtab_gpl+do_unregister_con_driver", align 4
@__kstrtab_do_take_over_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_take_over_console = external dso_local constant [0 x i8], align 1
@__ksymtab_do_take_over_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_take_over_console to i32), ptr @__kstrtab_do_take_over_console, ptr @__kstrtabns_do_take_over_console }, section "___ksymtab_gpl+do_take_over_console", align 4
@__initcall__kmod_vt__260_4326_vtconsole_class_init2 = internal global ptr @vtconsole_class_init, section ".initcall2.init", align 4
@blank_state = internal unnamed_addr global i32 0, align 4
@vesa_blank_mode = internal unnamed_addr global i32 0, align 4
@console_timer = internal global %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @blank_screen_t, i32 0 }, align 4
@blank_timer_expired = internal unnamed_addr global i1 false, align 4
@vesa_off_interval = internal unnamed_addr global i32 0, align 4
@console_blank_hook = dso_local global ptr null, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_do_blank_screen = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_blank_screen = external dso_local constant [0 x i8], align 1
@__ksymtab_do_blank_screen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_blank_screen to i32), ptr @__kstrtab_do_blank_screen, ptr @__kstrtabns_do_blank_screen }, section "___ksymtab+do_blank_screen", align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"\014unblank_screen: tty %d not allocated ??\0A\00", align 1
@__kstrtab_do_unblank_screen = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_unblank_screen = external dso_local constant [0 x i8], align 1
@__ksymtab_do_unblank_screen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_unblank_screen to i32), ptr @__kstrtab_do_unblank_screen, ptr @__kstrtabns_do_unblank_screen }, section "___ksymtab+do_unblank_screen", align 4
@__kstrtab_screen_glyph = external dso_local constant [0 x i8], align 1
@__kstrtabns_screen_glyph = external dso_local constant [0 x i8], align 1
@__ksymtab_screen_glyph = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @screen_glyph to i32), ptr @__kstrtab_screen_glyph, ptr @__kstrtabns_screen_glyph }, section "___ksymtab_gpl+screen_glyph", align 4
@__kstrtab_screen_glyph_unicode = external dso_local constant [0 x i8], align 1
@__kstrtabns_screen_glyph_unicode = external dso_local constant [0 x i8], align 1
@__ksymtab_screen_glyph_unicode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @screen_glyph_unicode to i32), ptr @__kstrtab_screen_glyph_unicode, ptr @__kstrtabns_screen_glyph_unicode }, section "___ksymtab_gpl+screen_glyph_unicode", align 4
@__kstrtab_screen_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_screen_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_screen_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @screen_pos to i32), ptr @__kstrtab_screen_pos, ptr @__kstrtabns_screen_pos }, section "___ksymtab_gpl+screen_pos", align 4
@softcursor_original = internal unnamed_addr global i32 -1, align 4
@__kstrtab_vc_scrolldelta_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_vc_scrolldelta_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_vc_scrolldelta_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vc_scrolldelta_helper to i32), ptr @__kstrtab_vc_scrolldelta_helper, ptr @__kstrtabns_vc_scrolldelta_helper }, section "___ksymtab_gpl+vc_scrolldelta_helper", align 4
@__kstrtab_color_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_color_table = external dso_local constant [0 x i8], align 1
@__ksymtab_color_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @color_table to i32), ptr @__kstrtab_color_table, ptr @__kstrtabns_color_table }, section "___ksymtab+color_table", align 4
@__kstrtab_default_red = external dso_local constant [0 x i8], align 1
@__kstrtabns_default_red = external dso_local constant [0 x i8], align 1
@__ksymtab_default_red = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @default_red to i32), ptr @__kstrtab_default_red, ptr @__kstrtabns_default_red }, section "___ksymtab+default_red", align 4
@__kstrtab_default_grn = external dso_local constant [0 x i8], align 1
@__kstrtabns_default_grn = external dso_local constant [0 x i8], align 1
@__ksymtab_default_grn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @default_grn to i32), ptr @__kstrtab_default_grn, ptr @__kstrtabns_default_grn }, section "___ksymtab+default_grn", align 4
@__kstrtab_default_blu = external dso_local constant [0 x i8], align 1
@__kstrtabns_default_blu = external dso_local constant [0 x i8], align 1
@__ksymtab_default_blu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @default_blu to i32), ptr @__kstrtab_default_blu, ptr @__kstrtabns_default_blu }, section "___ksymtab+default_blu", align 4
@__kstrtab_update_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_update_region = external dso_local constant [0 x i8], align 1
@__ksymtab_update_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @update_region to i32), ptr @__kstrtab_update_region, ptr @__kstrtabns_update_region }, section "___ksymtab+update_region", align 4
@__kstrtab_redraw_screen = external dso_local constant [0 x i8], align 1
@__kstrtabns_redraw_screen = external dso_local constant [0 x i8], align 1
@__ksymtab_redraw_screen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @redraw_screen to i32), ptr @__kstrtab_redraw_screen, ptr @__kstrtabns_redraw_screen }, section "___ksymtab+redraw_screen", align 4
@__kstrtab_vc_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns_vc_resize = external dso_local constant [0 x i8], align 1
@__ksymtab_vc_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vc_resize to i32), ptr @__kstrtab_vc_resize, ptr @__kstrtabns_vc_resize }, section "___ksymtab+vc_resize", align 4
@__kstrtab_fg_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_fg_console = external dso_local constant [0 x i8], align 1
@__ksymtab_fg_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fg_console to i32), ptr @__kstrtab_fg_console, ptr @__kstrtabns_fg_console }, section "___ksymtab+fg_console", align 4
@__kstrtab_console_blank_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_blank_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_console_blank_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_blank_hook to i32), ptr @__kstrtab_console_blank_hook, ptr @__kstrtabns_console_blank_hook }, section "___ksymtab+console_blank_hook", align 4
@__kstrtab_console_blanked = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_blanked = external dso_local constant [0 x i8], align 1
@__ksymtab_console_blanked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_blanked to i32), ptr @__kstrtab_console_blanked, ptr @__kstrtabns_console_blanked }, section "___ksymtab+console_blanked", align 4
@__kstrtab_vc_cons = external dso_local constant [0 x i8], align 1
@__kstrtabns_vc_cons = external dso_local constant [0 x i8], align 1
@__ksymtab_vc_cons = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vc_cons to i32), ptr @__kstrtab_vc_cons, ptr @__kstrtabns_vc_cons }, section "___ksymtab+vc_cons", align 4
@__kstrtab_global_cursor_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_global_cursor_default = external dso_local constant [0 x i8], align 1
@__ksymtab_global_cursor_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @global_cursor_default to i32), ptr @__kstrtab_global_cursor_default, ptr @__kstrtabns_global_cursor_default }, section "___ksymtab+global_cursor_default", align 4
@__kstrtab_give_up_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_give_up_console = external dso_local constant [0 x i8], align 1
@__ksymtab_give_up_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @give_up_console to i32), ptr @__kstrtab_give_up_console, ptr @__kstrtabns_give_up_console }, section "___ksymtab+give_up_console", align 4
@do_poke_blanked_console = dso_local local_unnamed_addr global i32 0, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@scrollback_delta = internal unnamed_addr global i32 0, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@master_display_fg = internal global ptr null, align 4
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@vc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"&vc->paste_wait\00", align 1
@dummy_con = external dso_local constant %struct.consw, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"\016Console: %s %s %dx%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"colour\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@printable = internal unnamed_addr global i1 false, align 4
@vt_console_driver = internal global %struct.console { [16 x i8] c"tty\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vt_console_print, ptr null, ptr @vt_console_device, ptr @unblank_screen, ptr null, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr null, ptr null }, align 4
@vt_console_print.printing_lock = internal global %struct.spinlock zeroinitializer, align 4
@vt_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vt_dev_attrs, ptr null }, align 4
@vt_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_active, ptr null], align 4
@dev_attr_active = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @show_tty_active, ptr null }, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"tty%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"\013vt: argh, driver_data is NULL !\0A\00", align 1
@do_con_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\014con_write: tty %d not allocated\0A\00", align 1
@vc_translate_unicode.utf8_length_changes = internal unnamed_addr constant [6 x i32] [i32 127, i32 2047, i32 65535, i32 2097151, i32 67108863, i32 2147483647], align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@respond_ID.vt102_id = internal constant [6 x i8] c"\1B[?6c\00", align 1
@status_report.teminal_ok = internal constant [5 x i8] c"\1B[0n\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"\1B[%d;%dR\00", align 1
@is_double_width.double_width = internal constant [12 x %struct.interval] [%struct.interval { i32 4352, i32 4447 }, %struct.interval { i32 9001, i32 9002 }, %struct.interval { i32 11904, i32 12350 }, %struct.interval { i32 12352, i32 42191 }, %struct.interval { i32 44032, i32 55203 }, %struct.interval { i32 63744, i32 64255 }, %struct.interval { i32 65040, i32 65049 }, %struct.interval { i32 65072, i32 65135 }, %struct.interval { i32 65280, i32 65376 }, %struct.interval { i32 65504, i32 65510 }, %struct.interval { i32 131072, i32 196605 }, %struct.interval { i32 196608, i32 262141 }], align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"\016Console: switching \00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"\01cconsoles %d-%d \00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\01cto %s %s %dx%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"\01cto %s\0A\00", align 1
@vtconsole_class = internal unnamed_addr global ptr null, align 4
@con_driver_unregister_callback.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@con_driver_unregister_callback.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@con_dev_groups = internal global [2 x ptr] [ptr @con_dev_group, ptr null], align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"vtcon%i\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"\014Unable to create device for %s; errno = %ld\0A\00", align 1
@con_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @con_dev_attrs, ptr null }, align 4
@con_dev_attrs = internal global [3 x ptr] [ptr @dev_attr_bind, ptr @dev_attr_name, ptr null], align 4
@dev_attr_bind = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420 }, ptr @show_bind, ptr @store_bind }, align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @show_name, ptr null }, align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"(M)\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"(S)\00", align 1
@vtconsole_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"vtconsole\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"\014Unable to create vt console class; errno = %ld\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_colortype248, ptr @__UNIQUE_ID_cur_defaulttype226, ptr @__UNIQUE_ID_default_blutype235, ptr @__UNIQUE_ID_default_grntype234, ptr @__UNIQUE_ID_default_redtype233, ptr @__UNIQUE_ID_default_utf8type224, ptr @__UNIQUE_ID_global_cursor_defaulttype225, ptr @__UNIQUE_ID_italictype249, ptr @__UNIQUE_ID_underlinetype250, ptr @__initcall__kmod_vt__251_3549_con_initcon, ptr @__initcall__kmod_vt__260_4326_vtconsole_class_init2, ptr @__ksymtab_color_table, ptr @__ksymtab_con_debug_enter, ptr @__ksymtab_con_debug_leave, ptr @__ksymtab_con_is_bound, ptr @__ksymtab_con_is_visible, ptr @__ksymtab_console_blank_hook, ptr @__ksymtab_console_blanked, ptr @__ksymtab_default_blu, ptr @__ksymtab_default_grn, ptr @__ksymtab_default_red, ptr @__ksymtab_do_blank_screen, ptr @__ksymtab_do_take_over_console, ptr @__ksymtab_do_unbind_con_driver, ptr @__ksymtab_do_unblank_screen, ptr @__ksymtab_do_unregister_con_driver, ptr @__ksymtab_fg_console, ptr @__ksymtab_give_up_console, ptr @__ksymtab_global_cursor_default, ptr @__ksymtab_redraw_screen, ptr @__ksymtab_register_vt_notifier, ptr @__ksymtab_screen_glyph, ptr @__ksymtab_screen_glyph_unicode, ptr @__ksymtab_screen_pos, ptr @__ksymtab_unregister_vt_notifier, ptr @__ksymtab_update_region, ptr @__ksymtab_vc_cons, ptr @__ksymtab_vc_resize, ptr @__ksymtab_vc_scrolldelta_helper, ptr @__param_color, ptr @__param_consoleblank, ptr @__param_cur_default, ptr @__param_default_blu, ptr @__param_default_grn, ptr @__param_default_red, ptr @__param_default_utf8, ptr @__param_global_cursor_default, ptr @__param_italic, ptr @__param_underline], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_vt_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @vt_notifier_list, ptr noundef %0) #23
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_vt_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @vt_notifier_list, ptr noundef %0) #23
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @schedule_console_callback() local_unnamed_addr #0 {
  %1 = load ptr, ptr @system_wq, align 4
  %2 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %1, ptr noundef nonnull @console_work) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc_uniscr_check(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @is_console_locked() #23
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @oops_in_progress, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 9, ptr noundef null) #23
  br label %11

11:                                               ; preds = %10, %4, %1
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 16384
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %84, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %84

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %22
  %26 = add i32 %25, %24
  %27 = shl i32 %26, 2
  %28 = tail call noalias ptr @vmalloc(i32 noundef %27) #24
  %29 = icmp eq ptr %28, null
  %30 = icmp eq i32 %24, 0
  %31 = or i1 %30, %29
  br i1 %31, label %42, label %32

32:                                               ; preds = %20
  %33 = getelementptr ptr, ptr %28, i32 %24
  %34 = shl i32 %22, 2
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ 0, %32 ], [ %40, %35 ]
  %37 = phi ptr [ %33, %32 ], [ %39, %35 ]
  %38 = getelementptr [0 x ptr], ptr %28, i32 0, i32 %36
  store ptr %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %37, i32 %34
  %40 = add nuw i32 %36, 1
  %41 = icmp eq i32 %40, %24
  br i1 %41, label %42, label %35

42:                                               ; preds = %35, %20
  br i1 %29, label %84, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %45 = load i16, ptr %44, align 4
  %46 = or i16 %45, 255
  %47 = load i32, ptr %23, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = inttoptr i32 %51 to ptr
  %53 = load i32, ptr %21, align 4
  br label %54

54:                                               ; preds = %77, %49
  %55 = phi i32 [ %78, %77 ], [ %47, %49 ]
  %56 = phi i32 [ %79, %77 ], [ %53, %49 ]
  %57 = phi i32 [ %81, %77 ], [ 0, %49 ]
  %58 = phi ptr [ %80, %77 ], [ %52, %49 ]
  %59 = getelementptr [0 x ptr], ptr %28, i32 0, i32 %57
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq i32 %56, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %62, %54
  %63 = phi i32 [ %72, %62 ], [ 0, %54 ]
  %64 = phi ptr [ %65, %62 ], [ %58, %54 ]
  %65 = getelementptr i16, ptr %64, i32 1
  %66 = load i16, ptr %64, align 2
  %67 = and i16 %66, %46
  %68 = zext i16 %67 to i32
  %69 = tail call zeroext i16 @inverse_translate(ptr noundef %0, i32 noundef %68, i32 noundef 1) #23
  %70 = zext i16 %69 to i32
  %71 = getelementptr i32, ptr %60, i32 %63
  store i32 %70, ptr %71, align 4
  %72 = add nuw i32 %63, 1
  %73 = load i32, ptr %21, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %62, label %75

75:                                               ; preds = %62
  %76 = load i32, ptr %23, align 4
  br label %77

77:                                               ; preds = %75, %54
  %78 = phi i32 [ %55, %54 ], [ %76, %75 ]
  %79 = phi i32 [ 0, %54 ], [ %73, %75 ]
  %80 = phi ptr [ %58, %54 ], [ %65, %75 ]
  %81 = add nuw i32 %57, 1
  %82 = icmp ult i32 %81, %78
  br i1 %82, label %54, label %83

83:                                               ; preds = %77, %43
  store ptr %28, ptr %17, align 4
  br label %84

84:                                               ; preds = %83, %42, %16, %11
  %85 = phi i32 [ 0, %83 ], [ -61, %11 ], [ 0, %16 ], [ -12, %42 ]
  ret i32 %85
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @inverse_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc_uniscr_copy_line(ptr noundef %0, ptr nocapture noundef writeonly %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/vt/vt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 554, 0\0A.popsection", ""() #23, !srcloc !10
  unreachable

12:                                               ; preds = %6
  %13 = load i32, ptr %9, align 4
  %14 = mul i32 %13, %3
  %15 = shl i32 %4, 1
  %16 = add i32 %14, %15
  br i1 %2, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  br label %35

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.consw, ptr %24, i32 0, i32 21
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %16
  %32 = inttoptr i32 %31 to ptr
  br label %35

33:                                               ; preds = %22
  %34 = tail call ptr %26(ptr noundef %0, i32 noundef %16) #23
  br label %35

35:                                               ; preds = %33, %28, %17
  %36 = phi ptr [ %34, %33 ], [ %32, %28 ], [ %21, %17 ]
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, %37
  br i1 %40, label %58, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, %37
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = sub i32 %37, %39
  %47 = load i32, ptr %9, align 4
  %48 = freeze i32 %46
  %49 = freeze i32 %47
  %50 = udiv i32 %48, %49
  %51 = mul i32 %50, %49
  %52 = sub i32 %48, %51
  %53 = lshr i32 %52, 1
  %54 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %50
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i32, ptr %55, i32 %53
  %57 = shl i32 %5, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 4 %56, i32 %57, i1 false)
  br label %76

58:                                               ; preds = %41, %35
  %59 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %60 = load i16, ptr %59, align 4
  %61 = or i16 %60, 255
  %62 = icmp eq i32 %5, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %63, %58
  %64 = phi ptr [ %74, %63 ], [ %1, %58 ]
  %65 = phi ptr [ %68, %63 ], [ %36, %58 ]
  %66 = phi i32 [ %67, %63 ], [ %5, %58 ]
  %67 = add i32 %66, -1
  %68 = getelementptr i16, ptr %65, i32 1
  %69 = load i16, ptr %65, align 2
  %70 = and i16 %69, %61
  %71 = zext i16 %70 to i32
  %72 = tail call zeroext i16 @inverse_translate(ptr noundef %0, i32 noundef %71, i32 noundef 1) #23
  %73 = zext i16 %72 to i32
  %74 = getelementptr i32, ptr %64, i32 1
  store i32 %73, ptr %64, align 4
  %75 = icmp eq i32 %67, 0
  br i1 %75, label %76, label %63

76:                                               ; preds = %63, %58, %45
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call i32 @is_console_locked() #23
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 9, ptr noundef null) #23
  br label %13

13:                                               ; preds = %12, %6, %3
  %14 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = tail call i32 @is_console_locked() #23
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr @oops_in_progress, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %23

23:                                               ; preds = %22, %16, %13
  %24 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  %28 = load i32, ptr @console_blanked, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %63

31:                                               ; preds = %23
  tail call fastcc void @hide_cursor(ptr noundef %0)
  tail call fastcc void @do_update_region(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %32 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = load i32, ptr @fg_console, align 4
  %36 = icmp ne i32 %35, %34
  %37 = load i32, ptr @console_blanked, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %63, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %63, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, 32
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = tail call zeroext i1 @vc_is_sel(ptr noundef %0) #23
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  tail call void @clear_selection() #23
  br label %52

52:                                               ; preds = %51, %49
  tail call fastcc void @add_softcursor(ptr noundef %0) #23
  %53 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 15
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.consw, ptr %59, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %0, i32 noundef 1) #23
  br label %63

62:                                               ; preds = %44
  tail call fastcc void @hide_cursor(ptr noundef %0) #23
  br label %63

63:                                               ; preds = %62, %57, %52, %40, %31, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hide_cursor(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i1 @vc_is_sel(ptr noundef %0) #23
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @clear_selection() #23
  br label %4

4:                                                ; preds = %3, %1
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.consw, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, i32 noundef 2) #23
  %9 = load i32, ptr @softcursor_original, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %43, label %11

11:                                               ; preds = %4
  %12 = trunc i32 %9 to i16
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  store i16 %12, ptr %15, align 2
  %16 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = tail call i32 @is_console_locked() #23
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr @oops_in_progress, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %25

25:                                               ; preds = %24, %18, %11
  %26 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  %30 = load i32, ptr @console_blanked, align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.consw, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr @softcursor_original, align 4
  %38 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %39 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %38, align 4
  tail call void %36(ptr noundef %0, i32 noundef %37, i32 noundef %40, i32 noundef %41) #23
  br label %42

42:                                               ; preds = %33, %25
  store i32 -1, ptr @softcursor_original, align 4
  br label %43

43:                                               ; preds = %42, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_update_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.consw, ptr %7, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %1, %13
  %15 = lshr i32 %14, 1
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = freeze i32 %15
  %19 = freeze i32 %17
  %20 = udiv i32 %18, %19
  %21 = mul i32 %20, %19
  %22 = sub i32 %18, %21
  br label %27

23:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  store i32 0, ptr %4, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  store i32 0, ptr %5, align 4, !annotation !11
  %24 = call i32 %9(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  br label %27

27:                                               ; preds = %23, %11
  %28 = phi i32 [ %24, %23 ], [ %1, %11 ]
  %29 = phi i32 [ %25, %23 ], [ %22, %11 ]
  %30 = phi i32 [ %26, %23 ], [ %20, %11 ]
  %31 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  br label %32

32:                                               ; preds = %110, %27
  %33 = phi i32 [ %111, %110 ], [ %28, %27 ]
  %34 = phi i32 [ %103, %110 ], [ %2, %27 ]
  %35 = phi i32 [ 0, %110 ], [ %29, %27 ]
  %36 = phi i32 [ %105, %110 ], [ %30, %27 ]
  %37 = phi i32 [ %33, %110 ], [ %1, %27 ]
  %38 = inttoptr i32 %37 to ptr
  br label %39

39:                                               ; preds = %102, %32
  %40 = phi i32 [ %103, %102 ], [ %34, %32 ]
  %41 = phi i32 [ 0, %102 ], [ %35, %32 ]
  %42 = phi i32 [ %105, %102 ], [ %36, %32 ]
  %43 = phi ptr [ %104, %102 ], [ %38, %32 ]
  %44 = load i32, ptr %31, align 4
  %45 = icmp ult i32 %41, %44
  %46 = icmp ne i32 %40, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br i1 %46, label %102, label %112

49:                                               ; preds = %39
  %50 = load i16, ptr %43, align 2
  %51 = and i16 %50, -256
  br label %52

52:                                               ; preds = %89, %49
  %53 = phi i32 [ %78, %89 ], [ %44, %49 ]
  %54 = phi i32 [ %79, %89 ], [ %44, %49 ]
  %55 = phi i16 [ %90, %89 ], [ %50, %49 ]
  %56 = phi ptr [ %82, %89 ], [ %43, %49 ]
  %57 = phi i32 [ %81, %89 ], [ %41, %49 ]
  %58 = phi i16 [ %80, %89 ], [ %51, %49 ]
  %59 = phi ptr [ %83, %89 ], [ %43, %49 ]
  %60 = phi i32 [ %84, %89 ], [ %41, %49 ]
  %61 = phi i32 [ %85, %89 ], [ %40, %49 ]
  %62 = and i16 %55, -256
  %63 = icmp eq i16 %58, %62
  br i1 %63, label %77, label %64

64:                                               ; preds = %52
  %65 = icmp ugt ptr %59, %56
  br i1 %65, label %66, label %77

66:                                               ; preds = %64
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr inbounds %struct.consw, ptr %67, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = ptrtoint ptr %59 to i32
  %71 = ptrtoint ptr %56 to i32
  %72 = sub i32 %70, %71
  %73 = ashr exact i32 %72, 1
  call void %69(ptr noundef %0, ptr noundef %56, i32 noundef %73, i32 noundef %42, i32 noundef %57) #23
  %74 = load i16, ptr %59, align 2
  %75 = load i32, ptr %31, align 4
  %76 = and i16 %74, -256
  br label %77

77:                                               ; preds = %66, %64, %52
  %78 = phi i32 [ %53, %52 ], [ %75, %66 ], [ %53, %64 ]
  %79 = phi i32 [ %54, %52 ], [ %75, %66 ], [ %53, %64 ]
  %80 = phi i16 [ %58, %52 ], [ %76, %66 ], [ %62, %64 ]
  %81 = phi i32 [ %57, %52 ], [ %60, %66 ], [ %60, %64 ]
  %82 = phi ptr [ %56, %52 ], [ %59, %66 ], [ %59, %64 ]
  %83 = getelementptr i16, ptr %59, i32 1
  %84 = add nuw i32 %60, 1
  %85 = add i32 %61, -1
  %86 = icmp ult i32 %84, %79
  %87 = icmp ne i32 %85, 0
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i16, ptr %83, align 2
  br label %52

91:                                               ; preds = %77
  %92 = icmp ugt ptr %83, %82
  br i1 %92, label %93, label %101

93:                                               ; preds = %91
  %94 = load ptr, ptr %6, align 4
  %95 = getelementptr inbounds %struct.consw, ptr %94, i32 0, i32 6
  %96 = load ptr, ptr %95, align 4
  %97 = ptrtoint ptr %83 to i32
  %98 = ptrtoint ptr %82 to i32
  %99 = sub i32 %97, %98
  %100 = ashr exact i32 %99, 1
  call void %96(ptr noundef %0, ptr noundef %82, i32 noundef %100, i32 noundef %42, i32 noundef %81) #23
  br i1 %87, label %102, label %112

101:                                              ; preds = %91
  br i1 %87, label %102, label %112

102:                                              ; preds = %101, %93, %48
  %103 = phi i32 [ %40, %48 ], [ %85, %101 ], [ %85, %93 ]
  %104 = phi ptr [ %43, %48 ], [ %83, %101 ], [ %83, %93 ]
  %105 = add i32 %42, 1
  %106 = load ptr, ptr %6, align 4
  %107 = getelementptr inbounds %struct.consw, ptr %106, i32 0, i32 22
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %39, label %110

110:                                              ; preds = %102
  %111 = call i32 %108(ptr noundef %0, i32 noundef %33, ptr noundef null, ptr noundef null) #23
  br label %32

112:                                              ; preds = %101, %93, %48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @invert_screen(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.vt_notifier_param, align 8
  %6 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = tail call i32 @is_console_locked() #23
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr @oops_in_progress, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 760, i32 noundef 9, ptr noundef null) #23
  br label %15

15:                                               ; preds = %14, %8, %4
  %16 = sdiv i32 %2, 2
  br i1 %3, label %22, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %1
  %21 = inttoptr i32 %20 to ptr
  br label %35

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.consw, ptr %24, i32 0, i32 21
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %1
  %32 = inttoptr i32 %31 to ptr
  br label %35

33:                                               ; preds = %22
  %34 = tail call ptr %26(ptr noundef %0, i32 noundef %1) #23
  br label %35

35:                                               ; preds = %33, %28, %17
  %36 = phi ptr [ %34, %33 ], [ %32, %28 ], [ %21, %17 ]
  %37 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.consw, ptr %38, i32 0, i32 20
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void %40(ptr noundef %0, ptr noundef %36, i32 noundef %16) #23
  br label %95

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 2048
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = add i32 %2, 1
  %50 = icmp ult i32 %49, 3
  br i1 %50, label %95, label %51

51:                                               ; preds = %51, %48
  %52 = phi i32 [ %54, %51 ], [ %16, %48 ]
  %53 = phi ptr [ %57, %51 ], [ %36, %48 ]
  %54 = add i32 %52, -1
  %55 = load i16, ptr %53, align 2
  %56 = xor i16 %55, 2048
  store i16 %56, ptr %53, align 2
  %57 = getelementptr i16, ptr %53, i32 1
  %58 = icmp eq i32 %54, 0
  br i1 %58, label %95, label %51

59:                                               ; preds = %43
  %60 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %61 = load i16, ptr %60, align 4
  %62 = icmp eq i16 %61, 256
  %63 = add i32 %2, 1
  %64 = icmp ult i32 %63, 3
  br i1 %62, label %66, label %65

65:                                               ; preds = %59
  br i1 %64, label %95, label %81

66:                                               ; preds = %59
  br i1 %64, label %95, label %67

67:                                               ; preds = %67, %66
  %68 = phi i32 [ %70, %67 ], [ %16, %66 ]
  %69 = phi ptr [ %79, %67 ], [ %36, %66 ]
  %70 = add i32 %68, -1
  %71 = load i16, ptr %69, align 2
  %72 = and i16 %71, 4607
  %73 = lshr i16 %71, 4
  %74 = and i16 %73, 3584
  %75 = or i16 %74, %72
  %76 = shl i16 %71, 4
  %77 = and i16 %76, -8192
  %78 = or i16 %75, %77
  store i16 %78, ptr %69, align 2
  %79 = getelementptr i16, ptr %69, i32 1
  %80 = icmp eq i32 %70, 0
  br i1 %80, label %95, label %67

81:                                               ; preds = %81, %65
  %82 = phi i32 [ %84, %81 ], [ %16, %65 ]
  %83 = phi ptr [ %93, %81 ], [ %36, %65 ]
  %84 = add i32 %82, -1
  %85 = load i16, ptr %83, align 2
  %86 = and i16 %85, -30465
  %87 = lshr i16 %85, 4
  %88 = and i16 %87, 1792
  %89 = or i16 %88, %86
  %90 = shl i16 %85, 4
  %91 = and i16 %90, 28672
  %92 = or i16 %89, %91
  store i16 %92, ptr %83, align 2
  %93 = getelementptr i16, ptr %83, i32 1
  %94 = icmp eq i32 %84, 0
  br i1 %94, label %95, label %81

95:                                               ; preds = %81, %67, %66, %65, %51, %48, %42
  %96 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = tail call i32 @is_console_locked() #23
  %100 = icmp eq i32 %99, 0
  %101 = load i32, ptr @oops_in_progress, align 4
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %104, label %105, !prof !8

104:                                              ; preds = %98
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %105

105:                                              ; preds = %104, %98, %95
  %106 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %0
  %110 = load i32, ptr @console_blanked, align 4
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = ptrtoint ptr %36 to i32
  tail call fastcc void @do_update_region(ptr noundef %0, i32 noundef %114, i32 noundef %16)
  br label %115

115:                                              ; preds = %113, %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8
  %116 = getelementptr inbounds %struct.vt_notifier_param, ptr %5, i32 0, i32 1
  store i32 0, ptr %116, align 4
  %117 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 4, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @complement_pos(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.vt_notifier_param, align 8
  %4 = alloca %struct.vt_notifier_param, align 8
  %5 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call i32 @is_console_locked() #23
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @oops_in_progress, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 811, i32 noundef 9, ptr noundef null) #23
  br label %14

14:                                               ; preds = %13, %7, %2
  %15 = load i32, ptr @complement_pos.old_offset, align 4
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %67

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %15, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = load i16, ptr @complement_pos.old, align 2
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.consw, ptr %24, i32 0, i32 21
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %15
  %32 = inttoptr i32 %31 to ptr
  br label %35

33:                                               ; preds = %21
  %34 = tail call ptr %26(ptr noundef %0, i32 noundef %15) #23
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %32, %28 ]
  store i16 %22, ptr %36, align 2
  %37 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = tail call i32 @is_console_locked() #23
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr @oops_in_progress, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %46

46:                                               ; preds = %45, %39, %35
  %47 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %0
  %51 = load i32, ptr @console_blanked, align 4
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load ptr, ptr %23, align 4
  %56 = getelementptr inbounds %struct.consw, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = load i16, ptr @complement_pos.old, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, ptr @complement_pos.oldy, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, ptr @complement_pos.oldx, align 2
  %63 = zext i16 %62 to i32
  tail call void %57(ptr noundef %0, i32 noundef %59, i32 noundef %61, i32 noundef %63) #23
  br label %64

64:                                               ; preds = %54, %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr %0, ptr %4, align 8
  %65 = getelementptr inbounds %struct.vt_notifier_param, ptr %4, i32 0, i32 1
  store i32 0, ptr %65, align 4
  %66 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 4, ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %67

67:                                               ; preds = %64, %17, %14
  store i32 %1, ptr @complement_pos.old_offset, align 4
  %68 = icmp sgt i32 %1, -1
  br i1 %68, label %69, label %128

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, %1
  br i1 %72, label %73, label %128

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.consw, ptr %75, i32 0, i32 21
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 11
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %1
  %83 = inttoptr i32 %82 to ptr
  br label %86

84:                                               ; preds = %73
  %85 = call ptr %77(ptr noundef %0, i32 noundef %1) #23
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi ptr [ %85, %84 ], [ %83, %79 ]
  %88 = load i16, ptr %87, align 2
  store i16 %88, ptr @complement_pos.old, align 2
  %89 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 24
  %90 = load i16, ptr %89, align 4
  %91 = xor i16 %90, %88
  store i16 %91, ptr %87, align 2
  %92 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = call i32 @is_console_locked() #23
  %96 = icmp eq i32 %95, 0
  %97 = load i32, ptr @oops_in_progress, align 4
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %101, !prof !8

100:                                              ; preds = %94
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %101

101:                                              ; preds = %100, %94, %86
  %102 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %0
  %106 = load i32, ptr @console_blanked, align 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %125

109:                                              ; preds = %101
  %110 = lshr i32 %1, 1
  %111 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = freeze i32 %112
  %114 = udiv i32 %110, %113
  %115 = mul i32 %114, %113
  %116 = sub i32 %110, %115
  %117 = trunc i32 %116 to i16
  store i16 %117, ptr @complement_pos.oldx, align 2
  %118 = trunc i32 %114 to i16
  store i16 %118, ptr @complement_pos.oldy, align 2
  %119 = load ptr, ptr %74, align 4
  %120 = getelementptr inbounds %struct.consw, ptr %119, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = zext i16 %91 to i32
  %123 = and i32 %114, 65535
  %124 = and i32 %116, 65535
  call void %121(ptr noundef %0, i32 noundef %122, i32 noundef %123, i32 noundef %124) #23
  br label %125

125:                                              ; preds = %109, %101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8
  %126 = getelementptr inbounds %struct.vt_notifier_param, ptr %3, i32 0, i32 1
  store i32 0, ptr %126, align 4
  %127 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 4, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  br label %128

128:                                              ; preds = %125, %69, %67
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_buffer_attributes(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %5 = load i16, ptr %4, align 4
  %6 = or i16 %5, 255
  %7 = icmp ult i32 %3, 2
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = lshr i32 %3, 1
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %14 = xor i16 %6, -1
  br label %15

15:                                               ; preds = %15, %8
  %16 = phi i32 [ %9, %8 ], [ %23, %15 ]
  %17 = phi ptr [ %12, %8 ], [ %24, %15 ]
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, %6
  %20 = load i16, ptr %13, align 4
  %21 = and i16 %20, %14
  %22 = or i16 %21, %19
  store i16 %22, ptr %17, align 2
  %23 = add nsw i32 %16, -1
  %24 = getelementptr i16, ptr %17, i32 1
  %25 = icmp ugt i32 %16, 1
  br i1 %25, label %15, label %26

26:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @redraw_screen(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.vt_notifier_param, align 8
  %4 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call i32 @is_console_locked() #23
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 988, i32 noundef 9, ptr noundef null) #23
  br label %13

13:                                               ; preds = %12, %6, %2
  %14 = icmp eq ptr %0, null
  br i1 %14, label %182, label %15

15:                                               ; preds = %13
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %76, label %17

17:                                               ; preds = %15
  %18 = load i32, ptr @fg_console, align 4
  %19 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %182, label %22

22:                                               ; preds = %17
  %23 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = tail call i32 @is_console_locked() #23
  %27 = icmp eq i32 %26, 0
  %28 = load i32, ptr @oops_in_progress, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %32

32:                                               ; preds = %31, %25, %22
  %33 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %0
  store ptr %0, ptr %34, align 4
  %37 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  store i32 %39, ptr @fg_console, align 4
  tail call fastcc void @hide_cursor(ptr noundef %20)
  %40 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = tail call i32 @is_console_locked() #23
  %44 = icmp eq i32 %43, 0
  %45 = load i32, ptr @oops_in_progress, align 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %49

49:                                               ; preds = %48, %42, %32
  %50 = getelementptr inbounds %struct.vc_data, ptr %20, i32 0, i32 47
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %20
  br i1 %53, label %72, label %54

54:                                               ; preds = %49
  %55 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = tail call i32 @is_console_locked() #23
  %59 = icmp eq i32 %58, 0
  %60 = load i32, ptr @oops_in_progress, align 4
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %64, !prof !8

63:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 941, i32 noundef 9, ptr noundef null) #23
  br label %64

64:                                               ; preds = %63, %57, %54
  %65 = getelementptr inbounds %struct.vc_data, ptr %20, i32 0, i32 14
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.consw, ptr %66, i32 0, i32 18
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  tail call void %68(ptr noundef %20) #23
  br label %71

71:                                               ; preds = %70, %64
  tail call fastcc void @set_origin(ptr noundef %20)
  br label %72

72:                                               ; preds = %71, %49
  %73 = load ptr, ptr @tty0dev, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  tail call void @sysfs_notify(ptr noundef nonnull %73, ptr noundef null, ptr noundef nonnull @.str.1) #23
  br label %77

76:                                               ; preds = %15
  tail call fastcc void @hide_cursor(ptr noundef nonnull %0)
  br label %78

77:                                               ; preds = %75, %72
  br i1 %36, label %146, label %78

78:                                               ; preds = %77, %76
  %79 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %80 = load i16, ptr %79, align 4
  tail call fastcc void @set_origin(ptr noundef nonnull %0)
  %81 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.consw, ptr %82, i32 0, i32 9
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 %84(ptr noundef nonnull %0) #23
  %86 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = tail call i32 @is_console_locked() #23
  %90 = icmp eq i32 %89, 0
  %91 = load i32, ptr @oops_in_progress, align 4
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %95, !prof !8

94:                                               ; preds = %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4505, i32 noundef 9, ptr noundef null) #23
  br label %95

95:                                               ; preds = %94, %88, %78
  %96 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %97 = load i8, ptr %96, align 4
  %98 = icmp eq i8 %97, 1
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %81, align 4
  %101 = getelementptr inbounds %struct.consw, ptr %100, i32 0, i32 15
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  tail call void %102(ptr noundef nonnull %0, ptr noundef nonnull @color_table) #23
  br label %105

105:                                              ; preds = %104, %99, %95
  %106 = load i16, ptr %79, align 4
  %107 = xor i16 %106, %80
  %108 = and i16 %107, 2048
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %135, label %110

110:                                              ; preds = %105
  tail call fastcc void @update_attr(ptr noundef nonnull %0)
  %111 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %114 = load i16, ptr %113, align 4
  %115 = or i16 %114, 255
  %116 = icmp ult i32 %112, 2
  br i1 %116, label %135, label %117

117:                                              ; preds = %110
  %118 = lshr i32 %112, 1
  %119 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %120 = load i32, ptr %119, align 4
  %121 = inttoptr i32 %120 to ptr
  %122 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %123 = xor i16 %115, -1
  br label %124

124:                                              ; preds = %124, %117
  %125 = phi i32 [ %118, %117 ], [ %132, %124 ]
  %126 = phi ptr [ %121, %117 ], [ %133, %124 ]
  %127 = load i16, ptr %126, align 2
  %128 = and i16 %127, %115
  %129 = load i16, ptr %122, align 4
  %130 = and i16 %129, %123
  %131 = or i16 %130, %128
  store i16 %131, ptr %126, align 2
  %132 = add nsw i32 %125, -1
  %133 = getelementptr i16, ptr %126, i32 1
  %134 = icmp ugt i32 %125, 1
  br i1 %134, label %124, label %135

135:                                              ; preds = %124, %110, %105
  %136 = icmp eq i32 %85, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %135
  %138 = load i8, ptr %96, align 4
  %139 = icmp eq i8 %138, 1
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %144 = load i32, ptr %143, align 4
  %145 = lshr i32 %144, 1
  tail call fastcc void @do_update_region(ptr noundef nonnull %0, i32 noundef %142, i32 noundef %145)
  br label %146

146:                                              ; preds = %140, %137, %135, %77
  %147 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %148 = load i16, ptr %147, align 4
  %149 = zext i16 %148 to i32
  %150 = load i32, ptr @fg_console, align 4
  %151 = icmp ne i32 %150, %149
  %152 = load i32, ptr @console_blanked, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %178, label %155

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %157 = load i8, ptr %156, align 4
  %158 = icmp eq i8 %157, 1
  br i1 %158, label %178, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %161 = load i16, ptr %160, align 4
  %162 = and i16 %161, 32
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %159
  %165 = tail call zeroext i1 @vc_is_sel(ptr noundef %0) #23
  br i1 %165, label %166, label %167

166:                                              ; preds = %164
  tail call void @clear_selection() #23
  br label %167

167:                                              ; preds = %166, %164
  tail call fastcc void @add_softcursor(ptr noundef %0) #23
  %168 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 15
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %178, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.consw, ptr %174, i32 0, i32 7
  %176 = load ptr, ptr %175, align 4
  tail call void %176(ptr noundef %0, i32 noundef 1) #23
  br label %178

177:                                              ; preds = %159
  tail call fastcc void @hide_cursor(ptr noundef %0) #23
  br label %178

178:                                              ; preds = %177, %172, %167, %155, %146
  br i1 %16, label %182, label %179

179:                                              ; preds = %178
  tail call void @vt_set_leds_compute_shiftstate() #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8
  %180 = getelementptr inbounds %struct.vt_notifier_param, ptr %3, i32 0, i32 1
  store i32 0, ptr %180, align 4
  %181 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 4, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  br label %182

182:                                              ; preds = %179, %178, %17, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @con_is_visible(ptr noundef readonly %0) #0 {
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @is_console_locked() #23
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @oops_in_progress, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %11

11:                                               ; preds = %10, %4, %1
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_origin(ptr noundef %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @is_console_locked() #23
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @oops_in_progress, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 927, i32 noundef 9, ptr noundef null) #23
  br label %11

11:                                               ; preds = %10, %4, %1
  %12 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = tail call i32 @is_console_locked() #23
  %16 = icmp eq i32 %15, 0
  %17 = load i32, ptr @oops_in_progress, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %21

21:                                               ; preds = %20, %14, %11
  %22 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.consw, ptr %28, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = tail call i32 %30(ptr noundef %0) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  br label %43

38:                                               ; preds = %32, %26, %21
  %39 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i32 [ %37, %35 ], [ %41, %38 ]
  %45 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 11
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %44
  %49 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 10
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %53 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, %51
  %56 = add i32 %55, %44
  %57 = load i32, ptr %52, align 4
  %58 = shl i32 %57, 1
  %59 = add i32 %56, %58
  %60 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  store i32 %59, ptr %60, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_palette(ptr noundef %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @is_console_locked() #23
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @oops_in_progress, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4505, i32 noundef 9, ptr noundef null) #23
  br label %11

11:                                               ; preds = %10, %4, %1
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.consw, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void %19(ptr noundef %0, ptr noundef nonnull @color_table) #23
  br label %22

22:                                               ; preds = %21, %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_attr(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 2
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 8
  %7 = load i8, ptr %6, align 2, !range !12
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 7
  %10 = load i8, ptr %9, align 1, !range !12
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 9
  %13 = load i8, ptr %12, align 1, !range !12
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %15 = load i16, ptr %14, align 4
  %16 = lshr i16 %15, 2
  %17 = and i16 %16, 1
  %18 = zext i8 %13 to i16
  %19 = icmp ne i16 %17, %18
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 6
  %21 = load i8, ptr %20, align 4, !range !12
  %22 = icmp ne i8 %21, 0
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.consw, ptr %24, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = tail call zeroext i8 %26(ptr noundef %0, i8 noundef zeroext %3, i32 noundef %5, i1 noundef zeroext %8, i1 noundef zeroext %11, i1 noundef zeroext %19, i1 noundef zeroext %22) #23
  %30 = load i8, ptr %2, align 4
  %31 = load i8, ptr %6, align 2, !range !12
  %32 = load i16, ptr %14, align 4
  %33 = load ptr, ptr %23, align 4
  br label %85

34:                                               ; preds = %1
  %35 = and i16 %15, 2048
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = select i1 %22, i32 2, i32 0
  %39 = select i1 %11, i32 4, i32 0
  %40 = select i1 %19, i32 8, i32 0
  %41 = select i1 %8, i32 128, i32 0
  %42 = or i32 %41, %5
  %43 = or i32 %42, %39
  %44 = or i32 %43, %38
  %45 = or i32 %44, %40
  %46 = trunc i32 %45 to i8
  br label %85

47:                                               ; preds = %34
  br i1 %22, label %48, label %53

48:                                               ; preds = %47
  %49 = and i8 %3, -16
  %50 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 21
  %51 = load i8, ptr %50, align 4
  %52 = or i8 %51, %49
  br label %66

53:                                               ; preds = %47
  br i1 %11, label %54, label %59

54:                                               ; preds = %53
  %55 = and i8 %3, -16
  %56 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 20
  %57 = load i8, ptr %56, align 1
  %58 = or i8 %57, %55
  br label %66

59:                                               ; preds = %53
  %60 = icmp eq i32 %5, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = and i8 %3, -16
  %63 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 22
  %64 = load i8, ptr %63, align 1
  %65 = or i8 %64, %62
  br label %66

66:                                               ; preds = %61, %59, %54, %48
  %67 = phi i8 [ %52, %48 ], [ %58, %54 ], [ %65, %61 ], [ %3, %59 ]
  br i1 %19, label %68, label %73

68:                                               ; preds = %66
  %69 = and i8 %67, -120
  %70 = tail call i8 @llvm.fshl.i8(i8 %67, i8 %67, i8 4) #23
  %71 = and i8 %70, 119
  %72 = or i8 %71, %69
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i8 [ %72, %68 ], [ %67, %66 ]
  %75 = xor i8 %74, -128
  %76 = select i1 %8, i8 %75, i8 %74
  %77 = icmp eq i32 %5, 2
  %78 = xor i8 %76, 8
  %79 = select i1 %77, i8 %78, i8 %76
  %80 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %81 = load i16, ptr %80, align 4
  %82 = icmp eq i16 %81, 256
  %83 = zext i1 %82 to i8
  %84 = shl i8 %79, %83
  br label %85

85:                                               ; preds = %73, %37, %28
  %86 = phi ptr [ %33, %28 ], [ %24, %73 ], [ %24, %37 ]
  %87 = phi i16 [ %32, %28 ], [ %15, %73 ], [ %15, %37 ]
  %88 = phi i8 [ %31, %28 ], [ %7, %73 ], [ %7, %37 ]
  %89 = phi i8 [ %30, %28 ], [ %3, %73 ], [ %3, %37 ]
  %90 = phi i8 [ %29, %28 ], [ %84, %73 ], [ %46, %37 ]
  %91 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 18
  store i8 %90, ptr %91, align 1
  %92 = icmp ne i8 %88, 0
  %93 = and i16 %87, 4
  %94 = icmp ne i16 %93, 0
  %95 = getelementptr inbounds %struct.consw, ptr %86, i32 0, i32 19
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %85
  %99 = tail call zeroext i8 %96(ptr noundef %0, i8 noundef zeroext %89, i32 noundef 1, i1 noundef zeroext %92, i1 noundef zeroext false, i1 noundef zeroext %94, i1 noundef zeroext false) #23
  br label %123

100:                                              ; preds = %85
  %101 = and i16 %87, 2048
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = trunc i16 %93 to i8
  %105 = shl nuw nsw i8 %104, 1
  %106 = select i1 %92, i8 -127, i8 1
  %107 = or i8 %105, %106
  br label %123

108:                                              ; preds = %100
  br i1 %94, label %109, label %114

109:                                              ; preds = %108
  %110 = and i8 %89, -120
  %111 = tail call i8 @llvm.fshl.i8(i8 %89, i8 %89, i8 4) #23
  %112 = and i8 %111, 119
  %113 = or i8 %112, %110
  br label %114

114:                                              ; preds = %109, %108
  %115 = phi i8 [ %113, %109 ], [ %89, %108 ]
  %116 = xor i8 %115, -128
  %117 = select i1 %92, i8 %116, i8 %115
  %118 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %119 = load i16, ptr %118, align 4
  %120 = icmp eq i16 %119, 256
  %121 = zext i1 %120 to i8
  %122 = shl i8 %117, %121
  br label %123

123:                                              ; preds = %114, %103, %98
  %124 = phi i8 [ %99, %98 ], [ %122, %114 ], [ %107, %103 ]
  %125 = zext i8 %124 to i16
  %126 = shl nuw i16 %125, 8
  %127 = or i16 %126, 32
  %128 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  store i16 %127, ptr %128, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_set_leds_compute_shiftstate() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vc_cons_allocated(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp ult i32 %0, 63
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc_allocate(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.vt_notifier_param, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store i64 0, ptr %2, align 8, !annotation !11
  %3 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call i32 @is_console_locked() #23
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr @oops_in_progress, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1114, i32 noundef 9, ptr noundef null) #23
  br label %12

12:                                               ; preds = %11, %5, %1
  %13 = icmp ugt i32 %0, 62
  br i1 %13, label %67, label %14

14:                                               ; preds = %12
  %15 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 576) #25
  store ptr %20, ptr %2, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %67, label %22

22:                                               ; preds = %18
  store ptr %20, ptr %15, align 4
  tail call void @tty_port_init(ptr noundef nonnull %20) #23
  %23 = getelementptr inbounds %struct.tty_port, ptr %20, i32 0, i32 3
  store ptr @vc_port_ops, ptr %23, align 4
  %24 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0, i32 1
  store i32 -32, ptr %24, align 4
  %25 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0, i32 1, i32 1
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0, i32 1, i32 1, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0, i32 1, i32 2
  store ptr @vc_SAK, ptr %27, align 4
  tail call fastcc void @visual_init(ptr noundef nonnull %20, i32 noundef %0, i32 noundef 1)
  %28 = getelementptr inbounds %struct.vc_data, ptr %20, i32 0, i32 49
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = tail call i32 @con_set_default_unimap(ptr noundef nonnull %20) #23
  br label %34

34:                                               ; preds = %32, %22
  %35 = getelementptr inbounds %struct.vc_data, ptr %20, i32 0, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = icmp ugt i32 %36, 32767
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.vc_data, ptr %20, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 32767
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.vc_data, ptr %20, i32 0, i32 16
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, -8388609
  %46 = icmp ult i32 %45, -8388608
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #24
  %49 = getelementptr inbounds %struct.vc_data, ptr %20, i32 0, i32 15
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr @global_cursor_default, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, ptr @global_cursor_default, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, ptr %39, align 4
  %57 = load i32, ptr %35, align 8
  tail call fastcc void @vc_init(ptr noundef nonnull %20, i32 noundef %56, i32 noundef %57, i32 noundef 1)
  tail call void @vcs_make_sysfs(i32 noundef %0) #23
  %58 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 1, ptr noundef nonnull %2) #23
  br label %67

59:                                               ; preds = %47, %42, %38, %34
  %60 = phi i32 [ -22, %34 ], [ -22, %38 ], [ -22, %42 ], [ -12, %47 ]
  %61 = getelementptr inbounds %struct.vc_data, ptr %20, i32 0, i32 14
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.consw, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef nonnull %20) #23
  %65 = load ptr, ptr %61, align 8
  %66 = load ptr, ptr %65, align 4
  tail call void @module_put(ptr noundef %66) #23
  tail call void @kfree(ptr noundef nonnull %20) #23
  store ptr null, ptr %15, align 4
  br label %67

67:                                               ; preds = %59, %55, %18, %14, %12
  %68 = phi i32 [ %60, %59 ], [ 0, %55 ], [ -6, %12 ], [ 0, %14 ], [ -12, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret i32 %68
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc_SAK(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @visual_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  tail call void @module_put(ptr noundef %8) #23
  br label %9

9:                                                ; preds = %7, %3
  %10 = load ptr, ptr @conswitchp, align 4
  %11 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %10, ptr %12
  store ptr %14, ptr %4, align 4
  %15 = load ptr, ptr %14, align 4
  tail call void @__module_get(ptr noundef %15) #23
  %16 = trunc i32 %1 to i16
  %17 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  store i16 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  store ptr @master_display_fg, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %9
  tail call void @con_free_unimap(ptr noundef %0) #23
  br label %23

23:                                               ; preds = %22, %9
  %24 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 48
  store ptr %24, ptr %19, align 4
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  store i16 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 24
  store i16 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, -2049
  store i16 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 46
  store i16 200, ptr %30, align 4
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr inbounds %struct.consw, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %0, i32 noundef %2) #23
  %34 = load i16, ptr %26, align 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load i16, ptr %27, align 4
  %38 = and i16 %37, 2048
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, i16 2048, i16 30464
  store i16 %40, ptr %26, align 4
  br label %41

41:                                               ; preds = %36, %23
  %42 = phi i16 [ %40, %36 ], [ %34, %23 ]
  %43 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 25
  store i16 %42, ptr %43, align 2
  %44 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 1
  %47 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = mul i32 %49, %46
  %51 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  store i32 %50, ptr %51, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_default_unimap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  store i32 %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  store i32 %1, ptr %6, align 4
  %7 = shl i32 %2, 1
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  store i32 %7, ptr %8, align 4
  %9 = mul i32 %7, %1
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  store i32 %9, ptr %10, align 4
  tail call fastcc void @set_origin(ptr noundef %0)
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  store i32 %12, ptr %13, align 4
  tail call void @reset_vc(ptr noundef %0) #23
  br label %14

14:                                               ; preds = %14, %4
  %15 = phi i32 [ 0, %4 ], [ %27, %14 ]
  %16 = phi i32 [ 0, %4 ], [ %29, %14 ]
  %17 = getelementptr [16 x i8], ptr @default_red, i32 0, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = add nuw nsw i32 %15, 1
  %20 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 41, i32 %15
  store i8 %18, ptr %20, align 1
  %21 = getelementptr [16 x i8], ptr @default_grn, i32 0, i32 %16
  %22 = load i8, ptr %21, align 1
  %23 = add nuw nsw i32 %15, 2
  %24 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 41, i32 %19
  store i8 %22, ptr %24, align 1
  %25 = getelementptr [16 x i8], ptr @default_blu, i32 0, i32 %16
  %26 = load i8, ptr %25, align 1
  %27 = add nuw nsw i32 %15, 3
  %28 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 41, i32 %23
  store i8 %26, ptr %28, align 1
  %29 = add nuw nsw i32 %16, 1
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %14

31:                                               ; preds = %14
  %32 = load i32, ptr @default_color, align 4
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 19
  store i8 %33, ptr %34, align 2
  %35 = load i32, ptr @default_underline_color, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 20
  store i8 %36, ptr %37, align 1
  %38 = load i32, ptr @default_italic_color, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 21
  store i8 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 22
  store i8 8, ptr %41, align 1
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 36
  tail call void @__init_waitqueue_head(ptr noundef %42, ptr noundef nonnull @.str.10, ptr noundef nonnull @vc_init.__key) #23
  tail call fastcc void @reset_terminal(ptr noundef %0, i32 noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_make_sysfs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @vc_do_resize(ptr noundef %5, ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc_do_resize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.vt_notifier_param, align 8
  %6 = alloca %struct.winsize, align 8
  %7 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = tail call i32 @is_console_locked() #23
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr @oops_in_progress, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1206, i32 noundef 9, ptr noundef null) #23
  br label %16

16:                                               ; preds = %15, %9, %4
  %17 = icmp eq ptr %1, null
  br i1 %17, label %265, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 43
  %20 = load i32, ptr %19, align 4
  store i32 0, ptr %19, align 4
  %21 = or i32 %3, %2
  %22 = icmp ult i32 %21, 32768
  br i1 %22, label %23, label %265

23:                                               ; preds = %18
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %27, %25 ], [ %2, %23 ]
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %33, %31 ], [ %3, %28 ]
  %36 = shl i32 %29, 1
  %37 = mul i32 %35, %36
  %38 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %29, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %35, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 14
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.consw, ptr %47, i32 0, i32 14
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %265, label %51

51:                                               ; preds = %45
  %52 = tail call i32 %49(ptr noundef nonnull %1, i32 noundef %29, i32 noundef %35, i32 noundef %20) #23
  br label %265

53:                                               ; preds = %41, %34
  %54 = add i32 %37, -1
  %55 = icmp ult i32 %54, 8388608
  br i1 %55, label %56, label %265

56:                                               ; preds = %53
  %57 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 1052096) #24
  %58 = icmp eq ptr %57, null
  br i1 %58, label %265, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 50
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %59
  %64 = mul i32 %35, %29
  %65 = add i32 %64, %35
  %66 = shl i32 %65, 2
  %67 = tail call noalias ptr @vmalloc(i32 noundef %66) #24
  %68 = icmp eq ptr %67, null
  %69 = icmp eq i32 %35, 0
  %70 = or i1 %69, %68
  br i1 %70, label %81, label %71

71:                                               ; preds = %63
  %72 = getelementptr ptr, ptr %67, i32 %35
  %73 = shl i32 %29, 2
  br label %74

74:                                               ; preds = %74, %71
  %75 = phi i32 [ 0, %71 ], [ %79, %74 ]
  %76 = phi ptr [ %72, %71 ], [ %78, %74 ]
  %77 = getelementptr [0 x ptr], ptr %67, i32 0, i32 %75
  store ptr %76, ptr %77, align 4
  %78 = getelementptr i8, ptr %76, i32 %73
  %79 = add nuw i32 %75, 1
  %80 = icmp eq i32 %79, %35
  br i1 %80, label %81, label %74

81:                                               ; preds = %74, %63
  br i1 %68, label %82, label %83

82:                                               ; preds = %81
  tail call void @kfree(ptr noundef nonnull %57) #23
  br label %265

83:                                               ; preds = %81, %59
  %84 = phi ptr [ %67, %81 ], [ null, %59 ]
  %85 = tail call zeroext i1 @vc_is_sel(ptr noundef %1) #23
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  tail call void @clear_selection() #23
  br label %87

87:                                               ; preds = %86, %83
  %88 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 14
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.consw, ptr %93, i32 0, i32 14
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %87
  %98 = tail call i32 %95(ptr noundef %1, i32 noundef %29, i32 noundef %35, i32 noundef %20) #23
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @kfree(ptr noundef nonnull %57) #23
  tail call void @vfree(ptr noundef %84) #23
  br label %265

101:                                              ; preds = %97, %87
  store i32 %35, ptr %88, align 4
  store i32 %29, ptr %38, align 4
  store i32 %36, ptr %90, align 4
  %102 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 16
  store i32 %37, ptr %102, align 4
  %103 = tail call i32 @llvm.umin.i32(i32 %91, i32 %36)
  %104 = sub i32 %36, %103
  %105 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = ptrtoint ptr %57 to i32
  %108 = add i32 %37, %107
  %109 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %110 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp ugt i32 %111, %35
  br i1 %112, label %113, label %122

113:                                              ; preds = %101
  %114 = sub i32 %89, %111
  %115 = icmp ult i32 %114, %35
  %116 = sub i32 %89, %35
  %117 = lshr i32 %35, 1
  %118 = sub i32 %111, %117
  %119 = select i1 %115, i32 %116, i32 %118
  %120 = mul i32 %119, %91
  %121 = add i32 %120, %106
  br label %122

122:                                              ; preds = %113, %101
  %123 = phi i32 [ %119, %113 ], [ 0, %101 ]
  %124 = phi i32 [ %121, %113 ], [ %106, %101 ]
  %125 = tail call i32 @llvm.umin.i32(i32 %89, i32 %35)
  %126 = mul i32 %91, %125
  %127 = add i32 %124, %126
  %128 = load ptr, ptr %60, align 4
  %129 = lshr i32 %103, 1
  %130 = icmp eq ptr %84, null
  br i1 %130, label %165, label %131

131:                                              ; preds = %122
  %132 = icmp ugt i32 %125, %123
  br i1 %132, label %133, label %139

133:                                              ; preds = %131
  %134 = shl i32 %129, 2
  %135 = icmp eq i32 %29, %129
  %136 = sub i32 %29, %129
  %137 = shl i32 %136, 2
  %138 = sub i32 %125, %123
  br label %144

139:                                              ; preds = %154, %131
  %140 = phi i32 [ 0, %131 ], [ %138, %154 ]
  %141 = icmp ult i32 %140, %35
  br i1 %141, label %142, label %165

142:                                              ; preds = %139
  %143 = shl i32 %29, 2
  br label %158

144:                                              ; preds = %154, %133
  %145 = phi i32 [ %123, %133 ], [ %155, %154 ]
  %146 = phi i32 [ 0, %133 ], [ %156, %154 ]
  %147 = getelementptr [0 x ptr], ptr %128, i32 0, i32 %145
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr [0 x ptr], ptr %84, i32 0, i32 %146
  %150 = load ptr, ptr %149, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %150, ptr align 4 %148, i32 %134, i1 false) #23
  br i1 %135, label %154, label %151

151:                                              ; preds = %144
  %152 = getelementptr i32, ptr %150, i32 %129
  %153 = tail call ptr @__memset32(ptr noundef %152, i32 noundef 32, i32 noundef %137) #23
  br label %154

154:                                              ; preds = %151, %144
  %155 = add nuw i32 %145, 1
  %156 = add nuw i32 %146, 1
  %157 = icmp eq i32 %156, %138
  br i1 %157, label %139, label %144

158:                                              ; preds = %158, %142
  %159 = phi i32 [ %140, %142 ], [ %163, %158 ]
  %160 = getelementptr [0 x ptr], ptr %84, i32 0, i32 %159
  %161 = load ptr, ptr %160, align 4
  %162 = tail call ptr @__memset32(ptr noundef %161, i32 noundef 32, i32 noundef %143) #23
  %163 = add i32 %159, 1
  %164 = icmp eq i32 %163, %35
  br i1 %164, label %165, label %158

165:                                              ; preds = %158, %139, %122
  %166 = load ptr, ptr %60, align 4
  tail call void @vfree(ptr noundef %166) #23
  store ptr %84, ptr %60, align 4
  tail call fastcc void @update_attr(ptr noundef %1)
  %167 = icmp ult i32 %124, %127
  br i1 %167, label %168, label %186

168:                                              ; preds = %165
  %169 = icmp ugt i32 %36, %91
  %170 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 29
  %171 = lshr i32 %104, 1
  br label %172

172:                                              ; preds = %182, %168
  %173 = phi i32 [ %124, %168 ], [ %183, %182 ]
  %174 = phi i32 [ %107, %168 ], [ %184, %182 ]
  %175 = inttoptr i32 %174 to ptr
  %176 = inttoptr i32 %173 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %175, ptr align 2 %176, i32 %103, i1 false) #23
  br i1 %169, label %177, label %182

177:                                              ; preds = %172
  %178 = add i32 %174, %103
  %179 = inttoptr i32 %178 to ptr
  %180 = load i16, ptr %170, align 4
  %181 = tail call ptr @memset16(ptr noundef %179, i16 noundef zeroext %180, i32 noundef %171) #23
  br label %182

182:                                              ; preds = %177, %172
  %183 = add i32 %173, %91
  %184 = add i32 %174, %36
  %185 = icmp ult i32 %183, %127
  br i1 %185, label %172, label %186

186:                                              ; preds = %182, %165
  %187 = phi i32 [ %107, %165 ], [ %184, %182 ]
  %188 = icmp ugt i32 %108, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = inttoptr i32 %187 to ptr
  %191 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 29
  %192 = load i16, ptr %191, align 4
  %193 = sub i32 %108, %187
  %194 = lshr exact i32 %193, 1
  %195 = tail call ptr @memset16(ptr noundef %190, i16 noundef zeroext %192, i32 noundef %194) #23
  br label %196

196:                                              ; preds = %189, %186
  %197 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 15
  %198 = load ptr, ptr %197, align 4
  store ptr %57, ptr %197, align 4
  store i32 %37, ptr %102, align 4
  tail call fastcc void @set_origin(ptr noundef %1)
  tail call void @kfree(ptr noundef %198) #23
  %199 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 12
  store i32 0, ptr %199, align 4
  %200 = load i32, ptr %88, align 4
  %201 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 13
  store i32 %200, ptr %201, align 4
  %202 = load i32, ptr %109, align 4
  %203 = load i32, ptr %110, align 4
  %204 = icmp slt i32 %202, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %196
  %206 = load i32, ptr %38, align 4
  %207 = icmp ugt i32 %206, %202
  %208 = add i32 %206, -1
  %209 = select i1 %207, i32 %202, i32 %208
  br label %210

210:                                              ; preds = %205, %196
  %211 = phi i32 [ 0, %196 ], [ %209, %205 ]
  store i32 %211, ptr %109, align 4
  %212 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 37
  %213 = load i16, ptr %212, align 4
  %214 = and i16 %213, 8
  %215 = icmp eq i16 %214, 0
  %216 = select i1 %215, ptr %88, ptr %201
  %217 = load i32, ptr %216, align 4
  %218 = icmp slt i32 %203, 0
  %219 = icmp sgt i32 %217, %203
  %220 = add i32 %217, -1
  %221 = select i1 %219, i32 %203, i32 %220
  %222 = select i1 %218, i32 0, i32 %221
  store i32 %222, ptr %110, align 4
  %223 = load i32, ptr %105, align 4
  %224 = load i32, ptr %90, align 4
  %225 = mul i32 %224, %222
  %226 = shl i32 %211, 1
  %227 = add i32 %223, %226
  %228 = add i32 %227, %225
  %229 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 26
  store i32 %228, ptr %229, align 4
  %230 = and i16 %213, -1025
  store i16 %230, ptr %212, align 4
  %231 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %231, ptr noundef align 4 dereferenceable(20) %109, i32 20, i1 false) #23
  %232 = icmp eq ptr %0, null
  br i1 %232, label %243, label %233

233:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store i64 0, ptr %6, align 8
  %234 = trunc i32 %200 to i16
  store i16 %234, ptr %6, align 8
  %235 = load i32, ptr %38, align 4
  %236 = trunc i32 %235 to i16
  %237 = getelementptr inbounds %struct.winsize, ptr %6, i32 0, i32 1
  store i16 %236, ptr %237, align 2
  %238 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 7
  %239 = load i32, ptr %238, align 4
  %240 = trunc i32 %239 to i16
  %241 = getelementptr inbounds %struct.winsize, ptr %6, i32 0, i32 3
  store i16 %240, ptr %241, align 2
  %242 = call i32 @tty_do_resize(ptr noundef nonnull %0, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  br label %243

243:                                              ; preds = %233, %210
  %244 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = call i32 @is_console_locked() #23
  %248 = icmp eq i32 %247, 0
  %249 = load i32, ptr @oops_in_progress, align 4
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %248, i1 %250, i1 false
  br i1 %251, label %252, label %253, !prof !8

252:                                              ; preds = %246
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %253

253:                                              ; preds = %252, %246, %243
  %254 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 47
  %255 = load ptr, ptr %254, align 4
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, %1
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  call void @redraw_screen(ptr noundef %1, i32 noundef 0)
  br label %259

259:                                              ; preds = %258, %253
  %260 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %261 = load i16, ptr %260, align 4
  %262 = zext i16 %261 to i32
  call void @vt_event_post(i32 noundef 8, i32 noundef %262, i32 noundef %262) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8
  %263 = getelementptr inbounds %struct.vt_notifier_param, ptr %5, i32 0, i32 1
  store i32 0, ptr %263, align 4
  %264 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 4, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  br label %265

265:                                              ; preds = %259, %100, %82, %56, %53, %51, %45, %18, %16
  %266 = phi i32 [ %98, %100 ], [ 0, %259 ], [ -12, %82 ], [ -6, %16 ], [ -22, %18 ], [ -22, %53 ], [ -12, %56 ], [ %52, %51 ], [ 0, %45 ]
  ret i32 %266
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc_deallocate(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.vt_notifier_param, align 8
  %3 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call i32 @is_console_locked() #23
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr @oops_in_progress, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1392, i32 noundef 9, ptr noundef null) #23
  br label %12

12:                                               ; preds = %11, %5, %1
  %13 = icmp ult i32 %0, 63
  br i1 %13, label %14, label %32

14:                                               ; preds = %12
  %15 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store i64 0, ptr %2, align 8, !annotation !11
  store ptr %16, ptr %2, align 8
  %19 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 2, ptr noundef nonnull %2) #23
  call void @vcs_remove_sysfs(i32 noundef %0) #23
  %20 = getelementptr inbounds %struct.vc_data, ptr %16, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.consw, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  call void %23(ptr noundef nonnull %16) #23
  %24 = load ptr, ptr %20, align 4
  %25 = load ptr, ptr %24, align 4
  call void @module_put(ptr noundef %25) #23
  call void @con_free_unimap(ptr noundef nonnull %16) #23
  %26 = getelementptr inbounds %struct.vc_data, ptr %16, i32 0, i32 34
  %27 = load ptr, ptr %26, align 4
  call void @put_pid(ptr noundef %27) #23
  %28 = getelementptr inbounds %struct.vc_data, ptr %16, i32 0, i32 50
  %29 = load ptr, ptr %28, align 4
  call void @vfree(ptr noundef %29) #23
  store ptr null, ptr %28, align 4
  %30 = getelementptr inbounds %struct.vc_data, ptr %16, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  call void @kfree(ptr noundef %31) #23
  store ptr null, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %32

32:                                               ; preds = %18, %14, %12
  %33 = phi ptr [ %16, %18 ], [ null, %14 ], [ null, %12 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_remove_sysfs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @con_free_unimap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scrollback(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 1
  %5 = load i32, ptr @scrollback_delta, align 4
  %6 = sub i32 %5, %4
  store i32 %6, ptr @scrollback_delta, align 4
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef nonnull @console_work) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scrollfront(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 1
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %7, %4 ]
  %10 = load i32, ptr @scrollback_delta, align 4
  %11 = add i32 %10, %9
  store i32 %11, ptr @scrollback_delta, align 4
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef nonnull @console_work) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mouse_report(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store i64 0, ptr %5, align 8, !annotation !11
  %6 = add i32 %1, 32
  %7 = and i32 %6, 255
  %8 = add i32 %2, 33
  %9 = and i32 %8, 255
  %10 = add i32 %3, 33
  %11 = and i32 %10, 255
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, i32 noundef %7, i32 noundef %9, i32 noundef %11)
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %14, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %12) #23
  call void @tty_flip_buffer_push(ptr noundef %14) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mouse_reporting() local_unnamed_addr #5 {
  %1 = load i32, ptr @fg_console, align 4
  %2 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc_data, ptr %3, i32 0, i32 37
  %5 = load i16, ptr %4, align 4
  %6 = lshr i16 %5, 12
  %7 = and i16 %6, 3
  %8 = zext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_console(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @fg_console, align 4
  %3 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ult i32 %0, 63
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, null
  %10 = load i8, ptr @vt_dont_switch, align 1
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 33
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 17
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %13
  store i32 %0, ptr @want_console, align 4
  %22 = load ptr, ptr @system_wq, align 4
  %23 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %22, ptr noundef nonnull @console_work) #23
  br label %24

24:                                               ; preds = %21, %17, %6, %1
  %25 = phi i32 [ 0, %21 ], [ -22, %17 ], [ -22, %6 ], [ -22, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vt_kmsg_redirect(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, -1
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #23, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @vt_kmsg_redirect.kmsg_con) #23, !srcloc !14
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %0, ptr nonnull @vt_kmsg_redirect.kmsg_con) #23, !srcloc !15
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #23, !srcloc !16
  br label %8

6:                                                ; preds = %1
  %7 = load i32, ptr @vt_kmsg_redirect.kmsg_con, align 4
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %5, %3 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tioclinux(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = inttoptr i32 %1 to ptr
  %4 = tail call ptr @llvm.thread.pointer() #23
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call zeroext i1 @capable(i32 noundef 21) #23
  br i1 %11, label %12, label %92

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #26, !srcloc !17
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %3, i32 -1090519041) #23, !srcloc !20
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %92

20:                                               ; preds = %12
  %21 = extractvalue { i32, i32 } %17, 1
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %92 [
    i8 2, label %23
    i8 3, label %26
    i8 4, label %28
    i8 5, label %29
    i8 6, label %31
    i8 7, label %38
    i8 10, label %51
    i8 17, label %53
    i8 11, label %60
    i8 12, label %74
    i8 13, label %76
    i8 14, label %89
    i8 15, label %90
  ]

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %3, i32 1
  %25 = tail call i32 @set_selection_user(ptr noundef %24, ptr noundef %0) #23
  br label %92

26:                                               ; preds = %20
  %27 = tail call i32 @paste_selection(ptr noundef %0) #23
  br label %92

28:                                               ; preds = %20
  tail call void @console_lock() #23
  tail call void @do_unblank_screen(i32 noundef 0) #23
  tail call void @console_unlock() #23
  br label %92

29:                                               ; preds = %20
  tail call void @console_lock() #23
  %30 = tail call i32 @sel_loadlut(ptr noundef %3) #23
  tail call void @console_unlock() #23
  br label %92

31:                                               ; preds = %20
  %32 = tail call i32 @vt_get_shift_state() #23
  %33 = trunc i32 %32 to i8
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #26, !srcloc !17
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %33, i32 -1090519041) #23, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  br label %92

38:                                               ; preds = %20
  tail call void @console_lock() #23
  %39 = load i32, ptr @fg_console, align 4
  %40 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.vc_data, ptr %41, i32 0, i32 37
  %43 = load i16, ptr %42, align 4
  %44 = lshr i16 %43, 12
  %45 = trunc i16 %44 to i8
  %46 = and i8 %45, 3
  tail call void @console_unlock() #23
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #26, !srcloc !17
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %50 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %46, i32 -1090519041) #23, !srcloc !22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  br label %92

51:                                               ; preds = %20
  tail call void @console_lock() #23
  %52 = tail call fastcc i32 @set_vesa_blanking(ptr noundef %3)
  tail call void @console_unlock() #23
  br label %92

53:                                               ; preds = %20
  %54 = load i32, ptr @vt_kmsg_redirect.kmsg_con, align 4
  %55 = trunc i32 %54 to i8
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #26, !srcloc !17
  %57 = and i32 %56, -13
  %58 = or i32 %57, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %59 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %55, i32 -1090519041) #23, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  br label %92

60:                                               ; preds = %20
  %61 = tail call zeroext i1 @capable(i32 noundef 21) #23
  br i1 %61, label %62, label %92

62:                                               ; preds = %60
  %63 = getelementptr i8, ptr %3, i32 1
  %64 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #26, !srcloc !17
  %65 = and i32 %64, -13
  %66 = or i32 %65, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %67 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %63, i32 -1090519041) #23, !srcloc !24
  %68 = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %62
  %71 = extractvalue { i32, i32 } %67, 1
  %72 = and i32 %71, 255
  tail call void asm sideeffect "dmb ish", "~{memory}"() #23, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @vt_kmsg_redirect.kmsg_con) #23, !srcloc !14
  %73 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %72, ptr nonnull @vt_kmsg_redirect.kmsg_con) #23, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #23, !srcloc !16
  br label %92

74:                                               ; preds = %20
  %75 = load i32, ptr @fg_console, align 4
  br label %92

76:                                               ; preds = %20
  %77 = getelementptr i8, ptr %3, i32 4
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #26, !srcloc !17
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %81 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %77, i32 -1090519041) #23, !srcloc !25
  %82 = extractvalue { i32, i32 } %81, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = extractvalue { i32, i32 } %81, 1
  tail call void @console_lock() #23
  %86 = load i32, ptr @fg_console, align 4
  %87 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %86
  %88 = load ptr, ptr %87, align 4
  tail call void @scrollfront(ptr noundef %88, i32 noundef %85)
  tail call void @console_unlock() #23
  br label %92

89:                                               ; preds = %20
  tail call void @console_lock() #23
  store i1 true, ptr @ignore_poke, align 4
  tail call void @do_blank_screen(i32 noundef 0)
  tail call void @console_unlock() #23
  br label %92

90:                                               ; preds = %20
  %91 = load i32, ptr @console_blanked, align 4
  br label %92

92:                                               ; preds = %90, %89, %84, %76, %74, %70, %62, %60, %53, %51, %38, %31, %29, %28, %26, %23, %20, %12, %10
  %93 = phi i32 [ -1, %10 ], [ -14, %12 ], [ %91, %90 ], [ 0, %89 ], [ 0, %84 ], [ %75, %74 ], [ 0, %70 ], [ %59, %53 ], [ %52, %51 ], [ %50, %38 ], [ %37, %31 ], [ %30, %29 ], [ 0, %28 ], [ %27, %26 ], [ %25, %23 ], [ -1, %60 ], [ -14, %62 ], [ -14, %76 ], [ -22, %20 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_selection_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paste_selection(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unblank_screen() #0 {
  tail call void @do_unblank_screen(i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sel_loadlut(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_get_shift_state() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_vesa_blanking(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = tail call ptr @llvm.thread.pointer() #23
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %4) #26, !srcloc !17
  %6 = and i32 %5, -13
  %7 = or i32 %6, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %8 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1090519041) #23, !srcloc !26
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = extractvalue { i32, i32 } %8, 1
  %13 = and i32 %12, 255
  %14 = icmp ult i32 %13, 4
  %15 = select i1 %14, i32 %13, i32 0
  store i32 %15, ptr @vesa_blank_mode, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i32 [ 0, %11 ], [ -14, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_blank_screen(i32 noundef %0) #0 {
  %2 = load i32, ptr @fg_console, align 4
  %3 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = tail call i32 @is_console_locked() #23
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @oops_in_progress, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4352, i32 noundef 9, ptr noundef null) #23
  br label %14

14:                                               ; preds = %13, %7, %1
  %15 = load i32, ptr @console_blanked, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @blank_state, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %115

20:                                               ; preds = %17
  store i32 0, ptr @blank_state, align 4
  %21 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.consw, ptr %22, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr @vesa_blank_mode, align 4
  %26 = add i32 %25, 1
  %27 = tail call i32 %24(ptr noundef %4, i32 noundef %26, i32 noundef 0) #23
  br label %115

28:                                               ; preds = %14
  %29 = icmp eq i32 %0, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %28
  tail call fastcc void @hide_cursor(ptr noundef %4)
  %31 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = tail call i32 @is_console_locked() #23
  %35 = icmp eq i32 %34, 0
  %36 = load i32, ptr @oops_in_progress, align 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !8

39:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 941, i32 noundef 9, ptr noundef null) #23
  br label %40

40:                                               ; preds = %39, %33, %30
  %41 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 14
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.consw, ptr %42, i32 0, i32 18
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  tail call void %44(ptr noundef %4) #23
  %47 = load ptr, ptr %41, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi ptr [ %42, %40 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.consw, ptr %49, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %4, i32 noundef -1, i32 noundef 1) #23
  %53 = load i32, ptr @fg_console, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr @console_blanked, align 4
  store i32 0, ptr @blank_state, align 4
  tail call fastcc void @set_origin(ptr noundef %4)
  br label %115

55:                                               ; preds = %28
  store i32 0, ptr @blank_state, align 4
  %56 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 17
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr @fg_console, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr @console_blanked, align 4
  br label %115

62:                                               ; preds = %55
  tail call fastcc void @hide_cursor(ptr noundef %4)
  %63 = tail call i32 @del_timer_sync(ptr noundef nonnull @console_timer) #23
  store i1 false, ptr @blank_timer_expired, align 4
  %64 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = tail call i32 @is_console_locked() #23
  %68 = icmp eq i32 %67, 0
  %69 = load i32, ptr @oops_in_progress, align 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %73, !prof !8

72:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 941, i32 noundef 9, ptr noundef null) #23
  br label %73

73:                                               ; preds = %72, %66, %62
  %74 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 14
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.consw, ptr %75, i32 0, i32 18
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  tail call void %77(ptr noundef %4) #23
  %80 = load ptr, ptr %74, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = phi ptr [ %75, %73 ], [ %80, %79 ]
  %83 = getelementptr inbounds %struct.consw, ptr %82, i32 0, i32 10
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr @vesa_off_interval, align 4
  %86 = icmp eq i32 %85, 0
  %87 = load i32, ptr @vesa_blank_mode, align 4
  %88 = add i32 %87, 1
  %89 = select i1 %86, i32 %88, i32 1
  %90 = tail call i32 %84(ptr noundef %4, i32 noundef %89, i32 noundef 0) #23
  %91 = load i32, ptr @fg_console, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr @console_blanked, align 4
  %93 = icmp eq i32 %90, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %81
  tail call fastcc void @set_origin(ptr noundef %4)
  br label %95

95:                                               ; preds = %94, %81
  %96 = load ptr, ptr @console_blank_hook, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = tail call i32 %96(i32 noundef 1) #23
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %98, %95
  %102 = load i32, ptr @vesa_off_interval, align 4
  %103 = icmp ne i32 %102, 0
  %104 = load i32, ptr @vesa_blank_mode, align 4
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  store i32 2, ptr @blank_state, align 4
  %108 = load volatile i32, ptr @jiffies, align 64
  %109 = add i32 %108, %102
  %110 = tail call i32 @mod_timer(ptr noundef nonnull @console_timer, i32 noundef %109) #23
  br label %111

111:                                              ; preds = %107, %101
  %112 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 3
  %113 = load i16, ptr %112, align 4
  %114 = zext i16 %113 to i32
  tail call void @vt_event_post(i32 noundef 2, i32 noundef %114, i32 noundef %114) #23
  br label %115

115:                                              ; preds = %111, %98, %59, %48, %20, %17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @con_init() #8 section ".init.text" {
  tail call void @console_lock() #23
  %1 = load ptr, ptr @conswitchp, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store ptr @dummy_con, ptr @conswitchp, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi ptr [ @dummy_con, %3 ], [ %1, %0 ]
  %6 = getelementptr inbounds %struct.consw, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7() #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store i32 0, ptr @fg_console, align 4
  tail call void @console_unlock() #23
  br label %91

11:                                               ; preds = %22, %4
  %12 = phi i32 [ %23, %22 ], [ 0, %4 ]
  %13 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load ptr, ptr @conswitchp, align 4
  store ptr %17, ptr %13, align 4
  %18 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %12, i32 1
  store ptr %8, ptr %18, align 4
  %19 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %12, i32 6
  store i32 2, ptr %19, align 4
  %20 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %12, i32 4
  store i32 0, ptr %20, align 4
  %21 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %12, i32 5
  store i32 62, ptr %21, align 4
  br label %27

22:                                               ; preds = %11
  %23 = add nuw nsw i32 %12, 1
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %11

25:                                               ; preds = %22
  %26 = load ptr, ptr @conswitchp, align 4
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi ptr [ %26, %25 ], [ %17, %16 ]
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %32, %29 ]
  %31 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %30
  store ptr %28, ptr %31, align 4
  %32 = add nuw nsw i32 %30, 1
  %33 = icmp eq i32 %32, 63
  br i1 %33, label %34, label %29

34:                                               ; preds = %29
  %35 = load i32, ptr @blankinterval, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  store i32 1, ptr @blank_state, align 4
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = mul i32 %35, 100
  %40 = add i32 %38, %39
  %41 = tail call i32 @mod_timer(ptr noundef nonnull @console_timer, i32 noundef %40) #23
  br label %42

42:                                               ; preds = %37, %34
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 2304, i32 noundef 576) #25
  store ptr %44, ptr @vc_cons, align 4
  store i32 -32, ptr getelementptr inbounds ([63 x %struct.vc], ptr @vc_cons, i32 0, i32 0, i32 1), align 4
  store volatile ptr getelementptr inbounds ([63 x %struct.vc], ptr @vc_cons, i32 0, i32 0, i32 1, i32 1), ptr getelementptr inbounds ([63 x %struct.vc], ptr @vc_cons, i32 0, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds ([63 x %struct.vc], ptr @vc_cons, i32 0, i32 0, i32 1, i32 1), ptr getelementptr inbounds ([63 x %struct.vc], ptr @vc_cons, i32 0, i32 0, i32 1, i32 1, i32 1), align 4
  store ptr @vc_SAK, ptr getelementptr inbounds ([63 x %struct.vc], ptr @vc_cons, i32 0, i32 0, i32 1, i32 2), align 4
  tail call void @tty_port_init(ptr noundef %44) #23
  tail call fastcc void @visual_init(ptr noundef %44, i32 noundef 0, i32 noundef 1)
  %45 = getelementptr inbounds %struct.vc_data, ptr %44, i32 0, i32 16
  %46 = load i32, ptr %45, align 8
  %47 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %46, i32 noundef 2304) #24
  %48 = getelementptr inbounds %struct.vc_data, ptr %44, i32 0, i32 15
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.vc_data, ptr %44, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vc_data, ptr %44, i32 0, i32 4
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.vc_data, ptr %44, i32 0, i32 14
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.consw, ptr %54, i32 0, i32 18
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = zext i1 %57 to i32
  tail call fastcc void @vc_init(ptr noundef %44, i32 noundef %50, i32 noundef %52, i32 noundef %58)
  store i32 0, ptr @fg_console, align 4
  %59 = load ptr, ptr @vc_cons, align 4
  store ptr %59, ptr @master_display_fg, align 4
  tail call fastcc void @set_origin(ptr noundef %59)
  %60 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %42
  %63 = tail call i32 @is_console_locked() #23
  %64 = icmp eq i32 %63, 0
  %65 = load i32, ptr @oops_in_progress, align 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 941, i32 noundef 9, ptr noundef null) #23
  br label %69

69:                                               ; preds = %68, %62, %42
  %70 = getelementptr inbounds %struct.vc_data, ptr %59, i32 0, i32 14
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.consw, ptr %71, i32 0, i32 18
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  tail call void %73(ptr noundef %59) #23
  br label %76

76:                                               ; preds = %75, %69
  %77 = getelementptr inbounds %struct.vc_data, ptr %59, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.vc_data, ptr %59, i32 0, i32 1, i32 1
  %80 = load i32, ptr %79, align 4
  tail call fastcc void @gotoxy(ptr noundef %59, i32 noundef %78, i32 noundef %80)
  tail call fastcc void @csi_J(ptr noundef %59, i32 noundef 0)
  tail call void @redraw_screen(ptr noundef %59, i32 noundef 0)
  %81 = getelementptr inbounds %struct.vc_data, ptr %59, i32 0, i32 37
  %82 = load i16, ptr %81, align 4
  %83 = and i16 %82, 2048
  %84 = icmp eq i16 %83, 0
  %85 = select i1 %84, ptr @.str.13, ptr @.str.12
  %86 = getelementptr inbounds %struct.vc_data, ptr %59, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.vc_data, ptr %59, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %85, ptr noundef nonnull %8, i32 noundef %87, i32 noundef %89) #27
  store i1 true, ptr @printable, align 4
  tail call void @console_unlock() #23
  tail call void @register_console(ptr noundef nonnull @vt_console_driver) #23
  br label %91

91:                                               ; preds = %76, %10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @vty_init(ptr noundef %0) local_unnamed_addr #8 section ".init.text" {
  tail call void @cdev_init(ptr noundef nonnull @vc0_cdev, ptr noundef %0) #23
  %2 = tail call i32 @cdev_add(ptr noundef nonnull @vc0_cdev, i32 noundef 4194304, i32 noundef 1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 @register_chrdev_region(i32 noundef 4194304, i32 noundef 1, ptr noundef nonnull @.str.3) #23
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4) #28
  unreachable

8:                                                ; preds = %4
  %9 = load ptr, ptr @tty_class, align 4
  %10 = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef %9, ptr noundef null, i32 noundef 4194304, ptr noundef null, ptr noundef nonnull @vt_dev_groups, ptr noundef nonnull @.str.5) #23
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %12 = select i1 %11, ptr null, ptr %10
  store ptr %12, ptr @tty0dev, align 4
  %13 = tail call i32 @vcs_init() #23
  %14 = tail call ptr @__tty_alloc_driver(i32 noundef 63, ptr noundef null, i32 noundef 6) #23
  store ptr %14, ptr @console_driver, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #28
  unreachable

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.tty_driver, ptr %14, i32 0, i32 5
  store ptr @.str.7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tty_driver, ptr %14, i32 0, i32 6
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tty_driver, ptr %14, i32 0, i32 7
  store i32 4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tty_driver, ptr %14, i32 0, i32 8
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tty_driver, ptr %14, i32 0, i32 10
  store i16 2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tty_driver, ptr %14, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %23, ptr noundef nonnull align 4 dereferenceable(44) @tty_std_termios, i32 44, i1 false)
  %24 = load i32, ptr @default_utf8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, ptr %23, align 4
  %28 = or i32 %27, 16384
  store i32 %28, ptr %23, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = getelementptr inbounds %struct.tty_driver, ptr %14, i32 0, i32 20
  store ptr @con_ops, ptr %30, align 4
  %31 = tail call i32 @tty_register_driver(ptr noundef %14) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.8) #28
  unreachable

34:                                               ; preds = %29
  %35 = tail call i32 @kbd_init() #23
  tail call void @console_map_init() #23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vcs_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kbd_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_map_init() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_unbind_con_driver(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = tail call zeroext i1 @try_module_get(ptr noundef %5) #23
  br i1 %6, label %7, label %202

7:                                                ; preds = %4
  %8 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = tail call i32 @is_console_locked() #23
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr @oops_in_progress, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3743, i32 noundef 9, ptr noundef null) #23
  br label %17

17:                                               ; preds = %16, %10, %7
  br label %18

18:                                               ; preds = %33, %17
  %19 = phi i32 [ %34, %33 ], [ 0, %17 ]
  %20 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %19, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @registered_con_driver, align 4
  %30 = icmp eq ptr %29, null
  %31 = icmp eq ptr %29, %0
  %32 = or i1 %30, %31
  br i1 %32, label %36, label %111

33:                                               ; preds = %23, %18
  %34 = add nuw nsw i32 %19, 1
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %200, label %18

36:                                               ; preds = %28
  %37 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 1), align 4
  %38 = icmp eq ptr %37, null
  %39 = icmp eq ptr %37, %0
  %40 = or i1 %38, %39
  br i1 %40, label %41, label %111

41:                                               ; preds = %36
  %42 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 2), align 4
  %43 = icmp eq ptr %42, null
  %44 = icmp eq ptr %42, %0
  %45 = or i1 %43, %44
  br i1 %45, label %46, label %111

46:                                               ; preds = %41
  %47 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 3), align 4
  %48 = icmp eq ptr %47, null
  %49 = icmp eq ptr %47, %0
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %111

51:                                               ; preds = %46
  %52 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 4), align 4
  %53 = icmp eq ptr %52, null
  %54 = icmp eq ptr %52, %0
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %111

56:                                               ; preds = %51
  %57 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 5), align 4
  %58 = icmp eq ptr %57, null
  %59 = icmp eq ptr %57, %0
  %60 = or i1 %58, %59
  br i1 %60, label %61, label %111

61:                                               ; preds = %56
  %62 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 6), align 4
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %62, %0
  %65 = or i1 %63, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %61
  %67 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 7), align 4
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %67, %0
  %70 = or i1 %68, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %66
  %72 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 8), align 4
  %73 = icmp eq ptr %72, null
  %74 = icmp eq ptr %72, %0
  %75 = or i1 %73, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %71
  %77 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 9), align 4
  %78 = icmp eq ptr %77, null
  %79 = icmp eq ptr %77, %0
  %80 = or i1 %78, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %76
  %82 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 10), align 4
  %83 = icmp eq ptr %82, null
  %84 = icmp eq ptr %82, %0
  %85 = or i1 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 11), align 4
  %88 = icmp eq ptr %87, null
  %89 = icmp eq ptr %87, %0
  %90 = or i1 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 12), align 4
  %93 = icmp eq ptr %92, null
  %94 = icmp eq ptr %92, %0
  %95 = or i1 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 13), align 4
  %98 = icmp eq ptr %97, null
  %99 = icmp eq ptr %97, %0
  %100 = or i1 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 14), align 4
  %103 = icmp eq ptr %102, null
  %104 = icmp eq ptr %102, %0
  %105 = or i1 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 15), align 4
  %108 = icmp eq ptr %107, null
  %109 = icmp eq ptr %107, %0
  %110 = or i1 %108, %109
  br i1 %110, label %200, label %111

111:                                              ; preds = %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %28
  %112 = phi i32 [ 0, %28 ], [ 1, %36 ], [ 2, %41 ], [ 3, %46 ], [ 4, %51 ], [ 5, %56 ], [ 6, %61 ], [ 7, %66 ], [ 8, %71 ], [ 9, %76 ], [ 10, %81 ], [ 11, %86 ], [ 12, %91 ], [ 13, %96 ], [ 14, %101 ], [ 15, %106 ]
  %113 = phi ptr [ %29, %28 ], [ %37, %36 ], [ %42, %41 ], [ %47, %46 ], [ %52, %51 ], [ %57, %56 ], [ %62, %61 ], [ %67, %66 ], [ %72, %71 ], [ %77, %76 ], [ %82, %81 ], [ %87, %86 ], [ %92, %91 ], [ %97, %96 ], [ %102, %101 ], [ %107, %106 ]
  %114 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = tail call i32 @is_console_locked() #23
  %118 = icmp eq i32 %117, 0
  %119 = load i32, ptr @oops_in_progress, align 4
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %122, label %123, !prof !8

122:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3991, i32 noundef 9, ptr noundef null) #23
  br label %123

123:                                              ; preds = %122, %116, %111
  br label %127

124:                                              ; preds = %127
  %125 = add nuw nsw i32 %128, 1
  %126 = icmp eq i32 %125, 63
  br i1 %126, label %200, label %127

127:                                              ; preds = %124, %123
  %128 = phi i32 [ %125, %124 ], [ 0, %123 ]
  %129 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %128
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, %0
  br i1 %131, label %132, label %124

132:                                              ; preds = %127
  %133 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %19, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = tail call i32 @llvm.smax.i32(i32 %134, i32 %1)
  %136 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %19, i32 5
  %137 = load i32, ptr %136, align 4
  %138 = tail call i32 @llvm.smin.i32(i32 %137, i32 %2)
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %150, label %140

140:                                              ; preds = %147, %132
  %141 = phi i32 [ %148, %147 ], [ %135, %132 ]
  %142 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %141
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, %0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load ptr, ptr %0, align 4
  tail call void @module_put(ptr noundef %146) #23
  store ptr null, ptr %142, align 4
  br label %147

147:                                              ; preds = %145, %140
  %148 = add i32 %141, 1
  %149 = icmp sgt i32 %148, %138
  br i1 %149, label %150, label %140

150:                                              ; preds = %147, %132
  %151 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = tail call i32 @is_console_locked() #23
  %155 = icmp eq i32 %154, 0
  %156 = load i32, ptr @oops_in_progress, align 4
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %160, !prof !8

159:                                              ; preds = %153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3991, i32 noundef 9, ptr noundef null) #23
  br label %160

160:                                              ; preds = %159, %153, %150
  br label %164

161:                                              ; preds = %164
  %162 = add nuw nsw i32 %165, 1
  %163 = icmp eq i32 %162, 63
  br i1 %163, label %169, label %164

164:                                              ; preds = %161, %160
  %165 = phi i32 [ %162, %161 ], [ 0, %160 ]
  %166 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %165
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, %113
  br i1 %168, label %177, label %161

169:                                              ; preds = %161
  %170 = load ptr, ptr @conswitchp, align 4
  %171 = getelementptr inbounds %struct.consw, ptr %113, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = tail call ptr %172() #23
  %174 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %112, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = or i32 %175, 2
  store i32 %176, ptr %174, align 4
  store ptr %170, ptr @conswitchp, align 4
  br label %177

177:                                              ; preds = %169, %164
  %178 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = tail call i32 @is_console_locked() #23
  %182 = icmp eq i32 %181, 0
  %183 = load i32, ptr @oops_in_progress, align 4
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %187, !prof !8

186:                                              ; preds = %180
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3991, i32 noundef 9, ptr noundef null) #23
  br label %187

187:                                              ; preds = %186, %180, %177
  br label %191

188:                                              ; preds = %191
  %189 = add nuw nsw i32 %192, 1
  %190 = icmp eq i32 %189, 63
  br i1 %190, label %196, label %191

191:                                              ; preds = %188, %187
  %192 = phi i32 [ %189, %188 ], [ 0, %187 ]
  %193 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %192
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, %0
  br i1 %195, label %199, label %188

196:                                              ; preds = %188
  %197 = load i32, ptr %24, align 4
  %198 = and i32 %197, -3
  store i32 %198, ptr %24, align 4
  br label %199

199:                                              ; preds = %196, %191
  tail call fastcc void @do_bind_con_driver(ptr noundef %113, i32 noundef %135, i32 noundef %138, i32 noundef %3)
  br label %200

200:                                              ; preds = %199, %124, %106, %33
  %201 = phi i32 [ 0, %199 ], [ -19, %106 ], [ 0, %124 ], [ -19, %33 ]
  tail call void @module_put(ptr noundef %5) #23
  br label %202

202:                                              ; preds = %200, %4
  %203 = phi i32 [ %201, %200 ], [ -19, %4 ]
  ret i32 %203
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_is_bound(ptr noundef readnone %0) #0 {
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @is_console_locked() #23
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @oops_in_progress, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3991, i32 noundef 9, ptr noundef null) #23
  br label %11

11:                                               ; preds = %10, %4, %1
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, 63
  br i1 %14, label %20, label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ %13, %12 ], [ 0, %11 ]
  %17 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %12

20:                                               ; preds = %15, %12
  %21 = phi i32 [ 0, %12 ], [ 1, %15 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_bind_con_driver(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = tail call zeroext i1 @try_module_get(ptr noundef %5) #23
  br i1 %6, label %7, label %217

7:                                                ; preds = %4
  %8 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = tail call i32 @is_console_locked() #23
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr @oops_in_progress, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3641, i32 noundef 9, ptr noundef null) #23
  br label %17

17:                                               ; preds = %16, %10, %7
  %18 = load ptr, ptr @registered_con_driver, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %65, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 1), align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %65, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 2), align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %65, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 3), align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %65, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 4), align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %65, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 5), align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %65, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 6), align 4
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %65, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 7), align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %65, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 8), align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %65, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 9), align 4
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %65, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 10), align 4
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 11), align 4
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 12), align 4
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 13), align 4
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 14), align 4
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 15), align 4
  %64 = icmp eq ptr %63, %0
  br i1 %64, label %65, label %216

65:                                               ; preds = %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17
  %66 = phi i32 [ 0, %17 ], [ 1, %20 ], [ 2, %23 ], [ 3, %26 ], [ 4, %29 ], [ 5, %32 ], [ 6, %35 ], [ 7, %38 ], [ 8, %41 ], [ 9, %44 ], [ 10, %47 ], [ 11, %50 ], [ 12, %53 ], [ 13, %56 ], [ 14, %59 ], [ 15, %62 ]
  %67 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %66, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %66, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.consw, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = tail call ptr %75() #23
  %77 = load i32, ptr %69, align 4
  %78 = or i32 %77, 2
  store i32 %78, ptr %69, align 4
  br label %79

79:                                               ; preds = %73, %65
  %80 = icmp eq i32 %3, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr @conswitchp, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %82, align 4
  tail call void @module_put(ptr noundef %85) #23
  br label %86

86:                                               ; preds = %84, %81
  tail call void @__module_get(ptr noundef %5) #23
  store ptr %0, ptr @conswitchp, align 4
  br label %87

87:                                               ; preds = %86, %79
  %88 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %66, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 %1)
  %91 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %66, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = tail call i32 @llvm.smin.i32(i32 %92, i32 %2)
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %187, label %95

95:                                               ; preds = %182, %87
  %96 = phi i32 [ %185, %182 ], [ %90, %87 ]
  %97 = phi i32 [ %184, %182 ], [ -1, %87 ]
  %98 = phi i32 [ %183, %182 ], [ -1, %87 ]
  %99 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %96
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %96
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %95
  %105 = load ptr, ptr %102, align 4
  tail call void @module_put(ptr noundef %105) #23
  br label %106

106:                                              ; preds = %104, %95
  tail call void @__module_get(ptr noundef %5) #23
  store ptr %0, ptr %101, align 4
  %107 = icmp eq ptr %100, null
  br i1 %107, label %182, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.vc_data, ptr %100, i32 0, i32 14
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %182, label %112

112:                                              ; preds = %108
  %113 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = tail call i32 @is_console_locked() #23
  %117 = icmp eq i32 %116, 0
  %118 = load i32, ptr @oops_in_progress, align 4
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 %119, i1 false
  br i1 %120, label %121, label %122, !prof !8

121:                                              ; preds = %115
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %122

122:                                              ; preds = %121, %115, %112
  %123 = getelementptr inbounds %struct.vc_data, ptr %100, i32 0, i32 47
  %124 = load ptr, ptr %123, align 4
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %100
  br i1 %126, label %127, label %143

127:                                              ; preds = %122
  %128 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = tail call i32 @is_console_locked() #23
  %132 = icmp eq i32 %131, 0
  %133 = load i32, ptr @oops_in_progress, align 4
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %137, !prof !8

136:                                              ; preds = %130
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 941, i32 noundef 9, ptr noundef null) #23
  br label %137

137:                                              ; preds = %136, %130, %127
  %138 = load ptr, ptr %109, align 4
  %139 = getelementptr inbounds %struct.consw, ptr %138, i32 0, i32 18
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  tail call void %140(ptr noundef nonnull %100) #23
  br label %143

143:                                              ; preds = %142, %137, %122
  %144 = phi i32 [ %98, %122 ], [ %96, %137 ], [ %96, %142 ]
  %145 = getelementptr inbounds %struct.vc_data, ptr %100, i32 0, i32 37
  %146 = load i16, ptr %145, align 4
  %147 = load ptr, ptr %109, align 4
  %148 = getelementptr inbounds %struct.consw, ptr %147, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  tail call void %149(ptr noundef nonnull %100) #23
  %150 = getelementptr inbounds %struct.vc_data, ptr %100, i32 0, i32 15
  %151 = load ptr, ptr %150, align 4
  %152 = ptrtoint ptr %151 to i32
  %153 = getelementptr inbounds %struct.vc_data, ptr %100, i32 0, i32 9
  store i32 %152, ptr %153, align 4
  tail call fastcc void @visual_init(ptr noundef nonnull %100, i32 noundef %96, i32 noundef 0)
  tail call fastcc void @set_origin(ptr noundef nonnull %100)
  tail call fastcc void @update_attr(ptr noundef nonnull %100)
  %154 = load i16, ptr %145, align 4
  %155 = xor i16 %154, %146
  %156 = and i16 %155, 2048
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %182, label %158

158:                                              ; preds = %143
  %159 = getelementptr inbounds %struct.vc_data, ptr %100, i32 0, i32 16
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.vc_data, ptr %100, i32 0, i32 27
  %162 = load i16, ptr %161, align 4
  %163 = or i16 %162, 255
  %164 = icmp ult i32 %160, 2
  br i1 %164, label %182, label %165

165:                                              ; preds = %158
  %166 = lshr i32 %160, 1
  %167 = load i32, ptr %153, align 4
  %168 = inttoptr i32 %167 to ptr
  %169 = getelementptr inbounds %struct.vc_data, ptr %100, i32 0, i32 29
  %170 = xor i16 %163, -1
  br label %171

171:                                              ; preds = %171, %165
  %172 = phi i32 [ %166, %165 ], [ %179, %171 ]
  %173 = phi ptr [ %168, %165 ], [ %180, %171 ]
  %174 = load i16, ptr %173, align 2
  %175 = and i16 %174, %163
  %176 = load i16, ptr %169, align 4
  %177 = and i16 %176, %170
  %178 = or i16 %177, %175
  store i16 %178, ptr %173, align 2
  %179 = add nsw i32 %172, -1
  %180 = getelementptr i16, ptr %173, i32 1
  %181 = icmp ugt i32 %172, 1
  br i1 %181, label %171, label %182

182:                                              ; preds = %171, %158, %143, %108, %106
  %183 = phi i32 [ %98, %108 ], [ %98, %106 ], [ %144, %143 ], [ %144, %158 ], [ %144, %171 ]
  %184 = phi i32 [ %97, %108 ], [ %97, %106 ], [ %96, %143 ], [ %96, %158 ], [ %96, %171 ]
  %185 = add i32 %96, 1
  %186 = icmp sgt i32 %185, %93
  br i1 %186, label %187, label %95

187:                                              ; preds = %182, %87
  %188 = phi i32 [ -1, %87 ], [ %183, %182 ]
  %189 = phi i32 [ -1, %87 ], [ %184, %182 ]
  %190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #27
  br i1 %80, label %191, label %195

191:                                              ; preds = %187
  %192 = add i32 %90, 1
  %193 = add nsw i32 %93, 1
  %194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %192, i32 noundef %193) #27
  br label %195

195:                                              ; preds = %191, %187
  %196 = icmp sgt i32 %189, -1
  br i1 %196, label %197, label %214

197:                                              ; preds = %195
  %198 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %189
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.vc_data, ptr %199, i32 0, i32 37
  %201 = load i16, ptr %200, align 4
  %202 = and i16 %201, 2048
  %203 = icmp eq i16 %202, 0
  %204 = select i1 %203, ptr @.str.13, ptr @.str.12
  %205 = getelementptr inbounds %struct.vc_data, ptr %199, i32 0, i32 4
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr inbounds %struct.vc_data, ptr %199, i32 0, i32 5
  %208 = load i32, ptr %207, align 4
  %209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %204, ptr noundef %68, i32 noundef %206, i32 noundef %208) #27
  %210 = icmp sgt i32 %188, -1
  br i1 %210, label %211, label %216

211:                                              ; preds = %197
  %212 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %188
  %213 = load ptr, ptr %212, align 4
  tail call void @redraw_screen(ptr noundef %213, i32 noundef 0)
  br label %216

214:                                              ; preds = %195
  %215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %68) #27
  br label %216

216:                                              ; preds = %214, %211, %197, %62
  tail call void @module_put(ptr noundef %5) #23
  br label %217

217:                                              ; preds = %216, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_debug_enter(ptr noundef %0) #0 {
  %2 = load i32, ptr @fg_console, align 4
  store i32 %2, ptr @saved_fg_console, align 4
  %3 = load i32, ptr @last_console, align 4
  store i32 %3, ptr @saved_last_console, align 4
  %4 = load i32, ptr @want_console, align 4
  store i32 %4, ptr @saved_want_console, align 4
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  store i32 %7, ptr @saved_vc_mode, align 4
  %8 = load i32, ptr @console_blanked, align 4
  store i32 %8, ptr @saved_console_blanked, align 4
  store i8 0, ptr %5, align 4
  store i32 0, ptr @console_blanked, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.consw, ptr %10, i32 0, i32 24
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call i32 %12(ptr noundef %0) #23
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_debug_leave() #0 {
  %1 = load i32, ptr @saved_fg_console, align 4
  store i32 %1, ptr @fg_console, align 4
  %2 = load i32, ptr @saved_last_console, align 4
  store i32 %2, ptr @last_console, align 4
  %3 = load i32, ptr @saved_want_console, align 4
  store i32 %3, ptr @want_console, align 4
  %4 = load i32, ptr @saved_console_blanked, align 4
  store i32 %4, ptr @console_blanked, align 4
  %5 = load i32, ptr @saved_vc_mode, align 4
  %6 = trunc i32 %5 to i8
  %7 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %8, i32 0, i32 17
  store i8 %6, ptr %9, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.vc_data, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.consw, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = tail call i32 %14(ptr noundef %10) #23
  br label %18

18:                                               ; preds = %16, %0
  %19 = phi i32 [ %17, %16 ], [ 0, %0 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_unregister_con_driver(ptr noundef readnone %0) #0 {
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @is_console_locked() #23
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @oops_in_progress, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3991, i32 noundef 9, ptr noundef null) #23
  br label %11

11:                                               ; preds = %10, %4, %1
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, 63
  br i1 %14, label %20, label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ %13, %12 ], [ 0, %11 ]
  %17 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %77, label %12

20:                                               ; preds = %12
  %21 = load ptr, ptr @conswitchp, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %77, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @registered_con_driver, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %32

26:                                               ; preds = %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %23
  %27 = phi i32 [ 0, %23 ], [ 1, %32 ], [ 2, %35 ], [ 3, %38 ], [ 4, %41 ], [ 5, %44 ], [ 6, %47 ], [ 7, %50 ], [ 8, %53 ], [ 9, %56 ], [ 10, %59 ], [ 11, %62 ], [ 12, %65 ], [ 13, %68 ], [ 14, %71 ], [ 15, %74 ]
  %28 = phi ptr [ @registered_con_driver, %23 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 1), %32 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 2), %35 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 3), %38 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 4), %41 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 5), %44 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 6), %47 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 7), %50 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 8), %53 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 9), %56 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 10), %59 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 11), %62 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 12), %65 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 13), %68 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 14), %71 ], [ getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 15), %74 ]
  store ptr null, ptr %28, align 4
  %29 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %27, i32 6
  store i32 8, ptr %29, align 4
  %30 = load ptr, ptr @system_wq, align 4
  %31 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %30, ptr noundef nonnull @con_driver_unregister_work) #23
  br label %77

32:                                               ; preds = %23
  %33 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 1), align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %26, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 2), align 4
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %26, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 3), align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %26, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 4), align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %26, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 5), align 4
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %26, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 6), align 4
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %26, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 7), align 4
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %26, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 8), align 4
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %26, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 9), align 4
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %26, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 10), align 4
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %26, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 11), align 4
  %64 = icmp eq ptr %63, %0
  br i1 %64, label %26, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 12), align 4
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %26, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 13), align 4
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %26, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 14), align 4
  %73 = icmp eq ptr %72, %0
  br i1 %73, label %26, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 15), align 4
  %76 = icmp eq ptr %75, %0
  br i1 %76, label %26, label %77

77:                                               ; preds = %74, %26, %20, %15
  %78 = phi i32 [ -22, %20 ], [ 0, %26 ], [ -19, %74 ], [ -16, %15 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_take_over_console(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = tail call i32 @is_console_locked() #23
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr @oops_in_progress, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4111, i32 noundef 9, ptr noundef null) #23
  br label %15

15:                                               ; preds = %14, %8, %4
  %16 = tail call zeroext i1 @try_module_get(ptr noundef %5) #23
  br i1 %16, label %17, label %102

17:                                               ; preds = %15
  %18 = load ptr, ptr @registered_con_driver, align 4
  %19 = icmp eq ptr %18, %0
  %20 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 1), align 4
  %21 = icmp eq ptr %20, %0
  %22 = select i1 %19, i1 true, i1 %21
  %23 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 2), align 4
  %24 = icmp eq ptr %23, %0
  %25 = select i1 %22, i1 true, i1 %24
  %26 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 3), align 4
  %27 = icmp eq ptr %26, %0
  %28 = select i1 %25, i1 true, i1 %27
  %29 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 4), align 4
  %30 = icmp eq ptr %29, %0
  %31 = select i1 %28, i1 true, i1 %30
  %32 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 5), align 4
  %33 = icmp eq ptr %32, %0
  %34 = select i1 %31, i1 true, i1 %33
  %35 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 6), align 4
  %36 = icmp eq ptr %35, %0
  %37 = select i1 %34, i1 true, i1 %36
  %38 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 7), align 4
  %39 = icmp eq ptr %38, %0
  %40 = select i1 %37, i1 true, i1 %39
  %41 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 8), align 4
  %42 = icmp eq ptr %41, %0
  %43 = select i1 %40, i1 true, i1 %42
  %44 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 9), align 4
  %45 = icmp eq ptr %44, %0
  %46 = select i1 %43, i1 true, i1 %45
  %47 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 10), align 4
  %48 = icmp eq ptr %47, %0
  %49 = select i1 %46, i1 true, i1 %48
  %50 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 11), align 4
  %51 = icmp eq ptr %50, %0
  %52 = select i1 %49, i1 true, i1 %51
  %53 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 12), align 4
  %54 = icmp eq ptr %53, %0
  %55 = select i1 %52, i1 true, i1 %54
  %56 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 13), align 4
  %57 = icmp eq ptr %56, %0
  %58 = select i1 %55, i1 true, i1 %57
  %59 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 14), align 4
  %60 = icmp eq ptr %59, %0
  %61 = select i1 %58, i1 true, i1 %60
  %62 = load ptr, ptr getelementptr inbounds ([16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 15), align 4
  %63 = icmp eq ptr %62, %0
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %101, label %65

65:                                               ; preds = %17
  %66 = getelementptr inbounds %struct.consw, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = tail call ptr %67() #23
  %69 = icmp eq ptr %68, null
  br i1 %69, label %99, label %70

70:                                               ; preds = %80, %65
  %71 = phi i32 [ %81, %80 ], [ 0, %65 ]
  %72 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %71, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75, %70
  %81 = add nuw nsw i32 %71, 1
  %82 = icmp eq i32 %81, 16
  br i1 %82, label %99, label %70

83:                                               ; preds = %75
  store ptr %0, ptr %72, align 4
  %84 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %71, i32 1
  store ptr %68, ptr %84, align 4
  %85 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %71, i32 3
  store i32 %71, ptr %85, align 4
  store i32 3, ptr %76, align 4
  %86 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %71, i32 4
  store i32 %1, ptr %86, align 4
  %87 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %71, i32 5
  store i32 %2, ptr %87, align 4
  %88 = load ptr, ptr @vtconsole_class, align 4
  %89 = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef %88, ptr noundef null, i32 noundef %71, ptr noundef %72, ptr noundef nonnull @con_dev_groups, ptr noundef nonnull @.str.23, i32 noundef %71) #23
  %90 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %71, i32 2
  store ptr %89, ptr %90, align 4
  %91 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load ptr, ptr %84, align 4
  %94 = ptrtoint ptr %89 to i32
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %93, i32 noundef %94) #27
  store ptr null, ptr %90, align 4
  br label %101

96:                                               ; preds = %83
  %97 = load i32, ptr %76, align 4
  %98 = or i32 %97, 4
  store i32 %98, ptr %76, align 4
  br label %101

99:                                               ; preds = %80, %65
  %100 = phi i32 [ -19, %65 ], [ -22, %80 ]
  tail call void @module_put(ptr noundef %5) #23
  br label %102

101:                                              ; preds = %96, %92, %17
  tail call void @module_put(ptr noundef %5) #23
  tail call fastcc void @do_bind_con_driver(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  br label %102

102:                                              ; preds = %101, %99, %15
  %103 = phi i32 [ 0, %101 ], [ %100, %99 ], [ -19, %15 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @give_up_console(ptr noundef %0) #0 {
  tail call void @console_lock() #23
  %2 = tail call i32 @do_unregister_con_driver(ptr noundef %0)
  tail call void @console_unlock() #23
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vtconsole_class_init() #8 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @vtconsole_class_init.__key) #23
  store ptr %1, ptr @vtconsole_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %4) #27
  store ptr null, ptr @vtconsole_class, align 4
  br label %6

6:                                                ; preds = %3, %0
  br label %7

7:                                                ; preds = %31, %6
  %8 = phi i32 [ %32, %31 ], [ 0, %6 ]
  %9 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %7
  %13 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %8, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load ptr, ptr @vtconsole_class, align 4
  %18 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %8, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef %17, ptr noundef null, i32 noundef %19, ptr noundef %9, ptr noundef nonnull @con_dev_groups, ptr noundef nonnull @.str.23, i32 noundef %19) #23
  store ptr %20, ptr %13, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %8, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %20 to i32
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %24, i32 noundef %25) #27
  store ptr null, ptr %13, align 4
  br label %31

27:                                               ; preds = %16
  %28 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %8, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 4
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %22, %12, %7
  %32 = add nuw nsw i32 %8, 1
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %7

34:                                               ; preds = %31
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_event_post(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_unblank_screen(i32 noundef %0) #0 {
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @is_console_locked() #23
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @oops_in_progress, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4417, i32 noundef 9, ptr noundef null) #23
  br label %11

11:                                               ; preds = %10, %4, %1
  store i1 false, ptr @ignore_poke, align 4
  %12 = load i32, ptr @console_blanked, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %101, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr @fg_console, align 4
  %16 = icmp ult i32 %15, 63
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %15
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %14
  %22 = add i32 %15, 1
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %22) #27
  br label %101

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 17
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %101

28:                                               ; preds = %24
  %29 = load i32, ptr @blankinterval, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = mul i32 %29, 100
  %34 = add i32 %32, %33
  %35 = tail call i32 @mod_timer(ptr noundef nonnull @console_timer, i32 noundef %34) #23
  store i32 1, ptr @blank_state, align 4
  br label %36

36:                                               ; preds = %31, %28
  store i32 0, ptr @console_blanked, align 4
  %37 = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 14
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.consw, ptr %38, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef nonnull %19, i32 noundef 0, i32 noundef %0) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  tail call void @redraw_screen(ptr noundef nonnull %19, i32 noundef 0)
  br label %44

44:                                               ; preds = %43, %36
  %45 = load ptr, ptr @console_blank_hook, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 %45(i32 noundef 0) #23
  br label %49

49:                                               ; preds = %47, %44
  %50 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = tail call i32 @is_console_locked() #23
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr @oops_in_progress, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !8

58:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4505, i32 noundef 9, ptr noundef null) #23
  br label %59

59:                                               ; preds = %58, %52, %49
  %60 = load i8, ptr %25, align 4
  %61 = icmp eq i8 %60, 1
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %37, align 4
  %64 = getelementptr inbounds %struct.consw, ptr %63, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void %65(ptr noundef nonnull %19, ptr noundef nonnull @color_table) #23
  br label %68

68:                                               ; preds = %67, %62, %59
  %69 = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 3
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  %72 = load i32, ptr @fg_console, align 4
  %73 = icmp ne i32 %72, %71
  %74 = load i32, ptr @console_blanked, align 4
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %98, label %77

77:                                               ; preds = %68
  %78 = load i8, ptr %25, align 4
  %79 = icmp eq i8 %78, 1
  br i1 %79, label %98, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 37
  %82 = load i16, ptr %81, align 4
  %83 = and i16 %82, 32
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %80
  %86 = tail call zeroext i1 @vc_is_sel(ptr noundef nonnull %19) #23
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  tail call void @clear_selection() #23
  br label %88

88:                                               ; preds = %87, %85
  tail call fastcc void @add_softcursor(ptr noundef nonnull %19) #23
  %89 = getelementptr inbounds %struct.vc_data, ptr %19, i32 0, i32 23
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 15
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %37, align 4
  %95 = getelementptr inbounds %struct.consw, ptr %94, i32 0, i32 7
  %96 = load ptr, ptr %95, align 4
  tail call void %96(ptr noundef nonnull %19, i32 noundef 1) #23
  br label %98

97:                                               ; preds = %80
  tail call fastcc void @hide_cursor(ptr noundef nonnull %19) #23
  br label %98

98:                                               ; preds = %97, %93, %88, %77, %68
  %99 = load i16, ptr %69, align 4
  %100 = zext i16 %99 to i32
  tail call void @vt_event_post(i32 noundef 4, i32 noundef %100, i32 noundef %100) #23
  br label %101

101:                                              ; preds = %98, %24, %21, %11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @poke_blanked_console() local_unnamed_addr #0 {
  %1 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = tail call i32 @is_console_locked() #23
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr @oops_in_progress, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4473, i32 noundef 9, ptr noundef null) #23
  br label %10

10:                                               ; preds = %9, %3, %0
  %11 = tail call i32 @del_timer(ptr noundef nonnull @console_timer) #23
  store i1 false, ptr @blank_timer_expired, align 4
  %12 = load i1, ptr @ignore_poke, align 4
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr @fg_console, align 4
  %15 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.vc_data, ptr %16, i32 0, i32 17
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr @console_blanked, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @do_unblank_screen(i32 noundef 0) #23
  br label %34

26:                                               ; preds = %22
  %27 = load i32, ptr @blankinterval, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = mul i32 %27, 100
  %32 = add i32 %30, %31
  %33 = tail call i32 @mod_timer(ptr noundef nonnull @console_timer, i32 noundef %32) #23
  store i32 1, ptr @blank_state, align 4
  br label %34

34:                                               ; preds = %29, %26, %25, %18, %13, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_set_cmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [48 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %2, i8 0, i32 48, i1 false), !annotation !11
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 48, i32 -1090519040) #29, !srcloc !27
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !28

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #23
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #26, !srcloc !17
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %12 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 48) #23
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #23, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !28

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 48, %1 ]
  %16 = sub i32 48, %15
  %17 = getelementptr i8, ptr %2, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #23
  br label %89

18:                                               ; preds = %6
  call void @console_lock() #23
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i32 [ 0, %18 ], [ %30, %19 ]
  %21 = phi i32 [ 0, %18 ], [ %34, %19 ]
  %22 = add nuw nsw i32 %20, 1
  %23 = getelementptr [48 x i8], ptr %2, i32 0, i32 %20
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr [16 x i8], ptr @default_red, i32 0, i32 %21
  store i8 %24, ptr %25, align 1
  %26 = add nuw nsw i32 %20, 2
  %27 = getelementptr [48 x i8], ptr %2, i32 0, i32 %22
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr [16 x i8], ptr @default_grn, i32 0, i32 %21
  store i8 %28, ptr %29, align 1
  %30 = add nuw nsw i32 %20, 3
  %31 = getelementptr [48 x i8], ptr %2, i32 0, i32 %26
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr [16 x i8], ptr @default_blu, i32 0, i32 %21
  store i8 %32, ptr %33, align 1
  %34 = add nuw nsw i32 %21, 1
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %19

36:                                               ; preds = %85, %19
  %37 = phi i32 [ %86, %85 ], [ 0, %19 ]
  %38 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %85, label %41

41:                                               ; preds = %60, %36
  %42 = phi ptr [ %62, %60 ], [ %39, %36 ]
  %43 = phi i32 [ %61, %60 ], [ 0, %36 ]
  %44 = phi i32 [ %58, %60 ], [ 0, %36 ]
  %45 = getelementptr [16 x i8], ptr @default_red, i32 0, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = add nuw nsw i32 %43, 1
  %48 = getelementptr %struct.vc_data, ptr %42, i32 0, i32 41, i32 %43
  store i8 %46, ptr %48, align 1
  %49 = getelementptr [16 x i8], ptr @default_grn, i32 0, i32 %44
  %50 = load i8, ptr %49, align 1
  %51 = load ptr, ptr %38, align 4
  %52 = add nuw nsw i32 %43, 2
  %53 = getelementptr %struct.vc_data, ptr %51, i32 0, i32 41, i32 %47
  store i8 %50, ptr %53, align 1
  %54 = getelementptr [16 x i8], ptr @default_blu, i32 0, i32 %44
  %55 = load i8, ptr %54, align 1
  %56 = load ptr, ptr %38, align 4
  %57 = getelementptr %struct.vc_data, ptr %56, i32 0, i32 41, i32 %52
  store i8 %55, ptr %57, align 1
  %58 = add nuw nsw i32 %44, 1
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %63, label %60

60:                                               ; preds = %41
  %61 = add nuw nsw i32 %43, 3
  %62 = load ptr, ptr %38, align 4
  br label %41

63:                                               ; preds = %41
  %64 = load ptr, ptr %38, align 4
  %65 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = call i32 @is_console_locked() #23
  %69 = icmp eq i32 %68, 0
  %70 = load i32, ptr @oops_in_progress, align 4
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %74, !prof !8

73:                                               ; preds = %67
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4505, i32 noundef 9, ptr noundef null) #23
  br label %74

74:                                               ; preds = %73, %67, %63
  %75 = getelementptr inbounds %struct.vc_data, ptr %64, i32 0, i32 17
  %76 = load i8, ptr %75, align 4
  %77 = icmp eq i8 %76, 1
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.vc_data, ptr %64, i32 0, i32 14
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.consw, ptr %80, i32 0, i32 15
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  call void %82(ptr noundef %64, ptr noundef nonnull @color_table) #23
  br label %85

85:                                               ; preds = %84, %78, %74, %36
  %86 = add nuw nsw i32 %37, 1
  %87 = icmp eq i32 %86, 63
  br i1 %87, label %88, label %36

88:                                               ; preds = %85
  call void @console_unlock() #23
  br label %89

89:                                               ; preds = %88, %14
  %90 = phi i32 [ 0, %88 ], [ -14, %14 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #23
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_get_cmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [48 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %2, i8 0, i32 48, i1 false), !annotation !11
  tail call void @console_lock() #23
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ 0, %1 ], [ %16, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %18, %3 ]
  %6 = getelementptr [16 x i8], ptr @default_red, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = add nuw nsw i32 %4, 1
  %9 = getelementptr [48 x i8], ptr %2, i32 0, i32 %4
  store i8 %7, ptr %9, align 1
  %10 = getelementptr [16 x i8], ptr @default_grn, i32 0, i32 %5
  %11 = load i8, ptr %10, align 1
  %12 = add nuw nsw i32 %4, 2
  %13 = getelementptr [48 x i8], ptr %2, i32 0, i32 %8
  store i8 %11, ptr %13, align 1
  %14 = getelementptr [16 x i8], ptr @default_blu, i32 0, i32 %5
  %15 = load i8, ptr %14, align 1
  %16 = add nuw nsw i32 %4, 3
  %17 = getelementptr [48 x i8], ptr %2, i32 0, i32 %12
  store i8 %15, ptr %17, align 1
  %18 = add nuw nsw i32 %5, 1
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %3

20:                                               ; preds = %3
  tail call void @console_unlock() #23
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 48, i32 -1090519040) #29, !srcloc !29
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #23
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #26, !srcloc !17
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #23, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %30 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 48) #23
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #23, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 -14
  br label %33

33:                                               ; preds = %24, %20
  %34 = phi i32 [ -14, %20 ], [ %32, %24 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #23
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_palette(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %15, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %17, %2 ]
  %5 = getelementptr [16 x i8], ptr @default_red, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = add nuw nsw i32 %3, 1
  %8 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 41, i32 %3
  store i8 %6, ptr %8, align 1
  %9 = getelementptr [16 x i8], ptr @default_grn, i32 0, i32 %4
  %10 = load i8, ptr %9, align 1
  %11 = add nuw nsw i32 %3, 2
  %12 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 41, i32 %7
  store i8 %10, ptr %12, align 1
  %13 = getelementptr [16 x i8], ptr @default_blu, i32 0, i32 %4
  %14 = load i8, ptr %13, align 1
  %15 = add nuw nsw i32 %3, 3
  %16 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 41, i32 %11
  store i8 %14, ptr %16, align 1
  %17 = add nuw nsw i32 %4, 1
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %19, label %2

19:                                               ; preds = %2
  %20 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = tail call i32 @is_console_locked() #23
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr @oops_in_progress, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4505, i32 noundef 9, ptr noundef null) #23
  br label %29

29:                                               ; preds = %28, %22, %19
  %30 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.consw, ptr %35, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void %37(ptr noundef %0, ptr noundef nonnull @color_table) #23
  br label %40

40:                                               ; preds = %39, %33, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @con_font_op(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.console_font, align 4
  %4 = alloca [32 x i8], align 1
  %5 = alloca %struct.console_font, align 4
  %6 = alloca %struct.console_font, align 4
  %7 = load i32, ptr %1, align 4
  switch i32 %7, label %183 [
    i32 0, label %8
    i32 1, label %63
    i32 2, label %146
    i32 3, label %184
  ]

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %61, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 512
  br i1 %19, label %61, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -33
  %24 = icmp ult i32 %23, -32
  br i1 %24, label %61, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -33
  %29 = icmp ult i32 %28, -32
  br i1 %29, label %61, label %30

30:                                               ; preds = %25
  %31 = shl nuw nsw i32 %22, 2
  %32 = add nuw nsw i32 %31, 28
  %33 = and i32 %32, -32
  %34 = mul nuw nsw i32 %33, %18
  %35 = tail call ptr @memdup_user(ptr noundef nonnull %14, i32 noundef %34) #23
  %36 = getelementptr inbounds %struct.console_font, ptr %6, i32 0, i32 3
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = ptrtoint ptr %35 to i32
  br label %61

40:                                               ; preds = %30
  %41 = load i32, ptr %17, align 4
  %42 = getelementptr inbounds %struct.console_font, ptr %6, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = load i32, ptr %21, align 4
  store i32 %43, ptr %6, align 4
  %44 = load i32, ptr %26, align 4
  %45 = getelementptr inbounds %struct.console_font, ptr %6, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  tail call void @console_lock() #23
  %46 = load i8, ptr %9, align 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.consw, ptr %50, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = call i32 %52(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %56) #23
  br label %58

58:                                               ; preds = %54, %48, %40
  %59 = phi i32 [ %57, %54 ], [ -22, %40 ], [ -38, %48 ]
  call void @console_unlock() #23
  %60 = load ptr, ptr %36, align 4
  call void @kfree(ptr noundef %60) #23
  br label %61

61:                                               ; preds = %58, %38, %25, %20, %16, %12, %8
  %62 = phi i32 [ %39, %38 ], [ %59, %58 ], [ -22, %8 ], [ -22, %12 ], [ -22, %16 ], [ -22, %25 ], [ -22, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  br label %184

63:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #23, !annotation !11
  %64 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #24
  %69 = getelementptr inbounds %struct.console_font, ptr %5, i32 0, i32 3
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %144, label %71

71:                                               ; preds = %67, %63
  tail call void @console_lock() #23
  %72 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.consw, ptr %77, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %71
  %82 = phi i32 [ -38, %75 ], [ -22, %71 ]
  tail call void @console_unlock() #23
  br label %140

83:                                               ; preds = %75
  %84 = call i32 %79(ptr noundef %0, ptr noundef nonnull %5) #23
  call void @console_unlock() #23
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %140

86:                                               ; preds = %83
  %87 = load i32, ptr %5, align 4
  %88 = shl i32 %87, 2
  %89 = add i32 %88, 28
  %90 = and i32 %89, -32
  %91 = getelementptr inbounds %struct.console_font, ptr %5, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = mul i32 %90, %92
  %94 = load ptr, ptr %64, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = icmp ugt i32 %92, %98
  %100 = select i1 %99, i32 -28, i32 0
  br label %101

101:                                              ; preds = %96, %86
  %102 = phi i32 [ 0, %86 ], [ %100, %96 ]
  %103 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = icmp ugt i32 %87, %104
  br i1 %105, label %140, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.console_font, ptr %5, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = icmp ugt i32 %108, %110
  br i1 %111, label %140, label %112

112:                                              ; preds = %106
  %113 = icmp eq i32 %102, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %112
  store i32 %108, ptr %109, align 4
  store i32 %87, ptr %103, align 4
  %115 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 4
  store i32 %92, ptr %115, align 4
  br i1 %95, label %140, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.console_font, ptr %5, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp slt i32 %93, 0
  %120 = load i1, ptr @check_copy_size.__already_done, align 1
  %121 = xor i1 %120, true
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %124, !prof !9

123:                                              ; preds = %116
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #23
  br label %124

124:                                              ; preds = %123, %116
  br i1 %119, label %140, label %125, !prof !9

125:                                              ; preds = %124
  %126 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %94, i32 %93, i32 -1090519040) #29, !srcloc !29
  %127 = extractvalue { i32, i32 } %126, 0
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = tail call ptr @llvm.thread.pointer() #23
  %131 = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 3
  %132 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %131) #26, !srcloc !17
  %133 = and i32 %132, -13
  %134 = or i32 %133, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %134) #23, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  %135 = call i32 @arm_copy_to_user(ptr noundef nonnull %94, ptr noundef %118, i32 noundef %93) #23
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #23, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #23, !srcloc !19
  br label %136

136:                                              ; preds = %129, %125
  %137 = phi i32 [ %135, %129 ], [ %93, %125 ]
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i32 0, i32 -14
  br label %140

140:                                              ; preds = %136, %124, %114, %112, %106, %101, %83, %81
  %141 = phi i32 [ %84, %83 ], [ %102, %112 ], [ 0, %114 ], [ %82, %81 ], [ -28, %101 ], [ -28, %106 ], [ -14, %124 ], [ %139, %136 ]
  %142 = getelementptr inbounds %struct.console_font, ptr %5, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  call void @kfree(ptr noundef %143) #23
  br label %144

144:                                              ; preds = %140, %67
  %145 = phi i32 [ %141, %140 ], [ -12, %67 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  br label %184

146:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %147 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 2
  %148 = load i32, ptr %147, align 4
  store i32 %148, ptr %3, align 4
  %149 = getelementptr inbounds %struct.console_font, ptr %3, i32 0, i32 1
  %150 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 3
  %151 = load i32, ptr %150, align 4
  store i32 %151, ptr %149, align 4
  %152 = getelementptr inbounds %struct.console_font, ptr %3, i32 0, i32 2
  store i32 0, ptr %152, align 4
  %153 = getelementptr inbounds %struct.console_font, ptr %3, i32 0, i32 3
  store ptr null, ptr %153, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false) #23, !annotation !11
  %154 = getelementptr inbounds %struct.console_font_op, ptr %1, i32 0, i32 5
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %146
  %158 = call i32 @strncpy_from_user(ptr noundef nonnull %4, ptr noundef nonnull %155, i32 noundef 31) #23
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %181, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds [32 x i8], ptr %4, i32 0, i32 31
  store i8 0, ptr %161, align 1
  br label %162

162:                                              ; preds = %160, %146
  %163 = phi ptr [ %4, %160 ], [ null, %146 ]
  call void @console_lock() #23
  %164 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %165 = load i8, ptr %164, align 4
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162
  call void @console_unlock() #23
  br label %181

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.consw, ptr %170, i32 0, i32 13
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  call void @console_unlock() #23
  br label %181

175:                                              ; preds = %168
  %176 = call i32 %172(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %163) #23
  call void @console_unlock() #23
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, ptr %3, align 4
  store i32 %179, ptr %147, align 4
  %180 = load i32, ptr %149, align 4
  store i32 %180, ptr %150, align 4
  br label %181

181:                                              ; preds = %178, %175, %174, %167, %157
  %182 = phi i32 [ -22, %167 ], [ -14, %157 ], [ 0, %178 ], [ %176, %175 ], [ -38, %174 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  br label %184

183:                                              ; preds = %2
  br label %184

184:                                              ; preds = %183, %181, %144, %61, %2
  %185 = phi i32 [ -38, %183 ], [ %182, %181 ], [ %145, %144 ], [ %62, %61 ], [ -22, %2 ]
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @screen_glyph(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.consw, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %1
  %12 = inttoptr i32 %11 to ptr
  br label %15

13:                                               ; preds = %2
  %14 = tail call ptr %6(ptr noundef %0, i32 noundef %1) #23
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %12, %8 ]
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, 255
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, %17
  %22 = icmp eq i16 %21, 0
  %23 = or i16 %18, 256
  %24 = select i1 %22, i16 %18, i16 %23
  ret i16 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @screen_glyph_unicode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = freeze i32 %8
  %10 = udiv i32 %1, %9
  %11 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = mul i32 %10, %9
  %14 = sub i32 %1, %13
  %15 = getelementptr i32, ptr %12, i32 %14
  %16 = load i32, ptr %15, align 4
  br label %44

17:                                               ; preds = %2
  %18 = shl i32 %1, 1
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.consw, ptr %20, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %18
  %28 = inttoptr i32 %27 to ptr
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr %22(ptr noundef %0, i32 noundef %18) #23
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi ptr [ %30, %29 ], [ %28, %24 ]
  %33 = load i16, ptr %32, align 2
  %34 = and i16 %33, 255
  %35 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %36 = load i16, ptr %35, align 4
  %37 = and i16 %36, %33
  %38 = icmp eq i16 %37, 0
  %39 = or i16 %34, 256
  %40 = select i1 %38, i16 %34, i16 %39
  %41 = zext i16 %40 to i32
  %42 = tail call zeroext i16 @inverse_translate(ptr noundef %0, i32 noundef %41, i32 noundef 1) #23
  %43 = zext i16 %42 to i32
  br label %44

44:                                               ; preds = %31, %6
  %45 = phi i32 [ %16, %6 ], [ %43, %31 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @screen_pos(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = shl i32 %1, 1
  br i1 %2, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  br label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.consw, ptr %12, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %4
  %20 = inttoptr i32 %19 to ptr
  br label %23

21:                                               ; preds = %10
  %22 = tail call ptr %14(ptr noundef %0, i32 noundef %4) #23
  br label %23

23:                                               ; preds = %21, %16, %5
  %24 = phi ptr [ %22, %21 ], [ %20, %16 ], [ %9, %5 ]
  ret ptr %24
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @getconsxy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly align 1 dereferenceable(2) %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 255)
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %1, align 1
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 255)
  %10 = trunc i32 %9 to i8
  %11 = getelementptr i8, ptr %1, i32 1
  store i8 %10, ptr %11, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @putconsxy(ptr noundef %0, ptr nocapture noundef readonly align 1 dereferenceable(2) %1) local_unnamed_addr #0 {
  tail call fastcc void @hide_cursor(ptr noundef %0)
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %1, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %4
  %11 = add i32 %9, -1
  %12 = select i1 %10, i32 %4, i32 %11
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  br label %24

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %20, %18 ], [ 0, %22 ]
  %26 = phi ptr [ %21, %18 ], [ %23, %22 ]
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %25, %7
  %29 = icmp sgt i32 %27, %7
  %30 = add i32 %27, -1
  %31 = select i1 %29, i32 %7, i32 %30
  %32 = select i1 %28, i32 %25, i32 %31
  %33 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, %32
  %39 = shl i32 %12, 1
  %40 = add i32 %35, %39
  %41 = add i32 %40, %38
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  store i32 %41, ptr %42, align 4
  %43 = and i16 %15, -1025
  store i16 %43, ptr %14, align 4
  %44 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = load i32, ptr @fg_console, align 4
  %48 = icmp ne i32 %47, %46
  %49 = load i32, ptr @console_blanked, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %73, label %52

52:                                               ; preds = %24
  %53 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %54, 1
  br i1 %55, label %73, label %56

56:                                               ; preds = %52
  %57 = and i16 %15, 32
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  %60 = tail call zeroext i1 @vc_is_sel(ptr noundef %0) #23
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  tail call void @clear_selection() #23
  br label %62

62:                                               ; preds = %61, %59
  tail call fastcc void @add_softcursor(ptr noundef %0) #23
  %63 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 15
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.consw, ptr %69, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %0, i32 noundef 1) #23
  br label %73

72:                                               ; preds = %56
  tail call fastcc void @hide_cursor(ptr noundef %0) #23
  br label %73

73:                                               ; preds = %72, %67, %62, %52, %24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @gotoxy(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  %9 = add i32 %7, -1
  %10 = select i1 %8, i32 %1, i32 %9
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i32 [ 0, %3 ], [ %10, %5 ]
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  br label %24

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %20, %18 ], [ 0, %22 ]
  %26 = phi ptr [ %21, %18 ], [ %23, %22 ]
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %25, %2
  %29 = icmp sgt i32 %27, %2
  %30 = add i32 %27, -1
  %31 = select i1 %29, i32 %2, i32 %30
  %32 = select i1 %28, i32 %25, i32 %31
  %33 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, %32
  %39 = add i32 %38, %35
  %40 = shl i32 %12, 1
  %41 = add i32 %39, %40
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  store i32 %41, ptr %42, align 4
  %43 = and i16 %15, -1025
  store i16 %43, ptr %14, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @vcs_scr_readw(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = ptrtoint ptr %1 to i32
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %3
  %7 = load i32, ptr @softcursor_original, align 4
  %8 = icmp ne i32 %7, -1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = trunc i32 %7 to i16
  br label %14

12:                                               ; preds = %2
  %13 = load i16, ptr %1, align 2
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i16 [ %11, %10 ], [ %13, %12 ]
  ret i16 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vcs_scr_writew(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  store i16 %1, ptr %2, align 2
  %4 = ptrtoint ptr %2 to i32
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store i32 -1, ptr @softcursor_original, align 4
  tail call fastcc void @add_softcursor(ptr noundef %0)
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_softcursor(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr @softcursor_original, align 4
  %12 = icmp eq i32 %11, -1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %68

14:                                               ; preds = %1
  store i32 %6, ptr @softcursor_original, align 4
  %15 = lshr i32 %8, 8
  %16 = and i32 %15, 65280
  %17 = or i32 %16, %6
  %18 = and i32 %8, 65280
  %19 = xor i32 %17, %18
  %20 = and i32 %8, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = xor i32 %19, %6
  %24 = and i32 %23, 28672
  %25 = icmp eq i32 %24, 0
  %26 = xor i32 %19, 28672
  %27 = select i1 %25, i32 %26, i32 %19
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i32 [ %19, %14 ], [ %27, %22 ]
  %30 = and i32 %8, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = lshr i32 %29, 4
  %34 = xor i32 %33, %29
  %35 = and i32 %34, 1792
  %36 = icmp eq i32 %35, 0
  %37 = xor i32 %29, 1792
  %38 = select i1 %36, i32 %37, i32 %29
  br label %39

39:                                               ; preds = %32, %28
  %40 = phi i32 [ %29, %28 ], [ %38, %32 ]
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr %4, align 2
  %42 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = tail call i32 @is_console_locked() #23
  %46 = icmp eq i32 %45, 0
  %47 = load i32, ptr @oops_in_progress, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %51

51:                                               ; preds = %50, %44, %39
  %52 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %0
  %56 = load i32, ptr @console_blanked, align 4
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.consw, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %65 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %64, align 4
  tail call void %63(ptr noundef %0, i32 noundef %40, i32 noundef %66, i32 noundef %67) #23
  br label %68

68:                                               ; preds = %59, %51, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vcs_scr_updated(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.vt_notifier_param, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.vt_notifier_param, ptr %2, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 4, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @vc_scrolldelta_helper(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #13 {
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 11
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 2
  %14 = load i32, ptr %6, align 4
  %15 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = ptrtoint ptr %3 to i32
  %18 = sub i32 %16, %17
  %19 = add i32 %18, %13
  %20 = icmp ult i32 %19, %2
  %21 = add i32 %12, %2
  %22 = select i1 %20, i32 %18, i32 0
  %23 = select i1 %20, i32 %21, i32 %4
  %24 = add i32 %22, %17
  %25 = add i32 %23, %14
  %26 = sub i32 %25, %24
  %27 = srem i32 %26, %23
  %28 = mul i32 %12, %1
  %29 = add i32 %27, %28
  %30 = add i32 %23, %8
  %31 = sub i32 %30, %24
  %32 = srem i32 %31, %23
  %33 = shl i32 %12, 3
  %34 = icmp slt i32 %32, %33
  %35 = select i1 %34, i32 0, i32 %13
  %36 = icmp slt i32 %29, %35
  %37 = select i1 %36, i32 0, i32 %29
  %38 = sub i32 %32, %35
  %39 = icmp sgt i32 %37, %38
  %40 = select i1 %39, i32 %32, i32 %37
  %41 = add i32 %40, %22
  %42 = srem i32 %41, %23
  %43 = add i32 %42, %17
  br label %44

44:                                               ; preds = %10, %5
  %45 = phi i32 [ %43, %10 ], [ %8, %5 ]
  store i32 %45, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @console_callback(ptr nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.vt_notifier_param, align 8
  tail call void @console_lock() #23
  %3 = load i32, ptr @want_console, align 4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load i32, ptr @fg_console, align 4
  %7 = icmp ne i32 %3, %6
  %8 = icmp ult i32 %3, 63
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %6
  %16 = load ptr, ptr %15, align 4
  tail call fastcc void @hide_cursor(ptr noundef %16)
  %17 = load i32, ptr @want_console, align 4
  %18 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  tail call void @change_console(ptr noundef %19) #23
  br label %20

20:                                               ; preds = %14, %10, %5
  store i32 -1, ptr @want_console, align 4
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, ptr @do_poke_blanked_console, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, ptr @do_poke_blanked_console, align 4
  tail call void @poke_blanked_console()
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, ptr @scrollback_delta, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr @fg_console, align 4
  %30 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call void @clear_selection() #23
  %32 = getelementptr inbounds %struct.vc_data, ptr %31, i32 0, i32 17
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.vc_data, ptr %31, i32 0, i32 14
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.consw, ptr %37, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, ptr @scrollback_delta, align 4
  tail call void %39(ptr noundef %31, i32 noundef %42) #23
  br label %43

43:                                               ; preds = %41, %35, %28
  store i32 0, ptr @scrollback_delta, align 4
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i1, ptr @blank_timer_expired, align 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  tail call void @do_blank_screen(i32 noundef 0)
  store i1 false, ptr @blank_timer_expired, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, ptr @fg_console, align 4
  %49 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr %50, ptr %2, align 8
  %51 = getelementptr inbounds %struct.vt_notifier_param, ptr %2, i32 0, i32 1
  store i32 0, ptr %51, align 4
  %52 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 4, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @console_unlock() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @change_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_selection() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vc_is_sel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc_port_destruct(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_do_resize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memset16(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_vc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reset_terminal(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 30
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, -897
  store i16 %10, ptr %8, align 4
  %11 = tail call ptr @set_translate(i32 noundef 0, ptr noundef %0) #23
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 42
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 3
  store i8 0, ptr %13, align 1
  %14 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 1, i32 3, i32 1
  store i8 1, ptr %14, align 1
  %15 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 1
  %18 = load i16, ptr %8, align 4
  %19 = load i32, ptr @default_utf8, align 4
  %20 = trunc i32 %19 to i16
  %21 = shl i16 %20, 14
  %22 = and i16 %21, 16384
  %23 = and i16 %18, -29824
  %24 = or i16 %22, %23
  %25 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 38
  store i8 0, ptr %25, align 2
  %26 = load i32, ptr @global_cursor_default, align 4
  %27 = trunc i32 %26 to i16
  %28 = shl i16 %27, 5
  %29 = and i16 %28, 32
  %30 = or i16 %24, %29
  %31 = or i16 %30, 16
  store i16 %31, ptr %8, align 4
  %32 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  tail call void @vt_reset_keyboard(i32 noundef %34) #23
  %35 = load i32, ptr @cur_default, align 4
  %36 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 25
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 24
  store i16 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 5
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 6
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 19
  store i32 0, ptr %41, align 4
  %43 = load i8, ptr %42, align 2
  %44 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 2
  store i8 %43, ptr %44, align 4
  tail call fastcc void @update_attr(ptr noundef %0)
  %45 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 40
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %45, i8 0, i32 32, i1 false) #23
  tail call void @_set_bit(i32 noundef 0, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 8, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 16, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 24, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 32, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 40, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 48, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 56, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 64, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 72, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 80, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 88, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 96, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 104, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 112, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 120, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 128, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 136, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 144, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 152, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 160, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 168, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 176, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 184, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 192, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 200, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 208, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 216, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 224, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 232, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 240, ptr noundef %45) #23
  tail call void @_set_bit(i32 noundef 248, ptr noundef %45) #23
  %46 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 44
  store i32 750, ptr %46, align 4
  %47 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 45
  store i32 12, ptr %47, align 4
  %48 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 46
  store i16 200, ptr %48, align 4
  %49 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = sext i1 %51 to i32
  %53 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  %54 = load i16, ptr %8, align 4
  %55 = and i16 %54, 8
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %2
  %58 = load i32, ptr %4, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = add i32 %58, -1
  %61 = select i1 %59, i32 0, i32 %60
  br label %70

62:                                               ; preds = %2
  %63 = load i32, ptr %3, align 4
  %64 = load i32, ptr %6, align 4
  %65 = icmp sgt i32 %63, 0
  %66 = icmp sgt i32 %64, 0
  %67 = add i32 %64, -1
  %68 = select i1 %66, i32 0, i32 %67
  %69 = select i1 %65, i32 %63, i32 %68
  br label %70

70:                                               ; preds = %62, %57
  %71 = phi i32 [ %61, %57 ], [ %69, %62 ]
  %72 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = mul i32 %76, %71
  %78 = shl nsw i32 %52, 1
  %79 = add i32 %74, %78
  %80 = add i32 %79, %77
  %81 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  store i32 %80, ptr %81, align 4
  %82 = and i16 %54, -1025
  store i16 %82, ptr %8, align 4
  %83 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %83, ptr noundef align 4 dereferenceable(20) %53, i32 20, i1 false) #23
  %84 = icmp eq i32 %1, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %70
  tail call fastcc void @csi_J(ptr noundef %0, i32 noundef 2)
  br label %86

86:                                               ; preds = %85, %70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @set_translate(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_reset_keyboard(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @csi_J(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %219 [
    i32 0, label %3
    i32 1, label %51
    i32 3, label %92
    i32 2, label %159
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i32, ptr %16, i32 %11
  %18 = shl i32 %12, 2
  %19 = tail call ptr @__memset32(ptr noundef %17, i32 noundef 32, i32 noundef %18) #23
  %20 = load ptr, ptr %5, align 4
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi ptr [ null, %3 ], [ %20, %8 ]
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %24, -1
  %28 = add i32 %26, %27
  %29 = icmp eq ptr %22, null
  %30 = icmp eq i32 %28, 0
  %31 = or i1 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %21
  %33 = load i32, ptr %4, align 4
  %34 = shl i32 %33, 2
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ %28, %32 ], [ %39, %35 ]
  %37 = phi i32 [ %24, %32 ], [ %38, %35 ]
  %38 = add i32 %37, 1
  %39 = add i32 %36, -1
  %40 = getelementptr [0 x ptr], ptr %22, i32 0, i32 %38
  %41 = load ptr, ptr %40, align 4
  %42 = tail call ptr @__memset32(ptr noundef %41, i32 noundef 32, i32 noundef %34) #23
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %35

44:                                               ; preds = %35, %21
  %45 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %46, %48
  %50 = lshr i32 %49, 1
  br label %189

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %84, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr [0 x ptr], ptr %53, i32 0, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = shl i32 %57, 2
  %63 = add i32 %62, 4
  %64 = tail call ptr @__memset32(ptr noundef %61, i32 noundef 32, i32 noundef %63) #23
  %65 = load ptr, ptr %52, align 4
  %66 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq ptr %65, null
  %69 = icmp eq i32 %67, 0
  %70 = or i1 %69, %68
  br i1 %70, label %84, label %71

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %73, 2
  br label %75

75:                                               ; preds = %75, %71
  %76 = phi i32 [ %67, %71 ], [ %78, %75 ]
  %77 = phi i32 [ 0, %71 ], [ %79, %75 ]
  %78 = add i32 %76, -1
  %79 = add nuw i32 %77, 1
  %80 = getelementptr [0 x ptr], ptr %65, i32 0, i32 %77
  %81 = load ptr, ptr %80, align 4
  %82 = tail call ptr @__memset32(ptr noundef %81, i32 noundef 32, i32 noundef %74) #23
  %83 = icmp eq i32 %78, 0
  br i1 %83, label %84, label %75

84:                                               ; preds = %75, %55, %51
  %85 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = sub i32 %86, %88
  %90 = lshr i32 %89, 1
  %91 = add nuw i32 %90, 1
  br label %189

92:                                               ; preds = %2
  %93 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = tail call i32 @is_console_locked() #23
  %97 = icmp eq i32 %96, 0
  %98 = load i32, ptr @oops_in_progress, align 4
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !8

101:                                              ; preds = %95
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 949, i32 noundef 9, ptr noundef null) #23
  br label %102

102:                                              ; preds = %101, %95, %92
  tail call fastcc void @set_origin(ptr noundef %0) #23
  %103 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.consw, ptr %104, i32 0, i32 23
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  tail call void %106(ptr noundef %0) #23
  br label %159

109:                                              ; preds = %102
  %110 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = tail call i32 @is_console_locked() #23
  %114 = icmp eq i32 %113, 0
  %115 = load i32, ptr @oops_in_progress, align 4
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %119, !prof !8

118:                                              ; preds = %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %119

119:                                              ; preds = %118, %112, %109
  %120 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %0
  br i1 %123, label %124, label %159

124:                                              ; preds = %119
  tail call fastcc void @hide_cursor(ptr noundef %0) #23
  %125 = load ptr, ptr %103, align 4
  %126 = getelementptr inbounds %struct.consw, ptr %125, i32 0, i32 9
  %127 = load ptr, ptr %126, align 4
  %128 = tail call i32 %127(ptr noundef %0) #23
  %129 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %130 = load i16, ptr %129, align 4
  %131 = zext i16 %130 to i32
  %132 = load i32, ptr @fg_console, align 4
  %133 = icmp ne i32 %132, %131
  %134 = load i32, ptr @console_blanked, align 4
  %135 = icmp ne i32 %134, 0
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %159, label %137

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %139 = load i8, ptr %138, align 4
  %140 = icmp eq i8 %139, 1
  br i1 %140, label %159, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %143 = load i16, ptr %142, align 4
  %144 = and i16 %143, 32
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %141
  %147 = tail call zeroext i1 @vc_is_sel(ptr noundef %0) #23
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  tail call void @clear_selection() #23
  br label %149

149:                                              ; preds = %148, %146
  tail call fastcc void @add_softcursor(ptr noundef %0) #23
  %150 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 15
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load ptr, ptr %103, align 4
  %156 = getelementptr inbounds %struct.consw, ptr %155, i32 0, i32 7
  %157 = load ptr, ptr %156, align 4
  tail call void %157(ptr noundef %0, i32 noundef 1) #23
  br label %159

158:                                              ; preds = %141
  tail call fastcc void @hide_cursor(ptr noundef %0) #23
  br label %159

159:                                              ; preds = %158, %154, %149, %137, %124, %119, %108, %2
  %160 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  %165 = icmp eq i32 %161, 0
  %166 = or i1 %165, %164
  br i1 %166, label %182, label %167

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = shl i32 %169, 2
  br label %171

171:                                              ; preds = %171, %167
  %172 = phi i32 [ %161, %167 ], [ %174, %171 ]
  %173 = phi i32 [ 0, %167 ], [ %175, %171 ]
  %174 = add i32 %172, -1
  %175 = add nuw i32 %173, 1
  %176 = getelementptr [0 x ptr], ptr %163, i32 0, i32 %173
  %177 = load ptr, ptr %176, align 4
  %178 = tail call ptr @__memset32(ptr noundef %177, i32 noundef 32, i32 noundef %170) #23
  %179 = icmp eq i32 %174, 0
  br i1 %179, label %180, label %171

180:                                              ; preds = %171
  %181 = load i32, ptr %160, align 4
  br label %182

182:                                              ; preds = %180, %159
  %183 = phi i32 [ %181, %180 ], [ %161, %159 ]
  %184 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %185 = load i32, ptr %184, align 4
  %186 = mul i32 %183, %185
  %187 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %188 = load i32, ptr %187, align 4
  br label %189

189:                                              ; preds = %182, %84, %44
  %190 = phi i32 [ %186, %182 ], [ %91, %84 ], [ %50, %44 ]
  %191 = phi i32 [ %188, %182 ], [ %88, %84 ], [ %48, %44 ]
  %192 = inttoptr i32 %191 to ptr
  %193 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %194 = load i16, ptr %193, align 4
  %195 = and i32 %190, 2147483647
  %196 = tail call ptr @memset16(ptr noundef %192, i16 noundef zeroext %194, i32 noundef %195) #23
  %197 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %189
  %200 = tail call i32 @is_console_locked() #23
  %201 = icmp eq i32 %200, 0
  %202 = load i32, ptr @oops_in_progress, align 4
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %201, i1 %203, i1 false
  br i1 %204, label %205, label %206, !prof !8

205:                                              ; preds = %199
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %206

206:                                              ; preds = %205, %199, %189
  %207 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %208 = load ptr, ptr %207, align 4
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, %0
  %211 = load i32, ptr @console_blanked, align 4
  %212 = icmp eq i32 %211, 0
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  tail call fastcc void @do_update_region(ptr noundef %0, i32 noundef %191, i32 noundef %190)
  br label %215

215:                                              ; preds = %214, %206
  %216 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %217 = load i16, ptr %216, align 4
  %218 = and i16 %217, -1025
  store i16 %218, ptr %216, align 4
  br label %219

219:                                              ; preds = %215, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt_console_print(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.vt_notifier_param, align 8
  %5 = alloca %struct.vt_notifier_param, align 8
  %6 = alloca %struct.vt_notifier_param, align 8
  %7 = alloca %struct.vt_notifier_param, align 8
  %8 = alloca %struct.vt_notifier_param, align 8
  %9 = load i32, ptr @fg_console, align 4
  %10 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = load i1, ptr @printable, align 4
  br i1 %12, label %13, label %256

13:                                               ; preds = %3
  %14 = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @vt_console_print.printing_lock) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %256, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr @vt_kmsg_redirect.kmsg_con, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = add i32 %17, -1
  %21 = icmp ult i32 %20, 63
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %20
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %11, ptr %24
  br label %27

27:                                               ; preds = %22, %19, %16
  %28 = phi ptr [ %11, %16 ], [ %11, %19 ], [ %26, %22 ]
  %29 = load i32, ptr @fg_console, align 4
  %30 = icmp ult i32 %29, 63
  br i1 %30, label %31, label %253

31:                                               ; preds = %27
  %32 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %29
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %253, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 17
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %253

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 3
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %29, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call fastcc void @hide_cursor(ptr noundef %28)
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 26
  %47 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 1
  %48 = icmp eq i32 %2, 0
  br i1 %48, label %220, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %47, align 4
  %51 = trunc i32 %50 to i16
  %52 = load i32, ptr %46, align 4
  %53 = inttoptr i32 %52 to ptr
  %54 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 37
  %55 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 47
  %56 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 14
  %57 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 1, i32 1
  %58 = getelementptr inbounds %struct.vt_notifier_param, ptr %8, i32 0, i32 1
  %59 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 13
  %60 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 5
  %61 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 6
  %62 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 12
  %63 = getelementptr inbounds %struct.vt_notifier_param, ptr %7, i32 0, i32 1
  %64 = getelementptr inbounds %struct.vt_notifier_param, ptr %6, i32 0, i32 1
  %65 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 50
  %66 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 18
  %67 = getelementptr inbounds %struct.vt_notifier_param, ptr %5, i32 0, i32 1
  %68 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 4
  br label %69

69:                                               ; preds = %124, %49
  %70 = phi i32 [ %50, %49 ], [ %125, %124 ]
  %71 = phi i32 [ %2, %49 ], [ %76, %124 ]
  %72 = phi i16 [ 0, %49 ], [ %128, %124 ]
  %73 = phi i16 [ %51, %49 ], [ %127, %124 ]
  %74 = phi ptr [ %53, %49 ], [ %126, %124 ]
  %75 = phi ptr [ %1, %49 ], [ %77, %124 ]
  %76 = add i32 %71, -1
  %77 = getelementptr i8, ptr %75, i32 1
  %78 = load i8, ptr %75, align 1
  %79 = zext i8 %78 to i32
  switch i8 %78, label %80 [
    i8 13, label %84
    i8 10, label %84
    i8 8, label %84
  ]

80:                                               ; preds = %69
  %81 = load i16, ptr %54, align 4
  %82 = and i16 %81, 1024
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %161, label %84

84:                                               ; preds = %80, %69, %69, %69
  %85 = zext i16 %72 to i32
  %86 = icmp eq i16 %72, 0
  br i1 %86, label %107, label %87

87:                                               ; preds = %84
  %88 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = call i32 @is_console_locked() #23
  %92 = icmp eq i32 %91, 0
  %93 = load i32, ptr @oops_in_progress, align 4
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %97, !prof !8

96:                                               ; preds = %90
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %97

97:                                               ; preds = %96, %90, %87
  %98 = load ptr, ptr %55, align 4
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %28
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load ptr, ptr %56, align 4
  %103 = getelementptr inbounds %struct.consw, ptr %102, i32 0, i32 6
  %104 = load ptr, ptr %103, align 4
  %105 = load i32, ptr %57, align 4
  %106 = zext i16 %73 to i32
  call void %104(ptr noundef %28, ptr noundef %74, i32 noundef %85, i32 noundef %105, i32 noundef %106) #23
  br label %107

107:                                              ; preds = %101, %97, %84
  switch i8 %78, label %130 [
    i8 8, label %108
    i8 13, label %149
  ]

108:                                              ; preds = %107
  %109 = load i32, ptr %47, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %46, align 4
  %113 = add i32 %112, -2
  store i32 %113, ptr %46, align 4
  %114 = add i32 %109, -1
  store i32 %114, ptr %47, align 4
  %115 = load i16, ptr %54, align 4
  %116 = and i16 %115, -1025
  store i16 %116, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  store ptr %28, ptr %8, align 8
  store i32 8, ptr %58, align 4
  %117 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  %118 = load i32, ptr %47, align 4
  br label %119

119:                                              ; preds = %111, %108
  %120 = phi i32 [ 0, %108 ], [ %118, %111 ]
  %121 = load i32, ptr %46, align 4
  %122 = inttoptr i32 %121 to ptr
  %123 = trunc i32 %120 to i16
  br label %124

124:                                              ; preds = %190, %187, %149, %149, %119
  %125 = phi i32 [ %120, %119 ], [ %159, %149 ], [ %159, %149 ], [ %193, %190 ], [ %183, %187 ]
  %126 = phi ptr [ %122, %119 ], [ %158, %149 ], [ %158, %149 ], [ %163, %190 ], [ %163, %187 ]
  %127 = phi i16 [ %123, %119 ], [ %160, %149 ], [ %160, %149 ], [ %164, %190 ], [ %164, %187 ]
  %128 = phi i16 [ 0, %119 ], [ 0, %149 ], [ 0, %149 ], [ %182, %190 ], [ %182, %187 ]
  %129 = icmp eq i32 %76, 0
  br i1 %129, label %194, label %69

130:                                              ; preds = %107
  %131 = load i32, ptr %57, align 4
  %132 = add i32 %131, 1
  %133 = load i32, ptr %59, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, ptr %62, align 4
  call fastcc void @con_scroll(ptr noundef %28, i32 noundef %136, i32 noundef %132, i32 noundef 0, i32 noundef 1) #23
  br label %145

137:                                              ; preds = %130
  %138 = load i32, ptr %60, align 4
  %139 = add i32 %138, -1
  %140 = icmp ult i32 %131, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  store i32 %132, ptr %57, align 4
  %142 = load i32, ptr %61, align 4
  %143 = load i32, ptr %46, align 4
  %144 = add i32 %143, %142
  store i32 %144, ptr %46, align 4
  br label %145

145:                                              ; preds = %141, %137, %135
  %146 = load i16, ptr %54, align 4
  %147 = and i16 %146, -1025
  store i16 %147, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  store ptr %28, ptr %7, align 8
  store i32 10, ptr %63, align 4
  %148 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  br label %149

149:                                              ; preds = %145, %107
  %150 = load i32, ptr %47, align 4
  %151 = mul i32 %150, -2
  %152 = load i32, ptr %46, align 4
  %153 = add i32 %151, %152
  store i32 %153, ptr %46, align 4
  store i32 0, ptr %47, align 4
  %154 = load i16, ptr %54, align 4
  %155 = and i16 %154, -1025
  store i16 %155, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store ptr %28, ptr %6, align 8
  store i32 13, ptr %64, align 4
  %156 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  %157 = load i32, ptr %46, align 4
  %158 = inttoptr i32 %157 to ptr
  %159 = load i32, ptr %47, align 4
  %160 = trunc i32 %159 to i16
  switch i8 %78, label %161 [
    i8 13, label %124
    i8 10, label %124
  ]

161:                                              ; preds = %149, %80
  %162 = phi i32 [ %159, %149 ], [ %70, %80 ]
  %163 = phi ptr [ %158, %149 ], [ %74, %80 ]
  %164 = phi i16 [ %160, %149 ], [ %73, %80 ]
  %165 = phi i16 [ 0, %149 ], [ %72, %80 ]
  %166 = load ptr, ptr %65, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %161
  %169 = load i32, ptr %57, align 4
  %170 = getelementptr [0 x ptr], ptr %166, i32 0, i32 %169
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr i32, ptr %171, i32 %162
  store i32 %79, ptr %172, align 4
  br label %173

173:                                              ; preds = %168, %161
  %174 = load i8, ptr %66, align 1
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 8
  %177 = or i32 %176, %79
  %178 = trunc i32 %177 to i16
  %179 = load i32, ptr %46, align 4
  %180 = inttoptr i32 %179 to ptr
  store i16 %178, ptr %180, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store ptr %28, ptr %5, align 8
  store i32 %79, ptr %67, align 4
  %181 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  %182 = add i16 %165, 1
  %183 = load i32, ptr %47, align 4
  %184 = load i32, ptr %68, align 4
  %185 = add i32 %184, -1
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %173
  %188 = load i16, ptr %54, align 4
  %189 = or i16 %188, 1024
  store i16 %189, ptr %54, align 4
  br label %124

190:                                              ; preds = %173
  %191 = load i32, ptr %46, align 4
  %192 = add i32 %191, 2
  store i32 %192, ptr %46, align 4
  %193 = add i32 %183, 1
  store i32 %193, ptr %47, align 4
  br label %124

194:                                              ; preds = %124
  %195 = zext i16 %128 to i32
  %196 = icmp eq i16 %128, 0
  br i1 %196, label %220, label %197

197:                                              ; preds = %194
  %198 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = call i32 @is_console_locked() #23
  %202 = icmp eq i32 %201, 0
  %203 = load i32, ptr @oops_in_progress, align 4
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %202, i1 %204, i1 false
  br i1 %205, label %206, label %207, !prof !8

206:                                              ; preds = %200
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %207

207:                                              ; preds = %206, %200, %197
  %208 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 47
  %209 = load ptr, ptr %208, align 4
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, %28
  br i1 %211, label %212, label %220

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 14
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.consw, ptr %214, i32 0, i32 6
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 1, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = zext i16 %127 to i32
  call void %216(ptr noundef %28, ptr noundef %126, i32 noundef %195, i32 noundef %218, i32 noundef %219) #23
  br label %220

220:                                              ; preds = %212, %207, %194, %45
  %221 = load i16, ptr %40, align 4
  %222 = zext i16 %221 to i32
  %223 = load i32, ptr @fg_console, align 4
  %224 = icmp ne i32 %223, %222
  %225 = load i32, ptr @console_blanked, align 4
  %226 = icmp ne i32 %225, 0
  %227 = select i1 %224, i1 true, i1 %226
  br i1 %227, label %250, label %228

228:                                              ; preds = %220
  %229 = load i8, ptr %36, align 4
  %230 = icmp eq i8 %229, 1
  br i1 %230, label %250, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 37
  %233 = load i16, ptr %232, align 4
  %234 = and i16 %233, 32
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %249, label %236

236:                                              ; preds = %231
  %237 = call zeroext i1 @vc_is_sel(ptr noundef %28) #23
  br i1 %237, label %238, label %239

238:                                              ; preds = %236
  call void @clear_selection() #23
  br label %239

239:                                              ; preds = %238, %236
  call fastcc void @add_softcursor(ptr noundef %28) #23
  %240 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 23
  %241 = load i32, ptr %240, align 4
  %242 = and i32 %241, 15
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %250, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.vc_data, ptr %28, i32 0, i32 14
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.consw, ptr %246, i32 0, i32 7
  %248 = load ptr, ptr %247, align 4
  call void %248(ptr noundef %28, i32 noundef 1) #23
  br label %250

249:                                              ; preds = %231
  call fastcc void @hide_cursor(ptr noundef %28) #23
  br label %250

250:                                              ; preds = %249, %244, %239, %228, %220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr %28, ptr %4, align 8
  %251 = getelementptr inbounds %struct.vt_notifier_param, ptr %4, i32 0, i32 1
  store i32 0, ptr %251, align 4
  %252 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 4, ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %253

253:                                              ; preds = %250, %35, %31, %27
  call void asm sideeffect "dmb ish", "~{memory}"() #23, !srcloc !30
  %254 = load i16, ptr @vt_console_print.printing_lock, align 4
  %255 = add i16 %254, 1
  store i16 %255, ptr @vt_console_print.printing_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #23, !srcloc !31
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #23, !srcloc !32
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !33
  br label %256

256:                                              ; preds = %253, %13, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @vt_console_device(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 0
  %6 = sext i16 %4 to i32
  %7 = add nsw i32 %6, -1
  %8 = load i32, ptr @fg_console, align 4
  %9 = select i1 %5, i32 %8, i32 %7
  store i32 %9, ptr %1, align 4
  %10 = load ptr, ptr @console_driver, align 4
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lf(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.vt_notifier_param, align 8
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  tail call fastcc void @con_scroll(ptr noundef %0, i32 noundef %11, i32 noundef %5, i32 noundef 0, i32 noundef 1)
  br label %23

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %4, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  store i32 %5, ptr %3, align 4
  %18 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %17, %12, %9
  %24 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, -1025
  store i16 %26, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8
  %27 = getelementptr inbounds %struct.vt_notifier_param, ptr %2, i32 0, i32 1
  store i32 10, ptr %27, align 4
  %28 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cr(ptr noundef %0) unnamed_addr #17 {
  %2 = alloca %struct.vt_notifier_param, align 8
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, -2
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %5, %7
  store i32 %8, ptr %6, align 4
  store i32 0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, -1025
  store i16 %11, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8
  %12 = getelementptr inbounds %struct.vt_notifier_param, ptr %2, i32 0, i32 1
  store i32 13, ptr %12, align 4
  %13 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @con_scroll(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = add i32 %4, %1
  %7 = icmp ult i32 %6, %2
  %8 = xor i32 %1, -1
  %9 = add i32 %8, %2
  %10 = select i1 %7, i32 %4, i32 %9
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %2
  br i1 %13, label %127, label %14

14:                                               ; preds = %5
  %15 = icmp ule i32 %2, %1
  %16 = icmp eq i32 %10, 0
  %17 = or i1 %15, %16
  br i1 %17, label %127, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %76, label %22

22:                                               ; preds = %18
  %23 = sub i32 %2, %1
  %24 = sub i32 %2, %10
  %25 = icmp eq i32 %3, 1
  %26 = sub i32 %23, %10
  %27 = select i1 %25, i32 %26, i32 %10
  %28 = select i1 %25, i32 %1, i32 %24
  %29 = tail call i32 @gcd(i32 noundef %27, i32 noundef %23) #30
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %54, %22
  %32 = phi i32 [ %57, %54 ], [ 0, %22 ]
  %33 = add i32 %32, %1
  %34 = getelementptr [0 x ptr], ptr %20, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = add i32 %32, %27
  %37 = icmp ult i32 %36, %23
  %38 = select i1 %37, i32 0, i32 %23
  %39 = sub i32 %36, %38
  %40 = icmp eq i32 %39, %32
  br i1 %40, label %54, label %41

41:                                               ; preds = %41, %31
  %42 = phi i32 [ %52, %41 ], [ %39, %31 ]
  %43 = phi i32 [ %42, %41 ], [ %32, %31 ]
  %44 = add i32 %42, %1
  %45 = getelementptr [0 x ptr], ptr %20, i32 0, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = add i32 %43, %1
  %48 = getelementptr [0 x ptr], ptr %20, i32 0, i32 %47
  store ptr %46, ptr %48, align 4
  %49 = add i32 %42, %27
  %50 = icmp ult i32 %49, %23
  %51 = select i1 %50, i32 0, i32 %23
  %52 = sub i32 %49, %51
  %53 = icmp eq i32 %52, %32
  br i1 %53, label %54, label %41

54:                                               ; preds = %41, %31
  %55 = phi i32 [ %33, %31 ], [ %44, %41 ]
  %56 = getelementptr [0 x ptr], ptr %20, i32 0, i32 %55
  store ptr %35, ptr %56, align 4
  %57 = add nuw i32 %32, 1
  %58 = icmp eq i32 %57, %29
  br i1 %58, label %59, label %31

59:                                               ; preds = %54
  %60 = load ptr, ptr %19, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %59, %22
  %63 = phi ptr [ %60, %59 ], [ %20, %22 ]
  %64 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 2
  br label %67

67:                                               ; preds = %67, %62
  %68 = phi i32 [ %10, %62 ], [ %70, %67 ]
  %69 = phi i32 [ %28, %62 ], [ %71, %67 ]
  %70 = add i32 %68, -1
  %71 = add i32 %69, 1
  %72 = getelementptr [0 x ptr], ptr %63, i32 0, i32 %69
  %73 = load ptr, ptr %72, align 4
  %74 = tail call ptr @__memset32(ptr noundef %73, i32 noundef 32, i32 noundef %66) #23
  %75 = icmp eq i32 %70, 0
  br i1 %75, label %76, label %67

76:                                               ; preds = %67, %59, %18
  %77 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = tail call i32 @is_console_locked() #23
  %81 = icmp eq i32 %80, 0
  %82 = load i32, ptr @oops_in_progress, align 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !8

85:                                               ; preds = %79
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %86

86:                                               ; preds = %85, %79, %76
  %87 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.consw, ptr %93, i32 0, i32 8
  %95 = load ptr, ptr %94, align 4
  %96 = tail call zeroext i1 %95(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %10) #23
  br i1 %96, label %127, label %97

97:                                               ; preds = %91, %86
  %98 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = mul i32 %101, %1
  %103 = add i32 %102, %99
  %104 = inttoptr i32 %103 to ptr
  %105 = add i32 %10, %1
  %106 = mul i32 %101, %105
  %107 = add i32 %106, %99
  %108 = inttoptr i32 %107 to ptr
  %109 = icmp eq i32 %3, 0
  %110 = sub i32 %2, %105
  br i1 %109, label %111, label %116

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, %110
  %115 = getelementptr i16, ptr %104, i32 %114
  br label %116

116:                                              ; preds = %111, %97
  %117 = phi ptr [ %115, %111 ], [ %104, %97 ]
  %118 = phi ptr [ %104, %111 ], [ %108, %97 ]
  %119 = phi ptr [ %108, %111 ], [ %104, %97 ]
  %120 = mul i32 %101, %110
  tail call void @llvm.memmove.p0.p0.i32(ptr align 2 %118, ptr align 2 %119, i32 %120, i1 false) #23
  %121 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %122 = load i16, ptr %121, align 4
  %123 = load i32, ptr %100, align 4
  %124 = mul i32 %123, %10
  %125 = lshr i32 %124, 1
  %126 = tail call ptr @memset16(ptr noundef %117, i16 noundef zeroext %122, i32 noundef %125) #23
  br label %127

127:                                              ; preds = %116, %91, %14, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_tty_active(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #19 {
  %4 = load i32, ptr @fg_console, align 4
  %5 = add i32 %4, 1
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @con_install(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  tail call void @console_lock() #23
  %5 = tail call i32 @vc_allocate(i32 noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %67

7:                                                ; preds = %2
  %8 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %67

13:                                               ; preds = %7
  %14 = tail call i32 @tty_port_install(ptr noundef %9, ptr noundef %0, ptr noundef %1) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 30
  store ptr %9, ptr %17, align 4
  store ptr %1, ptr %10, align 4
  %18 = icmp eq ptr %9, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 19
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %33, %19
  %24 = phi i32 [ %31, %33 ], [ %21, %19 ]
  %25 = add i32 %24, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #23, !srcloc !14
  br label %26

26:                                               ; preds = %26, %23
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 %24, i32 %25, ptr elementtype(i32) %20) #23, !srcloc !34
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = extractvalue { i32, i32 } %27, 1
  %32 = icmp eq i32 %31, %24
  br i1 %32, label %35, label %33, !prof !28

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %23

35:                                               ; preds = %33, %30, %19
  %36 = phi i32 [ 0, %19 ], [ 0, %33 ], [ %24, %30 ]
  %37 = add i32 %36, 1
  %38 = or i32 %37, %36
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %41, label %40, !prof !28

40:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 0) #23
  br label %41

41:                                               ; preds = %40, %35, %16
  %42 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 18
  %43 = load i16, ptr %42, align 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 18, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr inbounds %struct.vc_data, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = trunc i32 %52 to i16
  store i16 %53, ptr %42, align 4
  %54 = load ptr, ptr %8, align 4
  %55 = getelementptr inbounds %struct.vc_data, ptr %54, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr %46, align 2
  br label %58

58:                                               ; preds = %49, %45, %41
  %59 = getelementptr inbounds %struct.vc_data, ptr %9, i32 0, i32 37
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 16384
  %62 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 13
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, -16385
  %65 = zext i16 %61 to i32
  %66 = or i32 %64, %65
  store i32 %66, ptr %62, align 4
  br label %67

67:                                               ; preds = %58, %13, %7, %2
  %68 = phi i32 [ %5, %2 ], [ %14, %13 ], [ -512, %7 ], [ 0, %58 ]
  tail call void @console_unlock() #23
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @con_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #20 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @con_close(ptr nocapture noundef %0, ptr nocapture noundef %1) #20 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @con_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/vt/vt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3430, 0\0A.popsection", ""() #23, !srcloc !35
  unreachable

6:                                                ; preds = %1
  tail call void @console_lock() #23
  %7 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  store ptr null, ptr %7, align 4
  tail call void @console_unlock() #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @con_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  tail call void @tty_port_put(ptr noundef %3) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @con_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = tail call fastcc i32 @do_con_write(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  tail call void @con_flush_chars(ptr noundef %0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @con_put_char(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = call fastcc i32 @do_con_write(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @con_flush_chars(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #23
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = load volatile i32, ptr %3, align 4
  %7 = and i32 %6, 983040
  %8 = or i32 %7, %5
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 65280
  %11 = or i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  tail call void @console_lock() #23
  %14 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 3
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = load i32, ptr @fg_console, align 4
  %22 = icmp ne i32 %21, %20
  %23 = load i32, ptr @console_blanked, align 4
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %49, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 17
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 37
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 32
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = tail call zeroext i1 @vc_is_sel(ptr noundef nonnull %15) #23
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  tail call void @clear_selection() #23
  br label %38

38:                                               ; preds = %37, %35
  tail call fastcc void @add_softcursor(ptr noundef nonnull %15) #23
  %39 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 23
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 15
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.consw, ptr %45, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef nonnull %15, i32 noundef 1) #23
  br label %49

48:                                               ; preds = %30
  tail call fastcc void @hide_cursor(ptr noundef nonnull %15) #23
  br label %49

49:                                               ; preds = %48, %43, %38, %26, %17, %13
  tail call void @console_unlock() #23
  br label %50

50:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @con_write_room(ptr nocapture noundef readonly %0) #21 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %3 = load i8, ptr %2, align 4, !range !12
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 32768, i32 0
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @con_throttle(ptr nocapture noundef %0) #20 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @con_unthrottle(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc_data, ptr %3, i32 0, i32 36
  tail call void @__wake_up(ptr noundef %4, i32 noundef 1, i32 noundef 1, ptr noundef null) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @con_stop(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 63
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @vt_kbd_con_stop(i32 noundef %5) #23
  br label %12

12:                                               ; preds = %11, %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @con_start(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 63
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @vt_kbd_con_start(i32 noundef %5) #23
  br label %12

12:                                               ; preds = %11, %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt_resize(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  tail call void @console_lock() #23
  %5 = getelementptr inbounds %struct.winsize, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = load i16, ptr %1, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call fastcc i32 @vc_do_resize(ptr noundef %0, ptr noundef %4, i32 noundef %7, i32 noundef %9)
  tail call void @console_unlock() #23
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_con_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.vt_notifier_param, align 8
  %5 = alloca %struct.vt_notifier_param, align 8
  %6 = alloca %struct.vt_notifier_param, align 8
  %7 = alloca %struct.vt_notifier_param, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vt_notifier_param, align 8
  %10 = alloca %struct.vt_notifier_param, align 8
  %11 = alloca %struct.vt_notifier_param, align 8
  %12 = alloca %struct.vt_notifier_param, align 8
  %13 = alloca %struct.vt_notifier_param, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #23
  store i64 0, ptr %13, align 8, !annotation !11
  %14 = tail call ptr @llvm.thread.pointer() #23
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 15728640
  %18 = load volatile i32, ptr %15, align 4
  %19 = and i32 %18, 983040
  %20 = or i32 %19, %17
  %21 = load volatile i32, ptr %15, align 4
  %22 = and i32 %21, 65280
  %23 = or i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %952

25:                                               ; preds = %3
  tail call void @console_lock() #23
  %26 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #27
  tail call void @console_unlock() #23
  br label %952

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 3
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = icmp ult i16 %33, 63
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %34
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %31
  %41 = load i1, ptr @do_con_write.__already_done, align 1
  br i1 %41, label %45, label %42, !prof !28

42:                                               ; preds = %40
  store i1 true, ptr @do_con_write.__already_done, align 1
  %43 = add nuw nsw i32 %34, 1
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %43) #27
  br label %45

45:                                               ; preds = %42, %40
  tail call void @console_unlock() #23
  br label %952

46:                                               ; preds = %36
  %47 = load i32, ptr @fg_console, align 4
  %48 = icmp eq i32 %47, %34
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call fastcc void @hide_cursor(ptr noundef nonnull %27)
  br label %50

50:                                               ; preds = %49, %46
  store ptr %27, ptr %13, align 8
  %51 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 19, i32 1
  %52 = load i8, ptr %51, align 4, !range !12
  %53 = icmp eq i8 %52, 0
  %54 = icmp ne i32 %2, 0
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %948

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 30
  %58 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 37
  %59 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 42
  %60 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 38
  %61 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 31
  %62 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 39
  %63 = getelementptr inbounds %struct.vt_notifier_param, ptr %13, i32 0, i32 1
  %64 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 18
  %65 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 27
  %66 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 14
  %67 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 1, i32 1
  %68 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 1
  %69 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 26
  %70 = getelementptr inbounds %struct.vt_notifier_param, ptr %7, i32 0, i32 1
  %71 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 13
  %72 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 5
  %73 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 6
  %74 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 12
  %75 = getelementptr inbounds %struct.vt_notifier_param, ptr %6, i32 0, i32 1
  %76 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 50
  %77 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 47
  %78 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 4
  %79 = getelementptr inbounds %struct.vt_notifier_param, ptr %5, i32 0, i32 1
  %80 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 1, i32 4
  %81 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 1, i32 3
  %82 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 1, i32 3, i32 1
  %83 = getelementptr inbounds %struct.vt_notifier_param, ptr %10, i32 0, i32 1
  %84 = getelementptr inbounds %struct.vt_notifier_param, ptr %9, i32 0, i32 1
  %85 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 40
  %86 = getelementptr inbounds %struct.vt_notifier_param, ptr %11, i32 0, i32 1
  %87 = getelementptr inbounds %struct.vt_notifier_param, ptr %12, i32 0, i32 1
  %88 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 45
  %89 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 44
  %90 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 29
  %91 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 9
  %92 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 16
  %93 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 32
  %94 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 1
  %95 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 24
  %96 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 25
  %97 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 2
  %98 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 23
  %99 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 2
  %100 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 3
  %101 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 4
  %102 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 5
  %103 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 6
  br label %104

104:                                              ; preds = %928, %56
  %105 = phi ptr [ %1, %56 ], [ %113, %928 ]
  %106 = phi i32 [ %2, %56 ], [ %115, %928 ]
  %107 = phi i32 [ 0, %56 ], [ %114, %928 ]
  %108 = phi i32 [ 0, %56 ], [ %931, %928 ]
  %109 = phi i32 [ 0, %56 ], [ %930, %928 ]
  %110 = phi i32 [ -1, %56 ], [ %929, %928 ]
  %111 = load i8, ptr %105, align 1
  %112 = zext i8 %111 to i32
  %113 = getelementptr i8, ptr %105, i32 1
  %114 = add nuw i32 %107, 1
  %115 = add i32 %106, -1
  %116 = and i32 %112, 192
  %117 = icmp eq i32 %116, 128
  %118 = icmp sgt i8 %111, -1
  %119 = and i32 %112, 224
  %120 = icmp eq i32 %119, 192
  %121 = and i32 %112, 240
  %122 = icmp eq i32 %121, 224
  %123 = and i32 %112, 248
  %124 = icmp eq i32 %123, 240
  %125 = and i32 %112, 252
  %126 = icmp eq i32 %125, 248
  %127 = and i32 %112, 254
  %128 = icmp eq i32 %127, 252
  %129 = and i32 %112, 63
  br label %130

130:                                              ; preds = %926, %104
  %131 = phi i32 [ %110, %104 ], [ %927, %926 ]
  %132 = phi i32 [ %109, %104 ], [ %908, %926 ]
  %133 = phi i32 [ %108, %104 ], [ %891, %926 ]
  %134 = load i32, ptr %57, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %195

136:                                              ; preds = %130
  %137 = load i16, ptr %58, align 4
  %138 = and i16 %137, 16385
  %139 = icmp eq i16 %138, 16384
  br i1 %139, label %140, label %178

140:                                              ; preds = %136
  %141 = load i8, ptr %60, align 2
  %142 = icmp eq i8 %141, 0
  br i1 %117, label %143, label %160

143:                                              ; preds = %140
  br i1 %142, label %195, label %144

144:                                              ; preds = %143
  %145 = load i32, ptr %62, align 4
  %146 = shl i32 %145, 6
  %147 = or i32 %146, %129
  store i32 %147, ptr %62, align 4
  %148 = load i32, ptr %61, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %61, align 4
  %150 = add i8 %141, -1
  store i8 %150, ptr %60, align 2
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %928

152:                                              ; preds = %144
  %153 = getelementptr [6 x i32], ptr @vc_translate_unicode.utf8_length_changes, i32 0, i32 %148
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %147, %154
  br i1 %155, label %156, label %195

156:                                              ; preds = %152
  %157 = getelementptr [6 x i32], ptr @vc_translate_unicode.utf8_length_changes, i32 0, i32 %149
  %158 = load i32, ptr %157, align 4
  %159 = icmp ugt i32 %147, %158
  br i1 %159, label %195, label %187

160:                                              ; preds = %140
  br i1 %142, label %162, label %161

161:                                              ; preds = %160
  store i8 0, ptr %60, align 2
  br label %195

162:                                              ; preds = %160
  br i1 %118, label %195, label %163

163:                                              ; preds = %162
  store i32 0, ptr %61, align 4
  br i1 %120, label %164, label %166

164:                                              ; preds = %163
  store i8 1, ptr %60, align 2
  %165 = and i32 %112, 31
  store i32 %165, ptr %62, align 4
  br label %928

166:                                              ; preds = %163
  br i1 %122, label %167, label %169

167:                                              ; preds = %166
  store i8 2, ptr %60, align 2
  %168 = and i32 %112, 15
  store i32 %168, ptr %62, align 4
  br label %928

169:                                              ; preds = %166
  br i1 %124, label %170, label %172

170:                                              ; preds = %169
  store i8 3, ptr %60, align 2
  %171 = and i32 %112, 7
  store i32 %171, ptr %62, align 4
  br label %928

172:                                              ; preds = %169
  br i1 %126, label %173, label %175

173:                                              ; preds = %172
  store i8 4, ptr %60, align 2
  %174 = and i32 %112, 3
  store i32 %174, ptr %62, align 4
  br label %928

175:                                              ; preds = %172
  br i1 %128, label %176, label %195

176:                                              ; preds = %175
  store i8 5, ptr %60, align 2
  %177 = and i32 %112, 1
  store i32 %177, ptr %62, align 4
  br label %928

178:                                              ; preds = %136
  %179 = shl i16 %137, 6
  %180 = and i16 %179, 128
  %181 = zext i16 %180 to i32
  %182 = or i32 %181, %112
  %183 = load ptr, ptr %59, align 4
  %184 = getelementptr i16, ptr %183, i32 %182
  %185 = load i16, ptr %184, align 2
  %186 = zext i16 %185 to i32
  br label %195

187:                                              ; preds = %156
  %188 = and i32 %145, 67108832
  %189 = icmp eq i32 %188, 864
  %190 = and i32 %147, -2
  %191 = icmp eq i32 %190, 65534
  %192 = or i1 %189, %191
  %193 = select i1 %192, i32 65533, i32 %147
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %928, label %195

195:                                              ; preds = %187, %178, %175, %162, %161, %156, %152, %143, %130
  %196 = phi i32 [ %193, %187 ], [ 65533, %175 ], [ %112, %162 ], [ 65533, %152 ], [ 65533, %156 ], [ 65533, %143 ], [ 65533, %161 ], [ %112, %130 ], [ %186, %178 ]
  %197 = phi i1 [ true, %187 ], [ true, %175 ], [ true, %162 ], [ true, %152 ], [ true, %156 ], [ true, %143 ], [ false, %161 ], [ true, %130 ], [ true, %178 ]
  %198 = phi i32 [ %193, %187 ], [ 65533, %175 ], [ %112, %162 ], [ 65533, %152 ], [ 65533, %156 ], [ 65533, %143 ], [ 65533, %161 ], [ %112, %130 ], [ %112, %178 ]
  store i32 %196, ptr %63, align 4
  %199 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 5, ptr noundef nonnull %13) #23
  %200 = icmp eq i32 %199, 32769
  br i1 %200, label %928, label %201

201:                                              ; preds = %195
  %202 = load i32, ptr %57, align 4
  %203 = icmp ne i32 %202, 0
  %204 = icmp eq i32 %196, 0
  %205 = or i1 %204, %203
  br i1 %205, label %230, label %206

206:                                              ; preds = %201
  %207 = icmp slt i32 %198, 32
  br i1 %207, label %208, label %216

208:                                              ; preds = %206
  %209 = load i16, ptr %58, align 4
  %210 = and i16 %209, 1
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %208
  %213 = shl nuw i32 1, %198
  %214 = and i32 %213, 134280449
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %697, label %230

216:                                              ; preds = %206
  switch i32 %198, label %217 [
    i32 127, label %219
    i32 155, label %230
  ]

217:                                              ; preds = %216
  %218 = load i16, ptr %58, align 4
  br label %697

219:                                              ; preds = %216
  %220 = load i16, ptr %58, align 4
  %221 = and i16 %220, 1
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %230, label %697

223:                                              ; preds = %208
  %224 = and i16 %209, 16384
  %225 = icmp ne i16 %224, 0
  %226 = shl nuw i32 1, %198
  %227 = and i32 %226, 218169217
  %228 = icmp ne i32 %227, 0
  %229 = select i1 %225, i1 true, i1 %228
  br i1 %229, label %230, label %697

230:                                              ; preds = %223, %219, %216, %212, %201
  %231 = icmp slt i32 %131, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %230
  %233 = load ptr, ptr %66, align 4
  %234 = getelementptr inbounds %struct.consw, ptr %233, i32 0, i32 6
  %235 = load ptr, ptr %234, align 4
  %236 = inttoptr i32 %133 to ptr
  %237 = sub i32 %132, %133
  %238 = ashr exact i32 %237, 1
  %239 = load i32, ptr %67, align 4
  call void %235(ptr noundef %27, ptr noundef %236, i32 noundef %238, i32 noundef %239, i32 noundef %131) #23
  %240 = load i32, ptr %57, align 4
  br label %241

241:                                              ; preds = %232, %230
  %242 = phi i32 [ %202, %230 ], [ %240, %232 ]
  %243 = phi i32 [ %131, %230 ], [ -1, %232 ]
  %244 = and i32 %242, -4
  %245 = icmp eq i32 %244, 12
  %246 = add nsw i32 %112, -8
  %247 = icmp ult i32 %246, 6
  %248 = and i1 %247, %245
  br i1 %248, label %928, label %249

249:                                              ; preds = %241
  switch i8 %111, label %337 [
    i8 0, label %928
    i8 7, label %250
    i8 8, label %257
    i8 9, label %267
    i8 10, label %287
    i8 11, label %287
    i8 12, label %287
    i8 13, label %310
    i8 14, label %318
    i8 15, label %326
    i8 24, label %334
    i8 26, label %334
    i8 27, label %335
    i8 127, label %928
    i8 -101, label %336
  ]

250:                                              ; preds = %249
  br i1 %245, label %251, label %252

251:                                              ; preds = %250
  store i32 0, ptr %57, align 4
  br label %928

252:                                              ; preds = %250
  %253 = load i32, ptr %88, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %928, label %255

255:                                              ; preds = %252
  %256 = load i32, ptr %89, align 4
  call void @kd_mksound(i32 noundef %256, i32 noundef %253) #23
  br label %928

257:                                              ; preds = %249
  %258 = load i32, ptr %68, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %928, label %260

260:                                              ; preds = %257
  %261 = load i32, ptr %69, align 4
  %262 = add i32 %261, -2
  store i32 %262, ptr %69, align 4
  %263 = add i32 %258, -1
  store i32 %263, ptr %68, align 4
  %264 = load i16, ptr %58, align 4
  %265 = and i16 %264, -1025
  store i16 %265, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #23
  store ptr %27, ptr %12, align 8
  store i32 8, ptr %87, align 4
  %266 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #23
  br label %928

267:                                              ; preds = %249
  %268 = load i32, ptr %68, align 4
  %269 = mul i32 %268, -2
  %270 = load i32, ptr %69, align 4
  %271 = add i32 %269, %270
  store i32 %271, ptr %69, align 4
  %272 = load i32, ptr %78, align 4
  %273 = add i32 %272, -1
  %274 = call i32 @llvm.umin.i32(i32 %273, i32 256) #23
  %275 = add i32 %268, 1
  %276 = call i32 @_find_next_bit_le(ptr noundef %85, i32 noundef %274, i32 noundef %275) #23
  store i32 %276, ptr %68, align 4
  %277 = icmp ugt i32 %276, 255
  br i1 %277, label %278, label %281

278:                                              ; preds = %267
  %279 = load i32, ptr %78, align 4
  %280 = add i32 %279, -1
  store i32 %280, ptr %68, align 4
  br label %281

281:                                              ; preds = %278, %267
  %282 = phi i32 [ %280, %278 ], [ %276, %267 ]
  %283 = shl i32 %282, 1
  %284 = load i32, ptr %69, align 4
  %285 = add i32 %284, %283
  store i32 %285, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #23
  store ptr %27, ptr %11, align 8
  store i32 9, ptr %86, align 4
  %286 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #23
  br label %928

287:                                              ; preds = %249, %249, %249
  %288 = load i32, ptr %67, align 4
  %289 = add i32 %288, 1
  %290 = load i32, ptr %71, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = load i32, ptr %74, align 4
  call fastcc void @con_scroll(ptr noundef %27, i32 noundef %293, i32 noundef %289, i32 noundef 0, i32 noundef 1) #23
  br label %302

294:                                              ; preds = %287
  %295 = load i32, ptr %72, align 4
  %296 = add i32 %295, -1
  %297 = icmp ult i32 %288, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  store i32 %289, ptr %67, align 4
  %299 = load i32, ptr %73, align 4
  %300 = load i32, ptr %69, align 4
  %301 = add i32 %300, %299
  store i32 %301, ptr %69, align 4
  br label %302

302:                                              ; preds = %298, %294, %292
  %303 = load i16, ptr %58, align 4
  %304 = and i16 %303, -1025
  store i16 %304, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  store ptr %27, ptr %10, align 8
  store i32 10, ptr %83, align 4
  %305 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  %306 = load i16, ptr %32, align 4
  %307 = zext i16 %306 to i32
  %308 = call i32 @vt_get_kbd_mode_bit(i32 noundef %307, i32 noundef 3) #23
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %928, label %310

310:                                              ; preds = %302, %249
  %311 = load i32, ptr %68, align 4
  %312 = mul i32 %311, -2
  %313 = load i32, ptr %69, align 4
  %314 = add i32 %312, %313
  store i32 %314, ptr %69, align 4
  store i32 0, ptr %68, align 4
  %315 = load i16, ptr %58, align 4
  %316 = and i16 %315, -1025
  store i16 %316, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #23
  store ptr %27, ptr %9, align 8
  store i32 13, ptr %84, align 4
  %317 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #23
  br label %928

318:                                              ; preds = %249
  %319 = load i8, ptr %80, align 1
  %320 = or i8 %319, 1
  store i8 %320, ptr %80, align 1
  %321 = load i8, ptr %82, align 1
  %322 = zext i8 %321 to i32
  %323 = call ptr @set_translate(i32 noundef %322, ptr noundef %27) #23
  store ptr %323, ptr %59, align 4
  %324 = load i16, ptr %58, align 4
  %325 = or i16 %324, 1
  store i16 %325, ptr %58, align 4
  br label %928

326:                                              ; preds = %249
  %327 = load i8, ptr %80, align 1
  %328 = and i8 %327, -2
  store i8 %328, ptr %80, align 1
  %329 = load i8, ptr %81, align 1
  %330 = zext i8 %329 to i32
  %331 = call ptr @set_translate(i32 noundef %330, ptr noundef %27) #23
  store ptr %331, ptr %59, align 4
  %332 = load i16, ptr %58, align 4
  %333 = and i16 %332, -2
  store i16 %333, ptr %58, align 4
  br label %928

334:                                              ; preds = %249, %249
  store i32 0, ptr %57, align 4
  br label %928

335:                                              ; preds = %249
  store i32 1, ptr %57, align 4
  br label %928

336:                                              ; preds = %249
  store i32 2, ptr %57, align 4
  br label %928

337:                                              ; preds = %249
  switch i32 %242, label %696 [
    i32 1, label %338
    i32 10, label %365
    i32 11, label %380
    i32 2, label %419
    i32 3, label %447
    i32 9, label %670
    i32 8, label %674
    i32 4, label %681
    i32 5, label %682
    i32 6, label %694
    i32 7, label %695
    i32 13, label %928
    i32 12, label %928
    i32 14, label %928
    i32 15, label %928
  ]

338:                                              ; preds = %337
  store i32 0, ptr %57, align 4
  switch i8 %111, label %928 [
    i8 91, label %339
    i8 93, label %340
    i8 95, label %341
    i8 94, label %342
    i8 37, label %343
    i8 69, label %344
    i8 77, label %345
    i8 68, label %346
    i8 72, label %347
    i8 80, label %351
    i8 90, label %352
    i8 55, label %353
    i8 56, label %354
    i8 40, label %355
    i8 41, label %356
    i8 35, label %357
    i8 99, label %358
    i8 62, label %359
    i8 61, label %362
  ]

339:                                              ; preds = %338
  store i32 2, ptr %57, align 4
  br label %928

340:                                              ; preds = %338
  store i32 10, ptr %57, align 4
  br label %928

341:                                              ; preds = %338
  store i32 13, ptr %57, align 4
  br label %928

342:                                              ; preds = %338
  store i32 14, ptr %57, align 4
  br label %928

343:                                              ; preds = %338
  store i32 8, ptr %57, align 4
  br label %928

344:                                              ; preds = %338
  call fastcc void @cr(ptr noundef %27) #23
  call fastcc void @lf(ptr noundef %27) #23
  br label %928

345:                                              ; preds = %338
  call fastcc void @ri(ptr noundef %27) #23
  br label %928

346:                                              ; preds = %338
  call fastcc void @lf(ptr noundef %27) #23
  br label %928

347:                                              ; preds = %338
  %348 = load i32, ptr %68, align 4
  %349 = icmp ult i32 %348, 256
  br i1 %349, label %350, label %928

350:                                              ; preds = %347
  call void @_set_bit(i32 noundef %348, ptr noundef %85) #23
  br label %928

351:                                              ; preds = %338
  store i32 15, ptr %57, align 4
  br label %928

352:                                              ; preds = %338
  call fastcc void @respond_ID(ptr noundef %0) #23
  br label %928

353:                                              ; preds = %338
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %99, ptr noundef align 4 dereferenceable(20) %68, i32 20, i1 false) #23
  br label %928

354:                                              ; preds = %338
  call fastcc void @restore_cur(ptr noundef %27) #23
  br label %928

355:                                              ; preds = %338
  store i32 6, ptr %57, align 4
  br label %928

356:                                              ; preds = %338
  store i32 7, ptr %57, align 4
  br label %928

357:                                              ; preds = %338
  store i32 5, ptr %57, align 4
  br label %928

358:                                              ; preds = %338
  call fastcc void @reset_terminal(ptr noundef %27, i32 noundef 1) #23
  br label %928

359:                                              ; preds = %338
  %360 = load i16, ptr %32, align 4
  %361 = zext i16 %360 to i32
  call void @vt_clr_kbd_mode_bit(i32 noundef %361, i32 noundef 0) #23
  br label %928

362:                                              ; preds = %338
  %363 = load i16, ptr %32, align 4
  %364 = zext i16 %363 to i32
  call void @vt_set_kbd_mode_bit(i32 noundef %364, i32 noundef 0) #23
  br label %928

365:                                              ; preds = %337
  switch i8 %111, label %375 [
    i8 80, label %366
    i8 82, label %374
  ]

366:                                              ; preds = %365
  store i32 0, ptr %61, align 4
  br label %367

367:                                              ; preds = %367, %366
  %368 = phi i32 [ 0, %366 ], [ %371, %367 ]
  %369 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 %368
  store i32 0, ptr %369, align 4
  %370 = load i32, ptr %61, align 4
  %371 = add i32 %370, 1
  store i32 %371, ptr %61, align 4
  %372 = icmp ult i32 %371, 16
  br i1 %372, label %367, label %373

373:                                              ; preds = %367
  store i32 0, ptr %61, align 4
  store i32 11, ptr %57, align 4
  br label %928

374:                                              ; preds = %365
  call void @reset_palette(ptr noundef %27) #23
  store i32 0, ptr %57, align 4
  br label %928

375:                                              ; preds = %365
  %376 = add nsw i32 %112, -48
  %377 = icmp ult i32 %376, 10
  br i1 %377, label %378, label %379

378:                                              ; preds = %375
  store i32 12, ptr %57, align 4
  br label %928

379:                                              ; preds = %375
  store i32 0, ptr %57, align 4
  br label %928

380:                                              ; preds = %337
  %381 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %112
  %382 = load i8, ptr %381, align 1
  %383 = and i8 %382, 68
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %418, label %385

385:                                              ; preds = %380
  %386 = call i32 @hex_to_bin(i8 noundef zeroext %111) #23
  %387 = load i32, ptr %61, align 4
  %388 = add i32 %387, 1
  store i32 %388, ptr %61, align 4
  %389 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 %387
  store i32 %386, ptr %389, align 4
  %390 = load i32, ptr %61, align 4
  %391 = icmp eq i32 %390, 7
  br i1 %391, label %392, label %928

392:                                              ; preds = %385
  %393 = load i32, ptr %93, align 4
  %394 = mul i32 %393, 3
  %395 = load i32, ptr %94, align 4
  %396 = trunc i32 %395 to i8
  %397 = shl i8 %396, 4
  %398 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 41, i32 %394
  store i8 %397, ptr %398, align 1
  %399 = load i32, ptr %97, align 4
  %400 = add i32 %394, 1
  %401 = trunc i32 %399 to i8
  %402 = add i8 %397, %401
  store i8 %402, ptr %398, align 1
  %403 = load i32, ptr %100, align 4
  %404 = trunc i32 %403 to i8
  %405 = shl i8 %404, 4
  %406 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 41, i32 %400
  store i8 %405, ptr %406, align 1
  %407 = load i32, ptr %101, align 4
  %408 = add i32 %394, 2
  %409 = trunc i32 %407 to i8
  %410 = add i8 %405, %409
  store i8 %410, ptr %406, align 1
  %411 = load i32, ptr %102, align 4
  %412 = trunc i32 %411 to i8
  %413 = shl i8 %412, 4
  %414 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 41, i32 %408
  store i8 %413, ptr %414, align 1
  %415 = load i32, ptr %103, align 4
  %416 = trunc i32 %415 to i8
  %417 = add i8 %413, %416
  store i8 %417, ptr %414, align 1
  call fastcc void @set_palette(ptr noundef %27) #23
  store i32 0, ptr %57, align 4
  br label %928

418:                                              ; preds = %380
  store i32 0, ptr %57, align 4
  br label %928

419:                                              ; preds = %337
  store i32 0, ptr %61, align 4
  br label %420

420:                                              ; preds = %420, %419
  %421 = phi i32 [ 0, %419 ], [ %424, %420 ]
  %422 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 %421
  store i32 0, ptr %422, align 4
  %423 = load i32, ptr %61, align 4
  %424 = add i32 %423, 1
  store i32 %424, ptr %61, align 4
  %425 = icmp ult i32 %424, 16
  br i1 %425, label %420, label %426

426:                                              ; preds = %420
  store i32 0, ptr %61, align 4
  store i32 3, ptr %57, align 4
  switch i8 %111, label %444 [
    i8 91, label %427
    i8 63, label %428
    i8 62, label %432
    i8 61, label %436
    i8 60, label %440
  ]

427:                                              ; preds = %426
  store i32 4, ptr %57, align 4
  br label %928

428:                                              ; preds = %426
  %429 = load i16, ptr %58, align 4
  %430 = and i16 %429, -897
  %431 = or i16 %430, 128
  store i16 %431, ptr %58, align 4
  br label %928

432:                                              ; preds = %426
  %433 = load i16, ptr %58, align 4
  %434 = and i16 %433, -897
  %435 = or i16 %434, 384
  store i16 %435, ptr %58, align 4
  br label %928

436:                                              ; preds = %426
  %437 = load i16, ptr %58, align 4
  %438 = and i16 %437, -897
  %439 = or i16 %438, 256
  store i16 %439, ptr %58, align 4
  br label %928

440:                                              ; preds = %426
  %441 = load i16, ptr %58, align 4
  %442 = and i16 %441, -897
  %443 = or i16 %442, 512
  store i16 %443, ptr %58, align 4
  br label %928

444:                                              ; preds = %426
  %445 = load i16, ptr %58, align 4
  %446 = and i16 %445, -897
  store i16 %446, ptr %58, align 4
  br label %447

447:                                              ; preds = %444, %337
  %448 = icmp eq i8 %111, 59
  br i1 %448, label %449, label %454

449:                                              ; preds = %447
  %450 = load i32, ptr %61, align 4
  %451 = icmp ult i32 %450, 15
  br i1 %451, label %452, label %468

452:                                              ; preds = %449
  %453 = add nuw nsw i32 %450, 1
  store i32 %453, ptr %61, align 4
  br label %928

454:                                              ; preds = %447
  %455 = add nsw i32 %112, -48
  %456 = icmp ult i32 %455, 10
  br i1 %456, label %457, label %466

457:                                              ; preds = %454
  %458 = load i32, ptr %61, align 4
  %459 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 %458
  %460 = load i32, ptr %459, align 4
  %461 = mul i32 %460, 10
  store i32 %461, ptr %459, align 4
  %462 = load i32, ptr %61, align 4
  %463 = getelementptr %struct.vc_data, ptr %27, i32 0, i32 32, i32 %462
  %464 = load i32, ptr %463, align 4
  %465 = add i32 %464, %455
  store i32 %465, ptr %463, align 4
  br label %928

466:                                              ; preds = %454
  %467 = icmp eq i32 %119, 32
  br i1 %467, label %468, label %469

468:                                              ; preds = %466, %449
  store i32 9, ptr %57, align 4
  br label %928

469:                                              ; preds = %466
  store i32 0, ptr %57, align 4
  switch i8 %111, label %470 [
    i8 104, label %472
    i8 108, label %477
    i8 99, label %482
    i8 109, label %498
    i8 110, label %512
  ]

470:                                              ; preds = %469
  %471 = load i16, ptr %58, align 4
  br label %520

472:                                              ; preds = %469
  %473 = load i16, ptr %58, align 4
  %474 = and i16 %473, 768
  %475 = icmp eq i16 %474, 0
  br i1 %475, label %476, label %928

476:                                              ; preds = %472
  call fastcc void @set_mode(ptr noundef %27, i32 noundef 1) #23
  br label %928

477:                                              ; preds = %469
  %478 = load i16, ptr %58, align 4
  %479 = and i16 %478, 768
  %480 = icmp eq i16 %479, 0
  br i1 %480, label %481, label %928

481:                                              ; preds = %477
  call fastcc void @set_mode(ptr noundef %27, i32 noundef 0) #23
  br label %928

482:                                              ; preds = %469
  %483 = load i16, ptr %58, align 4
  %484 = and i16 %483, 896
  %485 = icmp eq i16 %484, 128
  br i1 %485, label %486, label %520

486:                                              ; preds = %482
  %487 = load i32, ptr %93, align 4
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %496, label %489

489:                                              ; preds = %486
  %490 = load i32, ptr %94, align 4
  %491 = shl i32 %490, 8
  %492 = or i32 %491, %487
  %493 = load i32, ptr %97, align 4
  %494 = shl i32 %493, 16
  %495 = or i32 %492, %494
  store i32 %495, ptr %98, align 4
  br label %928

496:                                              ; preds = %486
  %497 = load i32, ptr @cur_default, align 4
  store i32 %497, ptr %98, align 4
  br label %928

498:                                              ; preds = %469
  %499 = load i16, ptr %58, align 4
  %500 = and i16 %499, 896
  %501 = icmp eq i16 %500, 128
  br i1 %501, label %502, label %520

502:                                              ; preds = %498
  call void @clear_selection() #23
  %503 = load i32, ptr %93, align 4
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %510, label %505

505:                                              ; preds = %502
  %506 = shl i32 %503, 8
  %507 = load i32, ptr %94, align 4
  %508 = or i32 %507, %506
  %509 = trunc i32 %508 to i16
  store i16 %509, ptr %95, align 4
  br label %928

510:                                              ; preds = %502
  %511 = load i16, ptr %96, align 2
  store i16 %511, ptr %95, align 4
  br label %928

512:                                              ; preds = %469
  %513 = load i16, ptr %58, align 4
  %514 = and i16 %513, 896
  %515 = icmp eq i16 %514, 0
  br i1 %515, label %516, label %928

516:                                              ; preds = %512
  %517 = load i32, ptr %93, align 4
  switch i32 %517, label %928 [
    i32 5, label %518
    i32 6, label %519
  ]

518:                                              ; preds = %516
  call fastcc void @status_report(ptr noundef %0) #23
  br label %928

519:                                              ; preds = %516
  call fastcc void @cursor_report(ptr noundef %27, ptr noundef %0) #23
  br label %928

520:                                              ; preds = %498, %482, %470
  %521 = phi i16 [ %471, %470 ], [ %499, %498 ], [ %483, %482 ]
  %522 = and i16 %521, 896
  %523 = icmp eq i16 %522, 0
  br i1 %523, label %526, label %524

524:                                              ; preds = %520
  %525 = and i16 %521, -897
  store i16 %525, ptr %58, align 4
  br label %928

526:                                              ; preds = %520
  switch i8 %111, label %928 [
    i8 71, label %527
    i8 96, label %527
    i8 65, label %535
    i8 66, label %544
    i8 101, label %544
    i8 67, label %553
    i8 97, label %553
    i8 68, label %562
    i8 69, label %571
    i8 70, label %579
    i8 100, label %587
    i8 72, label %595
    i8 102, label %595
    i8 74, label %608
    i8 75, label %610
    i8 76, label %612
    i8 77, label %614
    i8 80, label %616
    i8 99, label %618
    i8 103, label %622
    i8 109, label %629
    i8 113, label %630
    i8 114, label %638
    i8 115, label %656
    i8 117, label %657
    i8 88, label %658
    i8 64, label %660
    i8 93, label %669
  ]

527:                                              ; preds = %526, %526
  %528 = load i32, ptr %93, align 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %532, label %530

530:                                              ; preds = %527
  %531 = add i32 %528, -1
  store i32 %531, ptr %93, align 4
  br label %532

532:                                              ; preds = %530, %527
  %533 = phi i32 [ %531, %530 ], [ 0, %527 ]
  %534 = load i32, ptr %67, align 4
  call fastcc void @gotoxy(ptr noundef %27, i32 noundef %533, i32 noundef %534) #23
  br label %928

535:                                              ; preds = %526
  %536 = load i32, ptr %93, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %539

538:                                              ; preds = %535
  store i32 1, ptr %93, align 4
  br label %539

539:                                              ; preds = %538, %535
  %540 = phi i32 [ 1, %538 ], [ %536, %535 ]
  %541 = load i32, ptr %68, align 4
  %542 = load i32, ptr %67, align 4
  %543 = sub i32 %542, %540
  call fastcc void @gotoxy(ptr noundef %27, i32 noundef %541, i32 noundef %543) #23
  br label %928

544:                                              ; preds = %526, %526
  %545 = load i32, ptr %93, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %548

547:                                              ; preds = %544
  store i32 1, ptr %93, align 4
  br label %548

548:                                              ; preds = %547, %544
  %549 = phi i32 [ 1, %547 ], [ %545, %544 ]
  %550 = load i32, ptr %68, align 4
  %551 = load i32, ptr %67, align 4
  %552 = add i32 %551, %549
  call fastcc void @gotoxy(ptr noundef %27, i32 noundef %550, i32 noundef %552) #23
  br label %928

553:                                              ; preds = %526, %526
  %554 = load i32, ptr %93, align 4
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %553
  store i32 1, ptr %93, align 4
  br label %557

557:                                              ; preds = %556, %553
  %558 = phi i32 [ 1, %556 ], [ %554, %553 ]
  %559 = load i32, ptr %68, align 4
  %560 = add i32 %559, %558
  %561 = load i32, ptr %67, align 4
  call fastcc void @gotoxy(ptr noundef %27, i32 noundef %560, i32 noundef %561) #23
  br label %928

562:                                              ; preds = %526
  %563 = load i32, ptr %93, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %566

565:                                              ; preds = %562
  store i32 1, ptr %93, align 4
  br label %566

566:                                              ; preds = %565, %562
  %567 = phi i32 [ 1, %565 ], [ %563, %562 ]
  %568 = load i32, ptr %68, align 4
  %569 = sub i32 %568, %567
  %570 = load i32, ptr %67, align 4
  call fastcc void @gotoxy(ptr noundef %27, i32 noundef %569, i32 noundef %570) #23
  br label %928

571:                                              ; preds = %526
  %572 = load i32, ptr %93, align 4
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %575

574:                                              ; preds = %571
  store i32 1, ptr %93, align 4
  br label %575

575:                                              ; preds = %574, %571
  %576 = phi i32 [ 1, %574 ], [ %572, %571 ]
  %577 = load i32, ptr %67, align 4
  %578 = add i32 %577, %576
  call fastcc void @gotoxy(ptr noundef %27, i32 noundef 0, i32 noundef %578) #23
  br label %928

579:                                              ; preds = %526
  %580 = load i32, ptr %93, align 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %579
  store i32 1, ptr %93, align 4
  br label %583

583:                                              ; preds = %582, %579
  %584 = phi i32 [ 1, %582 ], [ %580, %579 ]
  %585 = load i32, ptr %67, align 4
  %586 = sub i32 %585, %584
  call fastcc void @gotoxy(ptr noundef %27, i32 noundef 0, i32 noundef %586) #23
  br label %928

587:                                              ; preds = %526
  %588 = load i32, ptr %93, align 4
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %592, label %590

590:                                              ; preds = %587
  %591 = add i32 %588, -1
  store i32 %591, ptr %93, align 4
  br label %592

592:                                              ; preds = %590, %587
  %593 = phi i32 [ %591, %590 ], [ 0, %587 ]
  %594 = load i32, ptr %68, align 4
  call fastcc void @gotoxay(ptr noundef %27, i32 noundef %594, i32 noundef %593) #23
  br label %928

595:                                              ; preds = %526, %526
  %596 = load i32, ptr %93, align 4
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %600, label %598

598:                                              ; preds = %595
  %599 = add i32 %596, -1
  store i32 %599, ptr %93, align 4
  br label %600

600:                                              ; preds = %598, %595
  %601 = phi i32 [ %599, %598 ], [ 0, %595 ]
  %602 = load i32, ptr %94, align 4
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %606, label %604

604:                                              ; preds = %600
  %605 = add i32 %602, -1
  store i32 %605, ptr %94, align 4
  br label %606

606:                                              ; preds = %604, %600
  %607 = phi i32 [ %605, %604 ], [ 0, %600 ]
  call fastcc void @gotoxay(ptr noundef %27, i32 noundef %607, i32 noundef %601) #23
  br label %928

608:                                              ; preds = %526
  %609 = load i32, ptr %93, align 4
  call fastcc void @csi_J(ptr noundef %27, i32 noundef %609) #23
  br label %928

610:                                              ; preds = %526
  %611 = load i32, ptr %93, align 4
  call fastcc void @csi_K(ptr noundef %27, i32 noundef %611) #23
  br label %928

612:                                              ; preds = %526
  %613 = load i32, ptr %93, align 4
  call fastcc void @csi_L(ptr noundef %27, i32 noundef %613) #23
  br label %928

614:                                              ; preds = %526
  %615 = load i32, ptr %93, align 4
  call fastcc void @csi_M(ptr noundef %27, i32 noundef %615) #23
  br label %928

616:                                              ; preds = %526
  %617 = load i32, ptr %93, align 4
  call fastcc void @csi_P(ptr noundef %27, i32 noundef %617) #23
  br label %928

618:                                              ; preds = %526
  %619 = load i32, ptr %93, align 4
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %928

621:                                              ; preds = %618
  call fastcc void @respond_ID(ptr noundef %0) #23
  br label %928

622:                                              ; preds = %526
  %623 = load i32, ptr %93, align 4
  switch i32 %623, label %928 [
    i32 0, label %624
    i32 3, label %628
  ]

624:                                              ; preds = %622
  %625 = load i32, ptr %68, align 4
  %626 = icmp ult i32 %625, 256
  br i1 %626, label %627, label %928

627:                                              ; preds = %624
  call void @_set_bit(i32 noundef %625, ptr noundef %85) #23
  br label %928

628:                                              ; preds = %622
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %85, i8 0, i32 32, i1 false) #23
  br label %928

629:                                              ; preds = %526
  call fastcc void @csi_m(ptr noundef %27) #23
  br label %928

630:                                              ; preds = %526
  %631 = load i32, ptr %93, align 4
  %632 = icmp ult i32 %631, 4
  br i1 %632, label %633, label %928

633:                                              ; preds = %630
  %634 = load i16, ptr %32, align 4
  %635 = zext i16 %634 to i32
  %636 = icmp eq i32 %631, 3
  %637 = select i1 %636, i32 4, i32 %631
  call void @vt_set_led_state(i32 noundef %635, i32 noundef %637) #23
  br label %928

638:                                              ; preds = %526
  %639 = load i32, ptr %93, align 4
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %642

641:                                              ; preds = %638
  store i32 1, ptr %93, align 4
  br label %642

642:                                              ; preds = %641, %638
  %643 = phi i32 [ 1, %641 ], [ %639, %638 ]
  %644 = load i32, ptr %94, align 4
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %648

646:                                              ; preds = %642
  %647 = load i32, ptr %72, align 4
  store i32 %647, ptr %94, align 4
  br label %648

648:                                              ; preds = %646, %642
  %649 = phi i32 [ %647, %646 ], [ %644, %642 ]
  %650 = icmp ult i32 %643, %649
  br i1 %650, label %651, label %928

651:                                              ; preds = %648
  %652 = load i32, ptr %72, align 4
  %653 = icmp ugt i32 %649, %652
  br i1 %653, label %928, label %654

654:                                              ; preds = %651
  %655 = add i32 %643, -1
  store i32 %655, ptr %74, align 4
  store i32 %649, ptr %71, align 4
  call fastcc void @gotoxay(ptr noundef %27, i32 noundef 0, i32 noundef 0) #23
  br label %928

656:                                              ; preds = %526
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %99, ptr noundef align 4 dereferenceable(20) %68, i32 20, i1 false) #23
  br label %928

657:                                              ; preds = %526
  call fastcc void @restore_cur(ptr noundef %27) #23
  br label %928

658:                                              ; preds = %526
  %659 = load i32, ptr %93, align 4
  call fastcc void @csi_X(ptr noundef %27, i32 noundef %659) #23
  br label %928

660:                                              ; preds = %526
  %661 = load i32, ptr %93, align 4
  %662 = load i32, ptr %78, align 4
  %663 = load i32, ptr %68, align 4
  %664 = sub i32 %662, %663
  %665 = icmp ult i32 %664, %661
  %666 = icmp eq i32 %661, 0
  %667 = select i1 %666, i32 1, i32 %661
  %668 = select i1 %665, i32 %664, i32 %667
  call fastcc void @insert_char(ptr noundef %27, i32 noundef %668) #23
  br label %928

669:                                              ; preds = %526
  call fastcc void @setterm_command(ptr noundef %27) #23
  br label %928

670:                                              ; preds = %337
  %671 = add nsw i32 %112, -20
  %672 = icmp ult i32 %671, 44
  br i1 %672, label %928, label %673

673:                                              ; preds = %670
  store i32 0, ptr %57, align 4
  br label %928

674:                                              ; preds = %337
  store i32 0, ptr %57, align 4
  switch i8 %111, label %928 [
    i8 64, label %675
    i8 71, label %678
    i8 56, label %678
  ]

675:                                              ; preds = %674
  %676 = load i16, ptr %58, align 4
  %677 = and i16 %676, -16385
  store i16 %677, ptr %58, align 4
  br label %928

678:                                              ; preds = %674, %674
  %679 = load i16, ptr %58, align 4
  %680 = or i16 %679, 16384
  store i16 %680, ptr %58, align 4
  br label %928

681:                                              ; preds = %337
  store i32 0, ptr %57, align 4
  br label %928

682:                                              ; preds = %337
  store i32 0, ptr %57, align 4
  %683 = icmp eq i8 %111, 56
  br i1 %683, label %684, label %928

684:                                              ; preds = %682
  %685 = load i16, ptr %90, align 4
  %686 = and i16 %685, -256
  %687 = or i16 %686, 69
  store i16 %687, ptr %90, align 4
  call fastcc void @csi_J(ptr noundef %27, i32 noundef 2) #23
  %688 = load i16, ptr %90, align 4
  %689 = and i16 %688, -256
  %690 = or i16 %689, 32
  store i16 %690, ptr %90, align 4
  %691 = load i32, ptr %91, align 4
  %692 = load i32, ptr %92, align 4
  %693 = lshr i32 %692, 1
  call fastcc void @do_update_region(ptr noundef %27, i32 noundef %691, i32 noundef %693) #23
  br label %928

694:                                              ; preds = %337
  call fastcc void @vc_setGx(ptr noundef %27, i32 noundef 0, i32 noundef %112) #23
  store i32 0, ptr %57, align 4
  br label %928

695:                                              ; preds = %337
  call fastcc void @vc_setGx(ptr noundef %27, i32 noundef 1, i32 noundef %112) #23
  store i32 0, ptr %57, align 4
  br label %928

696:                                              ; preds = %337
  store i32 0, ptr %57, align 4
  br label %928

697:                                              ; preds = %223, %219, %217, %212
  %698 = phi i16 [ %209, %223 ], [ %209, %212 ], [ %218, %217 ], [ %220, %219 ]
  %699 = load i8, ptr %64, align 1
  %700 = load i16, ptr %65, align 4
  %701 = zext i16 %700 to i32
  %702 = icmp eq i16 %700, 0
  %703 = and i16 %698, 16385
  %704 = icmp eq i16 %703, 16384
  br i1 %704, label %705, label %713

705:                                              ; preds = %697
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  store i32 %198, ptr %8, align 4
  %706 = add i32 %198, -262142
  %707 = icmp ult i32 %706, -257790
  br i1 %707, label %708, label %709

708:                                              ; preds = %705
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  br label %712

709:                                              ; preds = %705
  %710 = call ptr @bsearch(ptr noundef nonnull %8, ptr noundef nonnull @is_double_width.double_width, i32 noundef 12, i32 noundef 8, ptr noundef nonnull @ucs_cmp) #23
  %711 = icmp eq ptr %710, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  br i1 %711, label %712, label %713

712:                                              ; preds = %709, %708
  br label %713

713:                                              ; preds = %712, %709, %697
  %714 = phi i8 [ 1, %697 ], [ 1, %712 ], [ 2, %709 ]
  %715 = call i32 @conv_uni_to_pc(ptr noundef %27, i32 noundef %196) #23
  %716 = select i1 %702, i32 -256, i32 -512
  %717 = and i32 %715, %716
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %780, label %719

719:                                              ; preds = %713
  %720 = icmp ugt i32 %715, -3
  br i1 %720, label %928, label %721

721:                                              ; preds = %719
  %722 = load i16, ptr %58, align 4
  %723 = and i16 %722, 16384
  %724 = icmp eq i16 %723, 0
  br i1 %724, label %733, label %725

725:                                              ; preds = %721
  %726 = and i16 %722, 1
  %727 = icmp ne i16 %726, 0
  %728 = icmp slt i32 %198, 128
  %729 = or i1 %728, %727
  %730 = and i32 %716, %198
  %731 = icmp eq i32 %730, 0
  %732 = select i1 %729, i1 %731, i1 false
  br i1 %732, label %780, label %736

733:                                              ; preds = %721
  %734 = and i32 %716, %198
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %780, label %736

736:                                              ; preds = %733, %725
  %737 = call i32 @conv_uni_to_pc(ptr noundef %27, i32 noundef 65533) #23
  %738 = icmp slt i32 %737, 0
  br i1 %738, label %739, label %780

739:                                              ; preds = %736
  %740 = call i32 @conv_uni_to_pc(ptr noundef %27, i32 noundef 63) #23
  %741 = icmp slt i32 %740, 0
  %742 = select i1 %741, i32 63, i32 %740
  %743 = load i16, ptr %58, align 4
  %744 = and i16 %743, 2048
  %745 = icmp eq i16 %744, 0
  br i1 %745, label %746, label %749

746:                                              ; preds = %739
  %747 = load i8, ptr %64, align 1
  %748 = xor i8 %747, 8
  br label %769

749:                                              ; preds = %739
  %750 = load i16, ptr %65, align 4
  %751 = icmp eq i16 %750, 256
  %752 = load i8, ptr %64, align 1
  br i1 %751, label %753, label %761

753:                                              ; preds = %749
  %754 = and i8 %752, 17
  %755 = lshr i8 %752, 4
  %756 = and i8 %755, 14
  %757 = or i8 %756, %754
  %758 = shl i8 %752, 4
  %759 = and i8 %758, -32
  %760 = or i8 %757, %759
  br label %769

761:                                              ; preds = %749
  %762 = and i8 %752, -120
  %763 = lshr i8 %752, 4
  %764 = and i8 %763, 7
  %765 = or i8 %764, %762
  %766 = shl i8 %752, 4
  %767 = and i8 %766, 112
  %768 = or i8 %765, %767
  br label %769

769:                                              ; preds = %761, %753, %746
  %770 = phi i8 [ %760, %753 ], [ %768, %761 ], [ %748, %746 ]
  %771 = icmp slt i32 %131, 0
  br i1 %771, label %780, label %772

772:                                              ; preds = %769
  %773 = load ptr, ptr %66, align 4
  %774 = getelementptr inbounds %struct.consw, ptr %773, i32 0, i32 6
  %775 = load ptr, ptr %774, align 4
  %776 = inttoptr i32 %133 to ptr
  %777 = sub i32 %132, %133
  %778 = ashr exact i32 %777, 1
  %779 = load i32, ptr %67, align 4
  call void %775(ptr noundef %27, ptr noundef %776, i32 noundef %778, i32 noundef %779, i32 noundef %131) #23
  br label %780

780:                                              ; preds = %772, %769, %736, %733, %725, %713
  %781 = phi i32 [ %131, %713 ], [ %131, %733 ], [ %131, %769 ], [ -1, %772 ], [ %131, %736 ], [ %131, %725 ]
  %782 = phi i32 [ %715, %713 ], [ %198, %733 ], [ %742, %769 ], [ %742, %772 ], [ %737, %736 ], [ %198, %725 ]
  %783 = phi i8 [ %699, %713 ], [ %699, %733 ], [ %770, %769 ], [ %770, %772 ], [ %699, %736 ], [ %699, %725 ]
  %784 = phi i1 [ true, %713 ], [ true, %733 ], [ false, %769 ], [ false, %772 ], [ true, %736 ], [ true, %725 ]
  %785 = zext i8 %783 to i32
  %786 = shl nuw nsw i32 %785, 8
  %787 = xor i32 %701, -1
  %788 = and i32 %786, %787
  br label %789

789:                                              ; preds = %910, %780
  %790 = phi i32 [ %781, %780 ], [ %890, %910 ]
  %791 = phi i32 [ %132, %780 ], [ %908, %910 ]
  %792 = phi i32 [ %133, %780 ], [ %891, %910 ]
  %793 = phi i32 [ %782, %780 ], [ %913, %910 ]
  %794 = phi i32 [ %198, %780 ], [ 32, %910 ]
  %795 = phi i8 [ %714, %780 ], [ 1, %910 ]
  %796 = load i16, ptr %58, align 4
  %797 = and i16 %796, 1088
  %798 = icmp eq i16 %797, 0
  %799 = icmp slt i32 %790, 0
  %800 = select i1 %798, i1 true, i1 %799
  br i1 %800, label %810, label %801

801:                                              ; preds = %789
  %802 = load ptr, ptr %66, align 4
  %803 = getelementptr inbounds %struct.consw, ptr %802, i32 0, i32 6
  %804 = load ptr, ptr %803, align 4
  %805 = inttoptr i32 %792 to ptr
  %806 = sub i32 %791, %792
  %807 = ashr exact i32 %806, 1
  %808 = load i32, ptr %67, align 4
  call void %804(ptr noundef %27, ptr noundef %805, i32 noundef %807, i32 noundef %808, i32 noundef %790) #23
  %809 = load i16, ptr %58, align 4
  br label %810

810:                                              ; preds = %801, %789
  %811 = phi i32 [ %790, %789 ], [ -1, %801 ]
  %812 = phi i16 [ %796, %789 ], [ %809, %801 ]
  %813 = and i16 %812, 1024
  %814 = icmp eq i16 %813, 0
  br i1 %814, label %841, label %815

815:                                              ; preds = %810
  %816 = load i32, ptr %68, align 4
  %817 = mul i32 %816, -2
  %818 = load i32, ptr %69, align 4
  %819 = add i32 %817, %818
  store i32 %819, ptr %69, align 4
  store i32 0, ptr %68, align 4
  %820 = and i16 %812, -1025
  store i16 %820, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  store ptr %27, ptr %7, align 8
  store i32 13, ptr %70, align 4
  %821 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  %822 = load i32, ptr %67, align 4
  %823 = add i32 %822, 1
  %824 = load i32, ptr %71, align 4
  %825 = icmp eq i32 %823, %824
  br i1 %825, label %826, label %828

826:                                              ; preds = %815
  %827 = load i32, ptr %74, align 4
  call fastcc void @con_scroll(ptr noundef %27, i32 noundef %827, i32 noundef %823, i32 noundef 0, i32 noundef 1) #23
  br label %836

828:                                              ; preds = %815
  %829 = load i32, ptr %72, align 4
  %830 = add i32 %829, -1
  %831 = icmp ult i32 %822, %830
  br i1 %831, label %832, label %836

832:                                              ; preds = %828
  store i32 %823, ptr %67, align 4
  %833 = load i32, ptr %73, align 4
  %834 = load i32, ptr %69, align 4
  %835 = add i32 %834, %833
  store i32 %835, ptr %69, align 4
  br label %836

836:                                              ; preds = %832, %828, %826
  %837 = load i16, ptr %58, align 4
  %838 = and i16 %837, -1025
  store i16 %838, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store ptr %27, ptr %6, align 8
  store i32 10, ptr %75, align 4
  %839 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  %840 = load i16, ptr %58, align 4
  br label %841

841:                                              ; preds = %836, %810
  %842 = phi i16 [ %840, %836 ], [ %812, %810 ]
  %843 = and i16 %842, 64
  %844 = icmp eq i16 %843, 0
  br i1 %844, label %846, label %845

845:                                              ; preds = %841
  call fastcc void @insert_char(ptr noundef %27, i32 noundef 1) #23
  br label %846

846:                                              ; preds = %845, %841
  %847 = load ptr, ptr %76, align 4
  %848 = icmp eq ptr %847, null
  br i1 %848, label %855, label %849

849:                                              ; preds = %846
  %850 = load i32, ptr %67, align 4
  %851 = getelementptr [0 x ptr], ptr %847, i32 0, i32 %850
  %852 = load ptr, ptr %851, align 4
  %853 = load i32, ptr %68, align 4
  %854 = getelementptr i32, ptr %852, i32 %853
  store i32 %794, ptr %854, align 4
  br label %855

855:                                              ; preds = %849, %846
  br i1 %702, label %862, label %856

856:                                              ; preds = %855
  %857 = and i32 %793, 256
  %858 = icmp eq i32 %857, 0
  %859 = select i1 %858, i32 0, i32 %701
  %860 = and i32 %793, 255
  %861 = or i32 %859, %860
  br label %862

862:                                              ; preds = %856, %855
  %863 = phi i32 [ %861, %856 ], [ %793, %855 ]
  %864 = or i32 %863, %788
  %865 = trunc i32 %864 to i16
  %866 = load i32, ptr %69, align 4
  %867 = inttoptr i32 %866 to ptr
  store i16 %865, ptr %867, align 2
  %868 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %870, label %877

870:                                              ; preds = %862
  %871 = call i32 @is_console_locked() #23
  %872 = icmp eq i32 %871, 0
  %873 = load i32, ptr @oops_in_progress, align 4
  %874 = icmp eq i32 %873, 0
  %875 = select i1 %872, i1 %874, i1 false
  br i1 %875, label %876, label %877, !prof !8

876:                                              ; preds = %870
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %877

877:                                              ; preds = %876, %870, %862
  %878 = load ptr, ptr %77, align 4
  %879 = load ptr, ptr %878, align 4
  %880 = icmp eq ptr %879, %27
  %881 = load i32, ptr @console_blanked, align 4
  %882 = icmp eq i32 %881, 0
  %883 = select i1 %880, i1 %882, i1 false
  %884 = icmp slt i32 %811, 0
  %885 = select i1 %883, i1 %884, i1 false
  %886 = load i32, ptr %68, align 4
  br i1 %885, label %887, label %889

887:                                              ; preds = %877
  %888 = load i32, ptr %69, align 4
  br label %889

889:                                              ; preds = %887, %877
  %890 = phi i32 [ %886, %887 ], [ %811, %877 ]
  %891 = phi i32 [ %888, %887 ], [ %792, %877 ]
  %892 = load i32, ptr %78, align 4
  %893 = add i32 %892, -1
  %894 = icmp eq i32 %886, %893
  br i1 %894, label %895, label %903

895:                                              ; preds = %889
  %896 = load i16, ptr %58, align 4
  %897 = shl i16 %896, 6
  %898 = and i16 %897, 1024
  %899 = and i16 %896, -1025
  %900 = or i16 %898, %899
  store i16 %900, ptr %58, align 4
  %901 = load i32, ptr %69, align 4
  %902 = add i32 %901, 2
  br label %907

903:                                              ; preds = %889
  %904 = add i32 %886, 1
  store i32 %904, ptr %68, align 4
  %905 = load i32, ptr %69, align 4
  %906 = add i32 %905, 2
  store i32 %906, ptr %69, align 4
  br label %907

907:                                              ; preds = %903, %895
  %908 = phi i32 [ %906, %903 ], [ %902, %895 ]
  %909 = icmp eq i8 %795, 1
  br i1 %909, label %914, label %910

910:                                              ; preds = %907
  %911 = call i32 @conv_uni_to_pc(ptr noundef %27, i32 noundef 32) #23
  %912 = icmp slt i32 %911, 0
  %913 = select i1 %912, i32 32, i32 %911
  br label %789

914:                                              ; preds = %907
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  store ptr %27, ptr %5, align 8
  store i32 %198, ptr %79, align 4
  %915 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 3, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  %916 = icmp slt i32 %890, 0
  %917 = select i1 %784, i1 true, i1 %916
  br i1 %917, label %926, label %918

918:                                              ; preds = %914
  %919 = load ptr, ptr %66, align 4
  %920 = getelementptr inbounds %struct.consw, ptr %919, i32 0, i32 6
  %921 = load ptr, ptr %920, align 4
  %922 = inttoptr i32 %891 to ptr
  %923 = sub i32 %908, %891
  %924 = ashr exact i32 %923, 1
  %925 = load i32, ptr %67, align 4
  call void %921(ptr noundef %27, ptr noundef %922, i32 noundef %924, i32 noundef %925, i32 noundef %890) #23
  br label %926

926:                                              ; preds = %918, %914
  %927 = phi i32 [ -1, %918 ], [ %890, %914 ]
  br i1 %197, label %928, label %130

928:                                              ; preds = %926, %719, %696, %695, %694, %684, %682, %681, %678, %675, %674, %673, %670, %669, %660, %658, %657, %656, %654, %651, %648, %633, %630, %629, %628, %627, %624, %622, %621, %618, %616, %614, %612, %610, %608, %606, %592, %583, %575, %566, %557, %548, %539, %532, %526, %524, %519, %518, %516, %512, %510, %505, %496, %489, %481, %477, %476, %472, %468, %457, %452, %440, %436, %432, %428, %427, %418, %392, %385, %379, %378, %374, %373, %362, %359, %358, %357, %356, %355, %354, %353, %352, %351, %350, %347, %346, %345, %344, %343, %342, %341, %340, %339, %338, %337, %337, %337, %337, %336, %335, %334, %326, %318, %310, %302, %281, %260, %257, %255, %252, %251, %249, %249, %241, %195, %187, %176, %173, %170, %167, %164, %144
  %929 = phi i32 [ %243, %241 ], [ %243, %249 ], [ %243, %249 ], [ %243, %251 ], [ %243, %252 ], [ %243, %255 ], [ %243, %257 ], [ %243, %260 ], [ %243, %281 ], [ %243, %302 ], [ %243, %310 ], [ %243, %318 ], [ %243, %326 ], [ %243, %334 ], [ %243, %335 ], [ %243, %336 ], [ %243, %337 ], [ %243, %337 ], [ %243, %337 ], [ %243, %337 ], [ %243, %338 ], [ %243, %339 ], [ %243, %340 ], [ %243, %341 ], [ %243, %342 ], [ %243, %343 ], [ %243, %344 ], [ %243, %345 ], [ %243, %346 ], [ %243, %347 ], [ %243, %350 ], [ %243, %351 ], [ %243, %352 ], [ %243, %353 ], [ %243, %354 ], [ %243, %355 ], [ %243, %356 ], [ %243, %357 ], [ %243, %358 ], [ %243, %359 ], [ %243, %362 ], [ %243, %373 ], [ %243, %374 ], [ %243, %378 ], [ %243, %379 ], [ %243, %385 ], [ %243, %392 ], [ %243, %418 ], [ %243, %427 ], [ %243, %428 ], [ %243, %432 ], [ %243, %436 ], [ %243, %440 ], [ %243, %452 ], [ %243, %457 ], [ %243, %468 ], [ %243, %472 ], [ %243, %476 ], [ %243, %477 ], [ %243, %481 ], [ %243, %489 ], [ %243, %496 ], [ %243, %505 ], [ %243, %510 ], [ %243, %512 ], [ %243, %516 ], [ %243, %518 ], [ %243, %519 ], [ %243, %524 ], [ %243, %526 ], [ %243, %532 ], [ %243, %539 ], [ %243, %548 ], [ %243, %557 ], [ %243, %566 ], [ %243, %575 ], [ %243, %583 ], [ %243, %592 ], [ %243, %606 ], [ %243, %608 ], [ %243, %610 ], [ %243, %612 ], [ %243, %614 ], [ %243, %616 ], [ %243, %618 ], [ %243, %621 ], [ %243, %622 ], [ %243, %624 ], [ %243, %627 ], [ %243, %628 ], [ %243, %629 ], [ %243, %630 ], [ %243, %633 ], [ %243, %648 ], [ %243, %651 ], [ %243, %654 ], [ %243, %656 ], [ %243, %657 ], [ %243, %658 ], [ %243, %660 ], [ %243, %669 ], [ %243, %670 ], [ %243, %673 ], [ %243, %674 ], [ %243, %675 ], [ %243, %678 ], [ %243, %681 ], [ %243, %682 ], [ %243, %684 ], [ %243, %694 ], [ %243, %695 ], [ %243, %696 ], [ %131, %164 ], [ %131, %170 ], [ %131, %176 ], [ %131, %173 ], [ %131, %167 ], [ %131, %719 ], [ %131, %144 ], [ %927, %926 ], [ %131, %195 ], [ %131, %187 ]
  %930 = phi i32 [ %132, %241 ], [ %132, %249 ], [ %132, %249 ], [ %132, %251 ], [ %132, %252 ], [ %132, %255 ], [ %132, %257 ], [ %132, %260 ], [ %132, %281 ], [ %132, %302 ], [ %132, %310 ], [ %132, %318 ], [ %132, %326 ], [ %132, %334 ], [ %132, %335 ], [ %132, %336 ], [ %132, %337 ], [ %132, %337 ], [ %132, %337 ], [ %132, %337 ], [ %132, %338 ], [ %132, %339 ], [ %132, %340 ], [ %132, %341 ], [ %132, %342 ], [ %132, %343 ], [ %132, %344 ], [ %132, %345 ], [ %132, %346 ], [ %132, %347 ], [ %132, %350 ], [ %132, %351 ], [ %132, %352 ], [ %132, %353 ], [ %132, %354 ], [ %132, %355 ], [ %132, %356 ], [ %132, %357 ], [ %132, %358 ], [ %132, %359 ], [ %132, %362 ], [ %132, %373 ], [ %132, %374 ], [ %132, %378 ], [ %132, %379 ], [ %132, %385 ], [ %132, %392 ], [ %132, %418 ], [ %132, %427 ], [ %132, %428 ], [ %132, %432 ], [ %132, %436 ], [ %132, %440 ], [ %132, %452 ], [ %132, %457 ], [ %132, %468 ], [ %132, %472 ], [ %132, %476 ], [ %132, %477 ], [ %132, %481 ], [ %132, %489 ], [ %132, %496 ], [ %132, %505 ], [ %132, %510 ], [ %132, %512 ], [ %132, %516 ], [ %132, %518 ], [ %132, %519 ], [ %132, %524 ], [ %132, %526 ], [ %132, %532 ], [ %132, %539 ], [ %132, %548 ], [ %132, %557 ], [ %132, %566 ], [ %132, %575 ], [ %132, %583 ], [ %132, %592 ], [ %132, %606 ], [ %132, %608 ], [ %132, %610 ], [ %132, %612 ], [ %132, %614 ], [ %132, %616 ], [ %132, %618 ], [ %132, %621 ], [ %132, %622 ], [ %132, %624 ], [ %132, %627 ], [ %132, %628 ], [ %132, %629 ], [ %132, %630 ], [ %132, %633 ], [ %132, %648 ], [ %132, %651 ], [ %132, %654 ], [ %132, %656 ], [ %132, %657 ], [ %132, %658 ], [ %132, %660 ], [ %132, %669 ], [ %132, %670 ], [ %132, %673 ], [ %132, %674 ], [ %132, %675 ], [ %132, %678 ], [ %132, %681 ], [ %132, %682 ], [ %132, %684 ], [ %132, %694 ], [ %132, %695 ], [ %132, %696 ], [ %132, %164 ], [ %132, %170 ], [ %132, %176 ], [ %132, %173 ], [ %132, %167 ], [ %132, %719 ], [ %132, %144 ], [ %908, %926 ], [ %132, %195 ], [ %132, %187 ]
  %931 = phi i32 [ %133, %241 ], [ %133, %249 ], [ %133, %249 ], [ %133, %251 ], [ %133, %252 ], [ %133, %255 ], [ %133, %257 ], [ %133, %260 ], [ %133, %281 ], [ %133, %302 ], [ %133, %310 ], [ %133, %318 ], [ %133, %326 ], [ %133, %334 ], [ %133, %335 ], [ %133, %336 ], [ %133, %337 ], [ %133, %337 ], [ %133, %337 ], [ %133, %337 ], [ %133, %338 ], [ %133, %339 ], [ %133, %340 ], [ %133, %341 ], [ %133, %342 ], [ %133, %343 ], [ %133, %344 ], [ %133, %345 ], [ %133, %346 ], [ %133, %347 ], [ %133, %350 ], [ %133, %351 ], [ %133, %352 ], [ %133, %353 ], [ %133, %354 ], [ %133, %355 ], [ %133, %356 ], [ %133, %357 ], [ %133, %358 ], [ %133, %359 ], [ %133, %362 ], [ %133, %373 ], [ %133, %374 ], [ %133, %378 ], [ %133, %379 ], [ %133, %385 ], [ %133, %392 ], [ %133, %418 ], [ %133, %427 ], [ %133, %428 ], [ %133, %432 ], [ %133, %436 ], [ %133, %440 ], [ %133, %452 ], [ %133, %457 ], [ %133, %468 ], [ %133, %472 ], [ %133, %476 ], [ %133, %477 ], [ %133, %481 ], [ %133, %489 ], [ %133, %496 ], [ %133, %505 ], [ %133, %510 ], [ %133, %512 ], [ %133, %516 ], [ %133, %518 ], [ %133, %519 ], [ %133, %524 ], [ %133, %526 ], [ %133, %532 ], [ %133, %539 ], [ %133, %548 ], [ %133, %557 ], [ %133, %566 ], [ %133, %575 ], [ %133, %583 ], [ %133, %592 ], [ %133, %606 ], [ %133, %608 ], [ %133, %610 ], [ %133, %612 ], [ %133, %614 ], [ %133, %616 ], [ %133, %618 ], [ %133, %621 ], [ %133, %622 ], [ %133, %624 ], [ %133, %627 ], [ %133, %628 ], [ %133, %629 ], [ %133, %630 ], [ %133, %633 ], [ %133, %648 ], [ %133, %651 ], [ %133, %654 ], [ %133, %656 ], [ %133, %657 ], [ %133, %658 ], [ %133, %660 ], [ %133, %669 ], [ %133, %670 ], [ %133, %673 ], [ %133, %674 ], [ %133, %675 ], [ %133, %678 ], [ %133, %681 ], [ %133, %682 ], [ %133, %684 ], [ %133, %694 ], [ %133, %695 ], [ %133, %696 ], [ %133, %164 ], [ %133, %170 ], [ %133, %176 ], [ %133, %173 ], [ %133, %167 ], [ %133, %719 ], [ %133, %144 ], [ %891, %926 ], [ %133, %195 ], [ %133, %187 ]
  %932 = load i8, ptr %51, align 4, !range !12
  %933 = icmp eq i8 %932, 0
  %934 = icmp ne i32 %115, 0
  %935 = select i1 %933, i1 %934, i1 false
  br i1 %935, label %104, label %936

936:                                              ; preds = %928
  %937 = icmp slt i32 %929, 0
  br i1 %937, label %948, label %938

938:                                              ; preds = %936
  %939 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 14
  %940 = load ptr, ptr %939, align 4
  %941 = getelementptr inbounds %struct.consw, ptr %940, i32 0, i32 6
  %942 = load ptr, ptr %941, align 4
  %943 = inttoptr i32 %931 to ptr
  %944 = sub i32 %930, %931
  %945 = ashr exact i32 %944, 1
  %946 = getelementptr inbounds %struct.vc_data, ptr %27, i32 0, i32 1, i32 1
  %947 = load i32, ptr %946, align 4
  call void %942(ptr noundef %27, ptr noundef %943, i32 noundef %945, i32 noundef %947, i32 noundef %929) #23
  br label %948

948:                                              ; preds = %938, %936, %50
  %949 = phi i32 [ %114, %936 ], [ %114, %938 ], [ 0, %50 ]
  call void @console_conditional_schedule() #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store ptr %27, ptr %4, align 8
  %950 = getelementptr inbounds %struct.vt_notifier_param, ptr %4, i32 0, i32 1
  store i32 0, ptr %950, align 4
  %951 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i32 noundef 4, ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @console_unlock() #23
  br label %952

952:                                              ; preds = %948, %45, %29, %3
  %953 = phi i32 [ 0, %29 ], [ %949, %948 ], [ 0, %45 ], [ %2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #23
  ret i32 %953
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_conditional_schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kd_mksound(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_get_kbd_mode_bit(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ri(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  tail call fastcc void @con_scroll(ptr noundef %0, i32 noundef %3, i32 noundef %9, i32 noundef 1, i32 noundef 1)
  br label %19

10:                                               ; preds = %1
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = add i32 %3, -1
  store i32 %13, ptr %2, align 4
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %17, %15
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %12, %10, %7
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, -1025
  store i16 %22, ptr %20, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @respond_ID(ptr nocapture noundef readonly %0) unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %3, ptr noundef nonnull @respond_ID.vt102_id, i8 noundef zeroext 0, i32 noundef 5) #23
  tail call void @tty_flip_buffer_push(ptr noundef %3) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @restore_cur(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %2, ptr noundef align 4 dereferenceable(20) %3, i32 20, i1 false)
  %4 = load i32, ptr %2, align 4
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %4
  %12 = add i32 %10, -1
  %13 = select i1 %11, i32 %4, i32 %12
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i32 [ 0, %1 ], [ %13, %8 ]
  store i32 %15, ptr %2, align 4
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 8
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  br label %26

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %22, %20 ], [ 0, %24 ]
  %28 = phi ptr [ %23, %20 ], [ %25, %24 ]
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %27, %6
  %31 = icmp sgt i32 %29, %6
  %32 = add i32 %29, -1
  %33 = select i1 %31, i32 %6, i32 %32
  %34 = select i1 %30, i32 %27, i32 %33
  store i32 %34, ptr %5, align 4
  %35 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, %34
  %40 = shl i32 %15, 1
  %41 = add i32 %36, %40
  %42 = add i32 %41, %39
  %43 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  store i32 %42, ptr %43, align 4
  %44 = and i16 %17, -1025
  store i16 %44, ptr %16, align 4
  %45 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 1, i32 3, i32 %48
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = tail call ptr @set_translate(i32 noundef %51, ptr noundef %0) #23
  %53 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 42
  store ptr %52, ptr %53, align 4
  tail call fastcc void @update_attr(ptr noundef %0)
  %54 = load i16, ptr %16, align 4
  %55 = and i16 %54, -1025
  store i16 %55, ptr %16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_clr_kbd_mode_bit(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_set_kbd_mode_bit(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 31
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %7 = trunc i32 %1 to i16
  %8 = shl i16 %7, 6
  %9 = and i16 %8, 64
  %10 = and i16 %7, 1
  %11 = shl i16 %7, 5
  %12 = and i16 %11, 32
  %13 = select i1 %5, i16 0, i16 4096
  %14 = shl i16 %7, 4
  %15 = and i16 %14, 16
  %16 = shl i16 %7, 3
  %17 = and i16 %16, 8
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %21 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %22 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %24 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %25 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %26 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %28 = shl i16 %7, 2
  %29 = and i16 %28, 4
  %30 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %31 = select i1 %5, i16 0, i16 8192
  br label %32

32:                                               ; preds = %104, %2
  %33 = phi i32 [ 0, %2 ], [ %105, %104 ]
  %34 = load i16, ptr %4, align 4
  %35 = and i16 %34, 896
  %36 = icmp eq i16 %35, 128
  %37 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 %33
  %38 = load i32, ptr %37, align 4
  br i1 %36, label %39, label %92

39:                                               ; preds = %32
  switch i32 %38, label %104 [
    i32 1, label %40
    i32 1000, label %89
    i32 5, label %45
    i32 6, label %54
    i32 7, label %75
    i32 8, label %78
    i32 9, label %83
    i32 25, label %86
  ]

40:                                               ; preds = %39
  %41 = load i16, ptr %6, align 4
  %42 = zext i16 %41 to i32
  br i1 %5, label %44, label %43

43:                                               ; preds = %40
  tail call void @vt_set_kbd_mode_bit(i32 noundef %42, i32 noundef 1) #23
  br label %104

44:                                               ; preds = %40
  tail call void @vt_clr_kbd_mode_bit(i32 noundef %42, i32 noundef 1) #23
  br label %104

45:                                               ; preds = %39
  %46 = lshr i16 %34, 2
  %47 = and i16 %46, 1
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %104, label %50

50:                                               ; preds = %45
  %51 = and i16 %34, -5
  %52 = or i16 %51, %29
  store i16 %52, ptr %4, align 4
  %53 = load i32, ptr %30, align 4
  tail call void @invert_screen(ptr noundef %0, i32 noundef 0, i32 noundef %53, i1 noundef zeroext false)
  tail call fastcc void @update_attr(ptr noundef %0)
  br label %104

54:                                               ; preds = %39
  %55 = and i16 %34, -1033
  %56 = or i16 %55, %17
  br i1 %18, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %19, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %58, %57 ], [ 0, %54 ]
  %61 = phi ptr [ %22, %57 ], [ %23, %54 ]
  %62 = load i32, ptr %20, align 4
  %63 = icmp eq i32 %62, 0
  %64 = sext i1 %63 to i32
  store i32 %64, ptr %21, align 4
  %65 = load i32, ptr %61, align 4
  %66 = icmp sgt i32 %65, %60
  %67 = add i32 %65, -1
  %68 = select i1 %66, i32 %60, i32 %67
  store i32 %68, ptr %24, align 4
  %69 = load i32, ptr %25, align 4
  %70 = load i32, ptr %26, align 4
  %71 = mul i32 %70, %68
  %72 = shl nsw i32 %64, 1
  %73 = add i32 %69, %72
  %74 = add i32 %73, %71
  store i32 %74, ptr %27, align 4
  store i16 %56, ptr %4, align 4
  br label %104

75:                                               ; preds = %39
  %76 = and i16 %34, -17
  %77 = or i16 %76, %15
  store i16 %77, ptr %4, align 4
  br label %104

78:                                               ; preds = %39
  %79 = load i16, ptr %6, align 4
  %80 = zext i16 %79 to i32
  br i1 %5, label %82, label %81

81:                                               ; preds = %78
  tail call void @vt_set_kbd_mode_bit(i32 noundef %80, i32 noundef 2) #23
  br label %104

82:                                               ; preds = %78
  tail call void @vt_clr_kbd_mode_bit(i32 noundef %80, i32 noundef 2) #23
  br label %104

83:                                               ; preds = %39
  %84 = and i16 %34, -12289
  %85 = or i16 %84, %13
  store i16 %85, ptr %4, align 4
  br label %104

86:                                               ; preds = %39
  %87 = and i16 %34, -33
  %88 = or i16 %87, %12
  store i16 %88, ptr %4, align 4
  br label %104

89:                                               ; preds = %39
  %90 = and i16 %34, -12289
  %91 = or i16 %90, %31
  store i16 %91, ptr %4, align 4
  br label %104

92:                                               ; preds = %32
  switch i32 %38, label %104 [
    i32 3, label %93
    i32 4, label %96
    i32 20, label %99
  ]

93:                                               ; preds = %92
  %94 = and i16 %34, -2
  %95 = or i16 %94, %10
  store i16 %95, ptr %4, align 4
  br label %104

96:                                               ; preds = %92
  %97 = and i16 %34, -65
  %98 = or i16 %97, %9
  store i16 %98, ptr %4, align 4
  br label %104

99:                                               ; preds = %92
  %100 = load i16, ptr %6, align 4
  %101 = zext i16 %100 to i32
  br i1 %5, label %103, label %102

102:                                              ; preds = %99
  tail call void @vt_set_kbd_mode_bit(i32 noundef %101, i32 noundef 3) #23
  br label %104

103:                                              ; preds = %99
  tail call void @vt_clr_kbd_mode_bit(i32 noundef %101, i32 noundef 3) #23
  br label %104

104:                                              ; preds = %103, %102, %96, %93, %92, %89, %86, %83, %82, %81, %75, %59, %50, %45, %44, %43, %39
  %105 = add i32 %33, 1
  %106 = load i32, ptr %3, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %32

108:                                              ; preds = %104
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @status_report(ptr nocapture noundef readonly %0) unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %3, ptr noundef nonnull @status_report.teminal_ok, i8 noundef zeroext 0, i32 noundef 4) #23
  tail call void @tty_flip_buffer_push(ptr noundef %3) #23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cursor_report(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [40 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ 1, %2 ]
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %17 = add i32 %15, %5
  %18 = load i32, ptr %16, align 4
  %19 = add i32 %18, 1
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.17, i32 noundef %17, i32 noundef %19)
  %21 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 37
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %22, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef %20) #23
  call void @tty_flip_buffer_push(ptr noundef %22) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @gotoxay(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %2
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ %2, %3 ]
  %14 = icmp slt i32 %1, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %1
  %19 = add i32 %17, -1
  %20 = select i1 %18, i32 %1, i32 %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i32 [ 0, %12 ], [ %20, %15 ]
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  br i1 %7, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  br label %30

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %26, %24 ], [ 0, %28 ]
  %32 = phi ptr [ %27, %24 ], [ %29, %28 ]
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %31, %13
  %35 = icmp sgt i32 %33, %13
  %36 = add i32 %33, -1
  %37 = select i1 %35, i32 %13, i32 %36
  %38 = select i1 %34, i32 %31, i32 %37
  %39 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, %38
  %45 = shl i32 %22, 1
  %46 = add i32 %41, %45
  %47 = add i32 %46, %44
  %48 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  store i32 %47, ptr %48, align 4
  %49 = and i16 %5, -1025
  store i16 %49, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @csi_K(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  switch i32 %1, label %67 [
    i32 0, label %6
    i32 1, label %12
    i32 2, label %17
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  br label %23

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 0, %14
  %16 = add i32 %14, 1
  br label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 0, %19
  %21 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %17, %12, %6
  %24 = phi i32 [ %19, %17 ], [ %14, %12 ], [ %10, %6 ]
  %25 = phi i32 [ %22, %17 ], [ %16, %12 ], [ %11, %6 ]
  %26 = phi i32 [ %20, %17 ], [ %15, %12 ], [ 0, %6 ]
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = add i32 %24, %26
  %32 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [0 x ptr], ptr %28, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i32, ptr %35, i32 %31
  %37 = shl i32 %25, 2
  %38 = tail call ptr @__memset32(ptr noundef %36, i32 noundef 32, i32 noundef %37) #23
  br label %39

39:                                               ; preds = %30, %23
  %40 = getelementptr i16, ptr %5, i32 %26
  %41 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %42 = load i16, ptr %41, align 4
  %43 = and i32 %25, 2147483647
  %44 = tail call ptr @memset16(ptr noundef %40, i16 noundef zeroext %42, i32 noundef %43) #23
  %45 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, -1025
  store i16 %47, ptr %45, align 4
  %48 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = tail call i32 @is_console_locked() #23
  %52 = icmp eq i32 %51, 0
  %53 = load i32, ptr @oops_in_progress, align 4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %57

57:                                               ; preds = %56, %50, %39
  %58 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %0
  %62 = load i32, ptr @console_blanked, align 4
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = ptrtoint ptr %40 to i32
  tail call fastcc void @do_update_region(ptr noundef %0, i32 noundef %66, i32 noundef %25)
  br label %67

67:                                               ; preds = %65, %57, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @csi_L(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 1, i32 %1
  %11 = select i1 %8, i32 %7, i32 %10
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  tail call fastcc void @con_scroll(ptr noundef %0, i32 noundef %6, i32 noundef %13, i32 noundef 1, i32 noundef %11)
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, -1025
  store i16 %16, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @csi_M(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 1, i32 %1
  %11 = select i1 %8, i32 %7, i32 %10
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  tail call fastcc void @con_scroll(ptr noundef %0, i32 noundef %6, i32 noundef %13, i32 noundef 0, i32 noundef %11)
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, -1025
  store i16 %16, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @csi_P(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 1, i32 %1
  %11 = select i1 %8, i32 %7, i32 %10
  %12 = sub i32 0, %11
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [0 x ptr], ptr %17, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i32, ptr %23, i32 %6
  %25 = add i32 %11, %6
  %26 = getelementptr i32, ptr %23, i32 %25
  %27 = sub i32 %4, %25
  %28 = shl i32 %27, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr align 4 %26, i32 %28, i1 false) #23
  %29 = sub i32 %4, %11
  %30 = getelementptr i32, ptr %23, i32 %29
  %31 = shl i32 %11, 2
  %32 = tail call ptr @__memset32(ptr noundef %30, i32 noundef 32, i32 noundef %31) #23
  %33 = load i32, ptr %3, align 4
  %34 = load i32, ptr %5, align 4
  br label %35

35:                                               ; preds = %19, %2
  %36 = phi i32 [ %34, %19 ], [ %6, %2 ]
  %37 = phi i32 [ %33, %19 ], [ %4, %2 ]
  %38 = getelementptr i16, ptr %15, i32 %11
  %39 = add i32 %11, %36
  %40 = sub i32 %37, %39
  %41 = shl i32 %40, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %15, ptr align 2 %38, i32 %41, i1 false) #23
  %42 = load i32, ptr %3, align 4
  %43 = getelementptr i16, ptr %15, i32 %42
  %44 = load i32, ptr %5, align 4
  %45 = sub i32 0, %44
  %46 = getelementptr i16, ptr %43, i32 %45
  %47 = getelementptr i16, ptr %46, i32 %12
  %48 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %49 = load i16, ptr %48, align 4
  %50 = and i32 %11, 2147483647
  %51 = tail call ptr @memset16(ptr noundef %47, i16 noundef zeroext %49, i32 noundef %50) #23
  %52 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, -1025
  store i16 %54, ptr %52, align 4
  %55 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %35
  %58 = tail call i32 @is_console_locked() #23
  %59 = icmp eq i32 %58, 0
  %60 = load i32, ptr @oops_in_progress, align 4
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %64, !prof !8

63:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %64

64:                                               ; preds = %63, %57, %35
  %65 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %0
  %69 = load i32, ptr @console_blanked, align 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, ptr %3, align 4
  %74 = load i32, ptr %5, align 4
  %75 = sub i32 %73, %74
  tail call fastcc void @do_update_region(ptr noundef %0, i32 noundef %14, i32 noundef %75) #23
  br label %76

76:                                               ; preds = %72, %64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @csi_m(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 31
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 19
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 9
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 8
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 7
  %8 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 6
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 5
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 42
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 4
  br label %13

13:                                               ; preds = %96, %1
  %14 = phi i32 [ 0, %1 ], [ %98, %96 ]
  %15 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 %14
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %65 [
    i32 0, label %17
    i32 1, label %19
    i32 2, label %20
    i32 3, label %21
    i32 21, label %22
    i32 4, label %22
    i32 5, label %23
    i32 7, label %24
    i32 10, label %25
    i32 11, label %35
    i32 12, label %40
    i32 22, label %44
    i32 23, label %45
    i32 24, label %46
    i32 25, label %47
    i32 27, label %48
    i32 38, label %49
    i32 48, label %51
    i32 39, label %53
    i32 49, label %59
  ]

17:                                               ; preds = %13
  store i32 1, ptr %9, align 4
  store i32 0, ptr %8, align 4
  %18 = load i8, ptr %3, align 2
  store i8 %18, ptr %4, align 4
  br label %96

19:                                               ; preds = %13
  store i32 2, ptr %9, align 4
  br label %96

20:                                               ; preds = %13
  store i32 0, ptr %9, align 4
  br label %96

21:                                               ; preds = %13
  store i8 1, ptr %8, align 4
  br label %96

22:                                               ; preds = %13, %13
  store i8 1, ptr %7, align 1
  br label %96

23:                                               ; preds = %13
  store i8 1, ptr %6, align 2
  br label %96

24:                                               ; preds = %13
  store i8 1, ptr %5, align 1
  br label %96

25:                                               ; preds = %13
  %26 = load i8, ptr %12, align 1
  %27 = and i8 %26, 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 1, i32 3, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = tail call ptr @set_translate(i32 noundef %31, ptr noundef %0) #23
  store ptr %32, ptr %10, align 4
  %33 = load i16, ptr %11, align 4
  %34 = and i16 %33, -4
  store i16 %34, ptr %11, align 4
  br label %96

35:                                               ; preds = %13
  %36 = tail call ptr @set_translate(i32 noundef 2, ptr noundef %0) #23
  store ptr %36, ptr %10, align 4
  %37 = load i16, ptr %11, align 4
  %38 = and i16 %37, -4
  %39 = or i16 %38, 1
  store i16 %39, ptr %11, align 4
  br label %96

40:                                               ; preds = %13
  %41 = tail call ptr @set_translate(i32 noundef 2, ptr noundef %0) #23
  store ptr %41, ptr %10, align 4
  %42 = load i16, ptr %11, align 4
  %43 = or i16 %42, 3
  store i16 %43, ptr %11, align 4
  br label %96

44:                                               ; preds = %13
  store i32 1, ptr %9, align 4
  br label %96

45:                                               ; preds = %13
  store i8 0, ptr %8, align 4
  br label %96

46:                                               ; preds = %13
  store i8 0, ptr %7, align 1
  br label %96

47:                                               ; preds = %13
  store i8 0, ptr %6, align 2
  br label %96

48:                                               ; preds = %13
  store i8 0, ptr %5, align 1
  br label %96

49:                                               ; preds = %13
  %50 = tail call fastcc i32 @vc_t416_color(ptr noundef %0, i32 noundef %14, ptr noundef nonnull @rgb_foreground)
  br label %96

51:                                               ; preds = %13
  %52 = tail call fastcc i32 @vc_t416_color(ptr noundef %0, i32 noundef %14, ptr noundef nonnull @rgb_background)
  br label %96

53:                                               ; preds = %13
  %54 = load i8, ptr %3, align 2
  %55 = and i8 %54, 15
  %56 = load i8, ptr %4, align 4
  %57 = and i8 %56, -16
  %58 = or i8 %57, %55
  store i8 %58, ptr %4, align 4
  br label %96

59:                                               ; preds = %13
  %60 = load i8, ptr %3, align 2
  %61 = and i8 %60, -16
  %62 = load i8, ptr %4, align 4
  %63 = and i8 %62, 15
  %64 = or i8 %63, %61
  store i8 %64, ptr %4, align 4
  br label %96

65:                                               ; preds = %13
  %66 = add i32 %16, -90
  %67 = icmp ult i32 %66, 18
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = icmp ult i32 %16, 100
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  store i32 2, ptr %9, align 4
  %71 = load i32, ptr %15, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %71, %70 ], [ %16, %68 ]
  %74 = add i32 %73, -60
  store i32 %74, ptr %15, align 4
  br label %75

75:                                               ; preds = %72, %65
  %76 = phi i32 [ %74, %72 ], [ %16, %65 ]
  %77 = add i32 %76, -30
  %78 = icmp ult i32 %77, 8
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = getelementptr [16 x i8], ptr @color_table, i32 0, i32 %77
  %81 = load i8, ptr %80, align 1
  %82 = load i8, ptr %4, align 4
  %83 = and i8 %82, -16
  %84 = or i8 %83, %81
  store i8 %84, ptr %4, align 4
  br label %96

85:                                               ; preds = %75
  %86 = and i32 %76, -8
  %87 = icmp eq i32 %86, 40
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = add nsw i32 %76, -40
  %90 = getelementptr [16 x i8], ptr @color_table, i32 0, i32 %89
  %91 = load i8, ptr %90, align 1
  %92 = shl i8 %91, 4
  %93 = load i8, ptr %4, align 4
  %94 = and i8 %93, 15
  %95 = or i8 %94, %92
  store i8 %95, ptr %4, align 4
  br label %96

96:                                               ; preds = %88, %85, %79, %59, %53, %51, %49, %48, %47, %46, %45, %44, %40, %35, %25, %24, %23, %22, %21, %20, %19, %17
  %97 = phi i32 [ %14, %79 ], [ %14, %88 ], [ %14, %85 ], [ %14, %59 ], [ %14, %53 ], [ %52, %51 ], [ %50, %49 ], [ %14, %48 ], [ %14, %47 ], [ %14, %46 ], [ %14, %45 ], [ %14, %44 ], [ %14, %40 ], [ %14, %35 ], [ %14, %25 ], [ %14, %24 ], [ %14, %23 ], [ %14, %22 ], [ %14, %21 ], [ %14, %20 ], [ %14, %19 ], [ %14, %17 ]
  %98 = add i32 %97, 1
  %99 = load i32, ptr %2, align 4
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %13

101:                                              ; preds = %96
  tail call fastcc void @update_attr(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_set_led_state(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @csi_X(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i32 1, i32 %1
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = tail call i32 @llvm.umin.i32(i32 %4, i32 %9)
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [0 x ptr], ptr %12, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i32, ptr %18, i32 %8
  %20 = shl i32 %10, 2
  %21 = tail call ptr @__memset32(ptr noundef %19, i32 noundef 32, i32 noundef %20) #23
  br label %22

22:                                               ; preds = %14, %2
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %27 = load i16, ptr %26, align 4
  %28 = and i32 %10, 2147483647
  %29 = tail call ptr @memset16(ptr noundef %25, i16 noundef zeroext %27, i32 noundef %28) #23
  %30 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = tail call i32 @is_console_locked() #23
  %34 = icmp eq i32 %33, 0
  %35 = load i32, ptr @oops_in_progress, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %39

39:                                               ; preds = %38, %32, %22
  %40 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %0
  %44 = load i32, ptr @console_blanked, align 4
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 14
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.consw, ptr %49, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %7, align 4
  tail call void %51(ptr noundef %0, i32 noundef %53, i32 noundef %54, i32 noundef 1, i32 noundef %10) #23
  br label %55

55:                                               ; preds = %47, %39
  %56 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, -1025
  store i16 %58, ptr %56, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @setterm_command(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 32
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %154 [
    i32 1, label %4
    i32 2, label %21
    i32 8, label %38
    i32 9, label %52
    i32 10, label %57
    i32 11, label %67
    i32 12, label %82
    i32 13, label %110
    i32 14, label %111
    i32 15, label %116
    i32 16, label %140
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 2048
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %154, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %13, label %154

13:                                               ; preds = %9
  %14 = getelementptr [16 x i8], ptr @color_table, i32 0, i32 %11
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 20
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 7
  %18 = load i8, ptr %17, align 1, !range !12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %154, label %20

20:                                               ; preds = %13
  tail call fastcc void @update_attr(ptr noundef %0)
  br label %154

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 2048
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %154, label %26

26:                                               ; preds = %21
  %27 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, 16
  br i1 %29, label %30, label %154

30:                                               ; preds = %26
  %31 = getelementptr [16 x i8], ptr @color_table, i32 0, i32 %28
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 22
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %154

37:                                               ; preds = %30
  tail call fastcc void @update_attr(ptr noundef %0)
  br label %154

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 18
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 19
  store i8 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %43 = load i16, ptr %42, align 4
  %44 = icmp eq i16 %43, 256
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = lshr i8 %40, 1
  store i8 %46, ptr %41, align 2
  br label %47

47:                                               ; preds = %45, %38
  %48 = phi i8 [ %46, %45 ], [ %40, %38 ]
  %49 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 5
  store i32 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 6
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 2
  store i8 %48, ptr %51, align 4
  tail call fastcc void @update_attr(ptr noundef %0)
  br label %154

52:                                               ; preds = %1
  %53 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 60)
  %56 = mul nuw nsw i32 %55, 60
  store i32 %56, ptr @blankinterval, align 4
  tail call void @poke_blanked_console()
  br label %154

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 31
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 44
  store i32 %63, ptr %64, align 4
  br label %154

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 44
  store i32 750, ptr %66, align 4
  br label %154

67:                                               ; preds = %1
  %68 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 31
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %67
  %72 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp ult i32 %73, 2000
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = tail call i32 @__msecs_to_jiffies(i32 noundef %73) #23
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi i32 [ 0, %71 ], [ %76, %75 ]
  %79 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 45
  store i32 %78, ptr %79, align 4
  br label %154

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 45
  store i32 12, ptr %81, align 4
  br label %154

82:                                               ; preds = %1
  %83 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %154, label %86

86:                                               ; preds = %82
  %87 = add i32 %84, -1
  %88 = icmp ult i32 %87, 63
  br i1 %88, label %89, label %154

89:                                               ; preds = %86
  %90 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %87
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %154, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr @fg_console, align 4
  %95 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %94
  %96 = load ptr, ptr %95, align 4
  %97 = load i8, ptr @vt_dont_switch, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %154

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.vc_data, ptr %96, i32 0, i32 33
  %101 = load i8, ptr %100, align 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.vc_data, ptr %96, i32 0, i32 17
  %105 = load i8, ptr %104, align 4
  %106 = icmp eq i8 %105, 1
  br i1 %106, label %154, label %107

107:                                              ; preds = %103, %99
  store i32 %87, ptr @want_console, align 4
  %108 = load ptr, ptr @system_wq, align 4
  %109 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %108, ptr noundef nonnull @console_work) #23
  br label %154

110:                                              ; preds = %1
  tail call void @poke_blanked_console()
  br label %154

111:                                              ; preds = %1
  %112 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = tail call i32 @llvm.umin.i32(i32 %113, i32 60)
  %115 = mul nuw nsw i32 %114, 6000
  store i32 %115, ptr @vesa_off_interval, align 4
  br label %154

116:                                              ; preds = %1
  %117 = load i32, ptr @last_console, align 4
  %118 = load i32, ptr @fg_console, align 4
  %119 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %118
  %120 = load ptr, ptr %119, align 4
  %121 = icmp ult i32 %117, 63
  br i1 %121, label %122, label %154

122:                                              ; preds = %116
  %123 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %117
  %124 = load ptr, ptr %123, align 4
  %125 = icmp ne ptr %124, null
  %126 = load i8, ptr @vt_dont_switch, align 1
  %127 = icmp eq i8 %126, 0
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %154

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.vc_data, ptr %120, i32 0, i32 33
  %131 = load i8, ptr %130, align 4
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.vc_data, ptr %120, i32 0, i32 17
  %135 = load i8, ptr %134, align 4
  %136 = icmp eq i8 %135, 1
  br i1 %136, label %154, label %137

137:                                              ; preds = %133, %129
  store i32 %117, ptr @want_console, align 4
  %138 = load ptr, ptr @system_wq, align 4
  %139 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %138, ptr noundef nonnull @console_work) #23
  br label %154

140:                                              ; preds = %1
  %141 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 31
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, -50
  %148 = icmp ult i32 %147, 65486
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = trunc i32 %146 to i16
  %151 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 46
  store i16 %150, ptr %151, align 4
  br label %154

152:                                              ; preds = %144, %140
  %153 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 46
  store i16 200, ptr %153, align 4
  br label %154

154:                                              ; preds = %152, %149, %137, %133, %122, %116, %111, %110, %107, %103, %93, %89, %86, %82, %80, %77, %65, %61, %52, %47, %37, %30, %26, %21, %20, %13, %9, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc_setGx(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 1, i32 3, i32 %1
  switch i32 %2, label %10 [
    i32 48, label %8
    i32 66, label %5
    i32 85, label %6
    i32 75, label %7
  ]

5:                                                ; preds = %3
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %6, %5, %3
  %9 = phi i8 [ 3, %7 ], [ 2, %6 ], [ 0, %5 ], [ 1, %3 ]
  store i8 %9, ptr %4, align 1
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i8, ptr %4, align 1
  %18 = zext i8 %17 to i32
  %19 = tail call ptr @set_translate(i32 noundef %18, ptr noundef %0) #23
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 42
  store ptr %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc_t416_color(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.rgb, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #23
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false), !annotation !11
  %5 = add i32 %1, 1
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 31
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %94, label %9

9:                                                ; preds = %3
  %10 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 %5
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %94 [
    i32 5, label %12
    i32 2, label %75
  ]

12:                                               ; preds = %9
  %13 = add i32 %1, 2
  %14 = icmp ugt i32 %13, %7
  br i1 %14, label %94, label %15

15:                                               ; preds = %12
  %16 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 %13
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = and i32 %17, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i8 0, i8 -86
  store i8 %22, ptr %4, align 1
  %23 = and i32 %17, 2
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i8 0, i8 -86
  %26 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 1
  store i8 %25, ptr %26, align 1
  %27 = and i32 %17, 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i8 0, i8 -86
  %30 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 2
  store i8 %29, ptr %30, align 1
  br label %92

31:                                               ; preds = %15
  %32 = icmp ult i32 %17, 16
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  %34 = and i32 %17, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i8 85, i8 -1
  store i8 %36, ptr %4, align 1
  %37 = and i32 %17, 2
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i8 85, i8 -1
  %40 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 1
  store i8 %39, ptr %40, align 1
  %41 = and i32 %17, 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i8 85, i8 -1
  %44 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 2
  store i8 %43, ptr %44, align 1
  br label %92

45:                                               ; preds = %31
  %46 = icmp ult i32 %17, 232
  %47 = trunc i32 %17 to i8
  br i1 %46, label %48, label %70

48:                                               ; preds = %45
  %49 = add i8 %47, -16
  %50 = udiv i8 %49, 36
  %51 = zext i8 %50 to i16
  %52 = mul nuw nsw i16 %51, 85
  %53 = lshr i16 %52, 1
  %54 = trunc i16 %53 to i8
  store i8 %54, ptr %4, align 1
  %55 = freeze i8 %49
  %56 = udiv i8 %55, 6
  %57 = urem i8 %56, 6
  %58 = zext i8 %57 to i16
  %59 = mul nuw nsw i16 %58, 85
  %60 = lshr i16 %59, 1
  %61 = trunc i16 %60 to i8
  %62 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 1
  store i8 %61, ptr %62, align 1
  %63 = mul i8 %56, 6
  %64 = sub i8 %55, %63
  %65 = zext i8 %64 to i16
  %66 = mul nuw nsw i16 %65, 85
  %67 = lshr i16 %66, 1
  %68 = trunc i16 %67 to i8
  %69 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 2
  store i8 %68, ptr %69, align 1
  br label %92

70:                                               ; preds = %45
  %71 = mul i8 %47, 10
  %72 = add i8 %71, -8
  %73 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 2
  store i8 %72, ptr %73, align 1
  %74 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 1
  store i8 %72, ptr %74, align 1
  store i8 %72, ptr %4, align 1
  br label %92

75:                                               ; preds = %9
  %76 = add i32 %1, 4
  %77 = icmp ugt i32 %76, %7
  br i1 %77, label %94, label %78

78:                                               ; preds = %75
  %79 = add i32 %1, 2
  %80 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = trunc i32 %81 to i8
  store i8 %82, ptr %4, align 1
  %83 = add i32 %1, 3
  %84 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 1
  store i8 %86, ptr %87, align 1
  %88 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 32, i32 %76
  %89 = load i32, ptr %88, align 4
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds %struct.rgb, ptr %4, i32 0, i32 2
  store i8 %90, ptr %91, align 1
  br label %92

92:                                               ; preds = %78, %70, %48, %33, %19
  %93 = phi i32 [ %76, %78 ], [ %13, %19 ], [ %13, %33 ], [ %13, %48 ], [ %13, %70 ]
  call void %2(ptr noundef %0, ptr noundef nonnull %4) #23, !callees !36
  br label %94

94:                                               ; preds = %92, %75, %12, %9, %3
  %95 = phi i32 [ %93, %92 ], [ %5, %3 ], [ %5, %75 ], [ %5, %12 ], [ %5, %9 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #23
  ret i32 %95
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rgb_foreground(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i8, ptr %1, align 1
  %4 = getelementptr inbounds %struct.rgb, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = tail call i8 @llvm.umax.i8(i8 %3, i8 %5)
  %7 = getelementptr inbounds %struct.rgb, ptr %1, i32 0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = tail call i8 @llvm.umax.i8(i8 %6, i8 %8)
  %10 = lshr i8 %9, 1
  %11 = icmp ult i8 %10, %3
  %12 = select i1 %11, i8 4, i8 0
  %13 = icmp ult i8 %10, %5
  %14 = or i8 %12, 2
  %15 = select i1 %13, i8 %14, i8 %12
  %16 = icmp ult i8 %10, %8
  %17 = zext i1 %16 to i8
  %18 = or i8 %15, %17
  %19 = icmp eq i8 %18, 7
  %20 = icmp ult i8 %9, 86
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 5
  store i32 2, ptr %23, align 4
  br label %29

24:                                               ; preds = %2
  %25 = icmp ugt i8 %9, -86
  %26 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 5
  br i1 %25, label %27, label %28

27:                                               ; preds = %24
  store i32 2, ptr %26, align 4
  br label %29

28:                                               ; preds = %24
  store i32 1, ptr %26, align 4
  br label %29

29:                                               ; preds = %28, %27, %22
  %30 = phi i8 [ 0, %22 ], [ %18, %27 ], [ %18, %28 ]
  %31 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, -16
  %34 = or i8 %33, %30
  store i8 %34, ptr %31, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rgb_background(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 15
  %6 = load i8, ptr %1, align 1
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 64
  %9 = or i8 %8, %5
  %10 = getelementptr inbounds %struct.rgb, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 32
  %14 = or i8 %9, %13
  %15 = getelementptr inbounds %struct.rgb, ptr %1, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = lshr i8 %16, 3
  %18 = and i8 %17, 16
  %19 = or i8 %14, %18
  store i8 %19, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @insert_char(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 50
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %10, align 4
  %16 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %15, %1
  %19 = getelementptr i32, ptr %14, i32 %18
  %20 = getelementptr i32, ptr %14, i32 %15
  %21 = sub i32 %17, %18
  %22 = shl i32 %21, 2
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %19, ptr align 4 %20, i32 %22, i1 false) #23
  %23 = shl i32 %1, 2
  %24 = tail call ptr @__memset32(ptr noundef %20, i32 noundef 32, i32 noundef %23) #23
  br label %25

25:                                               ; preds = %9, %2
  %26 = getelementptr i16, ptr %5, i32 %1
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %1
  %32 = sub i32 %28, %31
  %33 = shl i32 %32, 1
  tail call void @llvm.memmove.p0.p0.i32(ptr align 2 %26, ptr align 2 %5, i32 %33, i1 false) #23
  %34 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %35 = load i16, ptr %34, align 4
  %36 = and i32 %1, 2147483647
  %37 = tail call ptr @memset16(ptr noundef %5, i16 noundef zeroext %35, i32 noundef %36) #23
  %38 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, -1025
  store i16 %40, ptr %38, align 4
  %41 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %25
  %44 = tail call i32 @is_console_locked() #23
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr @oops_in_progress, align 4
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !8

49:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4012, i32 noundef 9, ptr noundef null) #23
  br label %50

50:                                               ; preds = %49, %43, %25
  %51 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %0
  %55 = load i32, ptr @console_blanked, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, ptr %27, align 4
  %60 = load i32, ptr %29, align 4
  %61 = sub i32 %59, %60
  tail call fastcc void @do_update_region(ptr noundef %0, i32 noundef %4, i32 noundef %61)
  br label %62

62:                                               ; preds = %58, %50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conv_uni_to_pc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ucs_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #21 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds i8, ptr %1, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %3, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 4
  %9 = icmp ult i32 %3, %8
  %10 = sext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 1, %2 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_kbd_con_stop(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_kbd_con_start(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @con_driver_unregister_callback(ptr nocapture noundef readnone %0) #0 {
  tail call void @console_lock() #23
  br label %2

2:                                                ; preds = %35, %1
  %3 = phi i32 [ 0, %1 ], [ %36, %35 ]
  %4 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %3
  %5 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %3, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  tail call void @console_unlock() #23
  %10 = load i32, ptr %5, align 4
  %11 = and i32 %10, -5
  store i32 %11, ptr %5, align 4
  %12 = load ptr, ptr @vtconsole_class, align 4
  %13 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %3, i32 3
  %14 = load i32, ptr %13, align 4
  tail call void @device_destroy(ptr noundef %12, i32 noundef %14) #23
  tail call void @console_lock() #23
  %15 = load ptr, ptr %4, align 4
  %16 = icmp ne ptr %15, null
  %17 = load i1, ptr @con_driver_unregister_callback.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %9
  store i1 true, ptr @con_driver_unregister_callback.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4240, i32 noundef 9, ptr noundef null) #23
  br label %21

21:                                               ; preds = %20, %9
  br i1 %16, label %22, label %23

22:                                               ; preds = %21
  store ptr null, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %3, i32 1
  store ptr null, ptr %24, align 4
  %25 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %3, i32 2
  store ptr null, ptr %25, align 4
  store i32 0, ptr %13, align 4
  %26 = load i32, ptr %5, align 4
  %27 = icmp ne i32 %26, 8
  %28 = load i1, ptr @con_driver_unregister_callback.__already_done.22, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32, !prof !9

31:                                               ; preds = %23
  store i1 true, ptr @con_driver_unregister_callback.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4245, i32 noundef 9, ptr noundef null) #23
  br label %32

32:                                               ; preds = %31, %23
  store i32 0, ptr %5, align 4
  %33 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %3, i32 4
  store i32 0, ptr %33, align 4
  %34 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %3, i32 5
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %2
  %36 = add nuw nsw i32 %3, 1
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %2

38:                                               ; preds = %35
  tail call void @console_unlock() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @console_lock() #23
  %6 = load ptr, ptr %5, align 4
  %7 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = tail call i32 @is_console_locked() #23
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr @oops_in_progress, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3991, i32 noundef 9, ptr noundef null) #23
  br label %16

16:                                               ; preds = %15, %9, %3
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i32 %21, 1
  %19 = icmp eq i32 %18, 63
  br i1 %19, label %25, label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ %18, %17 ], [ 0, %16 ]
  %22 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %25, label %17

25:                                               ; preds = %20, %17
  %26 = phi i32 [ 0, %17 ], [ 1, %20 ]
  tail call void @console_unlock() #23
  %27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.26, i32 noundef %26)
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #23
  tail call void @console_lock() #23
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %8, label %75, label %11

11:                                               ; preds = %4
  br i1 %10, label %128, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.con_driver, ptr %6, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %128, label %17

17:                                               ; preds = %30, %12
  %18 = phi i32 [ %31, %30 ], [ 0, %12 ]
  %19 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr [16 x %struct.con_driver], ptr @registered_con_driver, i32 0, i32 %18, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.con_driver, ptr %6, i32 0, i32 4
  %29 = getelementptr inbounds %struct.con_driver, ptr %6, i32 0, i32 5
  br label %33

30:                                               ; preds = %22, %17
  %31 = add nuw nsw i32 %18, 1
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %128, label %17

33:                                               ; preds = %72, %27
  %34 = load i32, ptr %28, align 4
  %35 = load i32, ptr %29, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %128, label %37

37:                                               ; preds = %54, %33
  %38 = phi i32 [ %44, %54 ], [ -1, %33 ]
  %39 = phi i32 [ %55, %54 ], [ -1, %33 ]
  %40 = phi i32 [ 1, %54 ], [ 0, %33 ]
  %41 = phi i32 [ %56, %54 ], [ %34, %33 ]
  br label %42

42:                                               ; preds = %58, %37
  %43 = phi i32 [ -1, %58 ], [ %39, %37 ]
  %44 = phi i32 [ %59, %58 ], [ %41, %37 ]
  %45 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %20
  %48 = icmp eq i32 %43, -1
  br i1 %47, label %54, label %49

49:                                               ; preds = %42
  br i1 %48, label %58, label %50

50:                                               ; preds = %49
  %51 = icmp eq i32 %43, 0
  %52 = icmp eq i32 %38, 62
  %53 = select i1 %51, i1 %52, i1 false
  br label %66

54:                                               ; preds = %42
  %55 = select i1 %48, i32 %44, i32 %43
  %56 = add i32 %44, 1
  %57 = icmp sgt i32 %56, %35
  br i1 %57, label %61, label %37

58:                                               ; preds = %49
  %59 = add i32 %44, 1
  %60 = icmp sgt i32 %59, %35
  br i1 %60, label %72, label %42

61:                                               ; preds = %54
  %62 = icmp eq i32 %55, 0
  %63 = icmp eq i32 %44, 62
  %64 = select i1 %62, i1 %63, i1 false
  %65 = icmp eq i32 %55, -1
  br i1 %65, label %72, label %66

66:                                               ; preds = %61, %50
  %67 = phi i32 [ %40, %50 ], [ 1, %61 ]
  %68 = phi i32 [ %43, %50 ], [ %55, %61 ]
  %69 = phi i32 [ %38, %50 ], [ %44, %61 ]
  %70 = phi i1 [ %53, %50 ], [ %64, %61 ]
  %71 = zext i1 %70 to i32
  tail call fastcc void @do_bind_con_driver(ptr noundef nonnull %9, i32 noundef %68, i32 noundef %69, i32 noundef %71) #23
  br label %72

72:                                               ; preds = %66, %61, %58
  %73 = phi i32 [ %67, %66 ], [ 1, %61 ], [ %40, %58 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %128, label %33

75:                                               ; preds = %4
  br i1 %10, label %128, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.con_driver, ptr %6, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %128, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.con_driver, ptr %6, i32 0, i32 4
  %83 = getelementptr inbounds %struct.con_driver, ptr %6, i32 0, i32 5
  br label %84

84:                                               ; preds = %125, %81
  %85 = load i32, ptr %82, align 4
  %86 = load i32, ptr %83, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %128, label %88

88:                                               ; preds = %105, %84
  %89 = phi i32 [ %95, %105 ], [ -1, %84 ]
  %90 = phi i32 [ %106, %105 ], [ -1, %84 ]
  %91 = phi i32 [ 1, %105 ], [ 0, %84 ]
  %92 = phi i32 [ %107, %105 ], [ %85, %84 ]
  br label %93

93:                                               ; preds = %109, %88
  %94 = phi i32 [ -1, %109 ], [ %90, %88 ]
  %95 = phi i32 [ %110, %109 ], [ %92, %88 ]
  %96 = getelementptr [63 x ptr], ptr @con_driver_map, i32 0, i32 %95
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, %9
  %99 = icmp eq i32 %94, -1
  br i1 %98, label %105, label %100

100:                                              ; preds = %93
  br i1 %99, label %109, label %101

101:                                              ; preds = %100
  %102 = icmp eq i32 %94, 0
  %103 = icmp eq i32 %89, 62
  %104 = select i1 %102, i1 %103, i1 false
  br label %117

105:                                              ; preds = %93
  %106 = select i1 %99, i32 %95, i32 %94
  %107 = add i32 %95, 1
  %108 = icmp sgt i32 %107, %86
  br i1 %108, label %112, label %88

109:                                              ; preds = %100
  %110 = add i32 %95, 1
  %111 = icmp sgt i32 %110, %86
  br i1 %111, label %125, label %93

112:                                              ; preds = %105
  %113 = icmp eq i32 %106, 0
  %114 = icmp eq i32 %95, 62
  %115 = select i1 %113, i1 %114, i1 false
  %116 = icmp eq i32 %106, -1
  br i1 %116, label %125, label %117

117:                                              ; preds = %112, %101
  %118 = phi i32 [ %91, %101 ], [ 1, %112 ]
  %119 = phi i32 [ %94, %101 ], [ %106, %112 ]
  %120 = phi i32 [ %89, %101 ], [ %95, %112 ]
  %121 = phi i1 [ %104, %101 ], [ %115, %112 ]
  %122 = zext i1 %121 to i32
  %123 = tail call i32 @do_unbind_con_driver(ptr noundef nonnull %9, i32 noundef %119, i32 noundef %120, i32 noundef %122) #23
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117, %112, %109
  %126 = phi i32 [ %118, %117 ], [ 1, %112 ], [ %91, %109 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %84

128:                                              ; preds = %125, %117, %84, %76, %75, %72, %33, %30, %12, %11
  tail call void @console_unlock() #23
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #19 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.con_driver, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.30, ptr @.str.29
  %11 = getelementptr inbounds %struct.con_driver, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.28, ptr noundef nonnull %10, ptr noundef %12)
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blank_screen_t(ptr nocapture noundef readnone %0) #0 {
  store i1 true, ptr @blank_timer_expired, align 4
  %2 = load ptr, ptr @system_wq, align 4
  %3 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %2, ptr noundef nonnull @console_work) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #22

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nounwind readonly }
attributes #27 = { cold nounwind }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { nounwind readnone }
attributes #30 = { nounwind readnone willreturn }

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
!8 = !{!"branch_weights", i32 1, i32 4001}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153164824, i64 2153165308, i64 2153164861, i64 2153164917, i64 2153164951, i64 2153164975, i64 2153165016, i64 2153165037, i64 2153165065, i64 2153165099}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
!13 = !{i64 2153219284}
!14 = !{i64 656173, i64 2148146144, i64 2148146170, i64 2148146217, i64 2148146239, i64 2148146267, i64 2148146287}
!15 = !{i64 664823, i64 664840, i64 664864, i64 664890, i64 664908}
!16 = !{i64 2153219603}
!17 = !{i64 3564708}
!18 = !{i64 3564905}
!19 = !{i64 2151050184}
!20 = !{i64 2153223302, i64 2153223582, i64 2153223916, i64 2153224250}
!21 = !{i64 2153233690, i64 2153233970, i64 2153234304, i64 2153234638}
!22 = !{i64 2153241799, i64 2153242079, i64 2153242413, i64 2153242747}
!23 = !{i64 2153249933, i64 2153250213, i64 2153250547, i64 2153250881}
!24 = !{i64 2153259593, i64 2153259873, i64 2153260207, i64 2153260541}
!25 = !{i64 2153276716, i64 2153276996, i64 2153277330, i64 2153277664}
!26 = !{i64 2153337977, i64 2153338257, i64 2153338591, i64 2153338925}
!27 = !{i64 2151068596, i64 2151068621}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2151069174, i64 2151069199}
!30 = !{i64 2149040698}
!31 = !{i64 2149036522}
!32 = !{i64 2149036597, i64 2149036624, i64 2149036671, i64 2149036693, i64 2149036721, i64 2149036741}
!33 = !{i64 2149063701}
!34 = !{i64 642236, i64 642260, i64 642281, i64 642298, i64 642315}
!35 = !{i64 2153281266, i64 2153285812, i64 2153281303, i64 2153281359, i64 2153281393, i64 2153281417, i64 2153281458, i64 2153281479, i64 2153281507, i64 2153281541}
!36 = !{ptr @rgb_background, ptr @rgb_foreground}
