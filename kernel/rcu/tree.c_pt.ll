; ModuleID = '/llk/IR/kernel/rcu/tree.c_pt.bc'
source_filename = "../kernel/rcu/tree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_scheduler_active:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_scheduler_active\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_scheduler_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_get_gp_kthreads_prio:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_get_gp_kthreads_prio\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_get_gp_kthreads_prio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_momentary_dyntick_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_momentary_dyntick_idle\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_momentary_dyntick_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_get_gp_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_get_gp_seq\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_get_gp_seq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_exp_batches_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_exp_batches_completed\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_exp_batches_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcutorture_get_gp_data:\09\09\09\09\09"
module asm "\09.asciz \09\22rcutorture_get_gp_data\22\09\09\09\09\09"
module asm "__kstrtabns_rcutorture_get_gp_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_idle_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_idle_enter\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_idle_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_idle_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_idle_exit\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_idle_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_is_watching:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_is_watching\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_is_watching:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_gp_set_torture_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_gp_set_torture_wait\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_gp_set_torture_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_force_quiescent_state:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_force_quiescent_state\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_force_quiescent_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22call_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_call_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvfree_call_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22kvfree_call_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_kvfree_call_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_state_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22get_state_synchronize_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_get_state_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_start_poll_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22start_poll_synchronize_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_start_poll_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poll_state_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22poll_state_synchronize_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_poll_state_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cond_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22cond_synchronize_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_cond_synchronize_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_barrier\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_jiffies_till_stall_check:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_jiffies_till_stall_check\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_jiffies_till_stall_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_check_boost_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_check_boost_fail\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_check_boost_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_show_rcu_gp_kthreads:\09\09\09\09\09"
module asm "\09.asciz \09\22show_rcu_gp_kthreads\22\09\09\09\09\09"
module asm "__kstrtabns_show_rcu_gp_kthreads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_fwd_progress_check:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_fwd_progress_check\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_fwd_progress_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_rcu_expedited:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_rcu_expedited\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_rcu_expedited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_read_unlock_strict:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_read_unlock_strict\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_read_unlock_strict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_all_qs:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_all_qs\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_all_qs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcu_note_context_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22rcu_note_context_switch\22\09\09\09\09\09"
module asm "__kstrtabns_rcu_note_context_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rcu_data = type { i32, i32, %union.rcu_noqs, i8, i8, i8, i8, ptr, i32, i32, %struct.irq_work, i8, %struct.work_struct, %struct.rcu_segcblist, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8, %struct.callback_head, i32, ptr, i32, i8, i32, %struct.irq_work, i8, i32, i32, i16, i32, i16, i32, i32 }
%union.rcu_noqs = type { i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], i32, [4 x i32], i8 }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.rcu_state = type { [1 x %struct.rcu_node], [2 x ptr], i32, i32, [48 x i8], i8, i32, i32, ptr, %struct.swait_queue_head, i16, i16, i32, i32, %struct.mutex, %struct.atomic_t, %struct.completion, i32, %struct.mutex, %struct.mutex, i32, %struct.atomic_t, %struct.swait_queue_head, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i8, [59 x i8], %struct.raw_spinlock, [60 x i8] }
%struct.rcu_node = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.list_head, ptr, ptr, ptr, %struct.rt_mutex, i32, ptr, i32, i32, %struct.raw_spinlock, [60 x i8], %struct.spinlock, i32, [4 x %struct.wait_queue_head], %struct.rcu_exp_work, i8, [51 x i8] }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rcu_exp_work = type { i32, %struct.work_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.kfree_rcu_cpu = type { ptr, [2 x ptr], [2 x %struct.kfree_rcu_cpu_work], %struct.raw_spinlock, %struct.delayed_work, i8, i8, i32, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, %struct.hrtimer, %struct.llist_head, i32 }
%struct.kfree_rcu_cpu_work = type { %struct.rcu_work, ptr, [2 x ptr], ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.lock_class_key = type {}
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.sysrq_key_op = type { ptr, ptr, ptr, i32 }
%struct.anon.95 = type { i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rcu_synchronize = type { %struct.callback_head, %struct.completion }
%struct.kvfree_rcu_bulk_data = type { i32, ptr, [0 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sched_param = type { i32 }
%struct.swait_queue = type { ptr, %struct.list_head }
%struct.rcu_cblist = type { ptr, ptr, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@rcu_name = internal global [10 x i8] c"rcu_sched\00", align 1
@tp_rcu_varname = internal global ptr @rcu_name, section "__tracepoint_str", align 4
@__param_str_dump_tree = internal constant [18 x i8] c"rcutree.dump_tree\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@dump_tree = internal global i8 0, align 1
@__param_dump_tree = internal constant %struct.kernel_param { ptr @__param_str_dump_tree, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @dump_tree } }, section "__param", align 4
@__UNIQUE_ID_dump_treetype320 = internal constant [29 x i8] c"tree.parmtype=dump_tree:bool\00", section ".modinfo", align 1
@__param_str_use_softirq = internal constant [20 x i8] c"rcutree.use_softirq\00", align 1
@use_softirq = internal global i8 1, align 1
@__param_use_softirq = internal constant %struct.kernel_param { ptr @__param_str_use_softirq, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @use_softirq } }, section "__param", align 4
@__UNIQUE_ID_use_softirqtype321 = internal constant [31 x i8] c"tree.parmtype=use_softirq:bool\00", section ".modinfo", align 1
@__param_str_rcu_fanout_exact = internal constant [25 x i8] c"rcutree.rcu_fanout_exact\00", align 1
@rcu_fanout_exact = internal global i8 0, align 1
@__param_rcu_fanout_exact = internal constant %struct.kernel_param { ptr @__param_str_rcu_fanout_exact, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @rcu_fanout_exact } }, section "__param", align 4
@__UNIQUE_ID_rcu_fanout_exacttype322 = internal constant [36 x i8] c"tree.parmtype=rcu_fanout_exact:bool\00", section ".modinfo", align 1
@__param_str_rcu_fanout_leaf = internal constant [24 x i8] c"rcutree.rcu_fanout_leaf\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rcu_fanout_leaf = internal global i32 16, align 4
@__param_rcu_fanout_leaf = internal constant %struct.kernel_param { ptr @__param_str_rcu_fanout_leaf, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @rcu_fanout_leaf } }, section "__param", align 4
@__UNIQUE_ID_rcu_fanout_leaftype323 = internal constant [34 x i8] c"tree.parmtype=rcu_fanout_leaf:int\00", section ".modinfo", align 1
@rcu_num_lvls = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@num_rcu_lvl = dso_local local_unnamed_addr global [1 x i32] [i32 1], align 4
@rcu_num_nodes = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@rcu_scheduler_active = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_rcu_scheduler_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_scheduler_active = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_scheduler_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_scheduler_active to i32), ptr @__kstrtab_rcu_scheduler_active, ptr @__kstrtabns_rcu_scheduler_active }, section "___ksymtab_gpl+rcu_scheduler_active", align 4
@__param_str_kthread_prio = internal constant [21 x i8] c"rcutree.kthread_prio\00", align 1
@kthread_prio = internal global i32 0, align 4
@__param_kthread_prio = internal constant %struct.kernel_param { ptr @__param_str_kthread_prio, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @kthread_prio } }, section "__param", align 4
@__UNIQUE_ID_kthread_priotype324 = internal constant [31 x i8] c"tree.parmtype=kthread_prio:int\00", section ".modinfo", align 1
@__param_str_gp_preinit_delay = internal constant [25 x i8] c"rcutree.gp_preinit_delay\00", align 1
@gp_preinit_delay = internal global i32 0, align 4
@__param_gp_preinit_delay = internal constant %struct.kernel_param { ptr @__param_str_gp_preinit_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_preinit_delay } }, section "__param", align 4
@__UNIQUE_ID_gp_preinit_delaytype325 = internal constant [35 x i8] c"tree.parmtype=gp_preinit_delay:int\00", section ".modinfo", align 1
@__param_str_gp_init_delay = internal constant [22 x i8] c"rcutree.gp_init_delay\00", align 1
@gp_init_delay = internal global i32 0, align 4
@__param_gp_init_delay = internal constant %struct.kernel_param { ptr @__param_str_gp_init_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_init_delay } }, section "__param", align 4
@__UNIQUE_ID_gp_init_delaytype326 = internal constant [32 x i8] c"tree.parmtype=gp_init_delay:int\00", section ".modinfo", align 1
@__param_str_gp_cleanup_delay = internal constant [25 x i8] c"rcutree.gp_cleanup_delay\00", align 1
@gp_cleanup_delay = internal global i32 0, align 4
@__param_gp_cleanup_delay = internal constant %struct.kernel_param { ptr @__param_str_gp_cleanup_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @gp_cleanup_delay } }, section "__param", align 4
@__UNIQUE_ID_gp_cleanup_delaytype327 = internal constant [35 x i8] c"tree.parmtype=gp_cleanup_delay:int\00", section ".modinfo", align 1
@__param_str_rcu_min_cached_objs = internal constant [28 x i8] c"rcutree.rcu_min_cached_objs\00", align 1
@rcu_min_cached_objs = internal global i32 5, align 4
@__param_rcu_min_cached_objs = internal constant %struct.kernel_param { ptr @__param_str_rcu_min_cached_objs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @rcu_min_cached_objs } }, section "__param", align 4
@__UNIQUE_ID_rcu_min_cached_objstype328 = internal constant [38 x i8] c"tree.parmtype=rcu_min_cached_objs:int\00", section ".modinfo", align 1
@__param_str_rcu_delay_page_cache_fill_msec = internal constant [39 x i8] c"rcutree.rcu_delay_page_cache_fill_msec\00", align 1
@rcu_delay_page_cache_fill_msec = internal global i32 5000, align 4
@__param_rcu_delay_page_cache_fill_msec = internal constant %struct.kernel_param { ptr @__param_str_rcu_delay_page_cache_fill_msec, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @rcu_delay_page_cache_fill_msec } }, section "__param", align 4
@__UNIQUE_ID_rcu_delay_page_cache_fill_msectype329 = internal constant [49 x i8] c"tree.parmtype=rcu_delay_page_cache_fill_msec:int\00", section ".modinfo", align 1
@__kstrtab_rcu_get_gp_kthreads_prio = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_get_gp_kthreads_prio = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_get_gp_kthreads_prio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_get_gp_kthreads_prio to i32), ptr @__kstrtab_rcu_get_gp_kthreads_prio, ptr @__kstrtabns_rcu_get_gp_kthreads_prio }, section "___ksymtab_gpl+rcu_get_gp_kthreads_prio", align 4
@rcu_data = internal global %struct.rcu_data { i32 0, i32 0, %union.rcu_noqs zeroinitializer, i8 0, i8 0, i8 0, i8 0, ptr null, i32 0, i32 0, %struct.irq_work zeroinitializer, i8 0, %struct.work_struct zeroinitializer, %struct.rcu_segcblist zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1073741824, %struct.atomic_t { i32 1 }, i8 0, i8 0, i8 0, i8 0, %struct.callback_head zeroinitializer, i32 0, ptr null, i32 0, i8 0, i32 0, %struct.irq_work zeroinitializer, i8 0, i32 0, i32 0, i16 0, i32 0, i16 0, i32 0, i32 0 }, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@rcu_momentary_dyntick_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [18 x i8] c"kernel/rcu/tree.c\00", align 1
@__kstrtab_rcu_momentary_dyntick_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_momentary_dyntick_idle = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_momentary_dyntick_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_momentary_dyntick_idle to i32), ptr @__kstrtab_rcu_momentary_dyntick_idle, ptr @__kstrtabns_rcu_momentary_dyntick_idle }, section "___ksymtab_gpl+rcu_momentary_dyntick_idle", align 4
@__param_str_blimit = internal constant [15 x i8] c"rcutree.blimit\00", align 1
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@blimit = internal global i32 10, align 4
@__param_blimit = internal constant %struct.kernel_param { ptr @__param_str_blimit, ptr null, ptr @param_ops_long, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @blimit } }, section "__param", align 4
@__UNIQUE_ID_blimittype333 = internal constant [26 x i8] c"tree.parmtype=blimit:long\00", section ".modinfo", align 1
@__param_str_qhimark = internal constant [16 x i8] c"rcutree.qhimark\00", align 1
@qhimark = internal global i32 10000, align 4
@__param_qhimark = internal constant %struct.kernel_param { ptr @__param_str_qhimark, ptr null, ptr @param_ops_long, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @qhimark } }, section "__param", align 4
@__UNIQUE_ID_qhimarktype334 = internal constant [27 x i8] c"tree.parmtype=qhimark:long\00", section ".modinfo", align 1
@__param_str_qlowmark = internal constant [17 x i8] c"rcutree.qlowmark\00", align 1
@qlowmark = internal global i32 100, align 4
@__param_qlowmark = internal constant %struct.kernel_param { ptr @__param_str_qlowmark, ptr null, ptr @param_ops_long, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @qlowmark } }, section "__param", align 4
@__UNIQUE_ID_qlowmarktype335 = internal constant [28 x i8] c"tree.parmtype=qlowmark:long\00", section ".modinfo", align 1
@__param_str_qovld = internal constant [14 x i8] c"rcutree.qovld\00", align 1
@qovld = internal global i32 20000, align 4
@__param_qovld = internal constant %struct.kernel_param { ptr @__param_str_qovld, ptr null, ptr @param_ops_long, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @qovld } }, section "__param", align 4
@__UNIQUE_ID_qovldtype336 = internal constant [25 x i8] c"tree.parmtype=qovld:long\00", section ".modinfo", align 1
@__param_str_rcu_divisor = internal constant [20 x i8] c"rcutree.rcu_divisor\00", align 1
@rcu_divisor = internal global i32 7, align 4
@__param_rcu_divisor = internal constant %struct.kernel_param { ptr @__param_str_rcu_divisor, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @rcu_divisor } }, section "__param", align 4
@__UNIQUE_ID_rcu_divisortype337 = internal constant [30 x i8] c"tree.parmtype=rcu_divisor:int\00", section ".modinfo", align 1
@__param_str_rcu_resched_ns = internal constant [23 x i8] c"rcutree.rcu_resched_ns\00", align 1
@rcu_resched_ns = internal global i32 3000000, align 4
@__param_rcu_resched_ns = internal constant %struct.kernel_param { ptr @__param_str_rcu_resched_ns, ptr null, ptr @param_ops_long, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @rcu_resched_ns } }, section "__param", align 4
@__UNIQUE_ID_rcu_resched_nstype338 = internal constant [34 x i8] c"tree.parmtype=rcu_resched_ns:long\00", section ".modinfo", align 1
@__param_str_jiffies_till_sched_qs = internal constant [30 x i8] c"rcutree.jiffies_till_sched_qs\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@jiffies_till_sched_qs = internal global i32 -1, align 4
@__param_jiffies_till_sched_qs = internal constant %struct.kernel_param { ptr @__param_str_jiffies_till_sched_qs, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @jiffies_till_sched_qs } }, section "__param", align 4
@__UNIQUE_ID_jiffies_till_sched_qstype339 = internal constant [42 x i8] c"tree.parmtype=jiffies_till_sched_qs:ulong\00", section ".modinfo", align 1
@__param_str_jiffies_to_sched_qs = internal constant [28 x i8] c"rcutree.jiffies_to_sched_qs\00", align 1
@jiffies_to_sched_qs = internal global i32 0, align 4
@__param_jiffies_to_sched_qs = internal constant %struct.kernel_param { ptr @__param_str_jiffies_to_sched_qs, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @jiffies_to_sched_qs } }, section "__param", align 4
@__UNIQUE_ID_jiffies_to_sched_qstype340 = internal constant [40 x i8] c"tree.parmtype=jiffies_to_sched_qs:ulong\00", section ".modinfo", align 1
@__param_str_jiffies_till_first_fqs = internal constant [31 x i8] c"rcutree.jiffies_till_first_fqs\00", align 1
@first_fqs_jiffies_ops = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_first_fqs_jiffies, ptr @param_get_ulong, ptr null }, align 4
@jiffies_till_first_fqs = internal global i32 -1, align 4
@__param_jiffies_till_first_fqs = internal constant %struct.kernel_param { ptr @__param_str_jiffies_till_first_fqs, ptr null, ptr @first_fqs_jiffies_ops, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @jiffies_till_first_fqs } }, section "__param", align 4
@__param_str_jiffies_till_next_fqs = internal constant [30 x i8] c"rcutree.jiffies_till_next_fqs\00", align 1
@next_fqs_jiffies_ops = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_next_fqs_jiffies, ptr @param_get_ulong, ptr null }, align 4
@jiffies_till_next_fqs = internal global i32 -1, align 4
@__param_jiffies_till_next_fqs = internal constant %struct.kernel_param { ptr @__param_str_jiffies_till_next_fqs, ptr null, ptr @next_fqs_jiffies_ops, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @jiffies_till_next_fqs } }, section "__param", align 4
@__param_str_rcu_kick_kthreads = internal constant [26 x i8] c"rcutree.rcu_kick_kthreads\00", align 1
@rcu_kick_kthreads = internal global i8 0, align 1
@__param_rcu_kick_kthreads = internal constant %struct.kernel_param { ptr @__param_str_rcu_kick_kthreads, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @rcu_kick_kthreads } }, section "__param", align 4
@__UNIQUE_ID_rcu_kick_kthreadstype347 = internal constant [37 x i8] c"tree.parmtype=rcu_kick_kthreads:bool\00", section ".modinfo", align 1
@rcu_state = internal global %struct.rcu_state { [1 x %struct.rcu_node] zeroinitializer, [2 x ptr] [ptr @rcu_state, ptr null], i32 0, i32 0, [48 x i8] undef, i8 0, i32 -1200, i32 0, ptr null, %struct.swait_queue_head zeroinitializer, i16 0, i16 0, i32 0, i32 0, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rcu_state, i64 436), ptr getelementptr (i8, ptr @rcu_state, i64 436) } }, %struct.atomic_t zeroinitializer, %struct.completion zeroinitializer, i32 0, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rcu_state, i64 480), ptr getelementptr (i8, ptr @rcu_state, i64 480) } }, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rcu_state, i64 500), ptr getelementptr (i8, ptr @rcu_state, i64 500) } }, i32 0, %struct.atomic_t zeroinitializer, %struct.swait_queue_head zeroinitializer, i32 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @rcu_name, i8 115, [59 x i8] undef, %struct.raw_spinlock zeroinitializer, [60 x i8] undef }, align 64
@__kstrtab_rcu_get_gp_seq = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_get_gp_seq = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_get_gp_seq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_get_gp_seq to i32), ptr @__kstrtab_rcu_get_gp_seq, ptr @__kstrtabns_rcu_get_gp_seq }, section "___ksymtab_gpl+rcu_get_gp_seq", align 4
@__kstrtab_rcu_exp_batches_completed = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_exp_batches_completed = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_exp_batches_completed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_exp_batches_completed to i32), ptr @__kstrtab_rcu_exp_batches_completed, ptr @__kstrtabns_rcu_exp_batches_completed }, section "___ksymtab_gpl+rcu_exp_batches_completed", align 4
@__kstrtab_rcutorture_get_gp_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcutorture_get_gp_data = external dso_local constant [0 x i8], align 1
@__ksymtab_rcutorture_get_gp_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcutorture_get_gp_data to i32), ptr @__kstrtab_rcutorture_get_gp_data, ptr @__kstrtabns_rcutorture_get_gp_data }, section "___ksymtab_gpl+rcutorture_get_gp_data", align 4
@__kstrtab_rcu_idle_enter = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_idle_enter = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_idle_enter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_idle_enter to i32), ptr @__kstrtab_rcu_idle_enter, ptr @__kstrtabns_rcu_idle_enter }, section "___ksymtab_gpl+rcu_idle_enter", align 4
@rcu_nmi_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_nmi_exit.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_nmi_exit.___tp_str = internal global ptr @.str.2, section "__tracepoint_str", align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"--=\00", align 1
@rcu_nmi_exit.___tp_str.3 = internal global ptr @.str.4, section "__tracepoint_str", align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Startirq\00", align 1
@__kstrtab_rcu_idle_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_idle_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_idle_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_idle_exit to i32), ptr @__kstrtab_rcu_idle_exit, ptr @__kstrtabns_rcu_idle_exit }, section "___ksymtab_gpl+rcu_idle_exit", align 4
@rcu_nmi_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_nmi_enter.___tp_str = internal global ptr @.str.5, section "__tracepoint_str", align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Endirq\00", align 1
@rcu_nmi_enter.___tp_str.6 = internal global ptr @.str.7, section "__tracepoint_str", align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"++=\00", align 1
@__kstrtab_rcu_is_watching = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_is_watching = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_is_watching = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_is_watching to i32), ptr @__kstrtab_rcu_is_watching, ptr @__kstrtabns_rcu_is_watching }, section "___ksymtab_gpl+rcu_is_watching", align 4
@__kstrtab_rcu_gp_set_torture_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_gp_set_torture_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_gp_set_torture_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_gp_set_torture_wait to i32), ptr @__kstrtab_rcu_gp_set_torture_wait, ptr @__kstrtabns_rcu_gp_set_torture_wait }, section "___ksymtab_gpl+rcu_gp_set_torture_wait", align 4
@rcutree_dying_cpu.___tp_str = internal global ptr @.str.8, section "__tracepoint_str", align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"cpuofl-bgp\00", align 1
@rcutree_dying_cpu.___tp_str.9 = internal global ptr @.str.10, section "__tracepoint_str", align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"cpuofl\00", align 1
@rcu_sched_clock_irq.___tp_str = internal global ptr @.str.11, section "__tracepoint_str", align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"Start scheduler-tick\00", align 1
@rcu_sched_clock_irq.___tp_str.13 = internal global ptr @.str.14, section "__tracepoint_str", align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"End scheduler-tick\00", align 1
@__kstrtab_rcu_force_quiescent_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_force_quiescent_state = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_force_quiescent_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_force_quiescent_state to i32), ptr @__kstrtab_rcu_force_quiescent_state, ptr @__kstrtabns_rcu_force_quiescent_state }, section "___ksymtab_gpl+rcu_force_quiescent_state", align 4
@__kstrtab_call_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_call_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_rcu to i32), ptr @__kstrtab_call_rcu, ptr @__kstrtabns_call_rcu }, section "___ksymtab_gpl+call_rcu", align 4
@__kstrtab_kvfree_call_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvfree_call_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_kvfree_call_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvfree_call_rcu to i32), ptr @__kstrtab_kvfree_call_rcu, ptr @__kstrtabns_kvfree_call_rcu }, section "___ksymtab_gpl+kvfree_call_rcu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@krc = internal global %struct.kfree_rcu_cpu zeroinitializer, section ".data..percpu", align 8
@__kstrtab_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_rcu to i32), ptr @__kstrtab_synchronize_rcu, ptr @__kstrtabns_synchronize_rcu }, section "___ksymtab_gpl+synchronize_rcu", align 4
@__kstrtab_get_state_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_state_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_get_state_synchronize_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_state_synchronize_rcu to i32), ptr @__kstrtab_get_state_synchronize_rcu, ptr @__kstrtabns_get_state_synchronize_rcu }, section "___ksymtab_gpl+get_state_synchronize_rcu", align 4
@__kstrtab_start_poll_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_start_poll_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_start_poll_synchronize_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @start_poll_synchronize_rcu to i32), ptr @__kstrtab_start_poll_synchronize_rcu, ptr @__kstrtabns_start_poll_synchronize_rcu }, section "___ksymtab_gpl+start_poll_synchronize_rcu", align 4
@__kstrtab_poll_state_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_poll_state_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_poll_state_synchronize_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poll_state_synchronize_rcu to i32), ptr @__kstrtab_poll_state_synchronize_rcu, ptr @__kstrtabns_poll_state_synchronize_rcu }, section "___ksymtab_gpl+poll_state_synchronize_rcu", align 4
@__kstrtab_cond_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_cond_synchronize_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_cond_synchronize_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cond_synchronize_rcu to i32), ptr @__kstrtab_cond_synchronize_rcu, ptr @__kstrtabns_cond_synchronize_rcu }, section "___ksymtab_gpl+cond_synchronize_rcu", align 4
@rcu_barrier.___tp_str = internal global ptr @.str.17, section "__tracepoint_str", align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"Begin\00", align 1
@rcu_barrier.___tp_str.18 = internal global ptr @.str.19, section "__tracepoint_str", align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"EarlyExit\00", align 1
@rcu_barrier.___tp_str.20 = internal global ptr @.str.21, section "__tracepoint_str", align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"Inc1\00", align 1
@rcu_barrier.___tp_str.22 = internal global ptr @.str.23, section "__tracepoint_str", align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"OnlineQ\00", align 1
@rcu_barrier.___tp_str.24 = internal global ptr @.str.25, section "__tracepoint_str", align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"OfflineNoCBQ\00", align 1
@rcu_barrier.___tp_str.26 = internal global ptr @.str.27, section "__tracepoint_str", align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"OfflineNoCBNoQ\00", align 1
@rcu_barrier.___tp_str.28 = internal global ptr @.str.29, section "__tracepoint_str", align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"OnlineNQ\00", align 1
@rcu_barrier.___tp_str.30 = internal global ptr @.str.31, section "__tracepoint_str", align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"Inc2\00", align 1
@__kstrtab_rcu_barrier = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_barrier = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_barrier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_barrier to i32), ptr @__kstrtab_rcu_barrier, ptr @__kstrtabns_rcu_barrier }, section "___ksymtab_gpl+rcu_barrier", align 4
@rcutree_prepare_cpu.___tp_str = internal global ptr @.str.32, section "__tracepoint_str", align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"cpuonl\00", align 1
@rcu_cpu_starting.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_cpu_starting.__already_done.33 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_cpu_starting.__already_done.34 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_report_dead.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_report_dead.__already_done.35 = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@rcutree_migrate_callbacks.__already_done.36 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcutree_migrate_callbacks.__already_done.37 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = private unnamed_addr constant [71 x i8] c"rcu_cleanup_dead_cpu: Callbacks on offline CPU %d: qlen=%lu, 1stCB=%p\0A\00", align 1
@__initcall__kmod_tree__484_4484_rcu_spawn_gp_kthreadearly = internal global ptr @rcu_spawn_gp_kthread, section ".initcallearly.init", align 4
@rcu_init_geometry.old_nr_cpu_ids = internal unnamed_addr global i32 0, align 4
@rcu_init_geometry.initialized = internal unnamed_addr global i1 false, align 1
@rcu_init_geometry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = private unnamed_addr constant [65 x i8] c"\016rcu: Adjusting geometry for rcu_fanout_leaf=%d, nr_cpu_ids=%u\0A\00", align 1
@rcu_init.rcu_pm_notify_nb = internal global %struct.notifier_block { ptr @rcu_pm_notify, ptr null, i32 0 }, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"rcu_gp\00", align 1
@rcu_gp_wq = dso_local local_unnamed_addr global ptr null, align 4
@.str.41 = private unnamed_addr constant [11 x i8] c"rcu_par_gp\00", align 1
@rcu_par_gp_wq = dso_local global ptr null, align 4
@qovld_calc = internal unnamed_addr global i32 -1, align 4
@rcu_cpu_stall_timeout = external dso_local global i32, align 4
@__kstrtab_rcu_jiffies_till_stall_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_jiffies_till_stall_check = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_jiffies_till_stall_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_jiffies_till_stall_check to i32), ptr @__kstrtab_rcu_jiffies_till_stall_check, ptr @__kstrtabns_rcu_jiffies_till_stall_check }, section "___ksymtab_gpl+rcu_jiffies_till_stall_check", align 4
@rcu_cpu_stall_suppress = external dso_local local_unnamed_addr global i32, align 4
@__initcall__kmod_tree__494_107_check_cpu_stall_initearly = internal global ptr @check_cpu_stall_init, section ".initcallearly.init", align 4
@rcu_check_boost_fail.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"kernel/rcu/tree_stall.h\00", align 1
@__kstrtab_rcu_check_boost_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_check_boost_fail = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_check_boost_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_check_boost_fail to i32), ptr @__kstrtab_rcu_check_boost_fail, ptr @__kstrtabns_rcu_check_boost_fail }, section "___ksymtab_gpl+rcu_check_boost_fail", align 4
@.str.43 = private unnamed_addr constant [220 x i8] c"\016rcu: %s: wait state: %s(%d) ->state: %#x ->rt_priority %u delta ->gp_start %lu ->gp_activity %lu ->gp_req_activity %lu ->gp_wake_time %lu ->gp_wake_seq %ld ->gp_seq %ld ->gp_seq_needed %ld ->gp_max %lu ->gp_flags %#x\0A\00", align 1
@.str.44 = private unnamed_addr constant [95 x i8] c"\016rcu: \09rcu_node %d:%d ->gp_seq %ld ->gp_seq_needed %ld ->qsmask %#lx %c%c%c%c ->n_boosts %ld\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c".b\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c".B\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c".E\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c".G\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"\016rcu: \09cpu %d ->gp_seq_needed %ld\0A\00", align 1
@.str.50 = private unnamed_addr constant [46 x i8] c"\016rcu: RCU callbacks invoked since boot: %lu\0A\00", align 1
@__kstrtab_show_rcu_gp_kthreads = external dso_local constant [0 x i8], align 1
@__kstrtabns_show_rcu_gp_kthreads = external dso_local constant [0 x i8], align 1
@__ksymtab_show_rcu_gp_kthreads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @show_rcu_gp_kthreads to i32), ptr @__kstrtab_show_rcu_gp_kthreads, ptr @__kstrtabns_show_rcu_gp_kthreads }, section "___ksymtab_gpl+show_rcu_gp_kthreads", align 4
@.str.51 = private unnamed_addr constant [31 x i8] c"\016rcu: %s: GP age %lu jiffies\0A\00", align 1
@__func__.rcu_fwd_progress_check = private unnamed_addr constant [23 x i8] c"rcu_fwd_progress_check\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"\016rcu: %s: Last GP end %lu jiffies ago\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"\016rcu: %s: callbacks\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"\01c %d: %lu\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@__kstrtab_rcu_fwd_progress_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_fwd_progress_check = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_fwd_progress_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_fwd_progress_check to i32), ptr @__kstrtab_rcu_fwd_progress_check, ptr @__kstrtabns_rcu_fwd_progress_check }, section "___ksymtab_gpl+rcu_fwd_progress_check", align 4
@__param_str_sysrq_rcu = internal constant [18 x i8] c"rcutree.sysrq_rcu\00", align 1
@sysrq_rcu = internal global i8 0, align 1
@__param_sysrq_rcu = internal constant %struct.kernel_param { ptr @__param_str_sysrq_rcu, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @sysrq_rcu } }, section "__param", align 4
@__UNIQUE_ID_sysrq_rcutype581 = internal constant [29 x i8] c"tree.parmtype=sysrq_rcu:bool\00", section ".modinfo", align 1
@__initcall__kmod_tree__582_970_rcu_sysrq_initearly = internal global ptr @rcu_sysrq_init, section ".initcallearly.init", align 4
@__kstrtab_synchronize_rcu_expedited = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_rcu_expedited = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_rcu_expedited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_rcu_expedited to i32), ptr @__kstrtab_synchronize_rcu_expedited, ptr @__kstrtabns_synchronize_rcu_expedited }, section "___ksymtab_gpl+synchronize_rcu_expedited", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_rcu_read_unlock_strict = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_read_unlock_strict = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_read_unlock_strict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_read_unlock_strict to i32), ptr @__kstrtab_rcu_read_unlock_strict, ptr @__kstrtabns_rcu_read_unlock_strict }, section "___ksymtab_gpl+rcu_read_unlock_strict", align 4
@__kstrtab_rcu_all_qs = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_all_qs = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_all_qs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_all_qs to i32), ptr @__kstrtab_rcu_all_qs, ptr @__kstrtabns_rcu_all_qs }, section "___ksymtab_gpl+rcu_all_qs", align 4
@rcu_note_context_switch.___tp_str = internal global ptr @.str.56, section "__tracepoint_str", align 4
@.str.56 = private unnamed_addr constant [21 x i8] c"Start context switch\00", align 1
@rcu_note_context_switch.___tp_str.57 = internal global ptr @.str.58, section "__tracepoint_str", align 4
@.str.58 = private unnamed_addr constant [19 x i8] c"End context switch\00", align 1
@__kstrtab_rcu_note_context_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcu_note_context_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_rcu_note_context_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcu_note_context_switch to i32), ptr @__kstrtab_rcu_note_context_switch, ptr @__kstrtabns_rcu_note_context_switch }, section "___ksymtab_gpl+rcu_note_context_switch", align 4
@sysctl_panic_on_rcu_stall = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sysctl_max_rcu_stall_to_panic = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@rcu_eqs_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_eqs_enter.___tp_str = internal global ptr @.str.60, section "__tracepoint_str", align 4
@.str.60 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@__tracepoint_rcu_dyntick = external dso_local global %struct.tracepoint, align 4
@rcu_eqs_exit.___tp_str = internal global ptr @.str.63, section "__tracepoint_str", align 4
@.str.63 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@rcu_eqs_exit.__already_done.65 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rcu_grace_period = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rcu_utilization = external dso_local global %struct.tracepoint, align 4
@rcu_is_cpu_rrupt_from_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__call_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__call_rcu.__already_done.67 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__call_rcu.__already_done.68 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__call_rcu.___tp_str = internal global ptr @.str.69, section "__tracepoint_str", align 4
@.str.69 = private unnamed_addr constant [12 x i8] c"SegCBQueued\00", align 1
@__tracepoint_rcu_kvfree_callback = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rcu_callback = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rcu_segcb_stats = external dso_local global %struct.tracepoint, align 4
@__note_gp_changes.___tp_str = internal global ptr @.str.70, section "__tracepoint_str", align 4
@.str.70 = private unnamed_addr constant [7 x i8] c"cpuend\00", align 1
@__note_gp_changes.___tp_str.71 = internal global ptr @.str.72, section "__tracepoint_str", align 4
@.str.72 = private unnamed_addr constant [9 x i8] c"cpustart\00", align 1
@rcu_accelerate_cbs.___tp_str = internal global ptr @.str.73, section "__tracepoint_str", align 4
@.str.73 = private unnamed_addr constant [12 x i8] c"SegCbPreAcc\00", align 1
@rcu_accelerate_cbs.___tp_str.74 = internal global ptr @.str.75, section "__tracepoint_str", align 4
@.str.75 = private unnamed_addr constant [10 x i8] c"AccWaitCB\00", align 1
@rcu_accelerate_cbs.___tp_str.76 = internal global ptr @.str.77, section "__tracepoint_str", align 4
@.str.77 = private unnamed_addr constant [11 x i8] c"AccReadyCB\00", align 1
@rcu_accelerate_cbs.___tp_str.78 = internal global ptr @.str.79, section "__tracepoint_str", align 4
@.str.79 = private unnamed_addr constant [13 x i8] c"SegCbPostAcc\00", align 1
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_start_this_gp.___tp_str = internal global ptr @.str.80, section "__tracepoint_str", align 4
@.str.80 = private unnamed_addr constant [10 x i8] c"Startleaf\00", align 1
@rcu_start_this_gp.___tp_str.81 = internal global ptr @.str.82, section "__tracepoint_str", align 4
@.str.82 = private unnamed_addr constant [11 x i8] c"Prestarted\00", align 1
@rcu_start_this_gp.___tp_str.83 = internal global ptr @.str.84, section "__tracepoint_str", align 4
@.str.84 = private unnamed_addr constant [12 x i8] c"Startedleaf\00", align 1
@rcu_start_this_gp.___tp_str.85 = internal global ptr @.str.86, section "__tracepoint_str", align 4
@.str.86 = private unnamed_addr constant [16 x i8] c"Startedleafroot\00", align 1
@rcu_start_this_gp.___tp_str.87 = internal global ptr @.str.88, section "__tracepoint_str", align 4
@.str.88 = private unnamed_addr constant [12 x i8] c"Startedroot\00", align 1
@rcu_start_this_gp.___tp_str.89 = internal global ptr @.str.90, section "__tracepoint_str", align 4
@.str.90 = private unnamed_addr constant [12 x i8] c"NoGPkthread\00", align 1
@rcu_start_this_gp.___tp_str.91 = internal global ptr @.str.92, section "__tracepoint_str", align 4
@.str.92 = private unnamed_addr constant [7 x i8] c"newreq\00", align 1
@__tracepoint_rcu_future_grace_period = external dso_local global %struct.tracepoint, align 4
@rcu_cpu_stall_ftrace_dump = external dso_local global i32, align 4
@check_cpu_stall.___rfd_beenhere = internal global %struct.atomic_t zeroinitializer, align 4
@check_cpu_stall.___rfd_beenhere.93 = internal global %struct.atomic_t zeroinitializer, align 4
@rcu_cpu_stall_suppress_at_boot = external dso_local local_unnamed_addr global i32, align 4
@rcu_stall_kick_kthreads.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.94 = private unnamed_addr constant [33 x i8] c"Kicking %s grace-period kthread\0A\00", align 1
@rcu_stall_kick_kthreads.___rfd_beenhere = internal global %struct.atomic_t zeroinitializer, align 4
@print_cpu_stall.___tp_str = internal global ptr @.str.95, section "__tracepoint_str", align 4
@.str.95 = private unnamed_addr constant [13 x i8] c"SelfDetected\00", align 1
@.str.96 = private unnamed_addr constant [44 x i8] c"\013rcu: INFO: %s self-detected stall on CPU\0A\00", align 1
@.str.97 = private unnamed_addr constant [32 x i8] c"\01c\09(t=%lu jiffies g=%ld q=%lu)\0A\00", align 1
@__tracepoint_rcu_stall_warning = external dso_local global %struct.tracepoint, align 4
@.str.98 = private unnamed_addr constant [11 x i8] c"GPs behind\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"ticks this GP\00", align 1
@.str.100 = private unnamed_addr constant [75 x i8] c"\013rcu: \09%d-%c%c%c%c: (%lu %s) idle=%03x/%ld/%#lx softirq=%u/%u fqs=%ld %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"O.\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"o.\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"N.\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"!.\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c" (false positive?)\00", align 1
@.str.106 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.107 = private unnamed_addr constant [92 x i8] c"\013rcu: %s kthread timer wakeup didn't happen for %ld jiffies! g%ld f%#x %s(%d) ->state=%#x\0A\00", align 1
@.str.108 = private unnamed_addr constant [66 x i8] c"\013rcu: \09Possible timer handling issue on cpu=%d timer-softirq=%u\0A\00", align 1
@.str.109 = private unnamed_addr constant [82 x i8] c"\013rcu: %s kthread starved for %ld jiffies! g%ld f%#x %s(%d) ->state=%#x ->cpu=%d\0A\00", align 1
@.str.110 = private unnamed_addr constant [83 x i8] c"\013rcu: \09Unless %s kthread gets sufficient CPU time, OOM is now expected behavior.\0A\00", align 1
@.str.111 = private unnamed_addr constant [45 x i8] c"\013rcu: RCU grace-period kthread stack dump:\0A\00", align 1
@.str.112 = private unnamed_addr constant [51 x i8] c"\013rcu: RCU GP kthread last ran on offline CPU %d.\0A\00", align 1
@.str.113 = private unnamed_addr constant [50 x i8] c"\013rcu: Stack dump where RCU GP kthread last ran:\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@rcu_dump_cpu_stacks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.114 = private unnamed_addr constant [44 x i8] c"\013rcu: Offline CPU %d blocking current GP.\0A\00", align 1
@panic_on_rcu_stall.cpu_stall = internal unnamed_addr global i32 0, align 4
@.str.115 = private unnamed_addr constant [11 x i8] c"RCU Stall\0A\00", align 1
@print_other_cpu_stall.___tp_str = internal global ptr @.str.116, section "__tracepoint_str", align 4
@.str.116 = private unnamed_addr constant [14 x i8] c"StallDetected\00", align 1
@.str.117 = private unnamed_addr constant [48 x i8] c"\013rcu: INFO: %s detected stalls on CPUs/tasks:\0A\00", align 1
@print_other_cpu_stall.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.118 = private unnamed_addr constant [50 x i8] c"\01c\09(detected by %d, t=%ld jiffies, g=%ld, q=%lu)\0A\00", align 1
@.str.119 = private unnamed_addr constant [50 x i8] c"\013rcu: INFO: Stall ended before state dump start\0A\00", align 1
@.str.120 = private unnamed_addr constant [109 x i8] c"\013rcu: All QSes seen, last %s kthread activity %ld (%ld-%ld), jiffies_till_next_fqs=%ld, root ->qsmask %#lx\0A\00", align 1
@__tracepoint_rcu_barrier = external dso_local global %struct.tracepoint, align 4
@rcu_seq_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"kernel/rcu/rcu.h\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@rcu_barrier_func.___tp_str = internal global ptr @.str.123, section "__tracepoint_str", align 4
@.str.123 = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1
@rcu_barrier_func.___tp_str.124 = internal global ptr @.str.125, section "__tracepoint_str", align 4
@.str.125 = private unnamed_addr constant [6 x i8] c"IRQNQ\00", align 1
@rcu_barrier_callback.___tp_str = internal global ptr @.str.126, section "__tracepoint_str", align 4
@.str.126 = private unnamed_addr constant [7 x i8] c"LastCB\00", align 1
@rcu_barrier_callback.___tp_str.127 = internal global ptr @.str.128, section "__tracepoint_str", align 4
@.str.128 = private unnamed_addr constant [3 x i8] c"CB\00", align 1
@rcu_seq_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_report_qs_rnp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rcu_quiescent_state_report = external dso_local global %struct.tracepoint, align 4
@rcu_report_qs_rsp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.130 = private unnamed_addr constant [59 x i8] c"\011rcu: rcu_spawn_gp_kthread(): Limited prio to %d from %d\0A\00", align 1
@rcu_scheduler_fully_active = internal global i32 0, section ".data..read_mostly", align 4
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rcu_spawn_gp_kthread.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.132 = private unnamed_addr constant [72 x i8] c"%s: Could not start grace-period kthread, OOM is now expected behavior\0A\00", align 1
@__func__.rcu_spawn_gp_kthread = private unnamed_addr constant [21 x i8] c"rcu_spawn_gp_kthread\00", align 1
@rcu_gp_kthread.___tp_str = internal global ptr @.str.133, section "__tracepoint_str", align 4
@.str.133 = private unnamed_addr constant [8 x i8] c"reqwait\00", align 1
@rcu_gp_kthread.___tp_str.134 = internal global ptr @.str.135, section "__tracepoint_str", align 4
@.str.135 = private unnamed_addr constant [11 x i8] c"reqwaitsig\00", align 1
@rcu_gp_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_gp_init.___tp_str = internal global ptr @.str.136, section "__tracepoint_str", align 4
@.str.136 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@rcu_cleanup_dead_rnp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_cleanup_dead_rnp.__already_done.138 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_preempt_check_blocked_tasks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.139 = private unnamed_addr constant [25 x i8] c"kernel/rcu/tree_plugin.h\00", align 1
@__tracepoint_rcu_grace_period_init = external dso_local global %struct.tracepoint, align 4
@rcu_gp_fqs_loop.___tp_str = internal global ptr @.str.140, section "__tracepoint_str", align 4
@.str.140 = private unnamed_addr constant [8 x i8] c"fqswait\00", align 1
@rcu_gp_fqs_loop.___tp_str.141 = internal global ptr @.str.142, section "__tracepoint_str", align 4
@.str.142 = private unnamed_addr constant [9 x i8] c"fqsstart\00", align 1
@rcu_gp_fqs_loop.___tp_str.143 = internal global ptr @.str.144, section "__tracepoint_str", align 4
@.str.144 = private unnamed_addr constant [7 x i8] c"fqsend\00", align 1
@rcu_gp_fqs_loop.___tp_str.145 = internal global ptr @.str.146, section "__tracepoint_str", align 4
@.str.146 = private unnamed_addr constant [11 x i8] c"fqswaitsig\00", align 1
@force_qs_rnp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dyntick_save_progress_counter.___tp_str = internal global ptr @.str.147, section "__tracepoint_str", align 4
@.str.147 = private unnamed_addr constant [4 x i8] c"dti\00", align 1
@__tracepoint_rcu_fqs = external dso_local global %struct.tracepoint, align 4
@rcu_implicit_dynticks_qs.___tp_str = internal global ptr @.str.147, section "__tracepoint_str", align 4
@rcu_implicit_dynticks_qs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.148 = private unnamed_addr constant [64 x i8] c"\016rcu: %s: grp: %d-%d level: %d ->gp_seq %ld ->completedqs %ld\0A\00", align 1
@__func__.rcu_implicit_dynticks_qs = private unnamed_addr constant [25 x i8] c"rcu_implicit_dynticks_qs\00", align 1
@.str.149 = private unnamed_addr constant [96 x i8] c"\016rcu: %s: %d:%d ->qsmask %#lx ->qsmaskinit %#lx ->qsmaskinitnext %#lx ->rcu_gp_init_mask %#lx\0A\00", align 1
@.str.150 = private unnamed_addr constant [51 x i8] c"\016rcu: %s %d: %c online: %ld(%d) offline: %ld(%d)\0A\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c".o\00", align 1
@rcu_gp_cleanup.__already_done.152 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_gp_cleanup.___tp_str = internal global ptr @.str.154, section "__tracepoint_str", align 4
@.str.154 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@rcu_gp_cleanup.___tp_str.155 = internal global ptr @.str.156, section "__tracepoint_str", align 4
@.str.156 = private unnamed_addr constant [12 x i8] c"CleanupMore\00", align 1
@rcu_gp_cleanup.___tp_str.157 = internal global ptr @.str.92, section "__tracepoint_str", align 4
@rcu_future_gp_cleanup.___tp_str = internal global ptr @.str.156, section "__tracepoint_str", align 4
@rcu_future_gp_cleanup.___tp_str.158 = internal global ptr @.str.159, section "__tracepoint_str", align 4
@.str.159 = private unnamed_addr constant [8 x i8] c"Cleanup\00", align 1
@rcu_spawn_core_kthreads.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_cpu_thread_spec = internal global %struct.smp_hotplug_thread { ptr getelementptr (i8, ptr @rcu_data, i64 172), %struct.list_head zeroinitializer, ptr @rcu_cpu_kthread_should_run, ptr @rcu_cpu_kthread, ptr null, ptr @rcu_cpu_kthread_setup, ptr null, ptr @rcu_cpu_kthread_park, ptr null, i8 0, ptr @.str.161 }, align 4
@.str.160 = private unnamed_addr constant [64 x i8] c"%s: Could not start rcuc kthread, OOM is now expected behavior\0A\00", align 1
@__func__.rcu_spawn_core_kthreads = private unnamed_addr constant [24 x i8] c"rcu_spawn_core_kthreads\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"rcuc/%u\00", align 1
@rcu_cpu_kthread.___tp_str = internal global ptr @.str.162, section "__tracepoint_str", align 4
@.str.162 = private unnamed_addr constant [26 x i8] c"Start CPU kthread@rcu_run\00", align 1
@rcu_cpu_kthread.___tp_str.163 = internal global ptr @.str.164, section "__tracepoint_str", align 4
@.str.164 = private unnamed_addr constant [25 x i8] c"End CPU kthread@rcu_wait\00", align 1
@rcu_cpu_kthread.___tp_str.165 = internal global ptr @.str.166, section "__tracepoint_str", align 4
@.str.166 = private unnamed_addr constant [28 x i8] c"Start CPU kthread@rcu_yield\00", align 1
@rcu_cpu_kthread.___tp_str.167 = internal global ptr @.str.168, section "__tracepoint_str", align 4
@.str.168 = private unnamed_addr constant [26 x i8] c"End CPU kthread@rcu_yield\00", align 1
@rcu_core.___tp_str = internal global ptr @.str.169, section "__tracepoint_str", align 4
@.str.169 = private unnamed_addr constant [15 x i8] c"Start RCU core\00", align 1
@rcu_core.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_core.___tp_str.170 = internal global ptr @.str.171, section "__tracepoint_str", align 4
@.str.171 = private unnamed_addr constant [13 x i8] c"End RCU core\00", align 1
@rcu_do_batch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_do_batch.___tp_str = internal global ptr @.str.172, section "__tracepoint_str", align 4
@.str.172 = private unnamed_addr constant [14 x i8] c"SegCbDequeued\00", align 1
@rcu_do_batch.__already_done.173 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_do_batch.__already_done.174 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_do_batch.__already_done.175 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_do_batch.__already_done.176 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rcu_batch_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rcu_batch_end = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rcu_invoke_callback = external dso_local global %struct.tracepoint, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.177 = private unnamed_addr constant [75 x i8] c"\016rcu: RCU calculated value of scheduler-enlistment delay is %ld jiffies.\0A\00", align 1
@.str.178 = private unnamed_addr constant [67 x i8] c"\016rcu: Adjusting rcutree.rcu_delay_page_cache_fill_msec to %d ms.\0A\00", align 1
@kfree_rcu_shrinker = internal global %struct.shrinker { ptr @kfree_rcu_shrink_count, ptr @kfree_rcu_shrink_scan, i32 0, i32 2, i32 0, %struct.list_head zeroinitializer, ptr null }, align 4
@.str.179 = private unnamed_addr constant [49 x i8] c"\013rcu: Failed to register kfree_rcu() shrinker!\0A\00", align 1
@kfree_rcu_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rcu_invoke_kfree_bulk_callback = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rcu_invoke_kvfree_callback = external dso_local global %struct.tracepoint, align 4
@.str.182 = private unnamed_addr constant [40 x i8] c"rcu_init_one: rcu_num_lvls out of range\00", align 1
@rcu_init_one.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"&rnp->exp_wq[0]\00", align 1
@rcu_init_one.__key.184 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"&rnp->exp_wq[1]\00", align 1
@rcu_init_one.__key.186 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"&rnp->exp_wq[2]\00", align 1
@rcu_init_one.__key.188 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.189 = private unnamed_addr constant [16 x i8] c"&rnp->exp_wq[3]\00", align 1
@rcu_init_one.__key.190 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"&rcu_state.gp_wq\00", align 1
@rcu_init_one.__key.192 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.193 = private unnamed_addr constant [24 x i8] c"&rcu_state.expedited_wq\00", align 1
@rcu_boot_init_percpu_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_boot_init_percpu_data.__already_done.194 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.195 = private unnamed_addr constant [34 x i8] c"\016rcu: rcu_node tree layout dump\0A\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"\016rcu:  \00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"\01c%d:%d ^%d  \00", align 1
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@rcu_panic_block = internal global %struct.notifier_block { ptr @rcu_panic, ptr null, i32 0 }, align 4
@rcu_iw_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.198 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@gp_state_names = internal unnamed_addr constant [9 x ptr] [ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207], align 4
@.str.199 = private unnamed_addr constant [12 x i8] c"RCU_GP_IDLE\00", align 1
@.str.200 = private unnamed_addr constant [16 x i8] c"RCU_GP_WAIT_GPS\00", align 1
@.str.201 = private unnamed_addr constant [16 x i8] c"RCU_GP_DONE_GPS\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"RCU_GP_ONOFF\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"RCU_GP_INIT\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"RCU_GP_WAIT_FQS\00", align 1
@.str.205 = private unnamed_addr constant [17 x i8] c"RCU_GP_DOING_FQS\00", align 1
@.str.206 = private unnamed_addr constant [15 x i8] c"RCU_GP_CLEANUP\00", align 1
@.str.207 = private unnamed_addr constant [15 x i8] c"RCU_GP_CLEANED\00", align 1
@sysrq_rcudump_op = internal constant %struct.sysrq_key_op { ptr @sysrq_show_rcu, ptr @.str.208, ptr @.str.209, i32 8 }, align 4
@.str.208 = private unnamed_addr constant [12 x i8] c"show-rcu(y)\00", align 1
@.str.209 = private unnamed_addr constant [14 x i8] c"Show RCU tree\00", align 1
@rcu_report_exp_cpu_mult.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.210 = private unnamed_addr constant [22 x i8] c"kernel/rcu/tree_exp.h\00", align 1
@__rcu_report_exp_rnp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sync_sched_exp_online_cleanup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_exp_gp_seq_snap.___tp_str = internal global ptr @.str.211, section "__tracepoint_str", align 4
@.str.211 = private unnamed_addr constant [5 x i8] c"snap\00", align 1
@__tracepoint_rcu_exp_grace_period = external dso_local global %struct.tracepoint, align 4
@exp_funnel_lock.___tp_str = internal global ptr @.str.212, section "__tracepoint_str", align 4
@.str.212 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@exp_funnel_lock.___tp_str.213 = internal global ptr @.str.214, section "__tracepoint_str", align 4
@.str.214 = private unnamed_addr constant [7 x i8] c"nxtlvl\00", align 1
@exp_funnel_lock.___tp_str.215 = internal global ptr @.str.136, section "__tracepoint_str", align 4
@__tracepoint_rcu_exp_funnel_lock = external dso_local global %struct.tracepoint, align 4
@sync_rcu_exp_select_cpus.___tp_str = internal global ptr @.str.216, section "__tracepoint_str", align 4
@.str.216 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@sync_rcu_exp_select_cpus.___tp_str.217 = internal global ptr @.str.218, section "__tracepoint_str", align 4
@.str.218 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@sync_exp_reset_tree.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sync_rcu_exp_select_node_cpus.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sync_rcu_exp_select_node_cpus.__already_done.219 = internal unnamed_addr global i1 false, section ".data.once", align 1
@sync_rcu_exp_select_node_cpus.___tp_str = internal global ptr @.str.220, section "__tracepoint_str", align 4
@.str.220 = private unnamed_addr constant [10 x i8] c"selectofl\00", align 1
@rcu_exp_wait_wake.___tp_str = internal global ptr @.str.154, section "__tracepoint_str", align 4
@rcu_exp_wait_wake.___tp_str.221 = internal global ptr @.str.222, section "__tracepoint_str", align 4
@.str.222 = private unnamed_addr constant [8 x i8] c"endwake\00", align 1
@synchronize_rcu_expedited_wait.___tp_str = internal global ptr @.str.223, section "__tracepoint_str", align 4
@.str.223 = private unnamed_addr constant [10 x i8] c"startwait\00", align 1
@synchronize_rcu_expedited_wait.___tp_str.224 = internal global ptr @.str.225, section "__tracepoint_str", align 4
@.str.225 = private unnamed_addr constant [15 x i8] c"ExpeditedStall\00", align 1
@.str.226 = private unnamed_addr constant [59 x i8] c"\013rcu: INFO: %s detected expedited stalls on CPUs/tasks: {\00", align 1
@synchronize_rcu_expedited_wait.__already_done.227 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"\01c %d-%c%c%c\00", align 1
@.str.229 = private unnamed_addr constant [39 x i8] c"\01c } %lu jiffies s: %lu root: %#lx/%c\0A\00", align 1
@.str.230 = private unnamed_addr constant [3 x i8] c".T\00", align 1
@.str.231 = private unnamed_addr constant [58 x i8] c"\013rcu: blocking rcu_node structures (internal RCU debug):\00", align 1
@.str.232 = private unnamed_addr constant [22 x i8] c"\01c l=%u:%d-%d:%#lx/%c\00", align 1
@synchronize_rcu_expedited_wait.__already_done.233 = internal unnamed_addr global i1 false, section ".data.once", align 1
@sync_exp_work_done.___tp_str = internal global ptr @.str.234, section "__tracepoint_str", align 4
@.str.234 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@rcu_report_qs_rdp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.236 = private unnamed_addr constant [41 x i8] c"\016rcu: Hierarchical RCU implementation.\0A\00", align 1
@.str.237 = private unnamed_addr constant [39 x i8] c"\016rcu: \09RCU event tracing is enabled.\0A\00", align 1
@.str.238 = private unnamed_addr constant [53 x i8] c"\016rcu: \09Hierarchical RCU autobalancing is disabled.\0A\00", align 1
@.str.239 = private unnamed_addr constant [52 x i8] c"\016rcu: \09Boot-time adjustment of leaf fanout to %d.\0A\00", align 1
@.str.240 = private unnamed_addr constant [64 x i8] c"\016rcu: \09RCU restricting CPUs from NR_CPUS=%d to nr_cpu_ids=%u.\0A\00", align 1
@.str.241 = private unnamed_addr constant [67 x i8] c"\016rcu: \09Boot-time adjustment of callback invocation limit to %ld.\0A\00", align 1
@.str.242 = private unnamed_addr constant [66 x i8] c"\016rcu: \09Boot-time adjustment of callback high-water mark to %ld.\0A\00", align 1
@.str.243 = private unnamed_addr constant [65 x i8] c"\016rcu: \09Boot-time adjustment of callback low-water mark to %ld.\0A\00", align 1
@.str.244 = private unnamed_addr constant [65 x i8] c"\016rcu: \09Boot-time adjustment of callback overload level to %ld.\0A\00", align 1
@.str.245 = private unnamed_addr constant [70 x i8] c"\016rcu: \09Boot-time adjustment of first FQS scan delay to %ld jiffies.\0A\00", align 1
@.str.246 = private unnamed_addr constant [75 x i8] c"\016rcu: \09Boot-time adjustment of subsequent FQS scan delay to %ld jiffies.\0A\00", align 1
@.str.247 = private unnamed_addr constant [76 x i8] c"\016rcu: \09Boot-time adjustment of scheduler-enlistment delay to %ld jiffies.\0A\00", align 1
@.str.248 = private unnamed_addr constant [49 x i8] c"\016rcu: \09Kick kthreads if too-long grace period.\0A\00", align 1
@.str.249 = private unnamed_addr constant [52 x i8] c"\016rcu: \09RCU debug GP pre-init slowdown %d jiffies.\0A\00", align 1
@.str.250 = private unnamed_addr constant [48 x i8] c"\016rcu: \09RCU debug GP init slowdown %d jiffies.\0A\00", align 1
@.str.251 = private unnamed_addr constant [51 x i8] c"\016rcu: \09RCU debug GP cleanup slowdown %d jiffies.\0A\00", align 1
@.str.252 = private unnamed_addr constant [56 x i8] c"\016rcu: \09RCU_SOFTIRQ processing moved to rcuc kthreads.\0A\00", align 1
@rcu_qs.___tp_str = internal global ptr @.str.253, section "__tracepoint_str", align 4
@.str.253 = private unnamed_addr constant [10 x i8] c"rcu_sched\00", align 1
@rcu_qs.___tp_str.254 = internal global ptr @.str.255, section "__tracepoint_str", align 4
@.str.255 = private unnamed_addr constant [6 x i8] c"cpuqs\00", align 1
@llvm.compiler.used = appending global [149 x ptr] [ptr @__UNIQUE_ID_blimittype333, ptr @__UNIQUE_ID_dump_treetype320, ptr @__UNIQUE_ID_gp_cleanup_delaytype327, ptr @__UNIQUE_ID_gp_init_delaytype326, ptr @__UNIQUE_ID_gp_preinit_delaytype325, ptr @__UNIQUE_ID_jiffies_till_sched_qstype339, ptr @__UNIQUE_ID_jiffies_to_sched_qstype340, ptr @__UNIQUE_ID_kthread_priotype324, ptr @__UNIQUE_ID_qhimarktype334, ptr @__UNIQUE_ID_qlowmarktype335, ptr @__UNIQUE_ID_qovldtype336, ptr @__UNIQUE_ID_rcu_delay_page_cache_fill_msectype329, ptr @__UNIQUE_ID_rcu_divisortype337, ptr @__UNIQUE_ID_rcu_fanout_exacttype322, ptr @__UNIQUE_ID_rcu_fanout_leaftype323, ptr @__UNIQUE_ID_rcu_kick_kthreadstype347, ptr @__UNIQUE_ID_rcu_min_cached_objstype328, ptr @__UNIQUE_ID_rcu_resched_nstype338, ptr @__UNIQUE_ID_sysrq_rcutype581, ptr @__UNIQUE_ID_use_softirqtype321, ptr @__call_rcu.___tp_str, ptr @__initcall__kmod_tree__484_4484_rcu_spawn_gp_kthreadearly, ptr @__initcall__kmod_tree__494_107_check_cpu_stall_initearly, ptr @__initcall__kmod_tree__582_970_rcu_sysrq_initearly, ptr @__ksymtab_call_rcu, ptr @__ksymtab_cond_synchronize_rcu, ptr @__ksymtab_get_state_synchronize_rcu, ptr @__ksymtab_kvfree_call_rcu, ptr @__ksymtab_poll_state_synchronize_rcu, ptr @__ksymtab_rcu_all_qs, ptr @__ksymtab_rcu_barrier, ptr @__ksymtab_rcu_check_boost_fail, ptr @__ksymtab_rcu_exp_batches_completed, ptr @__ksymtab_rcu_force_quiescent_state, ptr @__ksymtab_rcu_fwd_progress_check, ptr @__ksymtab_rcu_get_gp_kthreads_prio, ptr @__ksymtab_rcu_get_gp_seq, ptr @__ksymtab_rcu_gp_set_torture_wait, ptr @__ksymtab_rcu_idle_enter, ptr @__ksymtab_rcu_idle_exit, ptr @__ksymtab_rcu_is_watching, ptr @__ksymtab_rcu_jiffies_till_stall_check, ptr @__ksymtab_rcu_momentary_dyntick_idle, ptr @__ksymtab_rcu_note_context_switch, ptr @__ksymtab_rcu_read_unlock_strict, ptr @__ksymtab_rcu_scheduler_active, ptr @__ksymtab_rcutorture_get_gp_data, ptr @__ksymtab_show_rcu_gp_kthreads, ptr @__ksymtab_start_poll_synchronize_rcu, ptr @__ksymtab_synchronize_rcu, ptr @__ksymtab_synchronize_rcu_expedited, ptr @__note_gp_changes.___tp_str, ptr @__note_gp_changes.___tp_str.71, ptr @__param_blimit, ptr @__param_dump_tree, ptr @__param_gp_cleanup_delay, ptr @__param_gp_init_delay, ptr @__param_gp_preinit_delay, ptr @__param_jiffies_till_first_fqs, ptr @__param_jiffies_till_next_fqs, ptr @__param_jiffies_till_sched_qs, ptr @__param_jiffies_to_sched_qs, ptr @__param_kthread_prio, ptr @__param_qhimark, ptr @__param_qlowmark, ptr @__param_qovld, ptr @__param_rcu_delay_page_cache_fill_msec, ptr @__param_rcu_divisor, ptr @__param_rcu_fanout_exact, ptr @__param_rcu_fanout_leaf, ptr @__param_rcu_kick_kthreads, ptr @__param_rcu_min_cached_objs, ptr @__param_rcu_resched_ns, ptr @__param_sysrq_rcu, ptr @__param_use_softirq, ptr @dyntick_save_progress_counter.___tp_str, ptr @exp_funnel_lock.___tp_str, ptr @exp_funnel_lock.___tp_str.213, ptr @exp_funnel_lock.___tp_str.215, ptr @print_cpu_stall.___tp_str, ptr @print_other_cpu_stall.___tp_str, ptr @rcu_accelerate_cbs.___tp_str, ptr @rcu_accelerate_cbs.___tp_str.74, ptr @rcu_accelerate_cbs.___tp_str.76, ptr @rcu_accelerate_cbs.___tp_str.78, ptr @rcu_barrier.___tp_str, ptr @rcu_barrier.___tp_str.18, ptr @rcu_barrier.___tp_str.20, ptr @rcu_barrier.___tp_str.22, ptr @rcu_barrier.___tp_str.24, ptr @rcu_barrier.___tp_str.26, ptr @rcu_barrier.___tp_str.28, ptr @rcu_barrier.___tp_str.30, ptr @rcu_barrier_callback.___tp_str, ptr @rcu_barrier_callback.___tp_str.127, ptr @rcu_barrier_func.___tp_str, ptr @rcu_barrier_func.___tp_str.124, ptr @rcu_core.___tp_str, ptr @rcu_core.___tp_str.170, ptr @rcu_cpu_kthread.___tp_str, ptr @rcu_cpu_kthread.___tp_str.163, ptr @rcu_cpu_kthread.___tp_str.165, ptr @rcu_cpu_kthread.___tp_str.167, ptr @rcu_do_batch.___tp_str, ptr @rcu_eqs_enter.___tp_str, ptr @rcu_eqs_exit.___tp_str, ptr @rcu_exp_gp_seq_snap.___tp_str, ptr @rcu_exp_wait_wake.___tp_str, ptr @rcu_exp_wait_wake.___tp_str.221, ptr @rcu_future_gp_cleanup.___tp_str, ptr @rcu_future_gp_cleanup.___tp_str.158, ptr @rcu_gp_cleanup.___tp_str, ptr @rcu_gp_cleanup.___tp_str.155, ptr @rcu_gp_cleanup.___tp_str.157, ptr @rcu_gp_fqs_loop.___tp_str, ptr @rcu_gp_fqs_loop.___tp_str.141, ptr @rcu_gp_fqs_loop.___tp_str.143, ptr @rcu_gp_fqs_loop.___tp_str.145, ptr @rcu_gp_init.___tp_str, ptr @rcu_gp_kthread.___tp_str, ptr @rcu_gp_kthread.___tp_str.134, ptr @rcu_implicit_dynticks_qs.___tp_str, ptr @rcu_nmi_enter.___tp_str, ptr @rcu_nmi_enter.___tp_str.6, ptr @rcu_nmi_exit.___tp_str, ptr @rcu_nmi_exit.___tp_str.3, ptr @rcu_note_context_switch.___tp_str, ptr @rcu_note_context_switch.___tp_str.57, ptr @rcu_qs.___tp_str, ptr @rcu_qs.___tp_str.254, ptr @rcu_sched_clock_irq.___tp_str, ptr @rcu_sched_clock_irq.___tp_str.13, ptr @rcu_start_this_gp.___tp_str, ptr @rcu_start_this_gp.___tp_str.81, ptr @rcu_start_this_gp.___tp_str.83, ptr @rcu_start_this_gp.___tp_str.85, ptr @rcu_start_this_gp.___tp_str.87, ptr @rcu_start_this_gp.___tp_str.89, ptr @rcu_start_this_gp.___tp_str.91, ptr @rcutree_dying_cpu.___tp_str, ptr @rcutree_dying_cpu.___tp_str.9, ptr @rcutree_prepare_cpu.___tp_str, ptr @sync_exp_work_done.___tp_str, ptr @sync_rcu_exp_select_cpus.___tp_str, ptr @sync_rcu_exp_select_cpus.___tp_str.217, ptr @sync_rcu_exp_select_node_cpus.___tp_str, ptr @synchronize_rcu_expedited_wait.___tp_str, ptr @synchronize_rcu_expedited_wait.___tp_str.224, ptr @tp_rcu_varname], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rcu_get_gp_kthreads_prio() #0 {
  %1 = load i32, ptr @kthread_prio, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_softirq_qs() local_unnamed_addr #1 {
  tail call fastcc void @rcu_qs()
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #16, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.anon.95, ptr %6, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %0
  store volatile i8 0, ptr %7, align 1
  %11 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  tail call fastcc void @rcu_report_exp_cpu_mult(ptr noundef %12, i32 noundef %14, i1 noundef zeroext true) #24
  br label %15

15:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_qs() unnamed_addr #1 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #16, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 2) to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr @rcu_qs.___tp_str, align 4
  %10 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr @rcu_qs.___tp_str.254, align 4
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  %17 = tail call ptr @llvm.thread.pointer() #24
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %28 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %9, i32 noundef %12, ptr noundef %13) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %29

29:                                               ; preds = %27, %16, %8
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #16, !srcloc !9
  %33 = add i32 %32, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 2) to i32)
  %34 = inttoptr i32 %33 to ptr
  store i8 0, ptr %34, align 1
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #16, !srcloc !9
  %38 = add i32 %37, ptrtoint (ptr getelementptr inbounds (%struct.anon.95, ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 2), i32 0, i32 1) to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %29
  %43 = add i32 %37, ptrtoint (ptr @rcu_data to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.rcu_data, ptr %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.anon.95, ptr %45, i32 0, i32 1
  store volatile i8 0, ptr %46, align 1
  %47 = getelementptr inbounds %struct.rcu_data, ptr %44, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.rcu_data, ptr %44, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  tail call fastcc void @rcu_report_exp_cpu_mult(ptr noundef %48, i32 noundef %50, i1 noundef zeroext true) #24
  br label %51

51:                                               ; preds = %42, %29, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_preempt_deferred_qs() unnamed_addr #1 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #16, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.anon.95, ptr %6, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %0
  store volatile i8 0, ptr %7, align 1
  %11 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  tail call fastcc void @rcu_report_exp_cpu_mult(ptr noundef %12, i32 noundef %14, i1 noundef zeroext true) #24
  br label %15

15:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rcu_is_idle_cpu(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !12
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 21
  %7 = load volatile i32, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !13
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  ret i1 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rcu_dynticks_zero_in_eqs(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @rcu_data to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 21
  %8 = load volatile i32, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !14
  %9 = load volatile i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = and i32 %8, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !15
  %13 = load volatile i32, ptr %7, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ %14, %11 ], [ false, %2 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_momentary_dyntick_idle() #1 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #16, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 22) to i32)
  %5 = inttoptr i32 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = tail call fastcc i32 @rcu_dynticks_inc(i32 noundef 2)
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = load i1, ptr @rcu_momentary_dyntick_idle.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !16

12:                                               ; preds = %0
  store i1 true, ptr @rcu_momentary_dyntick_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 9, ptr noundef null) #24
  br label %13

13:                                               ; preds = %12, %0
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #16, !srcloc !9
  %17 = add i32 %16, ptrtoint (ptr @rcu_data to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.rcu_data, ptr %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.anon.95, ptr %19, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  store volatile i8 0, ptr %20, align 1
  %24 = getelementptr inbounds %struct.rcu_data, ptr %18, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rcu_data, ptr %18, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  tail call fastcc void @rcu_report_exp_cpu_mult(ptr noundef %25, i32 noundef %27, i1 noundef zeroext true) #24
  br label %28

28:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: inlinehint nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @__my_cpu_offset() unnamed_addr #3 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0)
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #16, !srcloc !9
  ret i32 %3
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcu_dynticks_inc(i32 noundef %0) unnamed_addr #4 section ".noinstr.text" {
  %2 = tail call fastcc i32 @__my_cpu_offset()
  %3 = add i32 %2, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 21) to i32)
  %4 = inttoptr i32 %3 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #24, !srcloc !18
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %0, ptr elementtype(i32) %4) #24, !srcloc !19
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !20
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rcu_get_gp_seq() #6 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rcu_exp_batches_completed() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rcutorture_get_gp_data(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %7 = sext i16 %6 to i32
  store i32 %7, ptr %1, align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  store i32 %8, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_idle_enter() #1 {
  tail call fastcc void @rcu_eqs_enter()
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_eqs_enter() unnamed_addr #4 section ".noinstr.text" {
  %1 = tail call fastcc i32 @__my_cpu_offset()
  %2 = add i32 %1, ptrtoint (ptr @rcu_data to i32)
  %3 = inttoptr i32 %2 to ptr
  %4 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 1073741824
  %7 = load i1, ptr @rcu_eqs_enter.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !16

10:                                               ; preds = %0
  store i1 true, ptr @rcu_eqs_enter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 613, i32 noundef 9, ptr noundef null) #24
  br label %11

11:                                               ; preds = %10, %0
  store volatile i32 0, ptr %4, align 4
  %12 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = add i32 %13, -1
  store i32 %16, ptr %12, align 4
  br label %21

17:                                               ; preds = %11
  %18 = load ptr, ptr @rcu_eqs_enter.___tp_str, align 4
  %19 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 21
  %20 = load volatile i32, ptr %19, align 4
  tail call fastcc void @trace_rcu_dyntick(ptr noundef %18, i32 noundef 1, i32 noundef 0, i32 noundef %20)
  tail call fastcc void @rcu_preempt_deferred_qs()
  store volatile i32 0, ptr %12, align 4
  tail call fastcc void @rcu_dynticks_eqs_enter()
  br label %21

21:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_nmi_exit() local_unnamed_addr #4 section ".noinstr.text" {
  %1 = tail call fastcc i32 @__my_cpu_offset()
  %2 = add i32 %1, ptrtoint (ptr @rcu_data to i32)
  %3 = inttoptr i32 %2 to ptr
  %4 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 1
  %7 = load i1, ptr @rcu_nmi_exit.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !16

10:                                               ; preds = %0
  store i1 true, ptr @rcu_nmi_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 750, i32 noundef 9, ptr noundef null) #24
  br label %11

11:                                               ; preds = %10, %0
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #16, !srcloc !9
  %15 = add i32 %14, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 21) to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = load i1, ptr @rcu_nmi_exit.__already_done.1, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !16

23:                                               ; preds = %11
  store i1 true, ptr @rcu_nmi_exit.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 751, i32 noundef 9, ptr noundef null) #24
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, ptr %4, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @rcu_nmi_exit.___tp_str, align 4
  %29 = add i32 %25, -2
  %30 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 21
  %31 = load volatile i32, ptr %30, align 4
  tail call fastcc void @trace_rcu_dyntick(ptr noundef %28, i32 noundef %25, i32 noundef %29, i32 noundef %31)
  %32 = load i32, ptr %4, align 4
  %33 = add i32 %32, -2
  store volatile i32 %33, ptr %4, align 4
  br label %41

34:                                               ; preds = %24
  %35 = load ptr, ptr @rcu_nmi_exit.___tp_str.3, align 4
  %36 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 21
  %37 = load volatile i32, ptr %36, align 4
  tail call fastcc void @trace_rcu_dyntick(ptr noundef %35, i32 noundef 1, i32 noundef 0, i32 noundef %37)
  store volatile i32 0, ptr %4, align 4
  tail call fastcc void @rcu_dynticks_eqs_enter()
  %38 = tail call ptr @llvm.thread.pointer() #24
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %34, %27
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rcu_dyntick(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_dyntick, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #24
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !21
  %19 = tail call i32 @__traceiter_rcu_dyntick(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !22
  br label %20

20:                                               ; preds = %18, %7, %4
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_dynticks_eqs_enter() unnamed_addr #4 section ".noinstr.text" {
  %1 = tail call fastcc i32 @rcu_dynticks_inc(i32 noundef 1)
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_irq_exit() local_unnamed_addr #4 section ".noinstr.text" {
  tail call void @rcu_nmi_exit()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #1 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  tail call void @rcu_irq_exit()
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #24, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_idle_exit() #1 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  tail call fastcc void @rcu_eqs_exit()
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #24, !srcloc !24
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_eqs_exit() unnamed_addr #4 section ".noinstr.text" {
  %1 = tail call fastcc i32 @__my_cpu_offset()
  %2 = add i32 %1, ptrtoint (ptr @rcu_data to i32)
  %3 = inttoptr i32 %2 to ptr
  %4 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = add i32 %5, 1
  store i32 %8, ptr %4, align 4
  br label %22

9:                                                ; preds = %0
  tail call fastcc void @rcu_dynticks_eqs_exit()
  %10 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 21
  %11 = load ptr, ptr @rcu_eqs_exit.___tp_str, align 4
  %12 = load i32, ptr %4, align 4
  %13 = load volatile i32, ptr %10, align 4
  tail call fastcc void @trace_rcu_dyntick(ptr noundef %11, i32 noundef %12, i32 noundef 1, i32 noundef %13)
  store volatile i32 1, ptr %4, align 4
  %14 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 20
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = load i1, ptr @rcu_eqs_exit.__already_done.65, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !16

20:                                               ; preds = %9
  store i1 true, ptr @rcu_eqs_exit.__already_done.65, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 874, i32 noundef 9, ptr noundef null) #24
  br label %21

21:                                               ; preds = %20, %9
  store volatile i32 1073741824, ptr %14, align 4
  br label %22

22:                                               ; preds = %21, %7
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_nmi_enter() local_unnamed_addr #4 section ".noinstr.text" {
  %1 = tail call fastcc i32 @__my_cpu_offset()
  %2 = add i32 %1, ptrtoint (ptr @rcu_data to i32)
  %3 = inttoptr i32 %2 to ptr
  %4 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 0
  %7 = load i1, ptr @rcu_nmi_enter.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !16

10:                                               ; preds = %0
  store i1 true, ptr @rcu_nmi_enter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 993, i32 noundef 9, ptr noundef null) #24
  br label %11

11:                                               ; preds = %10, %0
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #16, !srcloc !9
  %15 = add i32 %14, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 21) to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = tail call ptr @llvm.thread.pointer() #24
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  br i1 %19, label %23, label %24

23:                                               ; preds = %11
  tail call fastcc void @rcu_dynticks_eqs_exit()
  br label %24

24:                                               ; preds = %23, %11
  %25 = phi ptr [ @rcu_nmi_enter.___tp_str, %23 ], [ @rcu_nmi_enter.___tp_str.6, %11 ]
  %26 = phi i32 [ 1, %23 ], [ 2, %11 ]
  %27 = load ptr, ptr %25, align 4
  %28 = load i32, ptr %4, align 4
  %29 = add i32 %28, %26
  %30 = getelementptr inbounds %struct.rcu_data, ptr %3, i32 0, i32 21
  %31 = load volatile i32, ptr %30, align 4
  tail call fastcc void @trace_rcu_dyntick(ptr noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %31)
  %32 = load i32, ptr %4, align 4
  %33 = add i32 %32, %26
  store volatile i32 %33, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !25
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_dynticks_eqs_exit() unnamed_addr #4 section ".noinstr.text" {
  %1 = tail call fastcc i32 @rcu_dynticks_inc(i32 noundef 1)
  ret void
}

; Function Attrs: noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_irq_enter() local_unnamed_addr #4 section ".noinstr.text" {
  tail call void @rcu_nmi_enter()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #1 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  tail call void @rcu_irq_enter()
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #24, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcu_needs_cpu(i64 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  store i64 9223372036854775807, ptr %1, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #16, !srcloc !9
  %6 = add i32 %5, ptrtoint (ptr @rcu_data to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rcu_data, ptr %7, i32 0, i32 13
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #16, !srcloc !9
  br label %15

15:                                               ; preds = %11, %2
  %16 = xor i1 %10, true
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rcu_is_watching() #1 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !26
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #16, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 21) to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !27
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_request_urgent_qs_task(ptr noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !28
  %2 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 8
  %4 = tail call i32 @task_curr(ptr noundef %0) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !29
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %10 = inttoptr i32 %9 to ptr
  store volatile i8 1, ptr %10, align 1
  br label %11

11:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_curr(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @rcu_gp_set_torture_wait(i32 %0) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcutree_dying_cpu(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcu_node, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 16
  %10 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %15 = getelementptr inbounds %struct.rcu_node, ptr %7, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = load ptr, ptr @rcutree_dying_cpu.___tp_str.9, align 4
  %18 = load ptr, ptr @rcutree_dying_cpu.___tp_str, align 4
  %19 = select i1 %13, ptr %17, ptr %18
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = tail call ptr @llvm.thread.pointer() #24
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
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %34 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %14, i32 noundef %16, ptr noundef %19) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %35

35:                                               ; preds = %33, %22, %1
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcutree_dead_cpu(i32 noundef %0) local_unnamed_addr #9 {
  %2 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 3), align 4
  %3 = add i32 %2, -1
  store volatile i32 %3, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 3), align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_sched_clock_irq(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @rcu_sched_clock_irq.___tp_str, align 4
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #24
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %17 = tail call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %2) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #16, !srcloc !9
  %22 = add i32 %21, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 9) to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #16, !srcloc !9
  %29 = add i32 %28, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load volatile i8, ptr %30, align 1, !range !32
  %32 = icmp eq i8 %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !33
  br i1 %32, label %74, label %33

33:                                               ; preds = %18
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #16, !srcloc !9
  %37 = add i32 %36, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 20) to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %62, label %41

41:                                               ; preds = %33
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %41
  %44 = tail call ptr @llvm.thread.pointer() #24
  %45 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  %49 = load i1, ptr @rcu_is_cpu_rrupt_from_idle.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !16

52:                                               ; preds = %43
  store i1 true, ptr @rcu_is_cpu_rrupt_from_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 447, i32 noundef 9, ptr noundef null) #24
  br label %53

53:                                               ; preds = %52, %43, %41
  %54 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %55 = inttoptr i32 %54 to ptr
  %56 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %55) #16, !srcloc !9
  %57 = add i32 %56, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 19) to i32)
  %58 = inttoptr i32 %57 to ptr
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  br label %62

62:                                               ; preds = %53, %33
  %63 = phi i32 [ %61, %53 ], [ 0, %33 ]
  %64 = or i32 %63, %0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = tail call ptr @llvm.thread.pointer() #24
  tail call void @_set_bit(i32 noundef 1, ptr noundef %67) #24
  br label %68

68:                                               ; preds = %66, %62
  %69 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %70 = inttoptr i32 %69 to ptr
  %71 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %70) #16, !srcloc !9
  %72 = add i32 %71, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %73 = inttoptr i32 %72 to ptr
  store i8 0, ptr %73, align 1
  br label %74

74:                                               ; preds = %68, %18
  %75 = icmp eq i32 %0, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %74
  %77 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %78 = inttoptr i32 %77 to ptr
  %79 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %78) #16, !srcloc !9
  %80 = add i32 %79, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 20) to i32)
  %81 = inttoptr i32 %80 to ptr
  %82 = load i32, ptr %81, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %105, label %84

84:                                               ; preds = %76
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %84
  %87 = tail call ptr @llvm.thread.pointer() #24
  %88 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  %92 = load i1, ptr @rcu_is_cpu_rrupt_from_idle.__already_done, align 1
  %93 = xor i1 %92, true
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %96, !prof !16

95:                                               ; preds = %86
  store i1 true, ptr @rcu_is_cpu_rrupt_from_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 447, i32 noundef 9, ptr noundef null) #24
  br label %96

96:                                               ; preds = %95, %86, %84
  %97 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %98 = inttoptr i32 %97 to ptr
  %99 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %98) #16, !srcloc !9
  %100 = add i32 %99, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 19) to i32)
  %101 = inttoptr i32 %100 to ptr
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96, %74
  tail call fastcc void @rcu_qs() #24
  br label %105

105:                                              ; preds = %104, %96, %76
  %106 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %107 = inttoptr i32 %106 to ptr
  %108 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %107) #16, !srcloc !9
  %109 = add i32 %108, ptrtoint (ptr @rcu_data to i32)
  %110 = inttoptr i32 %109 to ptr
  %111 = getelementptr inbounds %struct.rcu_data, ptr %110, i32 0, i32 7
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr @rcu_cpu_stall_suppress_at_boot, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %105
  %116 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #24
  %117 = xor i1 %116, true
  br label %118

118:                                              ; preds = %115, %105
  %119 = phi i1 [ false, %105 ], [ %117, %115 ]
  %120 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %121 = icmp ne i32 %120, 0
  %122 = select i1 %119, i1 true, i1 %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load volatile i8, ptr @rcu_kick_kthreads, align 1, !range !32
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %581, label %126

126:                                              ; preds = %123, %118
  %127 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %128 = and i32 %127, 3
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %581, label %130

130:                                              ; preds = %126
  tail call fastcc void @rcu_stall_kick_kthreads() #24
  %131 = load volatile i32, ptr @jiffies, align 64
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !34
  %133 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !35
  %134 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 29), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !36
  %135 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %136 = icmp ne i32 %132, %135
  %137 = sub i32 %131, %133
  %138 = icmp slt i32 %137, 0
  %139 = select i1 %136, i1 true, i1 %138
  %140 = sub i32 %134, %133
  %141 = icmp sgt i32 %140, -1
  %142 = select i1 %139, i1 true, i1 %141
  br i1 %142, label %581, label %143

143:                                              ; preds = %130
  %144 = load ptr, ptr %111, align 4
  %145 = load volatile i32, ptr @jiffies, align 64
  %146 = add i32 %145, 2147483647
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %148 = and i32 %147, 3
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %318, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.rcu_node, ptr %144, i32 0, i32 4
  %152 = load volatile i32, ptr %151, align 16
  %153 = getelementptr inbounds %struct.rcu_data, ptr %110, i32 0, i32 8
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, %152
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %318, label %157

157:                                              ; preds = %150
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33)) #24, !srcloc !18
  br label %158

158:                                              ; preds = %158, %157
  %159 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), i32 %133, i32 %146) #24, !srcloc !38
  %160 = extractvalue { i32, i32 } %159, 0
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %158

162:                                              ; preds = %158
  %163 = extractvalue { i32, i32 } %159, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !39
  %164 = icmp eq i32 %163, %133
  br i1 %164, label %165, label %318

165:                                              ; preds = %162
  %166 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %167 = inttoptr i32 %166 to ptr
  %168 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %167) #16, !srcloc !9
  tail call fastcc void @rcu_stall_kick_kthreads() #24
  %169 = load i32, ptr @rcu_cpu_stall_suppress_at_boot, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %165
  %172 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #24
  %173 = xor i1 %172, true
  br label %174

174:                                              ; preds = %171, %165
  %175 = phi i1 [ false, %165 ], [ %173, %171 ]
  %176 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %177 = icmp ne i32 %176, 0
  %178 = select i1 %175, i1 true, i1 %177
  br i1 %178, label %301, label %179

179:                                              ; preds = %174
  %180 = add i32 %168, ptrtoint (ptr @rcu_data to i32)
  %181 = inttoptr i32 %180 to ptr
  %182 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %183 = load ptr, ptr @print_cpu_stall.___tp_str, align 4
  %184 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_stall_warning, i32 0, i32 1), align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %179
  %187 = tail call ptr @llvm.thread.pointer() #24
  %188 = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 2
  %189 = load i32, ptr %188, align 8
  %190 = lshr i32 %189, 5
  %191 = getelementptr i32, ptr @__cpu_online_mask, i32 %190
  %192 = load volatile i32, ptr %191, align 4
  %193 = and i32 %189, 31
  %194 = shl nuw i32 1, %193
  %195 = and i32 %194, %192
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %186
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !40
  %198 = tail call i32 @__traceiter_rcu_stall_warning(ptr noundef null, ptr noundef %182, ptr noundef %183) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !41
  %199 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  br label %200

200:                                              ; preds = %197, %186, %179
  %201 = phi ptr [ %182, %179 ], [ %182, %186 ], [ %199, %197 ]
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %201) #25
  %203 = getelementptr inbounds %struct.rcu_data, ptr %181, i32 0, i32 7
  %204 = load ptr, ptr %203, align 4
  %205 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %204) #24
  %206 = tail call ptr @llvm.thread.pointer() #24
  %207 = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 2
  %208 = load i32, ptr %207, align 8
  tail call fastcc void @print_cpu_stall_info(i32 noundef %208) #24
  %209 = load ptr, ptr %203, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %209, i32 noundef %205) #24
  %210 = load i32, ptr @nr_cpu_ids, align 4
  %211 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  %212 = icmp ult i32 %211, %210
  br i1 %212, label %213, label %232

213:                                              ; preds = %227, %200
  %214 = phi i32 [ %230, %227 ], [ %211, %200 ]
  %215 = phi i32 [ %229, %227 ], [ 0, %200 ]
  %216 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %214
  %217 = load i32, ptr %216, align 4
  %218 = add i32 %217, ptrtoint (ptr @rcu_data to i32)
  %219 = inttoptr i32 %218 to ptr
  %220 = getelementptr inbounds %struct.rcu_data, ptr %219, i32 0, i32 13, i32 5
  %221 = load volatile i8, ptr %220, align 4
  %222 = and i8 %221, 1
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %213
  %225 = getelementptr inbounds %struct.rcu_data, ptr %219, i32 0, i32 13, i32 3
  %226 = load volatile i32, ptr %225, align 4
  br label %227

227:                                              ; preds = %224, %213
  %228 = phi i32 [ %226, %224 ], [ 0, %213 ]
  %229 = add i32 %228, %215
  %230 = tail call i32 @cpumask_next(i32 noundef %214, ptr noundef nonnull @__cpu_possible_mask) #26
  %231 = icmp ult i32 %230, %210
  br i1 %231, label %213, label %232

232:                                              ; preds = %227, %200
  %233 = phi i32 [ 0, %200 ], [ %229, %227 ]
  %234 = load volatile i32, ptr @jiffies, align 64
  %235 = sub i32 %234, %134
  %236 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %235, i32 noundef %236, i32 noundef %233) #25
  %238 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %239 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !42
  %240 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 26), align 8
  %241 = icmp eq i16 %239, 5
  br i1 %241, label %242, label %272

242:                                              ; preds = %232
  %243 = add i32 %240, 200
  %244 = load volatile i32, ptr @jiffies, align 64
  %245 = sub i32 %243, %244
  %246 = icmp slt i32 %245, 0
  %247 = icmp ne ptr %238, null
  %248 = select i1 %246, i1 %247, i1 false
  br i1 %248, label %249, label %272

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.task_struct, ptr %238, i32 0, i32 13
  %251 = load volatile i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %272

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.thread_info, ptr %238, i32 0, i32 2
  %255 = load volatile i32, ptr %254, align 8
  %256 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %257 = load volatile i32, ptr @jiffies, align 64
  %258 = sub i32 %257, %240
  %259 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %260 = load i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %261 = sext i16 %260 to i32
  %262 = getelementptr inbounds %struct.task_struct, ptr %238, i32 0, i32 1
  %263 = load volatile i32, ptr %262, align 8
  %264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %256, i32 noundef %258, i32 noundef %259, i32 noundef %261, ptr noundef nonnull @.str.204, i32 noundef 5, i32 noundef %263) #25
  %265 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %255
  %266 = load i32, ptr %265, align 4
  %267 = add i32 %266, ptrtoint (ptr @kstat to i32)
  %268 = inttoptr i32 %267 to ptr
  %269 = getelementptr %struct.kernel_stat, ptr %268, i32 0, i32 1, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %255, i32 noundef %270) #25
  br label %272

272:                                              ; preds = %253, %249, %242, %232
  tail call fastcc void @rcu_check_gp_kthread_starvation() #24
  tail call fastcc void @rcu_dump_cpu_stacks() #24
  %273 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rcu_state) #24
  %274 = load volatile i32, ptr @jiffies, align 64
  %275 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), align 4
  %276 = sub i32 %274, %275
  %277 = icmp sgt i32 %276, -1
  br i1 %277, label %278, label %291

278:                                              ; preds = %272
  %279 = load volatile i32, ptr @jiffies, align 64
  %280 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %281 = icmp slt i32 %280, 3
  br i1 %281, label %284, label %282

282:                                              ; preds = %278
  %283 = icmp ugt i32 %280, 300
  br i1 %283, label %284, label %286

284:                                              ; preds = %282, %278
  %285 = phi i32 [ 3, %278 ], [ 300, %282 ]
  store volatile i32 %285, ptr @rcu_cpu_stall_timeout, align 4
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i32 [ %280, %282 ], [ %285, %284 ]
  %288 = mul nuw nsw i32 %287, 300
  %289 = add i32 %279, 3
  %290 = add i32 %289, %288
  store volatile i32 %290, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), align 4
  br label %291

291:                                              ; preds = %286, %272
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcu_state, i32 noundef %273) #24
  %292 = load i32, ptr @panic_on_rcu_stall.cpu_stall, align 4
  %293 = add i32 %292, 1
  store i32 %293, ptr @panic_on_rcu_stall.cpu_stall, align 4
  %294 = load i32, ptr @sysctl_max_rcu_stall_to_panic, align 4
  %295 = icmp sge i32 %293, %294
  %296 = load i32, ptr @sysctl_panic_on_rcu_stall, align 4
  %297 = icmp ne i32 %296, 0
  %298 = select i1 %295, i1 %297, i1 false
  br i1 %298, label %299, label %300

299:                                              ; preds = %291
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.115) #27
  unreachable

300:                                              ; preds = %291
  tail call void @_set_bit(i32 noundef 1, ptr noundef %206) #24
  br label %301

301:                                              ; preds = %300, %174
  %302 = load volatile i32, ptr @rcu_cpu_stall_ftrace_dump, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %565, label %304

304:                                              ; preds = %301
  %305 = load volatile i32, ptr @check_cpu_stall.___rfd_beenhere, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %565

307:                                              ; preds = %304
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @check_cpu_stall.___rfd_beenhere) #24, !srcloc !18
  %308 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @check_cpu_stall.___rfd_beenhere) #24, !srcloc !44
  %309 = extractvalue { i32, i32 } %308, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !45
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %565

311:                                              ; preds = %307
  tail call void @tracing_off() #24
  %312 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  store i32 3, ptr @rcu_cpu_stall_suppress, align 4
  br label %315

315:                                              ; preds = %314, %311
  tail call void @ftrace_dump(i32 noundef 1) #24
  %316 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %317 = icmp eq i32 %316, 3
  br i1 %317, label %564, label %565

318:                                              ; preds = %162, %150, %143
  %319 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %320 = and i32 %319, 3
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %581, label %322

322:                                              ; preds = %318
  %323 = add i32 %131, -2
  %324 = sub i32 %323, %133
  %325 = icmp sgt i32 %324, -1
  br i1 %325, label %326, label %581

326:                                              ; preds = %322
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33)) #24, !srcloc !18
  br label %327

327:                                              ; preds = %327, %326
  %328 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), i32 %133, i32 %146) #24, !srcloc !38
  %329 = extractvalue { i32, i32 } %328, 0
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %327

331:                                              ; preds = %327
  %332 = extractvalue { i32, i32 } %328, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !47
  %333 = icmp eq i32 %332, %133
  br i1 %333, label %334, label %581

334:                                              ; preds = %331
  tail call fastcc void @rcu_stall_kick_kthreads() #24
  %335 = load i32, ptr @rcu_cpu_stall_suppress_at_boot, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #24
  %339 = xor i1 %338, true
  br label %340

340:                                              ; preds = %337, %334
  %341 = phi i1 [ false, %334 ], [ %339, %337 ]
  %342 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %343 = icmp ne i32 %342, 0
  %344 = select i1 %341, i1 true, i1 %343
  br i1 %344, label %547, label %345

345:                                              ; preds = %340
  %346 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %347 = load ptr, ptr @print_other_cpu_stall.___tp_str, align 4
  %348 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_stall_warning, i32 0, i32 1), align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %364

350:                                              ; preds = %345
  %351 = tail call ptr @llvm.thread.pointer() #24
  %352 = getelementptr inbounds %struct.thread_info, ptr %351, i32 0, i32 2
  %353 = load i32, ptr %352, align 8
  %354 = lshr i32 %353, 5
  %355 = getelementptr i32, ptr @__cpu_online_mask, i32 %354
  %356 = load volatile i32, ptr %355, align 4
  %357 = and i32 %353, 31
  %358 = shl nuw i32 1, %357
  %359 = and i32 %358, %356
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %350
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !40
  %362 = tail call i32 @__traceiter_rcu_stall_warning(ptr noundef null, ptr noundef %346, ptr noundef %347) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !41
  %363 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  br label %364

364:                                              ; preds = %361, %350, %345
  %365 = phi ptr [ %346, %345 ], [ %346, %350 ], [ %363, %361 ]
  %366 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %365) #25
  %367 = load i32, ptr @rcu_num_lvls, align 4
  %368 = add i32 %367, -1
  %369 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %368
  %370 = load ptr, ptr %369, align 4
  %371 = load i32, ptr @rcu_num_nodes, align 4
  %372 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %371
  %373 = icmp ult ptr %370, %372
  br i1 %373, label %379, label %374

374:                                              ; preds = %425, %364
  %375 = phi i32 [ 0, %364 ], [ %426, %425 ]
  %376 = load i32, ptr @nr_cpu_ids, align 4
  %377 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  %378 = icmp ult i32 %377, %376
  br i1 %378, label %431, label %450

379:                                              ; preds = %425, %364
  %380 = phi i32 [ %426, %425 ], [ 0, %364 ]
  %381 = phi ptr [ %427, %425 ], [ %370, %364 ]
  %382 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %381) #24
  %383 = getelementptr inbounds %struct.rcu_node, ptr %381, i32 0, i32 4
  %384 = load i32, ptr %383, align 16
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %425, label %386

386:                                              ; preds = %379
  %387 = getelementptr inbounds %struct.rcu_node, ptr %381, i32 0, i32 18
  %388 = load i8, ptr %387, align 1
  %389 = zext i8 %388 to i32
  %390 = load i32, ptr @rcu_num_lvls, align 4
  %391 = add i32 %390, -1
  %392 = icmp ne i32 %391, %389
  %393 = load i1, ptr @print_other_cpu_stall.__already_done, align 1
  %394 = xor i1 %393, true
  %395 = select i1 %392, i1 %394, i1 false
  br i1 %395, label %396, label %397, !prof !16

396:                                              ; preds = %386
  store i1 true, ptr @print_other_cpu_stall.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 524, i32 noundef 9, ptr noundef null) #24
  br label %397

397:                                              ; preds = %396, %386
  %398 = getelementptr inbounds %struct.rcu_node, ptr %381, i32 0, i32 15
  %399 = load i32, ptr %398, align 4
  %400 = add i32 %399, -1
  %401 = tail call i32 @cpumask_next(i32 noundef %400, ptr noundef nonnull @__cpu_possible_mask) #26
  %402 = getelementptr inbounds %struct.rcu_node, ptr %381, i32 0, i32 16
  %403 = load i32, ptr %402, align 64
  %404 = icmp sgt i32 %401, %403
  br i1 %404, label %425, label %405

405:                                              ; preds = %423, %397
  %406 = phi i32 [ %419, %423 ], [ %403, %397 ]
  %407 = phi i32 [ %424, %423 ], [ %399, %397 ]
  %408 = phi i32 [ %421, %423 ], [ %401, %397 ]
  %409 = phi i32 [ %420, %423 ], [ %380, %397 ]
  %410 = load i32, ptr %383, align 16
  %411 = sub i32 %408, %407
  %412 = shl nuw i32 1, %411
  %413 = and i32 %412, %410
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %405
  tail call fastcc void @print_cpu_stall_info(i32 noundef %408) #24
  %416 = add i32 %409, 1
  %417 = load i32, ptr %402, align 64
  br label %418

418:                                              ; preds = %415, %405
  %419 = phi i32 [ %417, %415 ], [ %406, %405 ]
  %420 = phi i32 [ %416, %415 ], [ %409, %405 ]
  %421 = tail call i32 @cpumask_next(i32 noundef %408, ptr noundef nonnull @__cpu_possible_mask) #26
  %422 = icmp sgt i32 %421, %419
  br i1 %422, label %425, label %423

423:                                              ; preds = %418
  %424 = load i32, ptr %398, align 4
  br label %405

425:                                              ; preds = %418, %397, %379
  %426 = phi i32 [ %380, %379 ], [ %380, %397 ], [ %420, %418 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %381, i32 noundef %382) #24
  %427 = getelementptr %struct.rcu_node, ptr %381, i32 1
  %428 = load i32, ptr @rcu_num_nodes, align 4
  %429 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %428
  %430 = icmp ult ptr %427, %429
  br i1 %430, label %379, label %374

431:                                              ; preds = %445, %374
  %432 = phi i32 [ %448, %445 ], [ %377, %374 ]
  %433 = phi i32 [ %447, %445 ], [ 0, %374 ]
  %434 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %432
  %435 = load i32, ptr %434, align 4
  %436 = add i32 %435, ptrtoint (ptr @rcu_data to i32)
  %437 = inttoptr i32 %436 to ptr
  %438 = getelementptr inbounds %struct.rcu_data, ptr %437, i32 0, i32 13, i32 5
  %439 = load volatile i8, ptr %438, align 4
  %440 = and i8 %439, 1
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %431
  %443 = getelementptr inbounds %struct.rcu_data, ptr %437, i32 0, i32 13, i32 3
  %444 = load volatile i32, ptr %443, align 4
  br label %445

445:                                              ; preds = %442, %431
  %446 = phi i32 [ %444, %442 ], [ 0, %431 ]
  %447 = add i32 %446, %433
  %448 = tail call i32 @cpumask_next(i32 noundef %432, ptr noundef nonnull @__cpu_possible_mask) #26
  %449 = icmp ult i32 %448, %376
  br i1 %449, label %431, label %450

450:                                              ; preds = %445, %374
  %451 = phi i32 [ 0, %374 ], [ %447, %445 ]
  %452 = tail call ptr @llvm.thread.pointer() #24
  %453 = getelementptr inbounds %struct.thread_info, ptr %452, i32 0, i32 2
  %454 = load i32, ptr %453, align 8
  %455 = load volatile i32, ptr @jiffies, align 64
  %456 = sub i32 %455, %134
  %457 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %458 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %454, i32 noundef %456, i32 noundef %457, i32 noundef %451) #25
  %459 = icmp eq i32 %375, 0
  br i1 %459, label %471, label %460

460:                                              ; preds = %450
  tail call fastcc void @rcu_dump_cpu_stacks() #24
  %461 = load i32, ptr @rcu_num_lvls, align 4
  %462 = add i32 %461, -1
  %463 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %462
  %464 = load ptr, ptr %463, align 4
  %465 = load i32, ptr @rcu_num_nodes, align 4
  %466 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %465
  br label %467

467:                                              ; preds = %467, %460
  %468 = phi ptr [ %464, %460 ], [ %470, %467 ]
  %469 = icmp ult ptr %468, %466
  %470 = getelementptr %struct.rcu_node, ptr %468, i32 1
  br i1 %469, label %467, label %484

471:                                              ; preds = %450
  %472 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %473 = icmp eq i32 %472, %132
  br i1 %473, label %476, label %474

474:                                              ; preds = %471
  %475 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #25
  br label %484

476:                                              ; preds = %471
  %477 = load volatile i32, ptr @jiffies, align 64
  %478 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %479 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %480 = sub i32 %477, %478
  %481 = load volatile i32, ptr @jiffies_till_next_fqs, align 4
  %482 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 4), align 16
  %483 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %479, i32 noundef %480, i32 noundef %477, i32 noundef %478, i32 noundef %481, i32 noundef %482) #25
  br label %484

484:                                              ; preds = %476, %474, %467
  %485 = load volatile i32, ptr @jiffies, align 64
  %486 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), align 4
  %487 = sub i32 %485, %486
  %488 = icmp sgt i32 %487, -1
  br i1 %488, label %489, label %502

489:                                              ; preds = %484
  %490 = load volatile i32, ptr @jiffies, align 64
  %491 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %492 = icmp slt i32 %491, 3
  br i1 %492, label %495, label %493

493:                                              ; preds = %489
  %494 = icmp ugt i32 %491, 300
  br i1 %494, label %495, label %497

495:                                              ; preds = %493, %489
  %496 = phi i32 [ 3, %489 ], [ 300, %493 ]
  store volatile i32 %496, ptr @rcu_cpu_stall_timeout, align 4
  br label %497

497:                                              ; preds = %495, %493
  %498 = phi i32 [ %491, %493 ], [ %496, %495 ]
  %499 = mul nuw nsw i32 %498, 300
  %500 = add i32 %490, 3
  %501 = add i32 %500, %499
  store volatile i32 %501, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), align 4
  br label %502

502:                                              ; preds = %497, %484
  %503 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %504 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !42
  %505 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 26), align 8
  %506 = icmp eq i16 %504, 5
  br i1 %506, label %507, label %537

507:                                              ; preds = %502
  %508 = add i32 %505, 200
  %509 = load volatile i32, ptr @jiffies, align 64
  %510 = sub i32 %508, %509
  %511 = icmp slt i32 %510, 0
  %512 = icmp ne ptr %503, null
  %513 = select i1 %511, i1 %512, i1 false
  br i1 %513, label %514, label %537

514:                                              ; preds = %507
  %515 = getelementptr inbounds %struct.task_struct, ptr %503, i32 0, i32 13
  %516 = load volatile i32, ptr %515, align 4
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %537

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.thread_info, ptr %503, i32 0, i32 2
  %520 = load volatile i32, ptr %519, align 8
  %521 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %522 = load volatile i32, ptr @jiffies, align 64
  %523 = sub i32 %522, %505
  %524 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %525 = load i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %526 = sext i16 %525 to i32
  %527 = getelementptr inbounds %struct.task_struct, ptr %503, i32 0, i32 1
  %528 = load volatile i32, ptr %527, align 8
  %529 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %521, i32 noundef %523, i32 noundef %524, i32 noundef %526, ptr noundef nonnull @.str.204, i32 noundef 5, i32 noundef %528) #25
  %530 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %520
  %531 = load i32, ptr %530, align 4
  %532 = add i32 %531, ptrtoint (ptr @kstat to i32)
  %533 = inttoptr i32 %532 to ptr
  %534 = getelementptr %struct.kernel_stat, ptr %533, i32 0, i32 1, i32 1
  %535 = load i32, ptr %534, align 4
  %536 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %520, i32 noundef %535) #25
  br label %537

537:                                              ; preds = %518, %514, %507, %502
  tail call fastcc void @rcu_check_gp_kthread_starvation() #24
  %538 = load i32, ptr @panic_on_rcu_stall.cpu_stall, align 4
  %539 = add i32 %538, 1
  store i32 %539, ptr @panic_on_rcu_stall.cpu_stall, align 4
  %540 = load i32, ptr @sysctl_max_rcu_stall_to_panic, align 4
  %541 = icmp sge i32 %539, %540
  %542 = load i32, ptr @sysctl_panic_on_rcu_stall, align 4
  %543 = icmp ne i32 %542, 0
  %544 = select i1 %541, i1 %543, i1 false
  br i1 %544, label %545, label %546

545:                                              ; preds = %537
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.115) #27
  unreachable

546:                                              ; preds = %537
  tail call void @rcu_force_quiescent_state() #24
  br label %547

547:                                              ; preds = %546, %340
  %548 = load volatile i32, ptr @rcu_cpu_stall_ftrace_dump, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %565, label %550

550:                                              ; preds = %547
  %551 = load volatile i32, ptr @check_cpu_stall.___rfd_beenhere.93, align 4
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %565

553:                                              ; preds = %550
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @check_cpu_stall.___rfd_beenhere.93) #24, !srcloc !18
  %554 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @check_cpu_stall.___rfd_beenhere.93) #24, !srcloc !44
  %555 = extractvalue { i32, i32 } %554, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !45
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %565

557:                                              ; preds = %553
  tail call void @tracing_off() #24
  %558 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %561

560:                                              ; preds = %557
  store i32 3, ptr @rcu_cpu_stall_suppress, align 4
  br label %561

561:                                              ; preds = %560, %557
  tail call void @ftrace_dump(i32 noundef 1) #24
  %562 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %563 = icmp eq i32 %562, 3
  br i1 %563, label %564, label %565

564:                                              ; preds = %561, %315
  store i32 0, ptr @rcu_cpu_stall_suppress, align 4
  br label %565

565:                                              ; preds = %564, %561, %553, %550, %547, %315, %307, %304, %301
  %566 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), align 4
  %567 = icmp eq i32 %566, %146
  br i1 %567, label %568, label %581

568:                                              ; preds = %565
  %569 = load volatile i32, ptr @jiffies, align 64
  %570 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %571 = icmp slt i32 %570, 3
  br i1 %571, label %574, label %572

572:                                              ; preds = %568
  %573 = icmp ugt i32 %570, 300
  br i1 %573, label %574, label %576

574:                                              ; preds = %572, %568
  %575 = phi i32 [ 3, %568 ], [ 300, %572 ]
  store volatile i32 %575, ptr @rcu_cpu_stall_timeout, align 4
  br label %576

576:                                              ; preds = %574, %572
  %577 = phi i32 [ %570, %572 ], [ %575, %574 ]
  %578 = mul nuw nsw i32 %577, 300
  %579 = add i32 %569, 3
  %580 = add i32 %579, %578
  store volatile i32 %580, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), align 4
  br label %581

581:                                              ; preds = %576, %565, %331, %322, %318, %130, %126, %123
  br i1 %75, label %582, label %606

582:                                              ; preds = %581
  %583 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %584 = inttoptr i32 %583 to ptr
  %585 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %584) #16, !srcloc !9
  %586 = add i32 %585, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 20) to i32)
  %587 = inttoptr i32 %586 to ptr
  %588 = load i32, ptr %587, align 4
  %589 = icmp sgt i32 %588, 1
  br i1 %589, label %606, label %590

590:                                              ; preds = %582
  %591 = icmp eq i32 %588, 0
  br i1 %591, label %592, label %602

592:                                              ; preds = %590
  %593 = tail call ptr @llvm.thread.pointer() #24
  %594 = getelementptr inbounds %struct.task_struct, ptr %593, i32 0, i32 4
  %595 = load i32, ptr %594, align 4
  %596 = and i32 %595, 2
  %597 = icmp eq i32 %596, 0
  %598 = load i1, ptr @rcu_is_cpu_rrupt_from_idle.__already_done, align 1
  %599 = xor i1 %598, true
  %600 = select i1 %597, i1 %599, i1 false
  br i1 %600, label %601, label %602, !prof !16

601:                                              ; preds = %592
  store i1 true, ptr @rcu_is_cpu_rrupt_from_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 447, i32 noundef 9, ptr noundef null) #24
  br label %602

602:                                              ; preds = %601, %592, %590
  %603 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %604 = inttoptr i32 %603 to ptr
  %605 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %604) #16, !srcloc !9
  br label %606

606:                                              ; preds = %602, %582, %581
  %607 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %608 = and i32 %607, 3
  %609 = icmp eq i32 %608, 0
  %610 = getelementptr inbounds %struct.rcu_data, ptr %110, i32 0, i32 3
  %611 = load i8, ptr %610, align 2, !range !32
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %618, label %613

613:                                              ; preds = %606
  %614 = getelementptr inbounds %struct.rcu_data, ptr %110, i32 0, i32 2
  %615 = load i8, ptr %614, align 4
  %616 = icmp ne i8 %615, 0
  %617 = select i1 %616, i1 true, i1 %609
  br i1 %617, label %618, label %641

618:                                              ; preds = %613, %606
  %619 = getelementptr inbounds %struct.rcu_data, ptr %110, i32 0, i32 13
  %620 = tail call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %619) #24
  br i1 %620, label %641, label %621

621:                                              ; preds = %618
  br i1 %609, label %622, label %632

622:                                              ; preds = %621
  %623 = getelementptr inbounds %struct.rcu_data, ptr %110, i32 0, i32 13, i32 5
  %624 = load volatile i8, ptr %623, align 4
  %625 = and i8 %624, 1
  %626 = icmp eq i8 %625, 0
  br i1 %626, label %632, label %627

627:                                              ; preds = %622
  %628 = getelementptr %struct.rcu_data, ptr %110, i32 0, i32 13, i32 1, i32 2
  %629 = load volatile ptr, ptr %628, align 4
  %630 = load volatile ptr, ptr %629, align 4
  %631 = icmp eq ptr %630, null
  br i1 %631, label %632, label %641

632:                                              ; preds = %627, %622, %621
  %633 = getelementptr inbounds %struct.rcu_node, ptr %112, i32 0, i32 1
  %634 = load volatile i32, ptr %633, align 4
  %635 = load i32, ptr %110, align 4
  %636 = icmp eq i32 %634, %635
  br i1 %636, label %637, label %641

637:                                              ; preds = %632
  %638 = getelementptr inbounds %struct.rcu_data, ptr %110, i32 0, i32 5
  %639 = load volatile i8, ptr %638, align 4, !range !32
  %640 = icmp eq i8 %639, 0
  br i1 %640, label %642, label %641

641:                                              ; preds = %637, %632, %627, %618, %613
  tail call fastcc void @invoke_rcu_core()
  br label %642

642:                                              ; preds = %641, %637
  %643 = load ptr, ptr @rcu_sched_clock_irq.___tp_str.13, align 4
  %644 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %645 = icmp sgt i32 %644, 0
  br i1 %645, label %646, label %659

646:                                              ; preds = %642
  %647 = tail call ptr @llvm.thread.pointer() #24
  %648 = getelementptr inbounds %struct.thread_info, ptr %647, i32 0, i32 2
  %649 = load i32, ptr %648, align 8
  %650 = lshr i32 %649, 5
  %651 = getelementptr i32, ptr @__cpu_online_mask, i32 %650
  %652 = load volatile i32, ptr %651, align 4
  %653 = and i32 %649, 31
  %654 = shl nuw i32 1, %653
  %655 = and i32 %654, %652
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %659, label %657

657:                                              ; preds = %646
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %658 = tail call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %643) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %659

659:                                              ; preds = %657, %646, %642
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @invoke_rcu_core() unnamed_addr #1 {
  %1 = tail call ptr @llvm.thread.pointer() #24
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 5
  %5 = getelementptr i32, ptr @__cpu_online_mask, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %3, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %0
  %12 = load i8, ptr @use_softirq, align 1, !range !32
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @raise_softirq(i32 noundef 9) #24
  br label %44

15:                                               ; preds = %11
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #16, !srcloc !9
  %20 = add i32 %19, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 30) to i32)
  %21 = inttoptr i32 %20 to ptr
  store i8 1, ptr %21, align 1
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #16, !srcloc !9
  %25 = add i32 %24, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 28) to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = icmp eq ptr %27, %1
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %15
  %32 = add i32 %24, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 29) to i32)
  %33 = inttoptr i32 %32 to ptr
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36, %31
  %42 = tail call i32 @wake_up_process(ptr noundef nonnull %27) #24
  br label %43

43:                                               ; preds = %41, %36, %15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #24, !srcloc !24
  br label %44

44:                                               ; preds = %43, %14, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_force_quiescent_state() #1 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #16, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 7) to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %12

8:                                                ; preds = %29
  %9 = getelementptr inbounds %struct.rcu_node, ptr %13, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8, %0
  %13 = phi ptr [ %10, %8 ], [ %6, %0 ]
  %14 = phi ptr [ %13, %8 ], [ null, %0 ]
  %15 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rcu_node, ptr %13, i32 0, i32 30
  %20 = tail call i32 @_raw_spin_trylock(ptr noundef %19) #24
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i1 [ true, %12 ], [ %21, %18 ]
  %24 = icmp eq ptr %14, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  br label %29

29:                                               ; preds = %25, %22
  br i1 %23, label %63, label %8

30:                                               ; preds = %8, %0
  %31 = phi ptr [ null, %0 ], [ %13, %8 ]
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #24
  %33 = getelementptr inbounds %struct.rcu_node, ptr %31, i32 0, i32 30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  %36 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %37 = and i16 %36, 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #24
  br label %63

40:                                               ; preds = %30
  %41 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %42 = or i16 %41, 2
  store volatile i16 %42, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #24
  %43 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %44 = tail call ptr @llvm.thread.pointer() #24
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 983040
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load volatile i32, ptr %47, align 4
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51, %46, %40
  %56 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %57 = icmp ne i16 %56, 0
  %58 = icmp ne ptr %43, null
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %61, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 12), align 32
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  store volatile i32 %62, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 13), align 4
  tail call void @swake_up_one(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9)) #24
  br label %63

63:                                               ; preds = %60, %55, %51, %39, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @call_rcu(ptr noundef %0, ptr noundef %1) #1 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, 3
  %5 = icmp ne i32 %4, 0
  %6 = load i1, ptr @__call_rcu.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !16

9:                                                ; preds = %2
  store i1 true, ptr @__call_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3008, i32 noundef 9, ptr noundef null) #24
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.callback_head, ptr %0, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  store ptr null, ptr %0, align 4
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #16, !srcloc !9
  %16 = add i32 %15, ptrtoint (ptr @rcu_data to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 13
  %19 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 13, i32 5
  %20 = load volatile i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %46, !prof !16

23:                                               ; preds = %10
  %24 = load i32, ptr @rcu_scheduler_active, align 4
  %25 = icmp ne i32 %24, 0
  %26 = load i1, ptr @__call_rcu.__already_done.67, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !16

29:                                               ; preds = %23
  store i1 true, ptr @__call_rcu.__already_done.67, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3032, i32 noundef 9, ptr noundef null) #24
  br label %30

30:                                               ; preds = %29, %23
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !26
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #16, !srcloc !9
  %34 = add i32 %33, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 21) to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !27
  %39 = load i1, ptr @__call_rcu.__already_done.68, align 1
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %42, label %41, !prof !52

41:                                               ; preds = %30
  store i1 true, ptr @__call_rcu.__already_done.68, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3033, i32 noundef 9, ptr noundef null) #24
  br label %42

42:                                               ; preds = %41, %30
  %43 = load volatile ptr, ptr %18, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void @rcu_segcblist_init(ptr noundef %18) #24
  br label %46

46:                                               ; preds = %45, %42, %10
  %47 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr @qovld_calc, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %77, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 13, i32 3
  %53 = load volatile i32, ptr %52, align 4
  %54 = icmp slt i32 %53, %49
  %55 = getelementptr inbounds %struct.rcu_node, ptr %48, i32 0, i32 12
  %56 = load volatile i32, ptr %55, align 16
  %57 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, %56
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %54, %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %51
  tail call void @_raw_spin_lock(ptr noundef %48) #24
  %63 = load i32, ptr @qovld_calc, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load volatile i32, ptr %52, align 4
  %67 = icmp slt i32 %66, %63
  %68 = load i32, ptr %55, align 16
  %69 = load i32, ptr %57, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = or i32 %69, %68
  %73 = select i1 %67, i32 %71, i32 %72
  store volatile i32 %73, ptr %55, align 16
  br label %74

74:                                               ; preds = %65, %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %75 = load i16, ptr %48, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  br label %77

77:                                               ; preds = %74, %51, %46
  tail call void @rcu_segcblist_enqueue(ptr noundef %18, ptr noundef %0) #24
  %78 = icmp ult ptr %1, inttoptr (i32 4096 to ptr)
  br i1 %78, label %79, label %99

79:                                               ; preds = %77
  %80 = ptrtoint ptr %1 to i32
  %81 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %82 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 13, i32 3
  %83 = load volatile i32, ptr %82, align 4
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_kvfree_callback, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %79
  %87 = tail call ptr @llvm.thread.pointer() #24
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %118, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !53
  %98 = tail call i32 @__traceiter_rcu_kvfree_callback(ptr noundef null, ptr noundef %81, ptr noundef %0, i32 noundef %80, i32 noundef %83) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !54
  br label %118

99:                                               ; preds = %77
  %100 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %101 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 13, i32 3
  %102 = load volatile i32, ptr %101, align 4
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_callback, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = tail call ptr @llvm.thread.pointer() #24
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !55
  %117 = tail call i32 @__traceiter_rcu_callback(ptr noundef null, ptr noundef %100, ptr noundef %0, i32 noundef %102) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !56
  br label %118

118:                                              ; preds = %116, %105, %99, %97, %86, %79
  %119 = load ptr, ptr @__call_rcu.___tp_str, align 4
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_segcb_stats, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = tail call ptr @llvm.thread.pointer() #24
  %124 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = lshr i32 %125, 5
  %127 = getelementptr i32, ptr @__cpu_online_mask, i32 %126
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %125, 31
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %122
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !57
  %134 = tail call i32 @__traceiter_rcu_segcb_stats(ptr noundef null, ptr noundef %18, ptr noundef %119) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !58
  br label %135

135:                                              ; preds = %133, %122, %118
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !26
  %136 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %137 = inttoptr i32 %136 to ptr
  %138 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %137) #16, !srcloc !9
  %139 = add i32 %138, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 21) to i32)
  %140 = inttoptr i32 %139 to ptr
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !27
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  tail call fastcc void @invoke_rcu_core() #24
  br label %145

145:                                              ; preds = %144, %135
  %146 = and i32 %12, 128
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %145
  %149 = tail call ptr @llvm.thread.pointer() #24
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %186, label %159, !prof !16

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 13, i32 3
  %161 = load volatile i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 14
  %163 = load i32, ptr %162, align 4
  %164 = load i32, ptr @qhimark, align 4
  %165 = add i32 %164, %163
  %166 = icmp sgt i32 %161, %165
  br i1 %166, label %167, label %186, !prof !16

167:                                              ; preds = %159
  tail call fastcc void @note_gp_changes(ptr noundef %17) #24
  %168 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %169 = and i32 %168, 3
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load ptr, ptr %47, align 4
  tail call fastcc void @rcu_accelerate_cbs_unlocked(ptr noundef %172, ptr noundef %17) #24
  br label %186

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 17
  store i32 10000, ptr %174, align 4
  %175 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 28), align 32
  %176 = getelementptr inbounds %struct.rcu_data, ptr %17, i32 0, i32 16
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = tail call ptr @rcu_segcblist_first_pend_cb(ptr noundef %18) #24
  %181 = icmp eq ptr %180, %0
  br i1 %181, label %183, label %182

182:                                              ; preds = %179
  tail call void @rcu_force_quiescent_state() #24
  br label %183

183:                                              ; preds = %182, %179, %173
  %184 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 28), align 32
  store i32 %184, ptr %176, align 4
  %185 = load volatile i32, ptr %160, align 4
  store i32 %185, ptr %162, align 4
  br label %186

186:                                              ; preds = %183, %171, %159, %148, %145
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #24, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kvfree_call_rcu(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca [1 x ptr], align 4
  %4 = alloca [1 x %struct.rcu_synchronize], align 4
  %5 = icmp eq ptr %0, null
  %6 = ptrtoint ptr %1 to i32
  %7 = sub i32 0, %6
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = select i1 %5, ptr %1, ptr %8
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #16, !srcloc !9
  %14 = add i32 %13, ptrtoint (ptr @krc to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %15, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %16) #24
  %17 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %15, i32 0, i32 6
  %18 = load i8, ptr %17, align 1, !range !32
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %68, label %20, !prof !16

20:                                               ; preds = %2
  %21 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %9) #24
  %22 = zext i1 %21 to i32
  %23 = getelementptr %struct.kfree_rcu_cpu, ptr %15, i32 0, i32 1, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %24, align 4
  %28 = icmp eq i32 %27, 1022
  br i1 %28, label %29, label %61

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %15, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = add i32 %31, -1
  store volatile i32 %34, ptr %30, align 4
  %35 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %15, i32 0, i32 12
  %36 = tail call ptr @llist_del_first(ptr noundef %35) #24
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi ptr [ %36, %33 ], [ null, %29 ]
  %39 = icmp eq ptr %38, null
  %40 = and i1 %5, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %10) #24
  %42 = tail call i32 @__get_free_pages(i32 noundef 601280, i32 noundef 0) #24
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #16, !srcloc !9
  %48 = add i32 %47, ptrtoint (ptr @krc to i32)
  %49 = inttoptr i32 %48 to ptr
  %50 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %49, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %50) #24
  br label %51

51:                                               ; preds = %41, %37
  %52 = phi i32 [ %44, %41 ], [ %10, %37 ]
  %53 = phi ptr [ %49, %41 ], [ %15, %37 ]
  %54 = phi ptr [ %43, %41 ], [ %38, %37 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %51
  store i32 0, ptr %54, align 4
  %57 = getelementptr %struct.kfree_rcu_cpu, ptr %53, i32 0, i32 1, i32 %22
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, ptr %54, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  store ptr %54, ptr %57, align 4
  %60 = load i32, ptr %54, align 4
  br label %61

61:                                               ; preds = %56, %26
  %62 = phi i32 [ %52, %56 ], [ %10, %26 ]
  %63 = phi ptr [ %53, %56 ], [ %15, %26 ]
  %64 = phi i32 [ %60, %56 ], [ %27, %26 ]
  %65 = phi ptr [ %54, %56 ], [ %24, %26 ]
  %66 = add i32 %64, 1
  store i32 %66, ptr %65, align 4
  %67 = getelementptr %struct.kvfree_rcu_bulk_data, ptr %65, i32 0, i32 2, i32 %64
  store ptr %9, ptr %67, align 4
  br label %95

68:                                               ; preds = %51, %2
  %69 = phi i32 [ %52, %51 ], [ %10, %2 ]
  %70 = phi ptr [ %53, %51 ], [ %15, %2 ]
  %71 = load i32, ptr @rcu_scheduler_active, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %70, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #24, !srcloc !18
  %75 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %74) #24, !srcloc !44
  %76 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !45
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %70, i32 0, i32 9
  %80 = load volatile i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr @system_wq, align 4
  %84 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %70, i32 0, i32 8
  %85 = load i32, ptr @rcu_delay_page_cache_fill_msec, align 4
  %86 = tail call i32 @__msecs_to_jiffies(i32 noundef %85) #24
  %87 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %83, ptr noundef %84, i32 noundef %86) #24
  br label %91

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %70, i32 0, i32 11
  tail call void @hrtimer_init(ptr noundef %89, i32 noundef 1, i32 noundef 1) #24
  %90 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %70, i32 0, i32 11, i32 2
  store ptr @schedule_page_work_fn, ptr %90, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %89, i64 noundef 0, i64 noundef 0, i32 noundef 1) #24
  br label %91

91:                                               ; preds = %88, %82, %73, %68
  br i1 %5, label %113, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.callback_head, ptr %0, i32 0, i32 1
  store ptr %1, ptr %93, align 4
  %94 = load ptr, ptr %70, align 8
  store ptr %94, ptr %0, align 4
  store ptr %0, ptr %70, align 8
  br label %95

95:                                               ; preds = %92, %61
  %96 = phi ptr [ %63, %61 ], [ %70, %92 ]
  %97 = phi i32 [ %62, %61 ], [ %69, %92 ]
  %98 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %96, i32 0, i32 7
  %99 = load i32, ptr %98, align 8
  %100 = add i32 %99, 1
  store volatile i32 %100, ptr %98, align 8
  %101 = load i32, ptr @rcu_scheduler_active, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %96, i32 0, i32 5
  %105 = load i8, ptr %104, align 4, !range !32
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  store i8 1, ptr %104, align 4
  %108 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %96, i32 0, i32 4
  %109 = load ptr, ptr @system_wq, align 4
  %110 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %109, ptr noundef %108, i32 noundef 2) #24
  br label %111

111:                                              ; preds = %107, %103, %95
  %112 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %96, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %112, i32 noundef %97) #24
  br label %122

113:                                              ; preds = %91
  %114 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %70, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %114, i32 noundef %69) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !59
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 3), align 4
  %116 = icmp sgt i32 %115, 1
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !60
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = tail call zeroext i1 @rcu_gp_is_expedited() #24
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  tail call void @synchronize_rcu_expedited() #24
  br label %121

120:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 ptrtoint (ptr @call_rcu to i32), ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #24, !annotation !61
  call void @__wait_rcu_gp(i1 noundef zeroext false, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  br label %121

121:                                              ; preds = %120, %119, %113
  call void @kvfree(ptr noundef %9) #24
  br label %122

122:                                              ; preds = %121, %111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @synchronize_rcu() #1 {
  %1 = alloca [1 x ptr], align 4
  %2 = alloca [1 x %struct.rcu_synchronize], align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !59
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 3), align 4
  %4 = icmp sgt i32 %3, 1
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !60
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = tail call zeroext i1 @rcu_gp_is_expedited() #24
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @synchronize_rcu_expedited()
  br label %9

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #24
  store i32 ptrtoint (ptr @call_rcu to i32), ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false), !annotation !61
  call void @__wait_rcu_gp(i1 noundef zeroext false, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #24
  br label %9

9:                                                ; preds = %8, %7, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @kfree_rcu_scheduler_running() local_unnamed_addr #10 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %34

4:                                                ; preds = %30, %0
  %5 = phi i32 [ %31, %30 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @krc to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %9, i32 0, i32 3
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #24
  %12 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = getelementptr %struct.kfree_rcu_cpu, ptr %9, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr %9, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19, %15, %4
  %23 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %9, i32 0, i32 5
  %24 = load i8, ptr %23, align 4, !range !32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  store i8 1, ptr %23, align 4
  %27 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %9, i32 0, i32 4
  %28 = load ptr, ptr @system_wq, align 4
  %29 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef %5, ptr noundef %28, ptr noundef %27, i32 noundef 2) #24
  br label %30

30:                                               ; preds = %26, %22, %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #24
  %31 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #26
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %4, label %34

34:                                               ; preds = %30, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_expedited() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @synchronize_rcu_expedited() #1 {
  %1 = alloca %struct.wait_queue_entry, align 4
  %2 = alloca %struct.rcu_exp_work, align 4
  %3 = alloca [1 x ptr], align 4
  %4 = alloca [1 x %struct.rcu_synchronize], align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = load i32, ptr @rcu_scheduler_active, align 4
  %7 = icmp eq i32 %6, 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !61
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !59
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 3), align 4
  %9 = icmp sgt i32 %8, 1
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !60
  br i1 %9, label %10, label %297

10:                                               ; preds = %0
  %11 = tail call zeroext i1 @rcu_gp_is_normal() #24
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 ptrtoint (ptr @call_rcu to i32), ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !61
  call void @__wait_rcu_gp(i1 noundef zeroext false, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  br label %297

13:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !62
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %15 = add i32 %14, 7
  %16 = and i32 %15, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !63
  %17 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %18 = load ptr, ptr @rcu_exp_gp_seq_snap.___tp_str, align 4
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  %21 = tail call ptr @llvm.thread.pointer() #24
  br i1 %20, label %22, label %34

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %33 = tail call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %17, i32 noundef %16, ptr noundef %18) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %34

34:                                               ; preds = %32, %22, %13
  %35 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, ptrtoint (ptr @rcu_data to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.rcu_data, ptr %40, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rcu_node, ptr %42, i32 0, i32 33
  %44 = load volatile i32, ptr %43, align 4
  %45 = sub i32 %44, %16
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %34
  %48 = icmp eq ptr %42, @rcu_state
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 33), align 4
  %51 = sub i32 %50, %16
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %47
  %54 = tail call i32 @mutex_trylock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 18)) #24
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %190

56:                                               ; preds = %53, %49, %34
  %57 = icmp eq ptr %42, null
  br i1 %57, label %189, label %58

58:                                               ; preds = %185, %56
  %59 = phi ptr [ %187, %185 ], [ %42, %56 ]
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %61 = sub i32 %60, %16
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %65 = load ptr, ptr @sync_exp_work_done.___tp_str, align 4
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i32, ptr %35, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %78 = tail call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %64, i32 noundef %16, ptr noundef %65) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %79

79:                                               ; preds = %77, %68, %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !66
  br label %297

80:                                               ; preds = %58
  %81 = getelementptr inbounds %struct.rcu_node, ptr %59, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %81) #24
  %82 = getelementptr inbounds %struct.rcu_node, ptr %59, i32 0, i32 33
  %83 = load i32, ptr %82, align 4
  %84 = sub i32 %83, %16
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %86, label %161

86:                                               ; preds = %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %87 = load i16, ptr %81, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %81, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  %89 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %90 = getelementptr inbounds %struct.rcu_node, ptr %59, i32 0, i32 18
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr inbounds %struct.rcu_node, ptr %59, i32 0, i32 15
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.rcu_node, ptr %59, i32 0, i32 16
  %95 = load i32, ptr %94, align 64
  %96 = load ptr, ptr @exp_funnel_lock.___tp_str, align 4
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_funnel_lock, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %86
  %100 = load i32, ptr %35, align 8
  %101 = lshr i32 %100, 5
  %102 = getelementptr i32, ptr @__cpu_online_mask, i32 %101
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %100, 31
  %105 = shl nuw i32 1, %104
  %106 = and i32 %105, %103
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !67
  %109 = tail call i32 @__traceiter_rcu_exp_funnel_lock(ptr noundef null, ptr noundef %89, i8 noundef zeroext %91, i32 noundef %93, i32 noundef %95, ptr noundef %96) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !68
  br label %110

110:                                              ; preds = %108, %99, %86
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %112 = sub i32 %111, %16
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %131

114:                                              ; preds = %110
  %115 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %116 = load ptr, ptr @sync_exp_work_done.___tp_str, align 4
  %117 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i32, ptr %35, align 8
  %121 = lshr i32 %120, 5
  %122 = getelementptr i32, ptr @__cpu_online_mask, i32 %121
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %120, 31
  %125 = shl nuw i32 1, %124
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %119
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %129 = tail call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %115, i32 noundef %16, ptr noundef %116) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %130

130:                                              ; preds = %128, %119, %114
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !66
  br label %297

131:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i32 20, i1 false) #24, !annotation !61
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #24
  %132 = lshr i32 %15, 2
  %133 = and i32 %132, 3
  %134 = getelementptr %struct.rcu_node, ptr %59, i32 0, i32 34, i32 %133
  %135 = call i32 @prepare_to_wait_event(ptr noundef %134, ptr noundef nonnull %1, i32 noundef 2) #24
  %136 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %137 = sub i32 %136, %16
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %139, label %155

139:                                              ; preds = %155, %131
  %140 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %141 = load ptr, ptr @sync_exp_work_done.___tp_str, align 4
  %142 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %139
  %145 = load i32, ptr %35, align 8
  %146 = lshr i32 %145, 5
  %147 = getelementptr i32, ptr @__cpu_online_mask, i32 %146
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %145, 31
  %150 = shl nuw i32 1, %149
  %151 = and i32 %150, %148
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %144
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %154 = call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %140, i32 noundef %16, ptr noundef %141) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %160

155:                                              ; preds = %155, %131
  call void @schedule() #24
  %156 = call i32 @prepare_to_wait_event(ptr noundef %134, ptr noundef nonnull %1, i32 noundef 2) #24
  %157 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %158 = sub i32 %157, %16
  %159 = icmp sgt i32 %158, -1
  br i1 %159, label %139, label %155

160:                                              ; preds = %153, %144, %139
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !66
  call void @finish_wait(ptr noundef %134, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #24
  br label %297

161:                                              ; preds = %80
  store volatile i32 %16, ptr %82, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %162 = load i16, ptr %81, align 4
  %163 = add i16 %162, 1
  store i16 %163, ptr %81, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  %164 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %165 = getelementptr inbounds %struct.rcu_node, ptr %59, i32 0, i32 18
  %166 = load i8, ptr %165, align 1
  %167 = getelementptr inbounds %struct.rcu_node, ptr %59, i32 0, i32 15
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.rcu_node, ptr %59, i32 0, i32 16
  %170 = load i32, ptr %169, align 64
  %171 = load ptr, ptr @exp_funnel_lock.___tp_str.213, align 4
  %172 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_funnel_lock, i32 0, i32 1), align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %161
  %175 = load i32, ptr %35, align 8
  %176 = lshr i32 %175, 5
  %177 = getelementptr i32, ptr @__cpu_online_mask, i32 %176
  %178 = load volatile i32, ptr %177, align 4
  %179 = and i32 %175, 31
  %180 = shl nuw i32 1, %179
  %181 = and i32 %180, %178
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %174
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !67
  %184 = tail call i32 @__traceiter_rcu_exp_funnel_lock(ptr noundef null, ptr noundef %164, i8 noundef zeroext %166, i32 noundef %168, i32 noundef %170, ptr noundef %171) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !68
  br label %185

185:                                              ; preds = %183, %174, %161
  %186 = getelementptr inbounds %struct.rcu_node, ptr %59, i32 0, i32 20
  %187 = load ptr, ptr %186, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %58

189:                                              ; preds = %185, %56
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 18)) #24
  br label %190

190:                                              ; preds = %189, %53
  %191 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %192 = sub i32 %191, %16
  %193 = icmp sgt i32 %192, -1
  br i1 %193, label %194, label %211

194:                                              ; preds = %190
  %195 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %196 = load ptr, ptr @sync_exp_work_done.___tp_str, align 4
  %197 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %194
  %200 = load i32, ptr %35, align 8
  %201 = lshr i32 %200, 5
  %202 = getelementptr i32, ptr @__cpu_online_mask, i32 %201
  %203 = load volatile i32, ptr %202, align 4
  %204 = and i32 %200, 31
  %205 = shl nuw i32 1, %204
  %206 = and i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %199
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %209 = tail call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %195, i32 noundef %16, ptr noundef %196) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %210

210:                                              ; preds = %208, %199, %194
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !66
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 18)) #24
  br label %297

211:                                              ; preds = %190
  %212 = add i32 %191, 1
  store volatile i32 %212, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !69
  %213 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %214 = and i32 %213, 3
  %215 = icmp ne i32 %214, 1
  %216 = load i1, ptr @rcu_seq_start.__already_done, align 1
  %217 = xor i1 %216, true
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %220, !prof !16

219:                                              ; preds = %211
  store i1 true, ptr @rcu_seq_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 59, i32 noundef 9, ptr noundef null) #24
  br label %220

220:                                              ; preds = %219, %211
  %221 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %222 = load ptr, ptr @exp_funnel_lock.___tp_str.215, align 4
  %223 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %220
  %226 = load i32, ptr %35, align 8
  %227 = lshr i32 %226, 5
  %228 = getelementptr i32, ptr @__cpu_online_mask, i32 %227
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %226, 31
  %231 = shl nuw i32 1, %230
  %232 = and i32 %231, %229
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %225
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %235 = tail call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %221, i32 noundef %16, ptr noundef %222) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %236

236:                                              ; preds = %234, %225, %220
  br i1 %7, label %237, label %238, !prof !16

237:                                              ; preds = %236
  tail call fastcc void @rcu_exp_sel_wait_wake(i32 noundef %16)
  br label %245

238:                                              ; preds = %236
  store i32 %16, ptr %2, align 4
  %239 = getelementptr inbounds %struct.rcu_exp_work, ptr %2, i32 0, i32 1
  store i32 -32, ptr %239, align 4
  %240 = getelementptr inbounds %struct.rcu_exp_work, ptr %2, i32 0, i32 1, i32 1
  store volatile ptr %240, ptr %240, align 4
  %241 = getelementptr inbounds %struct.rcu_exp_work, ptr %2, i32 0, i32 1, i32 1, i32 1
  store ptr %240, ptr %241, align 4
  %242 = getelementptr inbounds %struct.rcu_exp_work, ptr %2, i32 0, i32 1, i32 2
  store ptr @wait_rcu_exp_gp, ptr %242, align 4
  %243 = load ptr, ptr @rcu_gp_wq, align 4
  %244 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %243, ptr noundef %239) #24
  br label %245

245:                                              ; preds = %238, %237
  %246 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %247 = sub i32 %246, %16
  %248 = icmp sgt i32 %247, -1
  br i1 %248, label %249, label %266

249:                                              ; preds = %245
  %250 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %251 = load ptr, ptr @sync_exp_work_done.___tp_str, align 4
  %252 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %249
  %255 = load i32, ptr %35, align 8
  %256 = lshr i32 %255, 5
  %257 = getelementptr i32, ptr @__cpu_online_mask, i32 %256
  %258 = load volatile i32, ptr %257, align 4
  %259 = and i32 %255, 31
  %260 = shl nuw i32 1, %259
  %261 = and i32 %260, %258
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %254
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %264 = call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %250, i32 noundef %16, ptr noundef %251) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %265

265:                                              ; preds = %263, %254, %249
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !66
  br label %296

266:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !61
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #24
  %267 = lshr i32 %15, 2
  %268 = and i32 %267, 3
  %269 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 34, i32 %268
  %270 = call i32 @prepare_to_wait_event(ptr noundef %269, ptr noundef nonnull %5, i32 noundef 2) #24
  %271 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %272 = sub i32 %271, %16
  %273 = icmp sgt i32 %272, -1
  br i1 %273, label %274, label %290

274:                                              ; preds = %290, %266
  %275 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %276 = load ptr, ptr @sync_exp_work_done.___tp_str, align 4
  %277 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %295

279:                                              ; preds = %274
  %280 = load i32, ptr %35, align 8
  %281 = lshr i32 %280, 5
  %282 = getelementptr i32, ptr @__cpu_online_mask, i32 %281
  %283 = load volatile i32, ptr %282, align 4
  %284 = and i32 %280, 31
  %285 = shl nuw i32 1, %284
  %286 = and i32 %285, %283
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %279
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %289 = call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %275, i32 noundef %16, ptr noundef %276) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %295

290:                                              ; preds = %290, %266
  call void @schedule() #24
  %291 = call i32 @prepare_to_wait_event(ptr noundef %269, ptr noundef nonnull %5, i32 noundef 2) #24
  %292 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %293 = sub i32 %292, %16
  %294 = icmp sgt i32 %293, -1
  br i1 %294, label %274, label %290

295:                                              ; preds = %288, %279, %274
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !66
  call void @finish_wait(ptr noundef %269, ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #24
  br label %296

296:                                              ; preds = %295, %265
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !70
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 18)) #24
  br label %297

297:                                              ; preds = %296, %210, %160, %130, %79, %12, %0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #24
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_rcu_gp(i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_state_synchronize_rcu() #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !71
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %2 = add i32 %1, 7
  %3 = and i32 %2, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !63
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @start_poll_synchronize_rcu() #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !71
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %2 = add i32 %1, 7
  %3 = and i32 %2, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !63
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #16, !srcloc !9
  %8 = add i32 %7, ptrtoint (ptr @rcu_data to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rcu_data, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  tail call void @_raw_spin_lock(ptr noundef %11) #24
  %12 = tail call fastcc zeroext i1 @rcu_start_this_gp(ptr noundef %11, ptr noundef %9, i32 noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %4) #24
  br i1 %12, label %13, label %34

13:                                               ; preds = %0
  %14 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %15 = tail call ptr @llvm.thread.pointer() #24
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 983040
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load volatile i32, ptr %18, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22, %17, %13
  %27 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %28 = icmp ne i16 %27, 0
  %29 = icmp ne ptr %14, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 12), align 32
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  store volatile i32 %33, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 13), align 4
  tail call void @swake_up_one(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9)) #24
  br label %34

34:                                               ; preds = %31, %26, %22, %0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rcu_start_this_gp(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr @rcu_start_this_gp.___tp_str, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %6 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 18
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 16
  %13 = load i32, ptr %12, align 64
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_future_grace_period, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = tail call ptr @llvm.thread.pointer() #24
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !72
  %28 = tail call i32 @__traceiter_rcu_future_grace_period(ptr noundef null, ptr noundef %5, i32 noundef %7, i32 noundef %2, i8 noundef zeroext %9, i32 noundef %11, i32 noundef %13, ptr noundef %4) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !73
  br label %29

29:                                               ; preds = %27, %16, %3
  %30 = add i32 %2, -1
  %31 = and i32 %30, -4
  br label %32

32:                                               ; preds = %115, %29
  %33 = phi ptr [ %0, %29 ], [ %117, %115 ]
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @_raw_spin_lock(ptr noundef %33) #24
  br label %36

36:                                               ; preds = %35, %32
  %37 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = sub i32 %38, %2
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = sub i32 %31, %43
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  br i1 %34, label %77, label %47

47:                                               ; preds = %46
  %48 = load volatile i32, ptr %42, align 4
  %49 = and i32 %48, 3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %47, %41, %36
  %52 = load ptr, ptr @rcu_start_this_gp.___tp_str.81, align 4
  %53 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %54 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 1
  %55 = load volatile i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 18
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 16
  %61 = load i32, ptr %60, align 64
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_future_grace_period, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %220

64:                                               ; preds = %51
  %65 = tail call ptr @llvm.thread.pointer() #24
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %220, label %75

75:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !72
  %76 = tail call i32 @__traceiter_rcu_future_grace_period(ptr noundef null, ptr noundef %53, i32 noundef %55, i32 noundef %2, i8 noundef zeroext %57, i32 noundef %59, i32 noundef %61, ptr noundef %52) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !73
  br label %220

77:                                               ; preds = %46
  store volatile i32 %2, ptr %37, align 8
  %78 = load volatile i32, ptr %42, align 4
  %79 = and i32 %78, 3
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %115, label %85

81:                                               ; preds = %47
  store volatile i32 %2, ptr %37, align 8
  %82 = load volatile i32, ptr %42, align 4
  %83 = and i32 %82, 3
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %108, label %85

85:                                               ; preds = %81, %77
  %86 = phi ptr [ %33, %81 ], [ %0, %77 ]
  %87 = load ptr, ptr @rcu_start_this_gp.___tp_str.83, align 4
  %88 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %89 = load volatile i32, ptr %6, align 4
  %90 = load i8, ptr %8, align 1
  %91 = load i32, ptr %10, align 4
  %92 = load i32, ptr %12, align 64
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_future_grace_period, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %220

95:                                               ; preds = %85
  %96 = tail call ptr @llvm.thread.pointer() #24
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 5
  %100 = getelementptr i32, ptr @__cpu_online_mask, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %98, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, %101
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %220, label %106

106:                                              ; preds = %95
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !72
  %107 = tail call i32 @__traceiter_rcu_future_grace_period(ptr noundef null, ptr noundef %88, i32 noundef %89, i32 noundef %2, i8 noundef zeroext %90, i32 noundef %91, i32 noundef %92, ptr noundef %87) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !73
  br label %220

108:                                              ; preds = %81
  %109 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 20
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %113 = load i16, ptr %33, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  br label %115

115:                                              ; preds = %112, %108, %77
  %116 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 20
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %32

119:                                              ; preds = %115
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %121 = and i32 %120, 3
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %148, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr @rcu_start_this_gp.___tp_str.85, align 4
  %125 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %126 = load volatile i32, ptr %42, align 4
  %127 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 18
  %128 = load i8, ptr %127, align 1
  %129 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 15
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 16
  %132 = load i32, ptr %131, align 64
  %133 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_future_grace_period, i32 0, i32 1), align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %220

135:                                              ; preds = %123
  %136 = tail call ptr @llvm.thread.pointer() #24
  %137 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 5
  %140 = getelementptr i32, ptr @__cpu_online_mask, i32 %139
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %138, 31
  %143 = shl nuw i32 1, %142
  %144 = and i32 %143, %141
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %220, label %146

146:                                              ; preds = %135
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !72
  %147 = tail call i32 @__traceiter_rcu_future_grace_period(ptr noundef null, ptr noundef %125, i32 noundef %126, i32 noundef %2, i8 noundef zeroext %128, i32 noundef %130, i32 noundef %132, ptr noundef %124) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !73
  br label %220

148:                                              ; preds = %119
  %149 = load ptr, ptr @rcu_start_this_gp.___tp_str.87, align 4
  %150 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %151 = load volatile i32, ptr %42, align 4
  %152 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 18
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 15
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr inbounds %struct.rcu_node, ptr %33, i32 0, i32 16
  %157 = load i32, ptr %156, align 64
  %158 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_future_grace_period, i32 0, i32 1), align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %148
  %161 = tail call ptr @llvm.thread.pointer() #24
  %162 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 2
  %163 = load i32, ptr %162, align 8
  %164 = lshr i32 %163, 5
  %165 = getelementptr i32, ptr @__cpu_online_mask, i32 %164
  %166 = load volatile i32, ptr %165, align 4
  %167 = and i32 %163, 31
  %168 = shl nuw i32 1, %167
  %169 = and i32 %168, %166
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %160
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !72
  %172 = tail call i32 @__traceiter_rcu_future_grace_period(ptr noundef null, ptr noundef %150, i32 noundef %151, i32 noundef %2, i8 noundef zeroext %153, i32 noundef %155, i32 noundef %157, ptr noundef %149) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !73
  br label %173

173:                                              ; preds = %171, %160, %148
  %174 = load i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %175 = or i16 %174, 1
  store volatile i16 %175, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %176 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %176, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 32), align 16
  %177 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %201

179:                                              ; preds = %173
  %180 = load ptr, ptr @rcu_start_this_gp.___tp_str.89, align 4
  %181 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %182 = load volatile i32, ptr %42, align 4
  %183 = load i8, ptr %152, align 1
  %184 = load i32, ptr %154, align 4
  %185 = load i32, ptr %156, align 64
  %186 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_future_grace_period, i32 0, i32 1), align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %220

188:                                              ; preds = %179
  %189 = tail call ptr @llvm.thread.pointer() #24
  %190 = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 2
  %191 = load i32, ptr %190, align 8
  %192 = lshr i32 %191, 5
  %193 = getelementptr i32, ptr @__cpu_online_mask, i32 %192
  %194 = load volatile i32, ptr %193, align 4
  %195 = and i32 %191, 31
  %196 = shl nuw i32 1, %195
  %197 = and i32 %196, %194
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %220, label %199

199:                                              ; preds = %188
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !72
  %200 = tail call i32 @__traceiter_rcu_future_grace_period(ptr noundef null, ptr noundef %181, i32 noundef %182, i32 noundef %2, i8 noundef zeroext %183, i32 noundef %184, i32 noundef %185, ptr noundef %180) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !73
  br label %220

201:                                              ; preds = %173
  %202 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %203 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %204 = load ptr, ptr @rcu_start_this_gp.___tp_str.91, align 4
  %205 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %201
  %208 = tail call ptr @llvm.thread.pointer() #24
  %209 = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 2
  %210 = load i32, ptr %209, align 8
  %211 = lshr i32 %210, 5
  %212 = getelementptr i32, ptr @__cpu_online_mask, i32 %211
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %210, 31
  %215 = shl nuw i32 1, %214
  %216 = and i32 %215, %213
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %207
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %219 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %202, i32 noundef %203, ptr noundef %204) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %220

220:                                              ; preds = %218, %207, %201, %199, %188, %179, %146, %135, %123, %106, %95, %85, %75, %64, %51
  %221 = phi ptr [ %33, %51 ], [ %33, %64 ], [ %33, %75 ], [ %86, %85 ], [ %86, %95 ], [ %86, %106 ], [ %33, %123 ], [ %33, %135 ], [ %33, %146 ], [ %33, %179 ], [ %33, %188 ], [ %33, %199 ], [ %33, %201 ], [ %33, %207 ], [ %33, %218 ]
  %222 = phi i1 [ false, %51 ], [ false, %64 ], [ false, %75 ], [ false, %85 ], [ false, %95 ], [ false, %106 ], [ false, %123 ], [ false, %135 ], [ false, %146 ], [ false, %179 ], [ false, %188 ], [ false, %199 ], [ true, %201 ], [ true, %207 ], [ true, %218 ]
  %223 = load i32, ptr %37, align 8
  %224 = sub i32 %2, %223
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 2
  store volatile i32 %223, ptr %227, align 8
  %228 = load i32, ptr %37, align 8
  %229 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 1
  store volatile i32 %228, ptr %229, align 4
  br label %230

230:                                              ; preds = %226, %220
  br i1 %34, label %234, label %231

231:                                              ; preds = %230
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %232 = load i16, ptr %221, align 4
  %233 = add i16 %232, 1
  store i16 %233, ptr %221, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  br label %234

234:                                              ; preds = %231, %230
  ret i1 %222
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @poll_state_synchronize_rcu(i32 noundef %0) #1 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %3 = sub i32 %2, %0
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !74
  br label %6

6:                                                ; preds = %5, %1
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cond_synchronize_rcu(i32 noundef %0) #1 {
  %2 = alloca [1 x ptr], align 4
  %3 = alloca [1 x %struct.rcu_synchronize], align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %5 = sub i32 %4, %0
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !74
  br label %15

8:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !59
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 3), align 4
  %10 = icmp sgt i32 %9, 1
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !60
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @rcu_gp_is_expedited() #24
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @synchronize_rcu_expedited() #24
  br label %15

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  store i32 ptrtoint (ptr @call_rcu to i32), ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #24, !annotation !61
  call void @__wait_rcu_gp(i1 noundef zeroext false, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  br label %15

15:                                               ; preds = %14, %13, %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_barrier() #1 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  %2 = add i32 %1, 7
  %3 = and i32 %2, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !63
  %4 = load ptr, ptr @rcu_barrier.___tp_str, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %0
  %10 = tail call ptr @llvm.thread.pointer() #24
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %21 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %5, ptr noundef %4, i32 noundef -1, i32 noundef %6, i32 noundef %3) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %22

22:                                               ; preds = %20, %9, %0
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 14)) #24
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  %24 = sub i32 %23, %3
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load ptr, ptr @rcu_barrier.___tp_str.18, align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = tail call ptr @llvm.thread.pointer() #24
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %44 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %28, ptr noundef %27, i32 noundef -1, i32 noundef %29, i32 noundef %23) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %45

45:                                               ; preds = %43, %32, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !77
  br label %204

46:                                               ; preds = %22
  %47 = add i32 %23, 1
  store volatile i32 %47, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !69
  %48 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  %49 = and i32 %48, 3
  %50 = icmp ne i32 %49, 1
  %51 = load i1, ptr @rcu_seq_start.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %56, !prof !16

54:                                               ; preds = %46
  store i1 true, ptr @rcu_seq_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 59, i32 noundef 9, ptr noundef null) #24
  %55 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  br label %56

56:                                               ; preds = %54, %46
  %57 = phi i32 [ %48, %46 ], [ %55, %54 ]
  %58 = load ptr, ptr @rcu_barrier.___tp_str.20, align 4
  %59 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = tail call ptr @llvm.thread.pointer() #24
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 5
  %68 = getelementptr i32, ptr @__cpu_online_mask, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %66, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %75 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %59, ptr noundef %58, i32 noundef -1, i32 noundef %60, i32 noundef %57) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %76

76:                                               ; preds = %74, %63, %56
  store i32 0, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 16), align 64
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 16, i32 1), ptr noundef nonnull @.str.122, ptr noundef nonnull @init_completion.__key) #24
  store volatile i32 2, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  tail call void @cpus_read_lock() #24
  %77 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  %78 = load i32, ptr @nr_cpu_ids, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %166

80:                                               ; preds = %162, %76
  %81 = phi i32 [ %163, %162 ], [ %77, %76 ]
  %82 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = lshr i32 %81, 5
  %85 = getelementptr i32, ptr @__cpu_online_mask, i32 %84
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %81, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %86, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %162, label %91, !prof !16

91:                                               ; preds = %80
  %92 = add i32 %83, ptrtoint (ptr @rcu_data to i32)
  %93 = inttoptr i32 %92 to ptr
  %94 = getelementptr inbounds %struct.rcu_data, ptr %93, i32 0, i32 13, i32 3
  %95 = load volatile i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %124, label %97

97:                                               ; preds = %91
  %98 = load volatile i32, ptr %85, align 4
  %99 = and i32 %98, %88
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %124, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr @rcu_barrier.___tp_str.22, align 4
  %103 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  %104 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  %109 = tail call ptr @llvm.thread.pointer() #24
  %110 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 5
  %113 = getelementptr i32, ptr @__cpu_online_mask, i32 %112
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %111, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %120 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %104, ptr noundef %102, i32 noundef %81, i32 noundef %105, i32 noundef %103) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %121

121:                                              ; preds = %119, %108, %101
  %122 = inttoptr i32 %81 to ptr
  %123 = tail call i32 @smp_call_function_single(i32 noundef %81, ptr noundef nonnull @rcu_barrier_func, ptr noundef %122, i32 noundef 1) #24
  br label %162

124:                                              ; preds = %97, %91
  %125 = load volatile i32, ptr %94, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %124
  %128 = load volatile i32, ptr %85, align 4
  %129 = and i32 %128, %88
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135, !prof !16

131:                                              ; preds = %127
  %132 = load ptr, ptr @rcu_barrier.___tp_str.24, align 4
  %133 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  tail call fastcc void @rcu_barrier_trace(ptr noundef %132, i32 noundef %81, i32 noundef %133)
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #24, !srcloc !78
  %134 = inttoptr i32 %81 to ptr
  tail call void @rcu_barrier_func(ptr noundef %134)
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  br label %162

135:                                              ; preds = %127, %124
  %136 = load volatile i32, ptr %85, align 4
  %137 = and i32 %136, %88
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142, !prof !16

139:                                              ; preds = %135
  %140 = load ptr, ptr @rcu_barrier.___tp_str.26, align 4
  %141 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  tail call fastcc void @rcu_barrier_trace(ptr noundef %140, i32 noundef %81, i32 noundef %141)
  br label %162

142:                                              ; preds = %135
  %143 = load ptr, ptr @rcu_barrier.___tp_str.28, align 4
  %144 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  %145 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %146 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %142
  %150 = tail call ptr @llvm.thread.pointer() #24
  %151 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %152 = load i32, ptr %151, align 8
  %153 = lshr i32 %152, 5
  %154 = getelementptr i32, ptr @__cpu_online_mask, i32 %153
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %152, 31
  %157 = shl nuw i32 1, %156
  %158 = and i32 %157, %155
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %149
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %161 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %145, ptr noundef %143, i32 noundef %81, i32 noundef %146, i32 noundef %144) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %162

162:                                              ; preds = %160, %149, %142, %139, %131, %121, %80
  %163 = tail call i32 @cpumask_next(i32 noundef %81, ptr noundef nonnull @__cpu_possible_mask) #26
  %164 = load i32, ptr @nr_cpu_ids, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %80, label %166

166:                                              ; preds = %162, %76
  tail call void @cpus_read_unlock() #24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !80
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15)) #24, !srcloc !18
  %167 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), i32 2, ptr elementtype(i32) getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15)) #24, !srcloc !81
  %168 = extractvalue { i32, i32 } %167, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !82
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  tail call void @complete(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 16)) #24
  br label %171

171:                                              ; preds = %170, %166
  tail call void @wait_for_completion(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 16)) #24
  %172 = load ptr, ptr @rcu_barrier.___tp_str.30, align 4
  %173 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  %174 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %175 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %176 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %171
  %179 = tail call ptr @llvm.thread.pointer() #24
  %180 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 2
  %181 = load i32, ptr %180, align 8
  %182 = lshr i32 %181, 5
  %183 = getelementptr i32, ptr @__cpu_online_mask, i32 %182
  %184 = load volatile i32, ptr %183, align 4
  %185 = and i32 %181, 31
  %186 = shl nuw i32 1, %185
  %187 = and i32 %186, %184
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %178
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %190 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %174, ptr noundef %172, i32 noundef -1, i32 noundef %175, i32 noundef %173) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %191

191:                                              ; preds = %189, %178, %171
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !83
  %192 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  %193 = and i32 %192, 3
  %194 = icmp eq i32 %193, 0
  %195 = load i1, ptr @rcu_seq_end.__already_done, align 1
  %196 = xor i1 %195, true
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %198, label %200, !prof !16

198:                                              ; preds = %191
  store i1 true, ptr @rcu_seq_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 72, i32 noundef 9, ptr noundef null) #24
  %199 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  br label %200

200:                                              ; preds = %198, %191
  %201 = phi i32 [ %199, %198 ], [ %192, %191 ]
  %202 = or i32 %201, 3
  %203 = add i32 %202, 1
  store volatile i32 %203, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  br label %204

204:                                              ; preds = %200, %45
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 14)) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_barrier_trace(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #24
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %20 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef %2) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %21

21:                                               ; preds = %19, %8, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_barrier_func(ptr noundef %0) #1 {
  %2 = ptrtoint ptr %0 to i32
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %2
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @rcu_data to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr @rcu_barrier_func.___tp_str, align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  %9 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = tail call ptr @llvm.thread.pointer() #24
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %25 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %9, ptr noundef %7, i32 noundef -1, i32 noundef %10, i32 noundef %8) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %26

26:                                               ; preds = %24, %13, %1
  %27 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 26, i32 1
  store ptr @rcu_barrier_callback, ptr %27, align 4
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 26
  %30 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 13
  %31 = tail call zeroext i1 @rcu_segcblist_entrain(ptr noundef %30, ptr noundef %29) #24
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15)) #24, !srcloc !18
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15)) #24, !srcloc !84
  br label %54

34:                                               ; preds = %26
  %35 = load ptr, ptr @rcu_barrier_func.___tp_str.124, align 4
  %36 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  %37 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = tail call ptr @llvm.thread.pointer() #24
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %53 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %37, ptr noundef %35, i32 noundef -1, i32 noundef %38, i32 noundef %36) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %54

54:                                               ; preds = %52, %41, %34, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcutree_prepare_cpu(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rcu_state) #24
  %7 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 14
  store i32 0, ptr %7, align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 28), align 32
  %9 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 16
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr @blimit, align 4
  %11 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 17
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 19
  store i32 1, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %13 = load i16, ptr @rcu_state, align 64
  %14 = add i16 %13, 1
  store i16 %14, ptr @rcu_state, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  %15 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 13, i32 5
  %16 = load volatile i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 13
  tail call void @rcu_segcblist_init(ptr noundef %20) #24
  br label %21

21:                                               ; preds = %19, %1
  %22 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  tail call void @_raw_spin_lock(ptr noundef %23) #24
  %24 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 4
  store i8 1, ptr %24, align 1
  %25 = getelementptr inbounds %struct.rcu_node, ptr %23, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  store i32 %26, ptr %5, align 4
  %27 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 2
  store i8 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 3
  store i8 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 33
  store i8 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 32
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 32, i32 0, i32 1
  store i32 8, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 32, i32 1
  store ptr @rcu_iw_handler, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 32, i32 2
  store ptr null, ptr %34, align 4
  %35 = add i32 %26, -1
  %36 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 34
  store i32 %35, ptr %36, align 4
  %37 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %38 = load ptr, ptr @rcutree_prepare_cpu.___tp_str, align 4
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %21
  %42 = tail call ptr @llvm.thread.pointer() #24
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %53 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %37, i32 noundef %26, ptr noundef %38) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %54

54:                                               ; preds = %52, %41, %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %6) #24
  %55 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 3), align 4
  %56 = add i32 %55, 1
  store volatile i32 %56, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 3), align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_iw_handler(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -172
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #24
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load i8, ptr %4, align 4, !range !32
  %6 = icmp eq i8 %5, 0
  %7 = load i1, ptr @rcu_iw_handler.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !16

10:                                               ; preds = %1
  store i1 true, ptr @rcu_iw_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 192, i32 noundef 9, ptr noundef null) #24
  br label %11

11:                                               ; preds = %10, %1
  br i1 %6, label %16, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 20
  store i32 %14, ptr %15, align 4
  store i8 0, ptr %4, align 4
  br label %16

16:                                               ; preds = %12, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %17 = load i16, ptr %3, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcutree_online_cpu(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #24
  %9 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rcu_node, ptr %7, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #24
  %14 = load i32, ptr @rcu_scheduler_active, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %1
  %17 = load i32, ptr %2, align 4
  %18 = add i32 %17, ptrtoint (ptr @rcu_data to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.rcu_data, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !85
  %22 = tail call ptr @llvm.thread.pointer() #24
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.rcu_node, ptr %21, i32 0, i32 9
  %26 = load volatile i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rcu_data, ptr %19, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.rcu_data, ptr %19, i32 0, i32 2
  %33 = getelementptr inbounds %struct.anon.95, ptr %32, i32 0, i32 1
  %34 = load volatile i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %16
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !86
  br label %58

37:                                               ; preds = %31
  %38 = icmp eq i32 %24, %0
  br i1 %38, label %39, label %51

39:                                               ; preds = %37
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #16, !srcloc !9
  %44 = add i32 %43, ptrtoint (ptr getelementptr inbounds (%struct.anon.95, ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 2), i32 0, i32 1) to i32)
  %45 = inttoptr i32 %44 to ptr
  store i8 1, ptr %45, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !87
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #16, !srcloc !9
  %49 = add i32 %48, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %50 = inttoptr i32 %49 to ptr
  store volatile i8 1, ptr %50, align 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %22) #24
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #24, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !88
  br label %58

51:                                               ; preds = %37
  %52 = tail call i32 @smp_call_function_single(i32 noundef %0, ptr noundef nonnull @rcu_exp_handler, ptr noundef null, i32 noundef 0) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !89
  %53 = icmp ne i32 %52, 0
  %54 = load i1, ptr @sync_sched_exp_online_cleanup.__already_done, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58, !prof !16

57:                                               ; preds = %51
  store i1 true, ptr @sync_sched_exp_online_cleanup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 781, i32 noundef 9, ptr noundef null) #24
  br label %58

58:                                               ; preds = %57, %51, %39, %36, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcutree_offline_cpu(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #24
  %9 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, -1
  %12 = getelementptr inbounds %struct.rcu_node, ptr %7, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %11
  store i32 %14, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_cpu_starting(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 6
  %7 = load i8, ptr %6, align 1, !range !32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %95

9:                                                ; preds = %1
  store i8 1, ptr %6, align 1
  %10 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rcu_node, ptr %11, i32 0, i32 8
  %15 = load i32, ptr %14, align 32
  %16 = add i32 %15, 1
  store volatile i32 %16, ptr %14, align 32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = load i1, ptr @rcu_cpu_starting.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !16

22:                                               ; preds = %9
  store i1 true, ptr @rcu_cpu_starting.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4291, i32 noundef 9, ptr noundef null) #24
  br label %23

23:                                               ; preds = %22, %9
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #16, !srcloc !9
  %27 = add i32 %26, ptrtoint (ptr @rcu_data to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.rcu_data, ptr %28, i32 0, i32 21
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = tail call fastcc i32 @rcu_dynticks_inc(i32 noundef 1) #24
  br label %35

35:                                               ; preds = %33, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !90
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #24
  %37 = getelementptr inbounds %struct.rcu_node, ptr %11, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, %13
  store volatile i32 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.rcu_node, ptr %11, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %13
  %43 = icmp eq i32 %42, 0
  %44 = or i32 %41, %13
  store i32 %44, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !91
  %45 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 2), align 8
  %46 = zext i1 %43 to i32
  %47 = add i32 %45, %46
  store volatile i32 %47, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 2), align 8
  %48 = load volatile i32, ptr %5, align 4
  %49 = add i32 %48, 1073741823
  %50 = getelementptr inbounds %struct.rcu_node, ptr %11, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = sub i32 %49, %51
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 5
  store volatile i8 1, ptr %55, align 4
  %56 = load i32, ptr %50, align 4
  br label %57

57:                                               ; preds = %54, %35
  %58 = phi i32 [ %56, %54 ], [ %51, %35 ]
  %59 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 34
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 1073741823, %58
  %62 = add i32 %61, %60
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = add i32 %58, 1073741823
  store i32 %65, ptr %59, align 4
  br label %66

66:                                               ; preds = %64, %57
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %68 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 37
  store i32 %67, ptr %68, align 4
  %69 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %70 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 38
  store i16 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.rcu_node, ptr %11, i32 0, i32 4
  %72 = load i32, ptr %71, align 16
  %73 = and i32 %72, %13
  %74 = icmp ne i32 %73, 0
  %75 = load i1, ptr @rcu_cpu_starting.__already_done.33, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !16

78:                                               ; preds = %66
  store i1 true, ptr @rcu_cpu_starting.__already_done.33, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4306, i32 noundef 9, ptr noundef null) #24
  br label %79

79:                                               ; preds = %78, %66
  br i1 %74, label %80, label %84

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 23
  store volatile i8 0, ptr %81, align 1
  %82 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 22
  store volatile i8 0, ptr %82, align 4
  %83 = load i32, ptr %50, align 4
  tail call fastcc void @rcu_report_qs_rnp(i32 noundef %13, ptr noundef %11, i32 noundef %83, i32 noundef %36)
  br label %85

84:                                               ; preds = %79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %36) #24
  br label %85

85:                                               ; preds = %84, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !92
  %86 = load i32, ptr %14, align 32
  %87 = add i32 %86, 1
  store volatile i32 %87, ptr %14, align 32
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  %90 = load i1, ptr @rcu_cpu_starting.__already_done.34, align 1
  %91 = xor i1 %90, true
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %93, label %94, !prof !16

93:                                               ; preds = %85
  store i1 true, ptr @rcu_cpu_starting.__already_done.34, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4315, i32 noundef 9, ptr noundef null) #24
  br label %94

94:                                               ; preds = %93, %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !93
  br label %95

95:                                               ; preds = %94, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_report_qs_rnp(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.rcu_node, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, %0
  %8 = icmp eq i32 %7, 0
  %9 = icmp ne i32 %0, 0
  %10 = and i1 %9, %8
  br i1 %10, label %21, label %11

11:                                               ; preds = %73, %4
  %12 = phi i32 [ %80, %73 ], [ %6, %4 ]
  %13 = phi ptr [ %79, %73 ], [ %5, %4 ]
  %14 = phi i32 [ %75, %73 ], [ %0, %4 ]
  %15 = phi ptr [ %76, %73 ], [ %1, %4 ]
  %16 = phi i32 [ %77, %73 ], [ %3, %4 ]
  %17 = phi i32 [ %78, %73 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %24, label %21

21:                                               ; preds = %73, %11, %4
  %22 = phi i32 [ %3, %4 ], [ %16, %11 ], [ %77, %73 ]
  %23 = phi ptr [ %1, %4 ], [ %15, %11 ], [ %76, %73 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %22) #24
  br label %116

24:                                               ; preds = %11
  %25 = icmp ne i32 %17, 0
  %26 = load i1, ptr @rcu_report_qs_rnp.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31, !prof !16

29:                                               ; preds = %24
  store i1 true, ptr @rcu_report_qs_rnp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2199, i32 noundef 9, ptr noundef null) #24
  %30 = load i32, ptr %13, align 16
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi i32 [ %30, %29 ], [ %12, %24 ]
  %33 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 18
  %34 = load i8, ptr %33, align 1
  %35 = xor i32 %14, -1
  %36 = and i32 %32, %35
  store volatile i32 %36, ptr %13, align 16
  %37 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %38 = load i32, ptr %18, align 4
  %39 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 16
  %42 = load i32, ptr %41, align 64
  %43 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 22
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ne ptr %44, null
  %46 = zext i1 %45 to i32
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_quiescent_state_report, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %31
  %50 = tail call ptr @llvm.thread.pointer() #24
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !94
  %61 = tail call i32 @__traceiter_rcu_quiescent_state_report(ptr noundef null, ptr noundef %37, i32 noundef %38, i32 noundef %14, i32 noundef %36, i8 noundef zeroext %34, i32 noundef %40, i32 noundef %42, i32 noundef %46) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !95
  %62 = load i32, ptr %13, align 16
  br label %63

63:                                               ; preds = %60, %49, %31
  %64 = phi i32 [ %36, %31 ], [ %36, %49 ], [ %62, %60 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, ptr %18, align 4
  %68 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 3
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 20
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %85, label %73

72:                                               ; preds = %63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #24
  br label %116

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 14
  %75 = load i32, ptr %74, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #24
  %76 = load ptr, ptr %69, align 8
  %77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %76) #24
  %78 = load volatile i32, ptr %13, align 16
  %79 = getelementptr inbounds %struct.rcu_node, ptr %76, i32 0, i32 4
  %80 = load i32, ptr %79, align 16
  %81 = and i32 %80, %75
  %82 = icmp eq i32 %81, 0
  %83 = icmp ne i32 %75, 0
  %84 = and i1 %83, %82
  br i1 %84, label %21, label %11

85:                                               ; preds = %66
  %86 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  %89 = load i1, ptr @rcu_report_qs_rsp.__already_done, align 1
  %90 = xor i1 %89, true
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %93, !prof !16

92:                                               ; preds = %85
  store i1 true, ptr @rcu_report_qs_rsp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2158, i32 noundef 9, ptr noundef null) #24
  br label %93

93:                                               ; preds = %92, %85
  %94 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %95 = or i16 %94, 2
  store volatile i16 %95, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcu_state, i32 noundef %16) #24
  %96 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %97 = tail call ptr @llvm.thread.pointer() #24
  %98 = icmp eq ptr %97, %96
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 983040
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load volatile i32, ptr %100, align 4
  %106 = and i32 %105, 256
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104, %99, %93
  %109 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %110 = icmp ne i16 %109, 0
  %111 = icmp ne ptr %96, null
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %114, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 12), align 32
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  store volatile i32 %115, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 13), align 4
  tail call void @swake_up_one(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9)) #24
  br label %116

116:                                              ; preds = %113, %108, %104, %72, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_report_dead(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.anon.95, ptr %8, i32 0, i32 1
  store volatile i8 0, ptr %9, align 1
  %10 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  tail call fastcc void @rcu_report_exp_cpu_mult(ptr noundef %7, i32 noundef %11, i1 noundef zeroext true) #24
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #16, !srcloc !9
  %15 = add i32 %14, ptrtoint (ptr @rcu_data to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.rcu_data, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.anon.95, ptr %17, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  store volatile i8 0, ptr %18, align 1
  %22 = getelementptr inbounds %struct.rcu_data, ptr %16, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rcu_data, ptr %16, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  tail call fastcc void @rcu_report_exp_cpu_mult(ptr noundef %23, i32 noundef %25, i1 noundef zeroext true) #24
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i32, ptr %10, align 4
  %28 = getelementptr inbounds %struct.rcu_node, ptr %7, i32 0, i32 8
  %29 = load i32, ptr %28, align 32
  %30 = add i32 %29, 1
  store volatile i32 %30, ptr %28, align 32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = load i1, ptr @rcu_report_dead.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !16

36:                                               ; preds = %26
  store i1 true, ptr @rcu_report_dead.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4344, i32 noundef 9, ptr noundef null) #24
  br label %37

37:                                               ; preds = %36, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !96
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 39)) #24
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #24
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %40 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 35
  store i32 %39, ptr %40, align 4
  %41 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %42 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 36
  store i16 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rcu_node, ptr %7, i32 0, i32 4
  %44 = load i32, ptr %43, align 16
  %45 = and i32 %44, %27
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.rcu_node, ptr %7, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  tail call fastcc void @rcu_report_qs_rnp(i32 noundef %27, ptr noundef %7, i32 noundef %49, i32 noundef %38)
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #24
  br label %51

51:                                               ; preds = %47, %37
  %52 = phi i32 [ %50, %47 ], [ %38, %37 ]
  %53 = getelementptr inbounds %struct.rcu_node, ptr %7, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = xor i32 %27, -1
  %56 = and i32 %54, %55
  store volatile i32 %56, ptr %53, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %52) #24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %57 = load i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 39), align 64
  %58 = add i16 %57, 1
  store i16 %58, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 39), align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !97
  %59 = load i32, ptr %28, align 32
  %60 = add i32 %59, 1
  store volatile i32 %60, ptr %28, align 32
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  %63 = load i1, ptr @rcu_report_dead.__already_done.35, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !16

66:                                               ; preds = %51
  store i1 true, ptr @rcu_report_dead.__already_done.35, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4360, i32 noundef 9, ptr noundef null) #24
  br label %67

67:                                               ; preds = %66, %51
  %68 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 6
  store i8 0, ptr %68, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcutree_migrate_callbacks(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 13
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %90, label %9

9:                                                ; preds = %1
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #16, !srcloc !9
  %14 = add i32 %13, ptrtoint (ptr @rcu_data to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.rcu_data, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = load volatile i32, ptr @jiffies, align 64
  tail call void @_raw_spin_lock(ptr noundef %17) #24
  %19 = tail call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %6) #24
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.rcu_node, ptr %17, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  tail call void @rcu_segcblist_advance(ptr noundef %6, i32 noundef %22) #24
  %23 = tail call fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef %17, ptr noundef %5) #24
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rcu_data, ptr %15, i32 0, i32 13
  tail call void @rcu_segcblist_merge(ptr noundef %25, ptr noundef %6) #24
  br label %40

26:                                               ; preds = %20, %9
  %27 = getelementptr inbounds %struct.rcu_data, ptr %15, i32 0, i32 13
  %28 = tail call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %27) #24
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @rcu_segcblist_merge(ptr noundef %27, ptr noundef %6) #24
  br label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rcu_node, ptr %17, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  tail call void @rcu_segcblist_advance(ptr noundef %27, i32 noundef %32) #24
  %33 = tail call fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef %17, ptr noundef %15) #24
  tail call void @rcu_segcblist_merge(ptr noundef %27, ptr noundef %6) #24
  br i1 %33, label %40, label %34

34:                                               ; preds = %30, %29
  %35 = tail call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %27) #24
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rcu_node, ptr %17, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  tail call void @rcu_segcblist_advance(ptr noundef %27, i32 noundef %38) #24
  %39 = tail call fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef %17, ptr noundef %15) #24
  br label %40

40:                                               ; preds = %36, %34, %30, %24
  %41 = phi ptr [ %27, %30 ], [ %25, %24 ], [ %27, %34 ], [ %27, %36 ]
  %42 = phi i1 [ true, %30 ], [ true, %24 ], [ false, %34 ], [ %39, %36 ]
  tail call void @rcu_segcblist_disable(ptr noundef %6) #24
  %43 = load volatile ptr, ptr %41, align 4
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.rcu_data, ptr %15, i32 0, i32 13, i32 3
  %46 = load volatile i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  %48 = xor i1 %44, %47
  %49 = load i1, ptr @rcutree_migrate_callbacks.__already_done.36, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !16

52:                                               ; preds = %40
  store i1 true, ptr @rcutree_migrate_callbacks.__already_done.36, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4396, i32 noundef 9, ptr noundef null) #24
  br label %53

53:                                               ; preds = %52, %40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %10) #24
  br i1 %42, label %54, label %75

54:                                               ; preds = %53
  %55 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %56 = tail call ptr @llvm.thread.pointer() #24
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 983040
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load volatile i32, ptr %59, align 4
  %65 = and i32 %64, 256
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63, %58, %54
  %68 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %69 = icmp ne i16 %68, 0
  %70 = icmp ne ptr %55, null
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %73, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 12), align 32
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  store volatile i32 %74, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 13), align 4
  tail call void @swake_up_one(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9)) #24
  br label %75

75:                                               ; preds = %72, %67, %63, %53
  %76 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 13, i32 3
  %77 = load volatile i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load volatile ptr, ptr %6, align 4
  %81 = icmp ne ptr %80, null
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i1 [ true, %75 ], [ %81, %79 ]
  %84 = load i1, ptr @rcutree_migrate_callbacks.__already_done.37, align 1
  %85 = xor i1 %84, true
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %90, !prof !16

87:                                               ; preds = %82
  store i1 true, ptr @rcutree_migrate_callbacks.__already_done.37, align 1
  %88 = load volatile i32, ptr %76, align 4
  %89 = tail call ptr @rcu_segcblist_first_cb(ptr noundef %6) #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4411, i32 noundef 9, ptr noundef nonnull @.str.38, i32 noundef %0, i32 noundef %88, ptr noundef %89) #24
  br label %90

90:                                               ; preds = %87, %82, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_merge(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_disable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcu_segcblist_first_cb(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcu_spawn_gp_kthread() #10 section ".init.text" {
  %1 = alloca %struct.sched_param, align 4
  %2 = load i32, ptr @kthread_prio, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #24
  store i32 0, ptr %1, align 4, !annotation !61
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = icmp ugt i32 %2, 99
  br i1 %5, label %6, label %11

6:                                                ; preds = %4, %0
  %7 = phi i32 [ 0, %0 ], [ 99, %4 ]
  store i32 %7, ptr @kthread_prio, align 4
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %7, i32 noundef %2) #25
  br label %11

11:                                               ; preds = %9, %6, %4
  store i32 1, ptr @rcu_scheduler_fully_active, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %13 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @rcu_gp_kthread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.131, ptr noundef %12) #24
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %15 = load i1, ptr @rcu_spawn_gp_kthread.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !16

18:                                               ; preds = %11
  store i1 true, ptr @rcu_spawn_gp_kthread.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4465, i32 noundef 9, ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.rcu_spawn_gp_kthread) #24
  br label %19

19:                                               ; preds = %18, %11
  br i1 %14, label %30, label %20

20:                                               ; preds = %19
  %21 = load i32, ptr @kthread_prio, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  store i32 %21, ptr %1, align 4
  %24 = call i32 @sched_setscheduler_nocheck(ptr noundef %13, i32 noundef 1, ptr noundef nonnull %1) #24
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rcu_state) #24
  %27 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %27, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %28 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %28, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 32), align 16
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !98
  store volatile ptr %13, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcu_state, i32 noundef %26) #24
  %29 = call i32 @wake_up_process(ptr noundef %13) #24
  call fastcc void @rcu_spawn_core_kthreads() #28
  br label %30

30:                                               ; preds = %25, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_scheduler_starting() local_unnamed_addr #1 {
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %4, label %3, !prof !52

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4498, i32 noundef 9, ptr noundef null) #24
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i64 @nr_context_switches() #24
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7, !prof !52

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4499, i32 noundef 9, ptr noundef null) #24
  br label %8

8:                                                ; preds = %7, %4
  tail call void @rcu_test_sync_prims() #24
  store i32 1, ptr @rcu_scheduler_active, align 4
  tail call void @rcu_test_sync_prims() #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nr_context_switches() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_test_sync_prims() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_init_geometry() local_unnamed_addr #1 {
  %1 = load i1, ptr @rcu_init_geometry.initialized, align 1
  br i1 %1, label %2, label %10

2:                                                ; preds = %0
  %3 = load i32, ptr @rcu_init_geometry.old_nr_cpu_ids, align 4
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ne i32 %3, %4
  %6 = load i1, ptr @rcu_init_geometry.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %54, !prof !16

9:                                                ; preds = %2
  store i1 true, ptr @rcu_init_geometry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4605, i32 noundef 9, ptr noundef null) #24
  br label %54

10:                                               ; preds = %0
  %11 = load i32, ptr @nr_cpu_ids, align 4
  store i32 %11, ptr @rcu_init_geometry.old_nr_cpu_ids, align 4
  store i1 true, ptr @rcu_init_geometry.initialized, align 1
  %12 = lshr i32 %11, 8
  %13 = add nuw nsw i32 %12, 1
  %14 = load i32, ptr @jiffies_till_first_fqs, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 %13, ptr @jiffies_till_first_fqs, align 4
  br label %17

17:                                               ; preds = %16, %10
  %18 = load i32, ptr @jiffies_till_next_fqs, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 %13, ptr @jiffies_till_next_fqs, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, ptr @jiffies_till_sched_qs, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load volatile i32, ptr @jiffies_till_first_fqs, align 4
  %26 = load volatile i32, ptr @jiffies_till_next_fqs, align 4
  %27 = shl i32 %26, 1
  %28 = add i32 %27, %25
  %29 = add nuw nsw i32 %12, 10
  %30 = tail call i32 @llvm.umax.i32(i32 %28, i32 %29) #24
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %30) #25
  %32 = load i32, ptr @nr_cpu_ids, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = phi i32 [ %32, %24 ], [ %11, %21 ]
  %35 = phi i32 [ %30, %24 ], [ %22, %21 ]
  store volatile i32 %35, ptr @jiffies_to_sched_qs, align 4
  %36 = load i32, ptr @rcu_fanout_leaf, align 4
  %37 = icmp eq i32 %36, 16
  %38 = icmp eq i32 %34, 16
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %54, label %40

40:                                               ; preds = %33
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %36, i32 noundef %34) #25
  %42 = load i32, ptr @rcu_fanout_leaf, align 4
  %43 = add i32 %42, -33
  %44 = icmp ult i32 %43, -31
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 16, ptr @rcu_fanout_leaf, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4642, i32 noundef 9, ptr noundef null) #24
  br label %54

46:                                               ; preds = %40
  %47 = load i32, ptr @nr_cpu_ids, align 4
  %48 = icmp ugt i32 %47, %42
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 16, ptr @rcu_fanout_leaf, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4660, i32 noundef 9, ptr noundef null) #24
  br label %54

50:                                               ; preds = %46
  store i32 1, ptr @rcu_num_lvls, align 4
  %51 = add nsw i32 %42, -1
  %52 = add i32 %51, %47
  %53 = udiv i32 %52, %42
  store i32 %53, ptr @num_rcu_lvl, align 4
  store i32 %53, ptr @rcu_num_nodes, align 4
  br label %54

54:                                               ; preds = %50, %49, %45, %33, %9, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rcu_init() local_unnamed_addr #10 section ".init.text" {
  tail call void @rcu_early_boot_tests() #24
  tail call fastcc void @kfree_rcu_batch_init() #28
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236) #25
  tail call fastcc void @rcu_bootup_announce_oddness() #25
  tail call void @rcu_init_geometry()
  tail call fastcc void @rcu_init_one() #28
  %2 = load i8, ptr @dump_tree, align 1, !range !32
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call fastcc void @rcu_dump_rcu_node_tree() #28
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i8, ptr @use_softirq, align 1, !range !32
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @open_softirq(i32 noundef 9, ptr noundef nonnull @rcu_core_si) #24
  br label %9

9:                                                ; preds = %8, %5
  %10 = tail call i32 @register_pm_notifier(ptr noundef nonnull @rcu_init.rcu_pm_notify_nb) #24
  %11 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #26
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %14, %9
  %15 = phi i32 [ %18, %14 ], [ %11, %9 ]
  %16 = tail call i32 @rcutree_prepare_cpu(i32 noundef %15)
  tail call void @rcu_cpu_starting(i32 noundef %15)
  %17 = tail call i32 @rcutree_online_cpu(i32 noundef %15)
  %18 = tail call i32 @cpumask_next(i32 noundef %15, ptr noundef nonnull @__cpu_online_mask) #26
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %14, label %21

21:                                               ; preds = %14, %9
  %22 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.40, i32 noundef 8, i32 noundef 0) #24
  store ptr %22, ptr @rcu_gp_wq, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !16

24:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4768, i32 noundef 9, ptr noundef null) #24
  br label %25

25:                                               ; preds = %24, %21
  %26 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.41, i32 noundef 8, i32 noundef 0) #24
  store ptr %26, ptr @rcu_par_gp_wq, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !16

28:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4770, i32 noundef 9, ptr noundef null) #24
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, ptr @qovld, align 4
  %31 = icmp slt i32 %30, 0
  %32 = load i32, ptr @qhimark, align 4
  %33 = shl i32 %32, 1
  %34 = select i1 %31, i32 %33, i32 %30
  store i32 %34, ptr @qovld_calc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_early_boot_tests() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kfree_rcu_batch_init() unnamed_addr #10 section ".init.text" {
  %1 = load i32, ptr @rcu_delay_page_cache_fill_msec, align 4
  %2 = icmp ugt i32 %1, 100000
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 100000)
  store i32 %5, ptr @rcu_delay_page_cache_fill_msec, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %5) #25
  br label %7

7:                                                ; preds = %3, %0
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %38, %11 ], [ %8, %7 ]
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, ptrtoint (ptr @krc to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 0
  store i32 -32, ptr %17, align 4
  %18 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 0, i32 0, i32 0, i32 2
  store ptr @kfree_rcu_work, ptr %20, align 4
  %21 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 0, i32 3
  store ptr %16, ptr %21, align 4
  %22 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 1
  store i32 -32, ptr %22, align 4
  %23 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  store ptr @kfree_rcu_work, ptr %25, align 4
  %26 = getelementptr %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 2, i32 1, i32 3
  store ptr %16, ptr %26, align 4
  %27 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 4
  store i32 -32, ptr %27, align 8
  %28 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 4, i32 0, i32 1
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 4, i32 0, i32 1, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 4, i32 0, i32 2
  store ptr @kfree_rcu_monitor, ptr %30, align 4
  %31 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %31, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #24
  %32 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 8
  store i32 -32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 8, i32 0, i32 1
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 8, i32 0, i32 1, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 8, i32 0, i32 2
  store ptr @fill_page_cache_func, ptr %35, align 4
  %36 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %36, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #24
  %37 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %16, i32 0, i32 6
  store i8 1, ptr %37, align 1
  %38 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #26
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %11, label %41

41:                                               ; preds = %11, %7
  %42 = tail call i32 @register_shrinker(ptr noundef nonnull @kfree_rcu_shrinker) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179) #25
  br label %46

46:                                               ; preds = %44, %41
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rcu_init_one() unnamed_addr #10 section ".init.text" {
  %1 = load i32, ptr @rcu_num_lvls, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.182) #27
  unreachable

4:                                                ; preds = %0
  %5 = load i8, ptr @rcu_fanout_exact, align 1, !range !32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @rcu_fanout_leaf, align 4
  %9 = load i32, ptr @num_rcu_lvl, align 4
  br label %16

10:                                               ; preds = %4
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = load i32, ptr @num_rcu_lvl, align 4
  %13 = add i32 %11, -1
  %14 = add i32 %13, %12
  %15 = sdiv i32 %14, %12
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i32 [ %9, %7 ], [ %12, %10 ]
  %18 = phi i32 [ %8, %7 ], [ %15, %10 ]
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 0), align 64
  br label %22

22:                                               ; preds = %44, %20
  %23 = phi i32 [ 0, %20 ], [ %36, %44 ]
  %24 = phi ptr [ %21, %20 ], [ %56, %44 ]
  store i32 0, ptr %24, align 64
  %25 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 30
  store i32 0, ptr %25, align 64
  %26 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %27 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %29 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 2
  store i32 %28, ptr %29, align 8
  %30 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %31 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 4
  store i32 0, ptr %32, align 16
  %33 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 6
  store i32 0, ptr %33, align 8
  %34 = mul i32 %23, %18
  %35 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = add nuw nsw i32 %23, 1
  %37 = mul i32 %36, %18
  %38 = add i32 %37, -1
  %39 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 16
  store i32 %38, ptr %39, align 64
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %22
  %43 = add i32 %40, -1
  store i32 %43, ptr %39, align 64
  br label %44

44:                                               ; preds = %42, %22
  %45 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 17
  store i8 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 14
  store i32 0, ptr %46, align 8
  %47 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 20
  store ptr null, ptr %47, align 8
  %48 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 18
  store i8 0, ptr %48, align 1
  %49 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 21
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 21, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 34
  tail call void @__init_waitqueue_head(ptr noundef %51, ptr noundef nonnull @.str.183, ptr noundef nonnull @rcu_init_one.__key) #24
  %52 = getelementptr %struct.rcu_node, ptr %24, i32 0, i32 34, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %52, ptr noundef nonnull @.str.185, ptr noundef nonnull @rcu_init_one.__key.184) #24
  %53 = getelementptr %struct.rcu_node, ptr %24, i32 0, i32 34, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %53, ptr noundef nonnull @.str.187, ptr noundef nonnull @rcu_init_one.__key.186) #24
  %54 = getelementptr %struct.rcu_node, ptr %24, i32 0, i32 34, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %54, ptr noundef nonnull @.str.189, ptr noundef nonnull @rcu_init_one.__key.188) #24
  %55 = getelementptr inbounds %struct.rcu_node, ptr %24, i32 0, i32 32
  store i32 0, ptr %55, align 64
  %56 = getelementptr %struct.rcu_node, ptr %24, i32 1
  %57 = load i32, ptr @num_rcu_lvl, align 4
  %58 = icmp slt i32 %36, %57
  br i1 %58, label %22, label %59

59:                                               ; preds = %44, %16
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9), ptr noundef nonnull @.str.191, ptr noundef nonnull @rcu_init_one.__key.190) #24
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 22), ptr noundef nonnull @.str.193, ptr noundef nonnull @rcu_init_one.__key.192) #24
  %60 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load i32, ptr @rcu_num_lvls, align 4
  %65 = add i32 %64, -1
  %66 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %65
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %77, %63
  %69 = phi i32 [ %83, %77 ], [ %60, %63 ]
  %70 = phi ptr [ %72, %77 ], [ %67, %63 ]
  br label %71

71:                                               ; preds = %71, %68
  %72 = phi ptr [ %76, %71 ], [ %70, %68 ]
  %73 = getelementptr inbounds %struct.rcu_node, ptr %72, i32 0, i32 16
  %74 = load i32, ptr %73, align 64
  %75 = icmp sgt i32 %69, %74
  %76 = getelementptr %struct.rcu_node, ptr %72, i32 1
  br i1 %75, label %71, label %77

77:                                               ; preds = %71
  %78 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, ptrtoint (ptr @rcu_data to i32)
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.rcu_data, ptr %81, i32 0, i32 7
  store ptr %72, ptr %82, align 4
  tail call fastcc void @rcu_boot_init_percpu_data(i32 noundef %69) #28
  %83 = tail call i32 @cpumask_next(i32 noundef %69, ptr noundef nonnull @__cpu_possible_mask) #26
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %68, label %86

86:                                               ; preds = %77, %59
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rcu_dump_rcu_node_tree() unnamed_addr #10 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195) #25
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #25
  %3 = load i32, ptr @rcu_num_nodes, align 4
  %4 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %3
  %5 = icmp ugt ptr %4, @rcu_state
  br i1 %5, label %6, label %32

6:                                                ; preds = %18, %0
  %7 = phi i32 [ %19, %18 ], [ 0, %0 ]
  %8 = phi ptr [ %28, %18 ], [ @rcu_state, %0 ]
  %9 = getelementptr inbounds %struct.rcu_node, ptr %8, i32 0, i32 18
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #25
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #25
  %16 = load i8, ptr %9, align 1
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %13, %6
  %19 = phi i32 [ %17, %13 ], [ %7, %6 ]
  %20 = getelementptr inbounds %struct.rcu_node, ptr %8, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rcu_node, ptr %8, i32 0, i32 16
  %23 = load i32, ptr %22, align 64
  %24 = getelementptr inbounds %struct.rcu_node, ptr %8, i32 0, i32 17
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %21, i32 noundef %23, i32 noundef %26) #25
  %28 = getelementptr %struct.rcu_node, ptr %8, i32 1
  %29 = load i32, ptr @rcu_num_nodes, align 4
  %30 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %29
  %31 = icmp ult ptr %28, %30
  br i1 %31, label %6, label %32

32:                                               ; preds = %18, %0
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_core_si(ptr nocapture noundef readnone %0) #1 {
  tail call fastcc void @rcu_core()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcu_pm_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  switch i32 %1, label %6 [
    i32 1, label %4
    i32 3, label %4
    i32 2, label %5
    i32 4, label %5
  ]

4:                                                ; preds = %3, %3
  tail call void @rcu_expedite_gp() #24
  br label %6

5:                                                ; preds = %3, %3
  tail call void @rcu_unexpedite_gp() #24
  br label %6

6:                                                ; preds = %5, %4, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcu_jiffies_till_stall_check() #9 {
  %1 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %2 = icmp slt i32 %1, 3
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = icmp ugt i32 %1, 300
  br i1 %4, label %5, label %7

5:                                                ; preds = %3, %0
  %6 = phi i32 [ 3, %0 ], [ 300, %3 ]
  store volatile i32 %6, ptr @rcu_cpu_stall_timeout, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %1, %3 ], [ %6, %5 ]
  %9 = mul nuw nsw i32 %8, 100
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rcu_gp_might_be_stalled() local_unnamed_addr #1 {
  %1 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %2 = icmp slt i32 %1, 3
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = icmp ugt i32 %1, 300
  br i1 %4, label %5, label %7

5:                                                ; preds = %3, %0
  %6 = phi i32 [ 3, %0 ], [ 300, %3 ]
  store volatile i32 %6, ptr @rcu_cpu_stall_timeout, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %1, %3 ], [ %6, %5 ]
  %9 = load volatile i32, ptr @jiffies, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !99
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = mul nuw nsw i32 %8, 100
  %15 = lshr i32 %14, 3
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 200)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !100
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 29), align 4
  %18 = add i32 %16, %17
  %19 = sub i32 %9, %18
  %20 = icmp sgt i32 %19, -1
  br label %21

21:                                               ; preds = %13, %7
  %22 = phi i1 [ %20, %13 ], [ false, %7 ]
  ret i1 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rcu_sysrq_start() local_unnamed_addr #14 {
  %1 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 2, ptr @rcu_cpu_stall_suppress, align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rcu_sysrq_end() local_unnamed_addr #14 {
  %1 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, ptr @rcu_cpu_stall_suppress, align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @check_cpu_stall_init() #10 section ".init.text" {
  %1 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @rcu_panic_block) #24
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_cpu_stall_reset() local_unnamed_addr #9 {
  %1 = load volatile i32, ptr @jiffies, align 64
  %2 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %3 = icmp slt i32 %2, 3
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = icmp ugt i32 %2, 300
  br i1 %5, label %6, label %8

6:                                                ; preds = %4, %0
  %7 = phi i32 [ 3, %0 ], [ 300, %4 ]
  store volatile i32 %7, ptr @rcu_cpu_stall_timeout, align 4
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %2, %4 ], [ %7, %6 ]
  %10 = mul nuw nsw i32 %9, 100
  %11 = add i32 %10, %1
  store volatile i32 %11, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rcu_check_boost_fail(i32 %0, ptr noundef writeonly %1) #1 {
  %3 = load i32, ptr @rcu_num_lvls, align 4
  %4 = add i32 %3, -1
  %5 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @rcu_num_nodes, align 4
  %8 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %7
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %10, label %72

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br label %12

12:                                               ; preds = %66, %10
  %13 = phi i1 [ false, %10 ], [ %67, %66 ]
  %14 = phi ptr [ %6, %10 ], [ %68, %66 ]
  br i1 %11, label %15, label %24

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 4
  %17 = load volatile i32, ptr %16, align 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 22
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, null
  %23 = select i1 %22, i1 true, i1 %13
  br label %66

24:                                               ; preds = %12
  store i32 -1, ptr %1, align 4
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #24
  %26 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 22
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ne ptr %27, null
  %29 = select i1 %28, i1 true, i1 %13
  %30 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 4
  %31 = load i32, ptr %30, align 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %25) #24
  br label %66

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 18
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, ptr @rcu_num_lvls, align 4
  %39 = add i32 %38, -1
  %40 = icmp ne i32 %39, %37
  %41 = load i1, ptr @rcu_check_boost_fail.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !16

44:                                               ; preds = %34
  store i1 true, ptr @rcu_check_boost_fail.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 765, i32 noundef 9, ptr noundef null) #24
  br label %45

45:                                               ; preds = %44, %34
  %46 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 15
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  %49 = tail call i32 @cpumask_next(i32 noundef %48, ptr noundef nonnull @__cpu_possible_mask) #26
  %50 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 16
  %51 = load i32, ptr %50, align 64
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %45
  %54 = load i32, ptr %30, align 16
  br label %55

55:                                               ; preds = %62, %53
  %56 = phi i32 [ %49, %53 ], [ %63, %62 ]
  %57 = sub i32 %56, %47
  %58 = shl nuw i32 1, %57
  %59 = and i32 %54, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %25) #24
  store i32 %56, ptr %1, align 4
  br label %72

62:                                               ; preds = %55
  %63 = tail call i32 @cpumask_next(i32 noundef %56, ptr noundef nonnull @__cpu_possible_mask) #26
  %64 = icmp sgt i32 %63, %51
  br i1 %64, label %65, label %55

65:                                               ; preds = %62, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %25) #24
  br label %66

66:                                               ; preds = %65, %33, %19
  %67 = phi i1 [ %29, %65 ], [ %29, %33 ], [ %23, %19 ]
  %68 = getelementptr %struct.rcu_node, ptr %14, i32 1
  %69 = load i32, ptr @rcu_num_nodes, align 4
  %70 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %69
  %71 = icmp ult ptr %68, %70
  br i1 %71, label %12, label %72

72:                                               ; preds = %66, %61, %15, %2
  %73 = phi i1 [ false, %61 ], [ false, %2 ], [ false, %15 ], [ %67, %66 ]
  ret i1 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_rcu_gp_kthreads() #1 {
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %4 = sub i32 %2, %3
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 32), align 16
  %6 = sub i32 %2, %5
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 29), align 4
  %8 = sub i32 %2, %7
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 12), align 32
  %10 = sub i32 %2, %9
  %11 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %12 = load i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %13 = icmp ugt i16 %12, 8
  br i1 %13, label %18, label %14

14:                                               ; preds = %0
  %15 = zext i16 %12 to i32
  %16 = getelementptr [9 x ptr], ptr @gp_state_names, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %14, %0
  %19 = phi ptr [ %17, %14 ], [ @.str.198, %0 ]
  %20 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %21 = sext i16 %20 to i32
  %22 = icmp eq ptr %1, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 17
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i32 [ %25, %23 ], [ 131071, %18 ]
  %30 = phi i32 [ %27, %23 ], [ 255, %18 ]
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 13), align 4
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 2), align 8
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 7), align 8
  %35 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %36 = sext i16 %35 to i32
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %11, ptr noundef %19, i32 noundef %21, i32 noundef %29, i32 noundef %30, i32 noundef %8, i32 noundef %4, i32 noundef %6, i32 noundef %10, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %36) #25
  %38 = load i32, ptr @rcu_num_nodes, align 4
  %39 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %38
  %40 = icmp ugt ptr %39, @rcu_state
  br i1 %40, label %45, label %41

41:                                               ; preds = %145, %28
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %43 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  %44 = icmp ult i32 %43, %42
  br i1 %44, label %150, label %162

45:                                               ; preds = %145, %28
  %46 = phi ptr [ %146, %145 ], [ @rcu_state, %28 ]
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %48 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 2
  %49 = load volatile i32, ptr %48, align 8
  %50 = sub i32 %47, %49
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 4
  %54 = load volatile i32, ptr %53, align 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 24
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 23
  %62 = load volatile ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 22
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %145, label %68

68:                                               ; preds = %64, %60, %56, %52, %45
  %69 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 15
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 16
  %72 = load i32, ptr %71, align 64
  %73 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 1
  %74 = load volatile i32, ptr %73, align 4
  %75 = load volatile i32, ptr %48, align 8
  %76 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 4
  %77 = load volatile i32, ptr %76, align 16
  %78 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 27
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp ne ptr %79, null
  %81 = zext i1 %80 to i32
  %82 = getelementptr [3 x i8], ptr @.str.45, i32 0, i32 %81
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 24
  %86 = load volatile ptr, ptr %85, align 4
  %87 = icmp ne ptr %86, null
  %88 = zext i1 %87 to i32
  %89 = getelementptr [3 x i8], ptr @.str.46, i32 0, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 23
  %93 = load volatile ptr, ptr %92, align 8
  %94 = icmp ne ptr %93, null
  %95 = zext i1 %94 to i32
  %96 = getelementptr [3 x i8], ptr @.str.47, i32 0, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 22
  %100 = load volatile ptr, ptr %99, align 4
  %101 = icmp ne ptr %100, null
  %102 = zext i1 %101 to i32
  %103 = getelementptr [3 x i8], ptr @.str.48, i32 0, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 29
  %107 = load volatile i32, ptr %106, align 4
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %75, i32 noundef %77, i32 noundef %84, i32 noundef %91, i32 noundef %98, i32 noundef %105, i32 noundef %107) #25
  %109 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 18
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, ptr @rcu_num_lvls, align 4
  %113 = add i32 %112, -1
  %114 = icmp eq i32 %113, %111
  br i1 %114, label %115, label %145

115:                                              ; preds = %68
  %116 = load i32, ptr %69, align 4
  %117 = add i32 %116, -1
  %118 = tail call i32 @cpumask_next(i32 noundef %117, ptr noundef nonnull @__cpu_possible_mask) #26
  %119 = load i32, ptr %71, align 64
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %145, label %121

121:                                              ; preds = %141, %115
  %122 = phi i32 [ %142, %141 ], [ %119, %115 ]
  %123 = phi i32 [ %143, %141 ], [ %118, %115 ]
  %124 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, ptrtoint (ptr @rcu_data to i32)
  %127 = inttoptr i32 %126 to ptr
  %128 = getelementptr inbounds %struct.rcu_data, ptr %127, i32 0, i32 5
  %129 = load volatile i8, ptr %128, align 4, !range !32
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %121
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %133 = getelementptr inbounds %struct.rcu_data, ptr %127, i32 0, i32 1
  %134 = load volatile i32, ptr %133, align 4
  %135 = sub i32 %132, %134
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %141, label %137

137:                                              ; preds = %131
  %138 = load volatile i32, ptr %133, align 4
  %139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %123, i32 noundef %138) #25
  %140 = load i32, ptr %71, align 64
  br label %141

141:                                              ; preds = %137, %131, %121
  %142 = phi i32 [ %122, %121 ], [ %122, %131 ], [ %140, %137 ]
  %143 = tail call i32 @cpumask_next(i32 noundef %123, ptr noundef nonnull @__cpu_possible_mask) #26
  %144 = icmp sgt i32 %143, %142
  br i1 %144, label %145, label %121

145:                                              ; preds = %141, %115, %68, %64
  %146 = getelementptr %struct.rcu_node, ptr %46, i32 1
  %147 = load i32, ptr @rcu_num_nodes, align 4
  %148 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %147
  %149 = icmp ult ptr %146, %148
  br i1 %149, label %45, label %41

150:                                              ; preds = %150, %41
  %151 = phi i32 [ %160, %150 ], [ %43, %41 ]
  %152 = phi i32 [ %159, %150 ], [ 0, %41 ]
  %153 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %151
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, ptrtoint (ptr @rcu_data to i32)
  %156 = inttoptr i32 %155 to ptr
  %157 = getelementptr inbounds %struct.rcu_data, ptr %156, i32 0, i32 15
  %158 = load volatile i32, ptr %157, align 4
  %159 = add i32 %158, %152
  %160 = tail call i32 @cpumask_next(i32 noundef %151, ptr noundef nonnull @__cpu_possible_mask) #26
  %161 = icmp ult i32 %160, %42
  br i1 %161, label %150, label %162

162:                                              ; preds = %150, %41
  %163 = phi i32 [ 0, %41 ], [ %159, %150 ]
  %164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %163) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_fwd_progress_check(i32 %0) #1 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %3 = and i32 %2, 3
  %4 = icmp eq i32 %3, 0
  %5 = load volatile i32, ptr @jiffies, align 64
  br i1 %4, label %10, label %6

6:                                                ; preds = %1
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 29), align 4
  %8 = sub i32 %5, %7
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.rcu_fwd_progress_check, i32 noundef %8) #25
  tail call void @show_rcu_gp_kthreads()
  br label %17

10:                                               ; preds = %1
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 30), align 8
  %12 = sub i32 %5, %11
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.rcu_fwd_progress_check, i32 noundef %12) #25
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !101
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #16, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !102
  br label %17

17:                                               ; preds = %10, %6
  br label %18

18:                                               ; preds = %46, %17
  %19 = phi i32 [ %49, %46 ], [ -1, %17 ]
  %20 = phi i32 [ %50, %46 ], [ 0, %17 ]
  %21 = phi i32 [ %25, %46 ], [ -1, %17 ]
  %22 = load i32, ptr @nr_cpu_ids, align 4
  br label %23

23:                                               ; preds = %39, %18
  %24 = phi i32 [ %25, %39 ], [ %21, %18 ]
  %25 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull @__cpu_possible_mask) #26
  %26 = icmp ult i32 %25, %22
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, ptrtoint (ptr @rcu_data to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.rcu_data, ptr %31, i32 0, i32 13, i32 5
  %33 = load volatile i8, ptr %32, align 4
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.rcu_data, ptr %31, i32 0, i32 13, i32 3
  %38 = load volatile i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %27
  %40 = phi i32 [ %38, %36 ], [ 0, %27 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %23, label %42

42:                                               ; preds = %39
  %43 = icmp slt i32 %19, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.rcu_fwd_progress_check) #25
  br label %46

46:                                               ; preds = %44, %42
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %25, i32 noundef %40) #25
  %48 = icmp ugt i32 %40, %20
  %49 = select i1 %48, i32 %25, i32 %19
  %50 = tail call i32 @llvm.umax.i32(i32 %40, i32 %20)
  br label %18

51:                                               ; preds = %23
  %52 = icmp sgt i32 %19, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #25
  br label %55

55:                                               ; preds = %53, %51
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcu_sysrq_init() #10 section ".init.text" {
  %1 = load i8, ptr @sysrq_rcu, align 1, !range !32
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_sysrq_key(i32 noundef 121, ptr noundef nonnull @sysrq_rcudump_op) #24
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_normal() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_exp_sel_wait_wake(i32 noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.swait_queue, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %4 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %5 = or i32 %4, 3
  %6 = add i32 %5, 1
  %7 = load ptr, ptr @sync_rcu_exp_select_cpus.___tp_str, align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #24
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %22 = tail call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %3, i32 noundef %6, ptr noundef %7) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %23

23:                                               ; preds = %21, %10, %1
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 2), align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !103
  %25 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 23), align 16
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29, !prof !52

27:                                               ; preds = %23
  %28 = load i32, ptr @rcu_num_nodes, align 4
  br label %66

29:                                               ; preds = %23
  store i32 %24, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 23), align 16
  %30 = load i32, ptr @rcu_num_lvls, align 4
  %31 = add i32 %30, -1
  %32 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr @rcu_num_nodes, align 4
  %35 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %34
  %36 = icmp ult ptr %33, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %61, %29
  %38 = phi ptr [ %62, %61 ], [ %33, %29 ]
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #24
  %40 = getelementptr inbounds %struct.rcu_node, ptr %38, i32 0, i32 10
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.rcu_node, ptr %38, i32 0, i32 11
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #24
  br label %61

46:                                               ; preds = %37
  store i32 %43, ptr %40, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #24
  %47 = icmp eq i32 %41, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %53, %46
  %49 = phi ptr [ %51, %53 ], [ %38, %46 ]
  %50 = getelementptr inbounds %struct.rcu_node, ptr %49, i32 0, i32 20
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rcu_node, ptr %49, i32 0, i32 14
  %55 = load i32, ptr %54, align 8
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %51) #24
  %57 = getelementptr inbounds %struct.rcu_node, ptr %51, i32 0, i32 10
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  %60 = or i32 %58, %55
  store i32 %60, ptr %57, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %51, i32 noundef %56) #24
  br i1 %59, label %48, label %61

61:                                               ; preds = %53, %48, %46, %45
  %62 = getelementptr %struct.rcu_node, ptr %38, i32 1
  %63 = load i32, ptr @rcu_num_nodes, align 4
  %64 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %63
  %65 = icmp ult ptr %62, %64
  br i1 %65, label %37, label %66

66:                                               ; preds = %61, %29, %27
  %67 = phi i32 [ %28, %27 ], [ %34, %29 ], [ %63, %61 ]
  %68 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %67
  %69 = icmp ugt ptr %68, @rcu_state
  br i1 %69, label %70, label %87

70:                                               ; preds = %80, %66
  %71 = phi ptr [ %83, %80 ], [ @rcu_state, %66 ]
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %71) #24
  %73 = getelementptr inbounds %struct.rcu_node, ptr %71, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = load i1, ptr @sync_exp_reset_tree.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !16

79:                                               ; preds = %70
  store i1 true, ptr @sync_exp_reset_tree.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 138, i32 noundef 9, ptr noundef null) #24
  br label %80

80:                                               ; preds = %79, %70
  %81 = getelementptr inbounds %struct.rcu_node, ptr %71, i32 0, i32 10
  %82 = load i32, ptr %81, align 8
  store volatile i32 %82, ptr %73, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %71, i32 noundef %72) #24
  %83 = getelementptr %struct.rcu_node, ptr %71, i32 1
  %84 = load i32, ptr @rcu_num_nodes, align 4
  %85 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %84
  %86 = icmp ult ptr %83, %85
  br i1 %86, label %70, label %87

87:                                               ; preds = %80, %66
  %88 = phi i32 [ %67, %66 ], [ %84, %80 ]
  %89 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %90 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %91 = or i32 %90, 3
  %92 = add i32 %91, 1
  %93 = load ptr, ptr @sync_rcu_exp_select_cpus.___tp_str.217, align 4
  %94 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %87
  %97 = tail call ptr @llvm.thread.pointer() #24
  %98 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = lshr i32 %99, 5
  %101 = getelementptr i32, ptr @__cpu_online_mask, i32 %100
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %99, 31
  %104 = shl nuw i32 1, %103
  %105 = and i32 %104, %102
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %96
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %108 = tail call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %89, i32 noundef %92, ptr noundef %93) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  %109 = load i32, ptr @rcu_num_nodes, align 4
  br label %110

110:                                              ; preds = %107, %96, %87
  %111 = phi i32 [ %88, %87 ], [ %88, %96 ], [ %109, %107 ]
  %112 = load i32, ptr @rcu_num_lvls, align 4
  %113 = add i32 %112, -1
  %114 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %113
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %111
  %117 = icmp ult ptr %115, %116
  br i1 %117, label %118, label %164

118:                                              ; preds = %154, %110
  %119 = phi i32 [ %156, %154 ], [ %111, %110 ]
  %120 = phi ptr [ %155, %154 ], [ %115, %110 ]
  %121 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 36
  store i8 0, ptr %121, align 4
  %122 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 9
  %123 = load volatile i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %154, label %125

125:                                              ; preds = %118
  %126 = load volatile ptr, ptr @rcu_par_gp_wq, align 4
  %127 = icmp eq ptr %126, null
  %128 = load i32, ptr @rcu_scheduler_active, align 4
  %129 = icmp ne i32 %128, 2
  %130 = select i1 %127, i1 true, i1 %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  %132 = add i32 %119, -1
  %133 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %132
  %134 = icmp eq ptr %120, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131, %125
  %136 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 35, i32 1
  tail call void @sync_rcu_exp_select_node_cpus(ptr noundef %136) #24
  br label %154

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 35, i32 1
  store i32 -32, ptr %138, align 4
  %139 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 35, i32 1, i32 1
  store volatile ptr %139, ptr %139, align 4
  %140 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 35, i32 1, i32 1, i32 1
  store ptr %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 35, i32 1, i32 2
  store ptr @sync_rcu_exp_select_node_cpus, ptr %141, align 4
  %142 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 13
  %143 = tail call i32 @_find_next_bit_le(ptr noundef %142, i32 noundef 32, i32 noundef -1) #24
  %144 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 16
  %145 = load i32, ptr %144, align 64
  %146 = getelementptr inbounds %struct.rcu_node, ptr %120, i32 0, i32 15
  %147 = load i32, ptr %146, align 4
  %148 = sub i32 %145, %147
  %149 = icmp sgt i32 %143, %148
  %150 = add i32 %147, %143
  %151 = select i1 %149, i32 16, i32 %150, !prof !16
  %152 = load ptr, ptr @rcu_par_gp_wq, align 4
  %153 = tail call zeroext i1 @queue_work_on(i32 noundef %151, ptr noundef %152, ptr noundef %138) #24
  store i8 1, ptr %121, align 4
  br label %154

154:                                              ; preds = %137, %135, %118
  %155 = getelementptr %struct.rcu_node, ptr %120, i32 1
  %156 = load i32, ptr @rcu_num_nodes, align 4
  %157 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %156
  %158 = icmp ult ptr %155, %157
  br i1 %158, label %118, label %159

159:                                              ; preds = %154
  %160 = load i32, ptr @rcu_num_lvls, align 4
  %161 = add i32 %160, -1
  %162 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %161
  %163 = load ptr, ptr %162, align 4
  br label %164

164:                                              ; preds = %159, %110
  %165 = phi ptr [ %163, %159 ], [ %115, %110 ]
  %166 = phi i32 [ %156, %159 ], [ %111, %110 ]
  %167 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %166
  %168 = icmp ult ptr %165, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %179, %164
  %170 = phi i32 [ %180, %179 ], [ %166, %164 ]
  %171 = phi ptr [ %181, %179 ], [ %165, %164 ]
  %172 = getelementptr inbounds %struct.rcu_node, ptr %171, i32 0, i32 36
  %173 = load i8, ptr %172, align 4, !range !32
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.rcu_node, ptr %171, i32 0, i32 35, i32 1
  %177 = tail call zeroext i1 @flush_work(ptr noundef %176) #24
  %178 = load i32, ptr @rcu_num_nodes, align 4
  br label %179

179:                                              ; preds = %175, %169
  %180 = phi i32 [ %170, %169 ], [ %178, %175 ]
  %181 = getelementptr %struct.rcu_node, ptr %171, i32 1
  %182 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %180
  %183 = icmp ult ptr %181, %182
  br i1 %183, label %169, label %184

184:                                              ; preds = %179, %164
  %185 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %186 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %187 = or i32 %186, 3
  %188 = add i32 %187, 1
  %189 = load ptr, ptr @synchronize_rcu_expedited_wait.___tp_str, align 4
  %190 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %184
  %193 = tail call ptr @llvm.thread.pointer() #24
  %194 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 2
  %195 = load i32, ptr %194, align 8
  %196 = lshr i32 %195, 5
  %197 = getelementptr i32, ptr @__cpu_online_mask, i32 %196
  %198 = load volatile i32, ptr %197, align 4
  %199 = and i32 %195, 31
  %200 = shl nuw i32 1, %199
  %201 = and i32 %200, %198
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %192
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %204 = tail call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %185, i32 noundef %188, ptr noundef %189) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %205

205:                                              ; preds = %203, %192, %184
  %206 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %207 = icmp slt i32 %206, 3
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = icmp ugt i32 %206, 300
  br i1 %209, label %210, label %212

210:                                              ; preds = %208, %205
  %211 = phi i32 [ 3, %205 ], [ 300, %208 ]
  store volatile i32 %211, ptr @rcu_cpu_stall_timeout, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %206, %208 ], [ %211, %210 ]
  %214 = mul nuw nsw i32 %213, 100
  %215 = load volatile i32, ptr @jiffies, align 64
  %216 = getelementptr inbounds %struct.swait_queue, ptr %2, i32 0, i32 1
  %217 = getelementptr inbounds %struct.swait_queue, ptr %2, i32 0, i32 1, i32 1
  br label %218

218:                                              ; preds = %512, %212
  %219 = phi i32 [ %515, %512 ], [ %214, %212 ]
  br label %220

220:                                              ; preds = %269, %218
  %221 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rcu_state) #24
  %222 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 23), align 8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcu_state, i32 noundef %221) #24
  br label %228

225:                                              ; preds = %220
  %226 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 9), align 4
  %227 = icmp eq i32 %226, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcu_state, i32 noundef %221) #24
  br i1 %227, label %249, label %228

228:                                              ; preds = %225, %224
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #24
  store i32 0, ptr %2, align 4, !annotation !61
  store volatile ptr %216, ptr %216, align 4
  store ptr %216, ptr %217, align 4
  br label %229

229:                                              ; preds = %246, %228
  %230 = phi i32 [ %219, %228 ], [ %247, %246 ]
  %231 = call i32 @prepare_to_swait_event(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 22), ptr noundef nonnull %2, i32 noundef 2) #24
  %232 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rcu_state) #24
  %233 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 23), align 8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 9), align 4
  %237 = icmp eq i32 %236, 0
  br label %238

238:                                              ; preds = %235, %229
  %239 = phi i1 [ false, %229 ], [ %237, %235 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcu_state, i32 noundef %232) #24
  %240 = xor i1 %239, true
  %241 = icmp ne i32 %230, 0
  %242 = select i1 %240, i1 true, i1 %241
  %243 = select i1 %242, i32 %230, i32 1
  %244 = icmp eq i32 %243, 0
  %245 = select i1 %239, i1 true, i1 %244
  br i1 %245, label %248, label %246

246:                                              ; preds = %238
  %247 = call i32 @schedule_timeout(i32 noundef %243) #24
  br label %229

248:                                              ; preds = %238
  call void @finish_swait(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 22), ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #24
  br label %249

249:                                              ; preds = %248, %225
  %250 = phi i32 [ %219, %225 ], [ %243, %248 ]
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %516, label %252

252:                                              ; preds = %249
  %253 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rcu_state) #24
  %254 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 23), align 8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %252
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcu_state, i32 noundef %253) #24
  br label %260

257:                                              ; preds = %252
  %258 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 9), align 4
  %259 = icmp eq i32 %258, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rcu_state, i32 noundef %253) #24
  br i1 %259, label %516, label %260

260:                                              ; preds = %257, %256
  %261 = icmp slt i32 %250, 0
  br i1 %261, label %262, label %263, !prof !16

262:                                              ; preds = %260
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 478, i32 noundef 9, ptr noundef null) #24
  br label %263

263:                                              ; preds = %262, %260
  %264 = load i32, ptr @rcu_cpu_stall_suppress_at_boot, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = call zeroext i1 @rcu_inkernel_boot_has_ended() #24
  %268 = xor i1 %267, true
  br label %269

269:                                              ; preds = %266, %263
  %270 = phi i1 [ false, %263 ], [ %268, %266 ]
  %271 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %272 = icmp ne i32 %271, 0
  %273 = select i1 %270, i1 true, i1 %272
  br i1 %273, label %220, label %274

274:                                              ; preds = %269
  %275 = load i32, ptr @panic_on_rcu_stall.cpu_stall, align 4
  %276 = add i32 %275, 1
  store i32 %276, ptr @panic_on_rcu_stall.cpu_stall, align 4
  %277 = load i32, ptr @sysctl_max_rcu_stall_to_panic, align 4
  %278 = icmp sge i32 %276, %277
  %279 = load i32, ptr @sysctl_panic_on_rcu_stall, align 4
  %280 = icmp ne i32 %279, 0
  %281 = select i1 %278, i1 %280, i1 false
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.115) #27
  unreachable

283:                                              ; preds = %274
  %284 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %285 = load ptr, ptr @synchronize_rcu_expedited_wait.___tp_str.224, align 4
  %286 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_stall_warning, i32 0, i32 1), align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %302

288:                                              ; preds = %283
  %289 = tail call ptr @llvm.thread.pointer() #24
  %290 = getelementptr inbounds %struct.thread_info, ptr %289, i32 0, i32 2
  %291 = load i32, ptr %290, align 8
  %292 = lshr i32 %291, 5
  %293 = getelementptr i32, ptr @__cpu_online_mask, i32 %292
  %294 = load volatile i32, ptr %293, align 4
  %295 = and i32 %291, 31
  %296 = shl nuw i32 1, %295
  %297 = and i32 %296, %294
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %288
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !40
  %300 = call i32 @__traceiter_rcu_stall_warning(ptr noundef null, ptr noundef %284, ptr noundef %285) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !41
  %301 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  br label %302

302:                                              ; preds = %299, %288, %283
  %303 = phi ptr [ %284, %283 ], [ %284, %288 ], [ %301, %299 ]
  %304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef %303) #25
  %305 = load i32, ptr @rcu_num_lvls, align 4
  %306 = add i32 %305, -1
  %307 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %306
  %308 = load ptr, ptr %307, align 4
  %309 = load i32, ptr @rcu_num_nodes, align 4
  %310 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %309
  %311 = icmp ult ptr %308, %310
  br i1 %311, label %312, label %395

312:                                              ; preds = %393, %302
  %313 = phi i32 [ %394, %393 ], [ %305, %302 ]
  %314 = phi i32 [ %388, %393 ], [ 0, %302 ]
  %315 = phi ptr [ %389, %393 ], [ %308, %302 ]
  %316 = getelementptr inbounds %struct.rcu_node, ptr %315, i32 0, i32 18
  %317 = load i8, ptr %316, align 1
  %318 = zext i8 %317 to i32
  %319 = add i32 %313, -1
  %320 = icmp ne i32 %319, %318
  %321 = load i1, ptr @synchronize_rcu_expedited_wait.__already_done.227, align 1
  %322 = xor i1 %321, true
  %323 = select i1 %320, i1 %322, i1 false
  br i1 %323, label %324, label %325, !prof !16

324:                                              ; preds = %312
  store i1 true, ptr @synchronize_rcu_expedited_wait.__already_done.227, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 533, i32 noundef 9, ptr noundef null) #24
  br label %325

325:                                              ; preds = %324, %312
  %326 = getelementptr inbounds %struct.rcu_node, ptr %315, i32 0, i32 15
  %327 = load i32, ptr %326, align 4
  %328 = add i32 %327, -1
  %329 = call i32 @cpumask_next(i32 noundef %328, ptr noundef nonnull @__cpu_possible_mask) #26
  %330 = getelementptr inbounds %struct.rcu_node, ptr %315, i32 0, i32 16
  %331 = load i32, ptr %330, align 64
  %332 = icmp sgt i32 %329, %331
  br i1 %332, label %387, label %333

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.rcu_node, ptr %315, i32 0, i32 9
  %335 = getelementptr inbounds %struct.rcu_node, ptr %315, i32 0, i32 10
  %336 = getelementptr inbounds %struct.rcu_node, ptr %315, i32 0, i32 11
  br label %337

337:                                              ; preds = %385, %333
  %338 = phi i32 [ %331, %333 ], [ %381, %385 ]
  %339 = phi i32 [ %327, %333 ], [ %386, %385 ]
  %340 = phi i32 [ %329, %333 ], [ %383, %385 ]
  %341 = phi i32 [ %314, %333 ], [ %382, %385 ]
  %342 = sub i32 %340, %339
  %343 = shl nuw i32 1, %342
  %344 = load volatile i32, ptr %334, align 4
  %345 = and i32 %343, %344
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %380, label %347

347:                                              ; preds = %337
  %348 = add i32 %341, 1
  %349 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %340
  %350 = load i32, ptr %349, align 4
  %351 = add i32 %350, ptrtoint (ptr @rcu_data to i32)
  %352 = inttoptr i32 %351 to ptr
  %353 = lshr i32 %340, 5
  %354 = getelementptr i32, ptr @__cpu_online_mask, i32 %353
  %355 = load volatile i32, ptr %354, align 4
  %356 = and i32 %340, 31
  %357 = lshr i32 %355, %356
  %358 = and i32 %357, 1
  %359 = getelementptr [3 x i8], ptr @.str.101, i32 0, i32 %358
  %360 = load i8, ptr %359, align 1
  %361 = zext i8 %360 to i32
  %362 = getelementptr inbounds %struct.rcu_data, ptr %352, i32 0, i32 8
  %363 = load i32, ptr %362, align 4
  %364 = load i32, ptr %335, align 8
  %365 = and i32 %364, %363
  %366 = icmp ne i32 %365, 0
  %367 = zext i1 %366 to i32
  %368 = getelementptr [3 x i8], ptr @.str.102, i32 0, i32 %367
  %369 = load i8, ptr %368, align 1
  %370 = zext i8 %369 to i32
  %371 = load i32, ptr %336, align 4
  %372 = and i32 %371, %363
  %373 = icmp ne i32 %372, 0
  %374 = zext i1 %373 to i32
  %375 = getelementptr [3 x i8], ptr @.str.103, i32 0, i32 %374
  %376 = load i8, ptr %375, align 1
  %377 = zext i8 %376 to i32
  %378 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, i32 noundef %340, i32 noundef %361, i32 noundef %370, i32 noundef %377) #25
  %379 = load i32, ptr %330, align 64
  br label %380

380:                                              ; preds = %347, %337
  %381 = phi i32 [ %379, %347 ], [ %338, %337 ]
  %382 = phi i32 [ %348, %347 ], [ %341, %337 ]
  %383 = call i32 @cpumask_next(i32 noundef %340, ptr noundef nonnull @__cpu_possible_mask) #26
  %384 = icmp sgt i32 %383, %381
  br i1 %384, label %387, label %385

385:                                              ; preds = %380
  %386 = load i32, ptr %326, align 4
  br label %337

387:                                              ; preds = %380, %325
  %388 = phi i32 [ %314, %325 ], [ %382, %380 ]
  %389 = getelementptr %struct.rcu_node, ptr %315, i32 1
  %390 = load i32, ptr @rcu_num_nodes, align 4
  %391 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %390
  %392 = icmp ult ptr %389, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %387
  %394 = load i32, ptr @rcu_num_lvls, align 4
  br label %312

395:                                              ; preds = %387, %302
  %396 = phi i32 [ 0, %302 ], [ %388, %387 ]
  %397 = load volatile i32, ptr @jiffies, align 64
  %398 = sub i32 %397, %215
  %399 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %400 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 9), align 4
  %401 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 23), align 8
  %402 = icmp ne ptr %401, null
  %403 = zext i1 %402 to i32
  %404 = getelementptr [3 x i8], ptr @.str.230, i32 0, i32 %403
  %405 = load i8, ptr %404, align 1
  %406 = zext i8 %405 to i32
  %407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, i32 noundef %398, i32 noundef %399, i32 noundef %400, i32 noundef %406) #25
  %408 = icmp eq i32 %396, 0
  br i1 %408, label %451, label %409

409:                                              ; preds = %395
  %410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231) #25
  %411 = load i32, ptr @rcu_num_nodes, align 4
  %412 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %411
  %413 = icmp ugt ptr %412, @rcu_state
  br i1 %413, label %414, label %449

414:                                              ; preds = %444, %409
  %415 = phi ptr [ %445, %444 ], [ @rcu_state, %409 ]
  %416 = icmp eq ptr %415, @rcu_state
  br i1 %416, label %444, label %417

417:                                              ; preds = %414
  %418 = call i32 @_raw_spin_lock_irqsave(ptr noundef %415) #24
  %419 = getelementptr inbounds %struct.rcu_node, ptr %415, i32 0, i32 23
  %420 = load volatile ptr, ptr %419, align 8
  %421 = icmp eq ptr %420, null
  br i1 %421, label %423, label %422

422:                                              ; preds = %417
  call void @_raw_spin_unlock_irqrestore(ptr noundef %415, i32 noundef %418) #24
  br label %427

423:                                              ; preds = %417
  %424 = getelementptr inbounds %struct.rcu_node, ptr %415, i32 0, i32 9
  %425 = load volatile i32, ptr %424, align 4
  %426 = icmp eq i32 %425, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %415, i32 noundef %418) #24
  br i1 %426, label %444, label %427

427:                                              ; preds = %423, %422
  %428 = getelementptr inbounds %struct.rcu_node, ptr %415, i32 0, i32 18
  %429 = load i8, ptr %428, align 1
  %430 = zext i8 %429 to i32
  %431 = getelementptr inbounds %struct.rcu_node, ptr %415, i32 0, i32 15
  %432 = load i32, ptr %431, align 4
  %433 = getelementptr inbounds %struct.rcu_node, ptr %415, i32 0, i32 16
  %434 = load i32, ptr %433, align 64
  %435 = getelementptr inbounds %struct.rcu_node, ptr %415, i32 0, i32 9
  %436 = load i32, ptr %435, align 4
  %437 = load ptr, ptr %419, align 8
  %438 = icmp ne ptr %437, null
  %439 = zext i1 %438 to i32
  %440 = getelementptr [3 x i8], ptr @.str.230, i32 0, i32 %439
  %441 = load i8, ptr %440, align 1
  %442 = zext i8 %441 to i32
  %443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, i32 noundef %430, i32 noundef %432, i32 noundef %434, i32 noundef %436, i32 noundef %442) #25
  br label %444

444:                                              ; preds = %427, %423, %414
  %445 = getelementptr %struct.rcu_node, ptr %415, i32 1
  %446 = load i32, ptr @rcu_num_nodes, align 4
  %447 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %446
  %448 = icmp ult ptr %445, %447
  br i1 %448, label %414, label %449

449:                                              ; preds = %444, %409
  %450 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #25
  br label %451

451:                                              ; preds = %449, %395
  %452 = load i32, ptr @rcu_num_lvls, align 4
  %453 = add i32 %452, -1
  %454 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %453
  %455 = load ptr, ptr %454, align 4
  %456 = load i32, ptr @rcu_num_nodes, align 4
  %457 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %456
  %458 = icmp ult ptr %455, %457
  br i1 %458, label %459, label %505

459:                                              ; preds = %503, %451
  %460 = phi i32 [ %504, %503 ], [ %452, %451 ]
  %461 = phi ptr [ %499, %503 ], [ %455, %451 ]
  %462 = getelementptr inbounds %struct.rcu_node, ptr %461, i32 0, i32 18
  %463 = load i8, ptr %462, align 1
  %464 = zext i8 %463 to i32
  %465 = add i32 %460, -1
  %466 = icmp ne i32 %465, %464
  %467 = load i1, ptr @synchronize_rcu_expedited_wait.__already_done.233, align 1
  %468 = xor i1 %467, true
  %469 = select i1 %466, i1 %468, i1 false
  br i1 %469, label %470, label %471, !prof !16

470:                                              ; preds = %459
  store i1 true, ptr @synchronize_rcu_expedited_wait.__already_done.233, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 566, i32 noundef 9, ptr noundef null) #24
  br label %471

471:                                              ; preds = %470, %459
  %472 = getelementptr inbounds %struct.rcu_node, ptr %461, i32 0, i32 15
  %473 = load i32, ptr %472, align 4
  %474 = add i32 %473, -1
  %475 = call i32 @cpumask_next(i32 noundef %474, ptr noundef nonnull @__cpu_possible_mask) #26
  %476 = getelementptr inbounds %struct.rcu_node, ptr %461, i32 0, i32 16
  %477 = load i32, ptr %476, align 64
  %478 = icmp sgt i32 %475, %477
  br i1 %478, label %498, label %479

479:                                              ; preds = %471
  %480 = getelementptr inbounds %struct.rcu_node, ptr %461, i32 0, i32 9
  br label %481

481:                                              ; preds = %496, %479
  %482 = phi i32 [ %477, %479 ], [ %493, %496 ]
  %483 = phi i32 [ %473, %479 ], [ %497, %496 ]
  %484 = phi i32 [ %475, %479 ], [ %494, %496 ]
  %485 = sub i32 %484, %483
  %486 = shl nuw i32 1, %485
  %487 = load volatile i32, ptr %480, align 4
  %488 = and i32 %486, %487
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %492, label %490

490:                                              ; preds = %481
  call void @dump_cpu_task(i32 noundef %484) #24
  %491 = load i32, ptr %476, align 64
  br label %492

492:                                              ; preds = %490, %481
  %493 = phi i32 [ %482, %481 ], [ %491, %490 ]
  %494 = call i32 @cpumask_next(i32 noundef %484, ptr noundef nonnull @__cpu_possible_mask) #26
  %495 = icmp sgt i32 %494, %493
  br i1 %495, label %498, label %496

496:                                              ; preds = %492
  %497 = load i32, ptr %472, align 4
  br label %481

498:                                              ; preds = %492, %471
  %499 = getelementptr %struct.rcu_node, ptr %461, i32 1
  %500 = load i32, ptr @rcu_num_nodes, align 4
  %501 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %500
  %502 = icmp ult ptr %499, %501
  br i1 %502, label %503, label %505

503:                                              ; preds = %498
  %504 = load i32, ptr @rcu_num_lvls, align 4
  br label %459

505:                                              ; preds = %498, %451
  %506 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %507 = icmp slt i32 %506, 3
  br i1 %507, label %510, label %508

508:                                              ; preds = %505
  %509 = icmp ugt i32 %506, 300
  br i1 %509, label %510, label %512

510:                                              ; preds = %508, %505
  %511 = phi i32 [ 3, %505 ], [ 300, %508 ]
  store volatile i32 %511, ptr @rcu_cpu_stall_timeout, align 4
  br label %512

512:                                              ; preds = %510, %508
  %513 = phi i32 [ %506, %508 ], [ %511, %510 ]
  %514 = mul nuw nsw i32 %513, 300
  %515 = or i32 %514, 3
  br label %218

516:                                              ; preds = %257, %249
  call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 19)) #24
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !83
  %517 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %518 = and i32 %517, 3
  %519 = icmp eq i32 %518, 0
  %520 = load i1, ptr @rcu_seq_end.__already_done, align 1
  %521 = xor i1 %520, true
  %522 = select i1 %519, i1 %521, i1 false
  br i1 %522, label %523, label %525, !prof !16

523:                                              ; preds = %516
  store i1 true, ptr @rcu_seq_end.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 72, i32 noundef 9, ptr noundef null) #24
  %524 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  br label %525

525:                                              ; preds = %523, %516
  %526 = phi i32 [ %524, %523 ], [ %517, %516 ]
  %527 = or i32 %526, 3
  %528 = add i32 %527, 1
  store volatile i32 %528, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !104
  %529 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %530 = load ptr, ptr @rcu_exp_wait_wake.___tp_str, align 4
  %531 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %532 = icmp sgt i32 %531, 0
  br i1 %532, label %533, label %546

533:                                              ; preds = %525
  %534 = tail call ptr @llvm.thread.pointer() #24
  %535 = getelementptr inbounds %struct.thread_info, ptr %534, i32 0, i32 2
  %536 = load i32, ptr %535, align 8
  %537 = lshr i32 %536, 5
  %538 = getelementptr i32, ptr @__cpu_online_mask, i32 %537
  %539 = load volatile i32, ptr %538, align 4
  %540 = and i32 %536, 31
  %541 = shl nuw i32 1, %540
  %542 = and i32 %541, %539
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %546, label %544

544:                                              ; preds = %533
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %545 = call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %529, i32 noundef %0, ptr noundef %530) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %546

546:                                              ; preds = %544, %533, %525
  %547 = load i32, ptr @rcu_num_nodes, align 4
  %548 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %547
  %549 = icmp ugt ptr %548, @rcu_state
  br i1 %549, label %550, label %574

550:                                              ; preds = %546
  %551 = lshr i32 %0, 2
  %552 = and i32 %551, 3
  br label %553

553:                                              ; preds = %568, %550
  %554 = phi ptr [ @rcu_state, %550 ], [ %570, %568 ]
  %555 = getelementptr inbounds %struct.rcu_node, ptr %554, i32 0, i32 33
  %556 = load volatile i32, ptr %555, align 4
  %557 = sub i32 %556, %0
  %558 = icmp slt i32 %557, 0
  br i1 %558, label %559, label %568

559:                                              ; preds = %553
  %560 = getelementptr inbounds %struct.rcu_node, ptr %554, i32 0, i32 32
  call void @_raw_spin_lock(ptr noundef %560) #24
  %561 = load i32, ptr %555, align 4
  %562 = sub i32 %561, %0
  %563 = icmp slt i32 %562, 0
  br i1 %563, label %564, label %565

564:                                              ; preds = %559
  store volatile i32 %0, ptr %555, align 4
  br label %565

565:                                              ; preds = %564, %559
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %566 = load i16, ptr %560, align 4
  %567 = add i16 %566, 1
  store i16 %567, ptr %560, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  br label %568

568:                                              ; preds = %565, %553
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !105
  %569 = getelementptr %struct.rcu_node, ptr %554, i32 0, i32 34, i32 %552
  call void @__wake_up(ptr noundef %569, i32 noundef 3, i32 noundef 0, ptr noundef null) #24
  %570 = getelementptr %struct.rcu_node, ptr %554, i32 1
  %571 = load i32, ptr @rcu_num_nodes, align 4
  %572 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %571
  %573 = icmp ult ptr %570, %572
  br i1 %573, label %553, label %574

574:                                              ; preds = %568, %546
  %575 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %576 = load ptr, ptr @rcu_exp_wait_wake.___tp_str.221, align 4
  %577 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %578 = icmp sgt i32 %577, 0
  br i1 %578, label %579, label %592

579:                                              ; preds = %574
  %580 = tail call ptr @llvm.thread.pointer() #24
  %581 = getelementptr inbounds %struct.thread_info, ptr %580, i32 0, i32 2
  %582 = load i32, ptr %581, align 8
  %583 = lshr i32 %582, 5
  %584 = getelementptr i32, ptr @__cpu_online_mask, i32 %583
  %585 = load volatile i32, ptr %584, align 4
  %586 = and i32 %582, 31
  %587 = shl nuw i32 1, %586
  %588 = and i32 %587, %585
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %592, label %590

590:                                              ; preds = %579
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %591 = call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %575, i32 noundef %0, ptr noundef %576) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %592

592:                                              ; preds = %590, %579, %574
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 19)) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wait_rcu_exp_gp(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load i32, ptr %2, align 4
  tail call fastcc void @rcu_exp_sel_wait_wake(i32 noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_read_unlock_strict() #1 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #24, !srcloc !106
  %2 = and i32 %1, 128
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = tail call ptr @llvm.thread.pointer() #24
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %10 = icmp ne ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #16, !srcloc !9
  %16 = add i32 %15, ptrtoint (ptr @rcu_data to i32)
  %17 = inttoptr i32 %16 to ptr
  tail call fastcc void @rcu_report_qs_rdp(ptr noundef %17)
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 0) #24
  br label %19

19:                                               ; preds = %12, %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_report_qs_rdp(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 40
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #24
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp ne i32 %3, %6
  %8 = load i1, ptr @rcu_report_qs_rdp.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !16

11:                                               ; preds = %1
  store i1 true, ptr @rcu_report_qs_rdp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2291, i32 noundef 9, ptr noundef null) #24
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #24
  %16 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32, ptr %0, align 4
  %21 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 5
  %26 = load i8, ptr %25, align 4, !range !32
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %19, %12
  store i8 1, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #24
  br label %63

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 3
  store i8 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.rcu_node, ptr %14, i32 0, i32 4
  %34 = load i32, ptr %33, align 16
  %35 = and i32 %34, %31
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #24
  br label %63

38:                                               ; preds = %29
  %39 = tail call fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef %14, ptr noundef %0)
  %40 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 23
  store volatile i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 22
  store volatile i8 0, ptr %41, align 4
  %42 = load i32, ptr %21, align 4
  tail call fastcc void @rcu_report_qs_rnp(i32 noundef %31, ptr noundef %14, i32 noundef %42, i32 noundef %15)
  br i1 %39, label %43, label %63

43:                                               ; preds = %38
  %44 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %45 = icmp eq ptr %4, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 983040
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load volatile i32, ptr %47, align 4
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51, %46, %43
  %56 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %57 = icmp ne i16 %56, 0
  %58 = icmp ne ptr %44, null
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %61, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 12), align 32
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  store volatile i32 %62, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 13), align 4
  tail call void @swake_up_one(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9)) #24
  br label %63

63:                                               ; preds = %60, %55, %51, %38, %37, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_all_qs() #1 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #16, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 1, !range !32
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %0
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !107
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #16, !srcloc !9
  %12 = add i32 %11, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i8, ptr %13, align 1, !range !32
  %15 = icmp eq i8 %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !108
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !109
  br label %34

17:                                               ; preds = %8
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #16, !srcloc !9
  %22 = add i32 %21, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %23 = inttoptr i32 %22 to ptr
  store i8 0, ptr %23, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #24, !srcloc !24
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #16, !srcloc !9
  %27 = add i32 %26, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 22) to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load i8, ptr %28, align 1, !range !32
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31, !prof !52

31:                                               ; preds = %17
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  tail call void @rcu_momentary_dyntick_idle()
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #24, !srcloc !24
  br label %33

33:                                               ; preds = %31, %17
  tail call fastcc void @rcu_qs()
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !110
  br label %34

34:                                               ; preds = %33, %16, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_note_context_switch(i1 zeroext %0) #1 {
  %2 = load ptr, ptr @rcu_note_context_switch.___tp_str, align 4
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #24
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %17 = tail call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %2) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %18

18:                                               ; preds = %16, %5, %1
  tail call fastcc void @rcu_qs()
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #16, !srcloc !9
  %22 = add i32 %21, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load volatile i8, ptr %23, align 1, !range !32
  %25 = icmp eq i8 %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !111
  br i1 %25, label %41, label %26

26:                                               ; preds = %18
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #16, !srcloc !9
  %31 = add i32 %30, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %32 = inttoptr i32 %31 to ptr
  store i8 0, ptr %32, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #24, !srcloc !24
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #16, !srcloc !9
  %36 = add i32 %35, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 22) to i32)
  %37 = inttoptr i32 %36 to ptr
  %38 = load i8, ptr %37, align 1, !range !32
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40, !prof !52

40:                                               ; preds = %26
  tail call void @rcu_momentary_dyntick_idle()
  br label %41

41:                                               ; preds = %40, %26, %18
  %42 = load ptr, ptr @rcu_note_context_switch.___tp_str.57, align 4
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = tail call ptr @llvm.thread.pointer() #24
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %57 = tail call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %42) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %58

58:                                               ; preds = %56, %45, %41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @exit_rcu() local_unnamed_addr #8 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_first_fqs_jiffies(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !annotation !61
  %4 = call i32 @_kstrtoul(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 100)
  %9 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  store volatile i32 %8, ptr %10, align 4
  %11 = load i32, ptr @jiffies_till_sched_qs, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %23

13:                                               ; preds = %6
  %14 = load volatile i32, ptr @jiffies_till_first_fqs, align 4
  %15 = load volatile i32, ptr @jiffies_till_next_fqs, align 4
  %16 = shl i32 %15, 1
  %17 = add i32 %16, %14
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = lshr i32 %18, 8
  %20 = add nuw nsw i32 %19, 10
  %21 = call i32 @llvm.umax.i32(i32 %17, i32 %20) #24
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %21) #25
  br label %23

23:                                               ; preds = %13, %6
  %24 = phi i32 [ %21, %13 ], [ %11, %6 ]
  store volatile i32 %24, ptr @jiffies_to_sched_qs, align 4
  br label %25

25:                                               ; preds = %23, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ulong(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_next_fqs_jiffies(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !annotation !61
  %4 = call i32 @_kstrtoul(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  %8 = icmp ugt i32 %7, 100
  %9 = icmp eq i32 %7, 0
  %10 = select i1 %9, i32 1, i32 %7
  %11 = select i1 %8, i32 100, i32 %10
  %12 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  store volatile i32 %11, ptr %13, align 4
  %14 = load i32, ptr @jiffies_till_sched_qs, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %6
  %17 = load volatile i32, ptr @jiffies_till_first_fqs, align 4
  %18 = load volatile i32, ptr @jiffies_till_next_fqs, align 4
  %19 = shl i32 %18, 1
  %20 = add i32 %19, %17
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = lshr i32 %21, 8
  %23 = add nuw nsw i32 %22, 10
  %24 = call i32 @llvm.umax.i32(i32 %20, i32 %23) #24
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, i32 noundef %24) #25
  br label %26

26:                                               ; preds = %16, %6
  %27 = phi i32 [ %24, %16 ], [ %14, %6 ]
  store volatile i32 %27, ptr @jiffies_to_sched_qs, align 4
  br label %28

28:                                               ; preds = %26, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_dyntick(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_grace_period(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_utilization(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @swake_up_one(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_kvfree_callback(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_callback(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_segcb_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @note_gp_changes(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %3 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.rcu_node, ptr %4, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 5
  %11 = load volatile i8, ptr %10, align 4, !range !32
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13, !prof !52

13:                                               ; preds = %9, %1
  %14 = tail call i32 @_raw_spin_trylock(ptr noundef %4) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %9
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #24, !srcloc !24
  br label %40

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i1 @__note_gp_changes(ptr noundef %4, ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %2) #24
  br i1 %18, label %19, label %40

19:                                               ; preds = %17
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %21 = tail call ptr @llvm.thread.pointer() #24
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 983040
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load volatile i32, ptr %24, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28, %23, %19
  %33 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %34 = icmp ne i16 %33, 0
  %35 = icmp ne ptr %20, null
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %38, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 12), align 32
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  store volatile i32 %39, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 13), align 4
  tail call void @swake_up_one(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9)) #24
  br label %40

40:                                               ; preds = %37, %32, %28, %17, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_accelerate_cbs_unlocked(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %4 = add i32 %3, 7
  %5 = and i32 %4, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !63
  %6 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 5
  %7 = load volatile i8, ptr %6, align 4, !range !32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %11, %5
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 13
  %16 = tail call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %15, i32 noundef %5) #24
  br label %42

17:                                               ; preds = %9, %2
  tail call void @_raw_spin_lock(ptr noundef %0) #24
  %18 = tail call fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef %0, ptr noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %19 = load i16, ptr %0, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  br i1 %18, label %21, label %42

21:                                               ; preds = %17
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %23 = tail call ptr @llvm.thread.pointer() #24
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 983040
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load volatile i32, ptr %26, align 4
  %32 = and i32 %31, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %25, %21
  %35 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %36 = icmp ne i16 %35, 0
  %37 = icmp ne ptr %22, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %40, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 12), align 32
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  store volatile i32 %41, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 13), align 4
  tail call void @swake_up_one(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9)) #24
  br label %42

42:                                               ; preds = %39, %34, %30, %17, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcu_segcblist_first_pend_cb(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__note_gp_changes(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %139, label %7

7:                                                ; preds = %2
  %8 = and i32 %5, -4
  %9 = sub i32 %3, %8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 5
  %13 = load volatile i8, ptr %12, align 4, !range !32
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %42, label %15, !prof !52

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 13
  %17 = tail call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %16) #24
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, ptr %4, align 4
  tail call void @rcu_segcblist_advance(ptr noundef %16, i32 noundef %19) #24
  %20 = tail call fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef %0, ptr noundef %1) #24
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ %20, %18 ], [ false, %15 ]
  %23 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 3
  store i8 0, ptr %23, align 2
  %24 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %25 = load i32, ptr %1, align 4
  %26 = load ptr, ptr @__note_gp_changes.___tp_str, align 4
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %21
  %30 = tail call ptr @llvm.thread.pointer() #24
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %41 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %24, i32 noundef %25, ptr noundef %26) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %55

42:                                               ; preds = %11
  %43 = tail call fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef %0, ptr noundef %1)
  %44 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 3
  %45 = load i8, ptr %44, align 2, !range !32
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 4
  %49 = load i32, ptr %48, align 16
  %50 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, %49
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i8
  store i8 %54, ptr %44, align 2
  br label %55

55:                                               ; preds = %47, %42, %40, %29, %21
  %56 = phi i1 [ %43, %47 ], [ %43, %42 ], [ %22, %21 ], [ %22, %29 ], [ %22, %40 ]
  %57 = load i32, ptr %1, align 4
  %58 = load i32, ptr %4, align 4
  %59 = add i32 %57, 3
  %60 = and i32 %59, -4
  %61 = sub i32 %60, %58
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 5
  %65 = load volatile i8, ptr %64, align 4, !range !32
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %108, label %67, !prof !52

67:                                               ; preds = %63, %55
  %68 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %69 = load ptr, ptr @__note_gp_changes.___tp_str.71, align 4
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  %72 = tail call ptr @llvm.thread.pointer() #24
  br i1 %71, label %73, label %85

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %84 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %68, i32 noundef %58, ptr noundef %69) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %85

85:                                               ; preds = %83, %73, %67
  %86 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 4
  %87 = load i32, ptr %86, align 16
  %88 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 8
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, %87
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 2
  store i8 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 3
  store i8 %92, ptr %94, align 2
  %95 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 9
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %97
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, ptrtoint (ptr @kstat to i32)
  %101 = inttoptr i32 %100 to ptr
  %102 = getelementptr %struct.kernel_stat, ptr %101, i32 0, i32 1, i32 9
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 31
  store i32 %103, ptr %104, align 4
  %105 = load volatile i32, ptr @jiffies, align 64
  %106 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 39
  store volatile i32 %105, ptr %106, align 4
  %107 = load i32, ptr %4, align 4
  br label %108

108:                                              ; preds = %85, %63
  %109 = phi i32 [ %107, %85 ], [ %58, %63 ]
  store i32 %109, ptr %1, align 4
  %110 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = sub i32 %111, %113
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 5
  %118 = load i8, ptr %117, align 4, !range !32
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116, %108
  store volatile i32 %113, ptr %110, align 4
  br label %121

121:                                              ; preds = %120, %116
  %122 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 5
  store volatile i8 0, ptr %122, align 4
  %123 = load volatile i32, ptr %1, align 4
  %124 = add i32 %123, 1073741823
  %125 = load i32, ptr %4, align 4
  %126 = sub i32 %124, %125
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  store volatile i8 1, ptr %122, align 4
  %129 = load i32, ptr %4, align 4
  br label %130

130:                                              ; preds = %128, %121
  %131 = phi i32 [ %129, %128 ], [ %125, %121 ]
  %132 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 34
  %133 = load i32, ptr %132, align 4
  %134 = sub i32 1073741823, %131
  %135 = add i32 %134, %133
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = add i32 %131, 1073741823
  store i32 %138, ptr %132, align 4
  br label %139

139:                                              ; preds = %137, %130, %2
  %140 = phi i1 [ false, %2 ], [ %56, %130 ], [ %56, %137 ]
  ret i1 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rcu_data, ptr %1, i32 0, i32 13
  %4 = tail call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %3) #24
  br i1 %4, label %5, label %87

5:                                                ; preds = %2
  %6 = load ptr, ptr @rcu_accelerate_cbs.___tp_str, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_segcb_stats, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #24
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !57
  %21 = tail call i32 @__traceiter_rcu_segcb_stats(ptr noundef null, ptr noundef %3, ptr noundef %6) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !58
  br label %22

22:                                               ; preds = %20, %9, %5
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %24 = add i32 %23, 7
  %25 = and i32 %24, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !63
  %26 = tail call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %3, i32 noundef %25) #24
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call fastcc zeroext i1 @rcu_start_this_gp(ptr noundef %0, ptr noundef %1, i32 noundef %25)
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i1 [ %28, %27 ], [ false, %22 ]
  %31 = getelementptr %struct.rcu_data, ptr %1, i32 0, i32 13, i32 1, i32 1
  %32 = load volatile ptr, ptr %31, align 4
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  br i1 %34, label %36, label %53

36:                                               ; preds = %29
  %37 = load ptr, ptr @rcu_accelerate_cbs.___tp_str.74, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %36
  %41 = tail call ptr @llvm.thread.pointer() #24
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %52 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %35, i32 noundef %25, ptr noundef %37) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %70

53:                                               ; preds = %29
  %54 = load ptr, ptr @rcu_accelerate_cbs.___tp_str.76, align 4
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = tail call ptr @llvm.thread.pointer() #24
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %69 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %35, i32 noundef %25, ptr noundef %54) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %70

70:                                               ; preds = %68, %57, %53, %51, %40, %36
  %71 = load ptr, ptr @rcu_accelerate_cbs.___tp_str.78, align 4
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_segcb_stats, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = tail call ptr @llvm.thread.pointer() #24
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %74
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !57
  %86 = tail call i32 @__traceiter_rcu_segcb_stats(ptr noundef null, ptr noundef %3, ptr noundef %71) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !58
  br label %87

87:                                               ; preds = %85, %74, %70, %2
  %88 = phi i1 [ false, %2 ], [ %30, %70 ], [ %30, %74 ], [ %30, %85 ]
  ret i1 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_accelerate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llist_del_first(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @schedule_page_work_fn(ptr noundef %0) #1 {
  %2 = load ptr, ptr @system_highpri_wq, align 4
  %3 = getelementptr i8, ptr %0, i32 -52
  %4 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %2, ptr noundef %3, i32 noundef 0) #24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_future_grace_period(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_stall_kick_kthreads() unnamed_addr #1 {
  %1 = load volatile i8, ptr @rcu_kick_kthreads, align 1, !range !32
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %41, label %3

3:                                                ; preds = %0
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 27), align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = sub i32 %4, %5
  %7 = icmp slt i32 %6, 0
  %8 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %15, %11
  %19 = load i1, ptr @rcu_stall_kick_kthreads.__already_done, align 1
  br i1 %19, label %22, label %20, !prof !52

20:                                               ; preds = %18
  store i1 true, ptr @rcu_stall_kick_kthreads.__already_done, align 1
  %21 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 172, i32 noundef 9, ptr noundef nonnull @.str.94, ptr noundef %21) #24
  br label %22

22:                                               ; preds = %20, %18
  %23 = load volatile i32, ptr @rcu_stall_kick_kthreads.___rfd_beenhere, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rcu_stall_kick_kthreads.___rfd_beenhere) #24, !srcloc !18
  %26 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @rcu_stall_kick_kthreads.___rfd_beenhere) #24, !srcloc !44
  %27 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !45
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  tail call void @tracing_off() #24
  %30 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 3, ptr @rcu_cpu_stall_suppress, align 4
  br label %33

33:                                               ; preds = %32, %29
  tail call void @ftrace_dump(i32 noundef 1) #24
  %34 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, ptr @rcu_cpu_stall_suppress, align 4
  br label %37

37:                                               ; preds = %36, %33, %25, %22
  %38 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %39 = tail call i32 @wake_up_process(ptr noundef %38) #24
  %40 = add i32 %4, 100
  store volatile i32 %40, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 27), align 4
  br label %41

41:                                               ; preds = %37, %15, %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_off() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_dump(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_inkernel_boot_has_ended() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_cpu_stall_info(i32 noundef %0) unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %7 = load i32, ptr %5, align 4
  %8 = sub i32 %6, %7
  %9 = lshr i32 %8, 2
  %10 = icmp ult i32 %8, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ %13, %11 ], [ %9, %1 ]
  %16 = phi ptr [ @.str.99, %11 ], [ @.str.98, %1 ]
  %17 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rcu_node, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 34
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = lshr i32 %23, 2
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %27 = sub i32 %25, %26
  %28 = icmp ugt i32 %27, 200
  br i1 %28, label %29, label %36

29:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !12
  %30 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 21
  %31 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !13
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @.str.105, ptr @.str.106
  %35 = load ptr, ptr %17, align 4
  br label %36

36:                                               ; preds = %29, %14
  %37 = phi ptr [ %18, %14 ], [ %35, %29 ]
  %38 = phi ptr [ @.str.106, %14 ], [ %34, %29 ]
  %39 = lshr i32 %0, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %0, 31
  %43 = lshr i32 %41, %42
  %44 = and i32 %43, 1
  %45 = getelementptr [3 x i8], ptr @.str.101, i32 0, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.rcu_node, ptr %37, i32 0, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, %48
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = getelementptr [3 x i8], ptr @.str.102, i32 0, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr inbounds %struct.rcu_node, ptr %37, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, %48
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = getelementptr [3 x i8], ptr @.str.103, i32 0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 33
  %64 = load i8, ptr %63, align 4, !range !32
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %36
  %67 = tail call i32 @llvm.umin.i32(i32 %24, i32 9)
  %68 = or i32 %67, 48
  br label %75

69:                                               ; preds = %36
  %70 = icmp ult i32 %23, 4
  %71 = zext i1 %70 to i32
  %72 = getelementptr [3 x i8], ptr @.str.104, i32 0, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  br label %75

75:                                               ; preds = %69, %66
  %76 = phi i32 [ %68, %66 ], [ %74, %69 ]
  %77 = zext i8 %62 to i32
  %78 = zext i8 %55 to i32
  %79 = zext i8 %46 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !12
  %80 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 21
  %81 = load volatile i32, ptr %80, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !13
  %82 = and i32 %81, 4095
  %83 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 19
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 20
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 31
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr %2, align 4
  %90 = add i32 %89, ptrtoint (ptr @kstat to i32)
  %91 = inttoptr i32 %90 to ptr
  %92 = getelementptr %struct.kernel_stat, ptr %91, i32 0, i32 1, i32 9
  %93 = load i32, ptr %92, align 4
  %94 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 28), align 32
  %95 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 35), align 4
  %96 = sub i32 %94, %95
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %0, i32 noundef %79, i32 noundef %78, i32 noundef %77, i32 noundef %76, i32 noundef %15, ptr noundef nonnull %16, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %93, i32 noundef %96, ptr noundef nonnull %38) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_check_gp_kthread_starvation() unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 8), align 4
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %4 = sub i32 %2, %3
  %5 = icmp ugt i32 %4, 200
  br i1 %5, label %6, label %55

6:                                                ; preds = %0
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %10 = load volatile i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %10, %8 ], [ -1, %6 ]
  %13 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %15 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %16 = sext i16 %15 to i32
  %17 = load i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %18 = icmp ugt i16 %17, 8
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = zext i16 %17 to i32
  %21 = getelementptr [9 x ptr], ptr @gp_state_names, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %11
  %24 = phi ptr [ %22, %19 ], [ @.str.198, %11 ]
  %25 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %26 = sext i16 %25 to i32
  br i1 %7, label %53, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 8
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %13, i32 noundef %4, i32 noundef %14, i32 noundef %16, ptr noundef %24, i32 noundef %26, i32 noundef %29, i32 noundef %12) #25
  %31 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %31) #25
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #25
  tail call void @sched_show_task(ptr noundef nonnull %1) #24
  %34 = icmp sgt i32 %12, -1
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = lshr i32 %12, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %12, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45, !prof !16

43:                                               ; preds = %35
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %12) #25
  br label %51

45:                                               ; preds = %35
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #25
  %47 = add nuw nsw i32 %39, 1
  %48 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %47
  %49 = sub nsw i32 0, %36
  %50 = getelementptr i32, ptr %48, i32 %49
  tail call void @arch_trigger_cpumask_backtrace(ptr noundef %50, i1 noundef zeroext false) #24
  br label %51

51:                                               ; preds = %45, %43, %27
  %52 = tail call i32 @wake_up_process(ptr noundef nonnull %1) #24
  br label %55

53:                                               ; preds = %23
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %13, i32 noundef %4, i32 noundef %14, i32 noundef %16, ptr noundef %24, i32 noundef %26, i32 noundef -1, i32 noundef %12) #25
  br label %55

55:                                               ; preds = %53, %51, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_dump_cpu_stacks() unnamed_addr #1 {
  %1 = load i32, ptr @rcu_num_lvls, align 4
  %2 = add i32 %1, -1
  %3 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @rcu_num_nodes, align 4
  %6 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %5
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %65

8:                                                ; preds = %60, %0
  %9 = phi ptr [ %61, %60 ], [ %4, %0 ]
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #24
  %11 = getelementptr inbounds %struct.rcu_node, ptr %9, i32 0, i32 18
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load i32, ptr @rcu_num_lvls, align 4
  %15 = add i32 %14, -1
  %16 = icmp ne i32 %15, %13
  %17 = load i1, ptr @rcu_dump_cpu_stacks.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !16

20:                                               ; preds = %8
  store i1 true, ptr @rcu_dump_cpu_stacks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 339, i32 noundef 9, ptr noundef null) #24
  br label %21

21:                                               ; preds = %20, %8
  %22 = getelementptr inbounds %struct.rcu_node, ptr %9, i32 0, i32 15
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  %25 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull @__cpu_possible_mask) #26
  %26 = getelementptr inbounds %struct.rcu_node, ptr %9, i32 0, i32 16
  %27 = load i32, ptr %26, align 64
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %60, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.rcu_node, ptr %9, i32 0, i32 4
  br label %31

31:                                               ; preds = %58, %29
  %32 = phi i32 [ %23, %29 ], [ %59, %58 ]
  %33 = phi i32 [ %25, %29 ], [ %55, %58 ]
  %34 = load i32, ptr %30, align 16
  %35 = sub i32 %33, %32
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %31
  %40 = lshr i32 %33, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %33, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49, !prof !16

47:                                               ; preds = %39
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %33) #25
  br label %54

49:                                               ; preds = %39
  %50 = add nuw nsw i32 %43, 1
  %51 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %50
  %52 = sub nsw i32 0, %40
  %53 = getelementptr i32, ptr %51, i32 %52
  tail call void @arch_trigger_cpumask_backtrace(ptr noundef %53, i1 noundef zeroext false) #24
  br label %54

54:                                               ; preds = %49, %47, %31
  %55 = tail call i32 @cpumask_next(i32 noundef %33, ptr noundef nonnull @__cpu_possible_mask) #26
  %56 = load i32, ptr %26, align 64
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %22, align 4
  br label %31

60:                                               ; preds = %54, %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #24
  %61 = getelementptr %struct.rcu_node, ptr %9, i32 1
  %62 = load i32, ptr @rcu_num_nodes, align 4
  %63 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %62
  %64 = icmp ult ptr %61, %63
  br i1 %64, label %8, label %65

65:                                               ; preds = %60, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_stall_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_show_task(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_cpu_task(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_barrier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_barrier_callback(ptr nocapture noundef readnone %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 17), align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !80
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15)) #24, !srcloc !18
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15)) #24, !srcloc !81
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !82
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load ptr, ptr @rcu_barrier_callback.___tp_str, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = tail call ptr @llvm.thread.pointer() #24
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %24 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %8, ptr noundef %7, i32 noundef -1, i32 noundef %9, i32 noundef %2) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %25

25:                                               ; preds = %23, %12, %6
  tail call void @complete(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 16)) #24
  br label %45

26:                                               ; preds = %1
  %27 = load ptr, ptr @rcu_barrier_callback.___tp_str.127, align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 15), align 4
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_barrier, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = tail call ptr @llvm.thread.pointer() #24
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !75
  %44 = tail call i32 @__traceiter_rcu_barrier(ptr noundef null, ptr noundef %28, ptr noundef %27, i32 noundef -1, i32 noundef %29, i32 noundef %2) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !76
  br label %45

45:                                               ; preds = %43, %32, %26, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_entrain(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_quiescent_state_report(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_advance(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcu_gp_kthread(ptr nocapture noundef readnone %0) #18 {
  %2 = alloca %struct.swait_queue, align 4
  %3 = getelementptr inbounds %struct.swait_queue, ptr %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.swait_queue, ptr %2, i32 0, i32 1, i32 1
  br label %5

5:                                                ; preds = %79, %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %7 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  br label %8

8:                                                ; preds = %62, %5
  %9 = phi i32 [ %7, %5 ], [ %63, %62 ]
  %10 = phi ptr [ %6, %5 ], [ %64, %62 ]
  %11 = load ptr, ptr @rcu_gp_kthread.___tp_str, align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = tail call ptr @llvm.thread.pointer() #24
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %26 = call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %10, i32 noundef %9, ptr noundef %11) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %27

27:                                               ; preds = %25, %14, %8
  store volatile i16 1, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %28 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #24
  store i32 0, ptr %2, align 4, !annotation !61
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %4, align 4
  %32 = call i32 @prepare_to_swait_event(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9), ptr noundef nonnull %2, i32 noundef 1026) #24
  %33 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %36, %31
  call void @schedule() #24
  %37 = call i32 @prepare_to_swait_event(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9), ptr noundef nonnull %2, i32 noundef 1026) #24
  %38 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %36, label %41

41:                                               ; preds = %36, %31
  call void @finish_swait(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9), ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #24
  br label %42

42:                                               ; preds = %41, %27
  store volatile i16 2, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %43 = call fastcc zeroext i1 @rcu_gp_init()
  br i1 %43, label %79, label %44

44:                                               ; preds = %42
  %45 = call i32 @__cond_resched() #24
  %46 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %46, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %47 = tail call ptr @llvm.thread.pointer() #24
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55, !prof !52

51:                                               ; preds = %44
  %52 = load volatile i32, ptr %47, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55, !prof !52

55:                                               ; preds = %51, %44
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2130, i32 noundef 9, ptr noundef null) #24
  br label %56

56:                                               ; preds = %55, %51
  %57 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %58 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %59 = load ptr, ptr @rcu_gp_kthread.___tp_str.134, align 4
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %75, %65, %56
  %63 = phi i32 [ %58, %56 ], [ %58, %65 ], [ %78, %75 ]
  %64 = phi ptr [ %57, %56 ], [ %57, %65 ], [ %77, %75 ]
  br label %8

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %62, label %75

75:                                               ; preds = %65
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %76 = call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %57, i32 noundef %58, ptr noundef %59) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  %77 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %78 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  br label %62

79:                                               ; preds = %42
  call fastcc void @rcu_gp_fqs_loop()
  store volatile i16 7, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  call fastcc void @rcu_gp_cleanup()
  store volatile i16 8, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  br label %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_setscheduler_nocheck(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rcu_spawn_core_kthreads() unnamed_addr #10 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %10, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 30) to i32)
  %9 = inttoptr i32 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #26
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %4, label %13

13:                                               ; preds = %4, %0
  %14 = load i8, ptr @use_softirq, align 1, !range !32
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = tail call i32 @smpboot_register_percpu_thread(ptr noundef nonnull @rcu_cpu_thread_spec) #24
  %18 = icmp ne i32 %17, 0
  %19 = load i1, ptr @rcu_spawn_core_kthreads.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !16

22:                                               ; preds = %16
  store i1 true, ptr @rcu_spawn_core_kthreads.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2900, i32 noundef 9, ptr noundef nonnull @.str.160, ptr noundef nonnull @__func__.rcu_spawn_core_kthreads) #24
  br label %23

23:                                               ; preds = %22, %16, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_swait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_swait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rcu_gp_init() unnamed_addr #19 {
  %1 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %1, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rcu_state) #24
  %2 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %5 = load i16, ptr @rcu_state, align 64
  %6 = add i16 %5, 1
  store i16 %6, ptr @rcu_state, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  br label %257

7:                                                ; preds = %0
  store volatile i16 0, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %9 = and i32 %8, 3
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @rcu_gp_init.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !16

14:                                               ; preds = %7
  store i1 true, ptr @rcu_gp_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1758, i32 noundef 9, ptr noundef null) #24
  br label %15

15:                                               ; preds = %14, %7
  br i1 %10, label %16, label %19

16:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %17 = load i16, ptr @rcu_state, align 64
  %18 = add i16 %17, 1
  store i16 %18, ptr @rcu_state, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  br label %257

19:                                               ; preds = %15
  %20 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %20, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 29), align 4
  %21 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = icmp ugt i32 %21, 300
  br i1 %24, label %25, label %27

25:                                               ; preds = %23, %19
  %26 = phi i32 [ 3, %19 ], [ 300, %23 ]
  store volatile i32 %26, ptr @rcu_cpu_stall_timeout, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %21, %23 ], [ %26, %25 ]
  %29 = mul nuw nsw i32 %28, 100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !113
  %30 = add i32 %29, %20
  store volatile i32 %30, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 33), align 4
  %31 = lshr exact i32 %29, 1
  %32 = add i32 %31, %20
  store i32 %32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 34), align 8
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 28), align 32
  store i32 %33, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 35), align 4
  %34 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %35 = add i32 %34, 1
  store volatile i32 %35, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !69
  %36 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %37 = and i32 %36, 3
  %38 = icmp ne i32 %37, 1
  %39 = load i1, ptr @rcu_seq_start.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %44, !prof !16

42:                                               ; preds = %27
  store i1 true, ptr @rcu_seq_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 59, i32 noundef 9, ptr noundef null) #24
  %43 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi i32 [ %36, %27 ], [ %43, %42 ]
  %46 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %47 = load ptr, ptr @rcu_gp_init.___tp_str, align 4
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = tail call ptr @llvm.thread.pointer() #24
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %62 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %46, i32 noundef %45, ptr noundef %47) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %63

63:                                               ; preds = %61, %50, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %64 = load i16, ptr @rcu_state, align 64
  %65 = add i16 %64, 1
  store i16 %65, ptr @rcu_state, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  store volatile i16 3, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %66 = load i32, ptr @rcu_num_lvls, align 4
  %67 = add i32 %66, -1
  %68 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr @rcu_num_nodes, align 4
  %71 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %70
  %72 = icmp ult ptr %69, %71
  br i1 %72, label %73, label %143

73:                                               ; preds = %138, %63
  %74 = phi ptr [ %139, %138 ], [ %69, %63 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !114
  %75 = getelementptr inbounds %struct.rcu_node, ptr %74, i32 0, i32 8
  %76 = load volatile i32, ptr %75, align 32
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = load volatile i32, ptr %75, align 32
  %81 = icmp eq i32 %76, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %82, %79
  %83 = tail call i32 @schedule_timeout_idle(i32 noundef 1) #24
  %84 = load volatile i32, ptr %75, align 32
  %85 = icmp eq i32 %76, %84
  br i1 %85, label %82, label %86

86:                                               ; preds = %82, %79, %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !115
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 39)) #24
  tail call void @_raw_spin_lock_irq(ptr noundef %74) #24
  %87 = getelementptr inbounds %struct.rcu_node, ptr %74, i32 0, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = getelementptr inbounds %struct.rcu_node, ptr %74, i32 0, i32 7
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.rcu_node, ptr %74, i32 0, i32 19
  %94 = load i8, ptr %93, align 2, !range !32
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %97 = load i16, ptr %74, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %99 = load i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 39), align 64
  %100 = add i16 %99, 1
  store i16 %100, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 39), align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  br label %138

101:                                              ; preds = %92, %86
  store i32 %90, ptr %87, align 8
  %102 = icmp eq i32 %88, 0
  %103 = icmp ne i32 %90, 0
  %104 = xor i1 %102, %103
  br i1 %104, label %125, label %105

105:                                              ; preds = %101
  br i1 %102, label %106, label %124

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.rcu_node, ptr %74, i32 0, i32 19
  %108 = load i8, ptr %107, align 2, !range !32
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %115, %106
  %111 = phi ptr [ %113, %115 ], [ %74, %106 ]
  %112 = getelementptr inbounds %struct.rcu_node, ptr %111, i32 0, i32 20
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.rcu_node, ptr %111, i32 0, i32 14
  %117 = load i32, ptr %116, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull %113) #24
  %118 = getelementptr inbounds %struct.rcu_node, ptr %113, i32 0, i32 6
  %119 = load i32, ptr %118, align 8
  %120 = or i32 %119, %117
  store i32 %120, ptr %118, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %121 = load i16, ptr %113, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %113, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  %123 = icmp eq i32 %119, 0
  br i1 %123, label %110, label %125

124:                                              ; preds = %105
  tail call fastcc void @rcu_cleanup_dead_rnp(ptr noundef %74)
  br label %125

125:                                              ; preds = %124, %115, %110, %106, %101
  %126 = getelementptr inbounds %struct.rcu_node, ptr %74, i32 0, i32 19
  %127 = load i8, ptr %126, align 2, !range !32
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  store i8 0, ptr %126, align 2
  %130 = load i32, ptr %87, align 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  tail call fastcc void @rcu_cleanup_dead_rnp(ptr noundef %74)
  br label %133

133:                                              ; preds = %132, %129, %125
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %134 = load i16, ptr %74, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %136 = load i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 39), align 64
  %137 = add i16 %136, 1
  store i16 %137, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 39), align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  br label %138

138:                                              ; preds = %133, %96
  %139 = getelementptr %struct.rcu_node, ptr %74, i32 1
  %140 = load i32, ptr @rcu_num_nodes, align 4
  %141 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %140
  %142 = icmp ult ptr %139, %141
  br i1 %142, label %73, label %143

143:                                              ; preds = %138, %63
  %144 = phi i32 [ %70, %63 ], [ %140, %138 ]
  %145 = load i32, ptr @gp_preinit_delay, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %149 = lshr i32 %148, 2
  %150 = mul i32 %144, 3
  %151 = mul i32 %150, %145
  %152 = urem i32 %149, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = tail call i32 @schedule_timeout_idle(i32 noundef %145) #24
  %156 = load i32, ptr @rcu_num_nodes, align 4
  br label %157

157:                                              ; preds = %154, %147, %143
  %158 = phi i32 [ %144, %143 ], [ %144, %147 ], [ %156, %154 ]
  store volatile i16 4, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %159 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %158
  %160 = icmp ugt ptr %159, @rcu_state
  br i1 %160, label %161, label %257

161:                                              ; preds = %250, %157
  %162 = phi i32 [ %254, %250 ], [ %158, %157 ]
  %163 = phi ptr [ %253, %250 ], [ @rcu_state, %157 ]
  %164 = load i32, ptr @gp_init_delay, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %168 = lshr i32 %167, 2
  %169 = mul i32 %162, 3
  %170 = mul i32 %169, %164
  %171 = urem i32 %168, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = tail call i32 @schedule_timeout_idle(i32 noundef %164) #24
  br label %175

175:                                              ; preds = %173, %166, %161
  %176 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %163) #24
  %177 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %178 = inttoptr i32 %177 to ptr
  %179 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %178) #16, !srcloc !9
  %180 = add i32 %179, ptrtoint (ptr @rcu_data to i32)
  %181 = inttoptr i32 %180 to ptr
  %182 = getelementptr inbounds %struct.rcu_node, ptr %163, i32 0, i32 4
  %183 = load i32, ptr %182, align 16
  %184 = icmp ne i32 %183, 0
  %185 = load i1, ptr @rcu_preempt_check_blocked_tasks.__already_done, align 1
  %186 = xor i1 %185, true
  %187 = select i1 %184, i1 %186, i1 false
  br i1 %187, label %188, label %189, !prof !16

188:                                              ; preds = %175
  store i1 true, ptr @rcu_preempt_check_blocked_tasks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.139, i32 noundef 948, i32 noundef 9, ptr noundef null) #24
  br label %189

189:                                              ; preds = %188, %175
  %190 = getelementptr inbounds %struct.rcu_node, ptr %163, i32 0, i32 6
  %191 = load i32, ptr %190, align 8
  store i32 %191, ptr %182, align 16
  %192 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %193 = getelementptr inbounds %struct.rcu_node, ptr %163, i32 0, i32 1
  store volatile i32 %192, ptr %193, align 4
  %194 = getelementptr inbounds %struct.rcu_data, ptr %181, i32 0, i32 7
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %163, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = tail call fastcc zeroext i1 @__note_gp_changes(ptr noundef %163, ptr noundef %181)
  %199 = load i32, ptr %193, align 4
  %200 = load i32, ptr %182, align 16
  br label %201

201:                                              ; preds = %197, %189
  %202 = phi i32 [ %200, %197 ], [ %191, %189 ]
  %203 = phi i32 [ %199, %197 ], [ %192, %189 ]
  %204 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %205 = getelementptr inbounds %struct.rcu_node, ptr %163, i32 0, i32 18
  %206 = load i8, ptr %205, align 1
  %207 = getelementptr inbounds %struct.rcu_node, ptr %163, i32 0, i32 15
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds %struct.rcu_node, ptr %163, i32 0, i32 16
  %210 = load i32, ptr %209, align 64
  %211 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period_init, i32 0, i32 1), align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %201
  %214 = tail call ptr @llvm.thread.pointer() #24
  %215 = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 2
  %216 = load i32, ptr %215, align 8
  %217 = lshr i32 %216, 5
  %218 = getelementptr i32, ptr @__cpu_online_mask, i32 %217
  %219 = load volatile i32, ptr %218, align 4
  %220 = and i32 %216, 31
  %221 = shl nuw i32 1, %220
  %222 = and i32 %221, %219
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %213
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !116
  %225 = tail call i32 @__traceiter_rcu_grace_period_init(ptr noundef null, ptr noundef %204, i32 noundef %203, i8 noundef zeroext %206, i32 noundef %208, i32 noundef %210, i32 noundef %202) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !117
  %226 = load i32, ptr %182, align 16
  br label %227

227:                                              ; preds = %224, %213, %201
  %228 = phi i32 [ %202, %201 ], [ %202, %213 ], [ %226, %224 ]
  %229 = getelementptr inbounds %struct.rcu_node, ptr %163, i32 0, i32 7
  %230 = load i32, ptr %229, align 4
  %231 = xor i32 %230, -1
  %232 = and i32 %228, %231
  %233 = getelementptr inbounds %struct.rcu_node, ptr %163, i32 0, i32 5
  store i32 %232, ptr %233, align 4
  %234 = icmp eq i32 %232, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %227
  %236 = getelementptr inbounds %struct.rcu_node, ptr %163, i32 0, i32 19
  %237 = load i8, ptr %236, align 2, !range !32
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %247, label %239

239:                                              ; preds = %235, %227
  %240 = load i8, ptr %205, align 1
  %241 = zext i8 %240 to i32
  %242 = load i32, ptr @rcu_num_lvls, align 4
  %243 = add i32 %242, -1
  %244 = icmp eq i32 %243, %241
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = load i32, ptr %193, align 4
  tail call fastcc void @rcu_report_qs_rnp(i32 noundef %232, ptr noundef %163, i32 noundef %246, i32 noundef %176)
  br label %250

247:                                              ; preds = %239, %235
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %248 = load i16, ptr %163, align 4
  %249 = add i16 %248, 1
  store i16 %249, ptr %163, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  br label %250

250:                                              ; preds = %247, %245
  %251 = tail call i32 @__cond_resched() #24
  %252 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %252, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %253 = getelementptr %struct.rcu_node, ptr %163, i32 1
  %254 = load i32, ptr @rcu_num_nodes, align 4
  %255 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %254
  %256 = icmp ult ptr %253, %255
  br i1 %256, label %161, label %257

257:                                              ; preds = %250, %157, %16, %4
  %258 = phi i1 [ false, %16 ], [ false, %4 ], [ true, %157 ], [ true, %250 ]
  ret i1 %258
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_gp_fqs_loop() unnamed_addr #19 {
  %1 = alloca %struct.swait_queue, align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 24), align 4
  %3 = icmp eq i8 %2, 0
  %4 = select i1 %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.swait_queue, ptr %1, i32 0, i32 1, i32 1
  br label %7

7:                                                ; preds = %231, %0
  %8 = phi i32 [ %212, %231 ], [ %4, %0 ]
  %9 = phi ptr [ @jiffies_till_next_fqs, %231 ], [ @jiffies_till_first_fqs, %0 ]
  %10 = phi i1 [ false, %231 ], [ true, %0 ]
  %11 = load volatile i32, ptr %9, align 4
  br label %12

12:                                               ; preds = %264, %7
  %13 = phi i32 [ 0, %264 ], [ %8, %7 ]
  %14 = phi i1 [ false, %264 ], [ true, %7 ]
  %15 = phi i32 [ %271, %264 ], [ %11, %7 ]
  br i1 %14, label %16, label %24

16:                                               ; preds = %12
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = add i32 %17, %15
  store volatile i32 %18, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 26), align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #24, !srcloc !118
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = icmp eq i32 %15, 0
  %21 = mul i32 %15, 3
  %22 = select i1 %20, i32 2, i32 %21
  %23 = add i32 %19, %22
  store volatile i32 %23, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 27), align 4
  br label %24

24:                                               ; preds = %16, %12
  %25 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %26 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %27 = load ptr, ptr @rcu_gp_fqs_loop.___tp_str, align 4
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = tail call ptr @llvm.thread.pointer() #24
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %42 = call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %25, i32 noundef %26, ptr noundef %27) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %43

43:                                               ; preds = %41, %30, %24
  store volatile i16 5, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %44 = and i32 %13, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %43
  %47 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 4), align 16
  %53 = icmp eq i32 %52, 0
  %54 = xor i1 %53, true
  %55 = icmp eq i32 %15, 0
  %56 = select i1 %54, i1 %55, i1 false
  %57 = select i1 %53, i1 true, i1 %56
  br i1 %57, label %86, label %58

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %1) #24
  store i32 0, ptr %1, align 4, !annotation !61
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %6, align 4
  %59 = call i32 @prepare_to_swait_event(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9), ptr noundef nonnull %1, i32 noundef 1026) #24
  %60 = and i32 %48, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %77, %58
  %63 = phi i32 [ %78, %77 ], [ %15, %58 ]
  %64 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %65 = zext i16 %64 to i32
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 4), align 16
  %70 = icmp eq i32 %69, 0
  %71 = xor i1 %70, true
  %72 = icmp ne i32 %63, 0
  %73 = select i1 %71, i1 true, i1 %72
  %74 = select i1 %73, i32 %63, i32 1
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %70, i1 true, i1 %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = call i32 @schedule_timeout(i32 noundef %74) #24
  %79 = call i32 @prepare_to_swait_event(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9), ptr noundef nonnull %1, i32 noundef 1026) #24
  %80 = and i32 %65, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %62, label %82

82:                                               ; preds = %77, %68, %62
  %83 = zext i16 %64 to i32
  br label %84

84:                                               ; preds = %82, %58
  %85 = phi i32 [ %48, %58 ], [ %83, %82 ]
  call void @finish_swait(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 9), ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %1) #24
  br label %86

86:                                               ; preds = %84, %51, %46, %43
  %87 = phi i32 [ %48, %51 ], [ %85, %84 ], [ 4, %43 ], [ %48, %46 ]
  store volatile i16 6, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 4), align 16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  ret void

91:                                               ; preds = %86
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 26), align 8
  %94 = sub i32 %92, %93
  %95 = icmp slt i32 %94, 0
  %96 = and i32 %87, 6
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %234, label %99

99:                                               ; preds = %91
  %100 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %101 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %102 = load ptr, ptr @rcu_gp_fqs_loop.___tp_str.141, align 4
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = tail call ptr @llvm.thread.pointer() #24
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %117 = call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %100, i32 noundef %101, ptr noundef %102) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %118

118:                                              ; preds = %116, %105, %99
  %119 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %119, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %120 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 28), align 32
  %121 = add i32 %120, 1
  store volatile i32 %121, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 28), align 32
  %122 = select i1 %10, ptr @dyntick_save_progress_counter, ptr @rcu_implicit_dynticks_qs
  %123 = load i8, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 25), align 1
  store i8 %123, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 24), align 4
  store i8 0, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 25), align 1
  %124 = load i32, ptr @rcu_num_lvls, align 4
  %125 = add i32 %124, -1
  %126 = getelementptr %struct.rcu_state, ptr @rcu_state, i32 0, i32 1, i32 %125
  %127 = load ptr, ptr %126, align 4
  %128 = load i32, ptr @rcu_num_nodes, align 4
  %129 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %128
  %130 = icmp ult ptr %127, %129
  br i1 %130, label %131, label %199

131:                                              ; preds = %194, %118
  %132 = phi ptr [ %195, %194 ], [ %127, %118 ]
  %133 = call i32 @__cond_resched() #24
  %134 = call i32 @_raw_spin_lock_irqsave(ptr noundef %132) #24
  %135 = getelementptr inbounds %struct.rcu_node, ptr %132, i32 0, i32 12
  %136 = load i32, ptr %135, align 16
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i8
  %139 = load i8, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 25), align 1
  %140 = or i8 %139, %138
  store i8 %140, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 25), align 1
  %141 = getelementptr inbounds %struct.rcu_node, ptr %132, i32 0, i32 4
  %142 = load i32, ptr %141, align 16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %131
  call void @_raw_spin_unlock_irqrestore(ptr noundef %132, i32 noundef %134) #24
  br label %194

145:                                              ; preds = %131
  %146 = getelementptr inbounds %struct.rcu_node, ptr %132, i32 0, i32 18
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load i32, ptr @rcu_num_lvls, align 4
  %150 = add i32 %149, -1
  %151 = icmp ne i32 %150, %148
  %152 = load i1, ptr @force_qs_rnp.__already_done, align 1
  %153 = xor i1 %152, true
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %155, label %156, !prof !16

155:                                              ; preds = %145
  store i1 true, ptr @force_qs_rnp.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2660, i32 noundef 9, ptr noundef null) #24
  br label %156

156:                                              ; preds = %155, %145
  %157 = getelementptr inbounds %struct.rcu_node, ptr %132, i32 0, i32 15
  %158 = load i32, ptr %157, align 4
  %159 = call i32 @_find_next_bit_le(ptr noundef %141, i32 noundef 32, i32 noundef 0) #24
  %160 = add i32 %159, %158
  %161 = getelementptr inbounds %struct.rcu_node, ptr %132, i32 0, i32 16
  %162 = load i32, ptr %161, align 64
  %163 = icmp sgt i32 %160, %162
  br i1 %163, label %193, label %164

164:                                              ; preds = %179, %156
  %165 = phi i32 [ %185, %179 ], [ %160, %156 ]
  %166 = phi i32 [ %180, %179 ], [ 0, %156 ]
  %167 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %165
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, ptrtoint (ptr @rcu_data to i32)
  %170 = inttoptr i32 %169 to ptr
  %171 = call i32 %122(ptr noundef %170) #24, !callees !119
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.rcu_data, ptr %170, i32 0, i32 8
  %175 = load i32, ptr %174, align 4
  %176 = or i32 %175, %166
  %177 = getelementptr inbounds %struct.rcu_data, ptr %170, i32 0, i32 23
  store volatile i8 0, ptr %177, align 1
  %178 = getelementptr inbounds %struct.rcu_data, ptr %170, i32 0, i32 22
  store volatile i8 0, ptr %178, align 4
  br label %179

179:                                              ; preds = %173, %164
  %180 = phi i32 [ %176, %173 ], [ %166, %164 ]
  %181 = load i32, ptr %157, align 4
  %182 = add i32 %165, 1
  %183 = sub i32 %182, %181
  %184 = call i32 @_find_next_bit_le(ptr noundef %141, i32 noundef 32, i32 noundef %183) #24
  %185 = add i32 %184, %181
  %186 = load i32, ptr %161, align 64
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %164

188:                                              ; preds = %179
  %189 = icmp eq i32 %180, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.rcu_node, ptr %132, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  call fastcc void @rcu_report_qs_rnp(i32 noundef %180, ptr noundef %132, i32 noundef %192, i32 noundef %134) #24
  br label %194

193:                                              ; preds = %188, %156
  call void @_raw_spin_unlock_irqrestore(ptr noundef %132, i32 noundef %134) #24
  br label %194

194:                                              ; preds = %193, %190, %144
  %195 = getelementptr %struct.rcu_node, ptr %132, i32 1
  %196 = load i32, ptr @rcu_num_nodes, align 4
  %197 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %196
  %198 = icmp ult ptr %195, %197
  br i1 %198, label %131, label %199

199:                                              ; preds = %194, %118
  %200 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %201 = and i16 %200, 2
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %199
  call void @_raw_spin_lock_irq(ptr noundef nonnull @rcu_state) #24
  %204 = load volatile i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %205 = and i16 %204, -3
  store volatile i16 %205, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %206 = load i16, ptr @rcu_state, align 64
  %207 = add i16 %206, 1
  store i16 %207, ptr @rcu_state, align 64
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  br label %208

208:                                              ; preds = %203, %199
  %209 = load i8, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 24), align 4
  %210 = icmp eq i8 %209, 0
  %211 = select i1 %210, i32 0, i32 4
  %212 = select i1 %10, i32 %211, i32 0
  %213 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %214 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %215 = load ptr, ptr @rcu_gp_fqs_loop.___tp_str.143, align 4
  %216 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %208
  %219 = tail call ptr @llvm.thread.pointer() #24
  %220 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 2
  %221 = load i32, ptr %220, align 8
  %222 = lshr i32 %221, 5
  %223 = getelementptr i32, ptr @__cpu_online_mask, i32 %222
  %224 = load volatile i32, ptr %223, align 4
  %225 = and i32 %221, 31
  %226 = shl nuw i32 1, %225
  %227 = and i32 %226, %224
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %218
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %230 = call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %213, i32 noundef %214, ptr noundef %215) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %231

231:                                              ; preds = %229, %218, %208
  %232 = call i32 @__cond_resched() #24
  %233 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %233, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  br label %7

234:                                              ; preds = %91
  %235 = call i32 @__cond_resched() #24
  %236 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %236, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %237 = tail call ptr @llvm.thread.pointer() #24
  %238 = load volatile i32, ptr %237, align 4
  %239 = and i32 %238, 256
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %245, !prof !52

241:                                              ; preds = %234
  %242 = load volatile i32, ptr %237, align 4
  %243 = and i32 %242, 1
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %246, label %245, !prof !52

245:                                              ; preds = %241, %234
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1993, i32 noundef 9, ptr noundef null) #24
  br label %246

246:                                              ; preds = %245, %241
  %247 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %248 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %249 = load ptr, ptr @rcu_gp_fqs_loop.___tp_str.145, align 4
  %250 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 2
  %254 = load i32, ptr %253, align 8
  %255 = lshr i32 %254, 5
  %256 = getelementptr i32, ptr @__cpu_online_mask, i32 %255
  %257 = load volatile i32, ptr %256, align 4
  %258 = and i32 %254, 31
  %259 = shl nuw i32 1, %258
  %260 = and i32 %259, %257
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %252
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %263 = call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %247, i32 noundef %248, ptr noundef %249) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %264

264:                                              ; preds = %262, %252, %246
  %265 = load volatile i32, ptr @jiffies, align 64
  %266 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 26), align 8
  %267 = load volatile i32, ptr @jiffies, align 64
  %268 = sub i32 %266, %267
  %269 = icmp slt i32 %268, 0
  %270 = sub i32 %266, %265
  %271 = select i1 %269, i32 1, i32 %270
  br label %12
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_gp_cleanup() unnamed_addr #19 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1)
  store i32 0, ptr %1, align 4
  %2 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %2, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rcu_state) #24
  %3 = load volatile i32, ptr @jiffies, align 64
  store i32 %3, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 30), align 8
  %4 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 29), align 4
  %5 = sub i32 %3, %4
  %6 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 7), align 8
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 %5, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 7), align 8
  br label %9

9:                                                ; preds = %8, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %10 = load i16, ptr @rcu_state, align 64
  %11 = add i16 %10, 1
  store i16 %11, ptr @rcu_state, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  %12 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !83
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  %15 = load i1, ptr @rcu_seq_end.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !16

18:                                               ; preds = %9
  store i1 true, ptr @rcu_seq_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 72, i32 noundef 9, ptr noundef null) #24
  br label %19

19:                                               ; preds = %18, %9
  %20 = or i32 %12, 3
  %21 = add i32 %20, 1
  store volatile i32 %21, ptr %1, align 4
  %22 = load i32, ptr @rcu_num_nodes, align 4
  %23 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %22
  %24 = icmp ugt ptr %23, @rcu_state
  br i1 %24, label %25, label %149

25:                                               ; preds = %144, %19
  %26 = phi i1 [ %88, %144 ], [ false, %19 ]
  %27 = phi ptr [ %145, %144 ], [ @rcu_state, %19 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %27) #24
  %28 = getelementptr inbounds %struct.rcu_node, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 16
  %30 = icmp ne i32 %29, 0
  %31 = load i1, ptr @rcu_gp_cleanup.__already_done.152, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !16

34:                                               ; preds = %25
  store i1 true, ptr @rcu_gp_cleanup.__already_done.152, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2053, i32 noundef 9, ptr noundef null) #24
  br label %35

35:                                               ; preds = %34, %25
  %36 = getelementptr inbounds %struct.rcu_node, ptr %27, i32 0, i32 1
  store volatile i32 %21, ptr %36, align 4
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #16, !srcloc !9
  %40 = add i32 %39, ptrtoint (ptr @rcu_data to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.rcu_data, ptr %41, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %27, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = tail call fastcc zeroext i1 @__note_gp_changes(ptr noundef %27, ptr noundef %41)
  %47 = select i1 %46, i1 true, i1 %26
  br label %48

48:                                               ; preds = %45, %35
  %49 = phi i1 [ %47, %45 ], [ %26, %35 ]
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #16, !srcloc !9
  %53 = load i32, ptr %36, align 4
  %54 = getelementptr inbounds %struct.rcu_node, ptr %27, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = sub i32 %53, %55
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  store i32 %53, ptr %54, align 8
  br label %59

59:                                               ; preds = %58, %48
  %60 = phi ptr [ @rcu_future_gp_cleanup.___tp_str.158, %58 ], [ @rcu_future_gp_cleanup.___tp_str, %48 ]
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %63 = load volatile i32, ptr %36, align 4
  %64 = getelementptr inbounds %struct.rcu_node, ptr %27, i32 0, i32 18
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds %struct.rcu_node, ptr %27, i32 0, i32 15
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.rcu_node, ptr %27, i32 0, i32 16
  %69 = load i32, ptr %68, align 64
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_future_grace_period, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %59
  %73 = tail call ptr @llvm.thread.pointer() #24
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !72
  %84 = tail call i32 @__traceiter_rcu_future_grace_period(ptr noundef null, ptr noundef %62, i32 noundef %63, i32 noundef %53, i8 noundef zeroext %65, i32 noundef %67, i32 noundef %69, ptr noundef %61) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !73
  %85 = load i8, ptr %64, align 1
  br label %86

86:                                               ; preds = %83, %72, %59
  %87 = phi i8 [ %65, %59 ], [ %65, %72 ], [ %85, %83 ]
  %88 = select i1 %57, i1 true, i1 %49
  %89 = zext i8 %87 to i32
  %90 = load i32, ptr @rcu_num_lvls, align 4
  %91 = add i32 %90, -1
  %92 = icmp eq i32 %91, %89
  br i1 %92, label %93, label %127

93:                                               ; preds = %86
  %94 = load i32, ptr %66, align 4
  %95 = getelementptr inbounds %struct.rcu_node, ptr %27, i32 0, i32 12
  %96 = tail call i32 @_find_next_bit_le(ptr noundef %95, i32 noundef 32, i32 noundef 0) #24
  %97 = add i32 %96, %94
  %98 = load i32, ptr %68, align 64
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %127, label %100

100:                                              ; preds = %119, %93
  %101 = phi i32 [ %124, %119 ], [ %97, %93 ]
  %102 = load i32, ptr @qovld_calc, align 4
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %119, label %104

104:                                              ; preds = %100
  %105 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, ptrtoint (ptr @rcu_data to i32)
  %108 = inttoptr i32 %107 to ptr
  %109 = getelementptr inbounds %struct.rcu_data, ptr %108, i32 0, i32 13, i32 3
  %110 = load volatile i32, ptr %109, align 4
  %111 = icmp slt i32 %110, %102
  %112 = load i32, ptr %95, align 16
  %113 = getelementptr inbounds %struct.rcu_data, ptr %108, i32 0, i32 8
  %114 = load i32, ptr %113, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %112, %115
  %117 = or i32 %114, %112
  %118 = select i1 %111, i32 %116, i32 %117
  store volatile i32 %118, ptr %95, align 16
  br label %119

119:                                              ; preds = %104, %100
  %120 = load i32, ptr %66, align 4
  %121 = add i32 %101, 1
  %122 = sub i32 %121, %120
  %123 = tail call i32 @_find_next_bit_le(ptr noundef %95, i32 noundef 32, i32 noundef %122) #24
  %124 = add i32 %123, %120
  %125 = load i32, ptr %68, align 64
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %100

127:                                              ; preds = %119, %93, %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %128 = load i16, ptr %27, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  %130 = tail call i32 @__cond_resched() #24
  %131 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %131, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 31), align 4
  %132 = load i32, ptr @gp_cleanup_delay, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %127
  %135 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %136 = lshr i32 %135, 2
  %137 = load i32, ptr @rcu_num_nodes, align 4
  %138 = mul i32 %132, 3
  %139 = mul i32 %138, %137
  %140 = urem i32 %136, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = tail call i32 @schedule_timeout_idle(i32 noundef %132) #24
  br label %144

144:                                              ; preds = %142, %134, %127
  %145 = getelementptr %struct.rcu_node, ptr %27, i32 1
  %146 = load i32, ptr @rcu_num_nodes, align 4
  %147 = getelementptr [1 x %struct.rcu_node], ptr @rcu_state, i32 0, i32 %146
  %148 = icmp ult ptr %145, %147
  br i1 %148, label %25, label %149

149:                                              ; preds = %144, %19
  %150 = phi i1 [ false, %19 ], [ %88, %144 ]
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @rcu_state) #24
  %151 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %152 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %153 = load ptr, ptr @rcu_gp_cleanup.___tp_str, align 4
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %149
  %157 = tail call ptr @llvm.thread.pointer() #24
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %168 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %151, i32 noundef %152, ptr noundef %153) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %169

169:                                              ; preds = %167, %156, %149
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !83
  %170 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %171 = and i32 %170, 3
  %172 = icmp eq i32 %171, 0
  %173 = load i1, ptr @rcu_seq_end.__already_done, align 1
  %174 = xor i1 %173, true
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %178, !prof !16

176:                                              ; preds = %169
  store i1 true, ptr @rcu_seq_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 72, i32 noundef 9, ptr noundef null) #24
  %177 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  br label %178

178:                                              ; preds = %176, %169
  %179 = phi i32 [ %177, %176 ], [ %170, %169 ]
  %180 = or i32 %179, 3
  %181 = add i32 %180, 1
  store volatile i32 %181, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  store volatile i16 0, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 11), align 2
  %182 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %183 = inttoptr i32 %182 to ptr
  %184 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %183) #16, !srcloc !9
  %185 = add i32 %184, ptrtoint (ptr @rcu_data to i32)
  %186 = inttoptr i32 %185 to ptr
  br i1 %150, label %216, label %187

187:                                              ; preds = %178
  %188 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 1), align 4
  %189 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 2), align 8
  %190 = sub i32 %188, %189
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %187
  %193 = tail call fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef nonnull @rcu_state, ptr noundef %186)
  br label %238

194:                                              ; preds = %187
  %195 = load ptr, ptr @rcu_gp_cleanup.___tp_str.155, align 4
  %196 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %197 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 1), align 4
  %198 = load i8, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 18), align 1
  %199 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 15), align 4
  %200 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 0, i32 0, i32 16), align 64
  %201 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_future_grace_period, i32 0, i32 1), align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %194
  %204 = tail call ptr @llvm.thread.pointer() #24
  %205 = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 2
  %206 = load i32, ptr %205, align 8
  %207 = lshr i32 %206, 5
  %208 = getelementptr i32, ptr @__cpu_online_mask, i32 %207
  %209 = load volatile i32, ptr %208, align 4
  %210 = and i32 %206, 31
  %211 = shl nuw i32 1, %210
  %212 = and i32 %211, %209
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %203
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !72
  %215 = tail call i32 @__traceiter_rcu_future_grace_period(ptr noundef null, ptr noundef %196, i32 noundef %197, i32 noundef %189, i8 noundef zeroext %198, i32 noundef %199, i32 noundef %200, ptr noundef %195) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !73
  br label %216

216:                                              ; preds = %214, %203, %194, %178
  %217 = tail call fastcc zeroext i1 @rcu_accelerate_cbs(ptr noundef nonnull @rcu_state, ptr noundef %186)
  br i1 %217, label %238, label %218

218:                                              ; preds = %216
  store volatile i16 1, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %219 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %219, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 32), align 16
  %220 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %221 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %222 = load ptr, ptr @rcu_gp_cleanup.___tp_str.157, align 4
  %223 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_grace_period, i32 0, i32 1), align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %218
  %226 = tail call ptr @llvm.thread.pointer() #24
  %227 = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 2
  %228 = load i32, ptr %227, align 8
  %229 = lshr i32 %228, 5
  %230 = getelementptr i32, ptr @__cpu_online_mask, i32 %229
  %231 = load volatile i32, ptr %230, align 4
  %232 = and i32 %228, 31
  %233 = shl nuw i32 1, %232
  %234 = and i32 %233, %231
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %225
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !10
  %237 = tail call i32 @__traceiter_rcu_grace_period(ptr noundef null, ptr noundef %220, i32 noundef %221, ptr noundef %222) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !11
  br label %241

238:                                              ; preds = %216, %192
  %239 = load i16, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  %240 = and i16 %239, 1
  store volatile i16 %240, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 10), align 4
  br label %241

241:                                              ; preds = %238, %236, %225, %218
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %242 = load i16, ptr @rcu_state, align 64
  %243 = add i16 %242, 1
  store i16 %243, ptr @rcu_state, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_idle(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_cleanup_dead_rnp(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @rcu_cleanup_dead_rnp.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !16

8:                                                ; preds = %1
  store i1 true, ptr @rcu_cleanup_dead_rnp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2418, i32 noundef 9, ptr noundef null) #24
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %40, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %36, %10
  %15 = phi ptr [ %38, %36 ], [ %12, %10 ]
  %16 = phi ptr [ %15, %36 ], [ %0, %10 ]
  %17 = getelementptr inbounds %struct.rcu_node, ptr %16, i32 0, i32 14
  %18 = load i32, ptr %17, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull %15) #24
  %19 = xor i32 %18, -1
  %20 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, %19
  store i32 %22, ptr %20, align 8
  %23 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 4
  %24 = load i32, ptr %23, align 16
  %25 = icmp ne i32 %24, 0
  %26 = load i1, ptr @rcu_cleanup_dead_rnp.__already_done.138, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31, !prof !16

29:                                               ; preds = %14
  store i1 true, ptr @rcu_cleanup_dead_rnp.__already_done.138, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2429, i32 noundef 9, ptr noundef null) #24
  %30 = load i32, ptr %20, align 8
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i32 [ %30, %29 ], [ %22, %14 ]
  %33 = icmp eq i32 %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24
  %34 = load i16, ptr %15, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24
  tail call void asm sideeffect "", "~{memory}"() #24
  br i1 %33, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rcu_node, ptr %15, i32 0, i32 20
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %14

40:                                               ; preds = %36, %31, %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_grace_period_init(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dyntick_save_progress_counter(ptr noundef %0) unnamed_addr #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !12
  %2 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 21
  %3 = load volatile i32, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !13
  %4 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 18
  store i32 %3, ptr %4, align 4
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %9 = load i32, ptr %0, align 4
  %10 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 40
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr @dyntick_save_progress_counter.___tp_str, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_fqs, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %7
  %16 = tail call ptr @llvm.thread.pointer() #24
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !120
  %27 = tail call i32 @__traceiter_rcu_fqs(ptr noundef null, ptr noundef %8, i32 noundef %9, i32 noundef %11, ptr noundef %12) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !121
  br label %28

28:                                               ; preds = %26, %15, %7
  %29 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = load volatile i32, ptr %0, align 4
  %32 = add i32 %31, 1073741823
  %33 = getelementptr inbounds %struct.rcu_node, ptr %30, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %32, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 5
  store volatile i8 1, ptr %38, align 4
  %39 = load i32, ptr %33, align 4
  br label %40

40:                                               ; preds = %37, %28
  %41 = phi i32 [ %39, %37 ], [ %34, %28 ]
  %42 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 34
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 1073741823, %41
  %45 = add i32 %44, %43
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = add i32 %41, 1073741823
  store i32 %48, ptr %42, align 4
  br label %49

49:                                               ; preds = %47, %40, %1
  %50 = phi i32 [ 0, %1 ], [ 1, %40 ], [ 1, %47 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcu_implicit_dynticks_qs(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !12
  %6 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 21
  %7 = load volatile i32, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !13
  %8 = icmp eq i32 %7, %5
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %11 = load i32, ptr %0, align 4
  %12 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 40
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr @rcu_implicit_dynticks_qs.___tp_str, align 4
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_fqs, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = tail call ptr @llvm.thread.pointer() #24
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !120
  %29 = tail call i32 @__traceiter_rcu_fqs(ptr noundef null, ptr noundef %10, i32 noundef %11, i32 noundef %13, ptr noundef %14) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !121
  br label %30

30:                                               ; preds = %28, %17, %9
  %31 = load volatile i32, ptr %0, align 4
  %32 = add i32 %31, 1073741823
  %33 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %32, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 5
  store volatile i8 1, ptr %38, align 4
  %39 = load i32, ptr %33, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = phi i32 [ %39, %37 ], [ %34, %30 ]
  %42 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 34
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 1073741823, %41
  %45 = add i32 %44, %43
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %180

47:                                               ; preds = %40
  %48 = add i32 %41, 1073741823
  store i32 %48, ptr %42, align 4
  br label %180

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 7
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  %56 = load i1, ptr @rcu_implicit_dynticks_qs.__already_done, align 1
  %57 = xor i1 %56, true
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %60, !prof !16

59:                                               ; preds = %49
  store i1 true, ptr @rcu_implicit_dynticks_qs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1263, i32 noundef 9, ptr noundef null) #24
  br label %60

60:                                               ; preds = %59, %49
  br i1 %55, label %61, label %115

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 15
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 16
  %65 = load i32, ptr %64, align 64
  %66 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 18
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.rcu_implicit_dynticks_qs, i32 noundef %63, i32 noundef %65, i32 noundef %68, i32 noundef %70, i32 noundef %72) #25
  %74 = icmp eq ptr %3, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %75, %61
  %76 = phi ptr [ %91, %75 ], [ %3, %61 ]
  %77 = getelementptr inbounds %struct.rcu_node, ptr %76, i32 0, i32 15
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.rcu_node, ptr %76, i32 0, i32 16
  %80 = load i32, ptr %79, align 64
  %81 = getelementptr inbounds %struct.rcu_node, ptr %76, i32 0, i32 4
  %82 = load i32, ptr %81, align 16
  %83 = getelementptr inbounds %struct.rcu_node, ptr %76, i32 0, i32 6
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.rcu_node, ptr %76, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.rcu_node, ptr %76, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @__func__.rcu_implicit_dynticks_qs, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88) #25
  %90 = getelementptr inbounds %struct.rcu_node, ptr %76, i32 0, i32 20
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %75

93:                                               ; preds = %75, %61
  %94 = load i32, ptr %50, align 4
  %95 = load volatile i32, ptr %52, align 4
  %96 = and i32 %95, %94
  %97 = icmp ne i32 %96, 0
  %98 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 40
  %99 = load i32, ptr %98, align 4
  %100 = zext i1 %97 to i32
  %101 = getelementptr [3 x i8], ptr @.str.151, i32 0, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 37
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 38
  %107 = load i16, ptr %106, align 4
  %108 = sext i16 %107 to i32
  %109 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 35
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 36
  %112 = load i16, ptr %111, align 4
  %113 = sext i16 %112 to i32
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @__func__.rcu_implicit_dynticks_qs, i32 noundef %99, i32 noundef %103, i32 noundef %105, i32 noundef %108, i32 noundef %110, i32 noundef %113) #25
  br label %180

115:                                              ; preds = %60
  %116 = load volatile i32, ptr @jiffies_to_sched_qs, align 4
  %117 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 22
  %118 = load volatile i8, ptr %117, align 4, !range !32
  %119 = icmp eq i8 %118, 0
  %120 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 29), align 4
  br i1 %119, label %121, label %136

121:                                              ; preds = %115
  %122 = shl i32 %116, 1
  %123 = add i32 %120, %122
  %124 = load volatile i32, ptr @jiffies, align 64
  %125 = sub i32 %123, %124
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %121
  %128 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 34), align 8
  %129 = load volatile i32, ptr @jiffies, align 64
  %130 = sub i32 %128, %129
  %131 = icmp slt i32 %130, 0
  %132 = load i8, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 24), align 4
  %133 = icmp ne i8 %132, 0
  %134 = select i1 %131, i1 true, i1 %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127, %121
  store volatile i8 1, ptr %117, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !122
  br label %141

136:                                              ; preds = %127, %115
  %137 = add i32 %120, %116
  %138 = load volatile i32, ptr @jiffies, align 64
  %139 = sub i32 %137, %138
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136, %135
  %142 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 23
  store volatile i8 1, ptr %142, align 1
  br label %143

143:                                              ; preds = %141, %136
  %144 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 40
  %145 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 34), align 8
  %146 = load volatile i32, ptr @jiffies, align 64
  %147 = sub i32 %145, %146
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %180

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 39
  %151 = load volatile i32, ptr %150, align 4
  %152 = add i32 %151, %116
  %153 = load volatile i32, ptr @jiffies, align 64
  %154 = sub i32 %152, %153
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32, ptr %144, align 4
  tail call void @resched_cpu(i32 noundef %157) #24
  %158 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %158, ptr %150, align 4
  br label %159

159:                                              ; preds = %156, %149
  %160 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 33
  %161 = load i8, ptr %160, align 4, !range !32
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 34
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %180, label %169

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.rcu_node, ptr %3, i32 0, i32 13
  %171 = load i32, ptr %170, align 4
  %172 = load i32, ptr %50, align 4
  %173 = and i32 %172, %171
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %169
  store i8 1, ptr %160, align 4
  %176 = load i32, ptr %166, align 4
  store i32 %176, ptr %164, align 4
  %177 = getelementptr inbounds %struct.rcu_data, ptr %0, i32 0, i32 32
  %178 = load i32, ptr %144, align 4
  %179 = tail call zeroext i1 @irq_work_queue_on(ptr noundef %177, i32 noundef %178) #24
  br label %180

180:                                              ; preds = %175, %169, %163, %159, %143, %93, %47, %40
  %181 = phi i32 [ 1, %93 ], [ 0, %159 ], [ 0, %163 ], [ 0, %169 ], [ 0, %175 ], [ 0, %143 ], [ 1, %40 ], [ 1, %47 ]
  ret i32 %181
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_fqs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_cpu(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue_on(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @rcu_cpu_kthread_should_run(i32 noundef %0) #20 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #16, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 30) to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_cpu_kthread(i32 noundef %0) #1 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #16, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 29) to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = add i32 %4, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 30) to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr @rcu_cpu_kthread.___tp_str, align 4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  %12 = tail call ptr @llvm.thread.pointer() #24
  br i1 %11, label %13, label %25

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %24 = tail call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %9) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %25

25:                                               ; preds = %23, %13, %1
  %26 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  br label %30

27:                                               ; preds = %37
  %28 = add nuw nsw i32 %31, 1
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %56, label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ 0, %25 ], [ %28, %27 ]
  %32 = load volatile i32, ptr %26, align 4
  %33 = add i32 %32, 512
  store volatile i32 %33, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !123
  store i32 1, ptr %6, align 4
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #24, !srcloc !78
  %34 = load i8, ptr %8, align 1
  store i8 0, ptr %8, align 1
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #24, !srcloc !79
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call fastcc void @rcu_core()
  br label %37

37:                                               ; preds = %36, %30
  tail call fastcc void @local_bh_enable()
  %38 = load i8, ptr %8, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %27

40:                                               ; preds = %37
  %41 = load ptr, ptr @rcu_cpu_kthread.___tp_str.163, align 4
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %89

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %89, label %54

54:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %55 = tail call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %41) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %89

56:                                               ; preds = %27
  store i32 4, ptr %6, align 4
  %57 = load ptr, ptr @rcu_cpu_kthread.___tp_str.165, align 4
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %71 = tail call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %57) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %72

72:                                               ; preds = %70, %60, %56
  %73 = tail call i32 @schedule_timeout_idle(i32 noundef 2) #24
  %74 = load ptr, ptr @rcu_cpu_kthread.___tp_str.167, align 4
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %88 = tail call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %74) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %89

89:                                               ; preds = %87, %77, %72, %54, %44, %40
  store i32 2, ptr %6, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @rcu_cpu_kthread_setup(i32 noundef %0) #8 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rcu_cpu_kthread_park(i32 noundef %0) #14 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 29) to i32)
  %5 = inttoptr i32 %4 to ptr
  store i32 3, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_core() unnamed_addr #1 {
  %1 = alloca %struct.rcu_cblist, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #16, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @rcu_data to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 13
  %10 = tail call ptr @llvm.thread.pointer() #24
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %357, label %20, !prof !16

20:                                               ; preds = %0
  %21 = load ptr, ptr @rcu_core.___tp_str, align 4
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load volatile i32, ptr %14, align 4
  %26 = and i32 %25, %17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %29 = tail call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %21) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %30

30:                                               ; preds = %28, %24, %20
  %31 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 4
  %32 = load i8, ptr %31, align 1, !range !32
  %33 = icmp eq i8 %32, 0
  %34 = load i1, ptr @rcu_core.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !16

37:                                               ; preds = %30
  store i1 true, ptr @rcu_core.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2751, i32 noundef 9, ptr noundef null) #24
  br label %38

38:                                               ; preds = %37, %30
  tail call fastcc void @note_gp_changes(ptr noundef %6) #24
  %39 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 3
  %40 = load i8, ptr %39, align 2, !range !32
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 2
  %44 = load i8, ptr %43, align 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call fastcc void @rcu_report_qs_rdp(ptr noundef %6) #24
  br label %47

47:                                               ; preds = %46, %42, %38
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %49 = and i32 %48, 3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 13, i32 5
  %53 = load volatile i8, ptr %52, align 4
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %58 = getelementptr %struct.rcu_data, ptr %6, i32 0, i32 13, i32 1, i32 2
  %59 = load volatile ptr, ptr %58, align 4
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  tail call fastcc void @rcu_accelerate_cbs_unlocked(ptr noundef %8, ptr noundef %6)
  br label %63

63:                                               ; preds = %62, %56
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %57) #24, !srcloc !24
  br label %64

64:                                               ; preds = %63, %51, %47
  %65 = load volatile i32, ptr @rcu_cpu_stall_timeout, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = icmp ugt i32 %65, 300
  br i1 %68, label %69, label %71

69:                                               ; preds = %67, %64
  %70 = phi i32 [ 3, %64 ], [ 300, %67 ]
  store volatile i32 %70, ptr @rcu_cpu_stall_timeout, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = tail call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %9) #24
  br i1 %72, label %73, label %342

73:                                               ; preds = %71
  %74 = load volatile i32, ptr @rcu_scheduler_fully_active, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %342, label %76, !prof !16

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %1) #24
  %77 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 1
  store i32 0, ptr %1, align 4
  store ptr %1, ptr %77, align 4
  %78 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 2
  store i32 0, ptr %78, align 4
  %79 = call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %9) #24
  br i1 %79, label %125, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %82 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 13, i32 3
  %83 = load volatile i32, ptr %82, align 4
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_batch_start, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32, ptr %11, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %86
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !124
  %96 = call i32 @__traceiter_rcu_batch_start(ptr noundef null, ptr noundef %81, i32 noundef %83, i32 noundef 0) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !125
  %97 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  br label %98

98:                                               ; preds = %95, %86, %80
  %99 = phi ptr [ %81, %86 ], [ %97, %95 ], [ %81, %80 ]
  %100 = load volatile ptr, ptr %9, align 4
  %101 = icmp ne ptr %100, null
  %102 = zext i1 %101 to i8
  %103 = load volatile i32, ptr %10, align 4
  %104 = trunc i32 %103 to i8
  %105 = lshr i8 %104, 1
  %106 = and i8 %105, 1
  %107 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = trunc i32 %108 to i8
  %110 = lshr i8 %109, 1
  %111 = and i8 %110, 1
  %112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_batch_end, i32 0, i32 1), align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %339

114:                                              ; preds = %98
  %115 = load i32, ptr %11, align 8
  %116 = lshr i32 %115, 5
  %117 = getelementptr i32, ptr @__cpu_online_mask, i32 %116
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %115, 31
  %120 = shl nuw i32 1, %119
  %121 = and i32 %120, %118
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %339, label %123

123:                                              ; preds = %114
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !126
  %124 = call i32 @__traceiter_rcu_batch_end(ptr noundef null, ptr noundef %99, i32 noundef 0, i8 noundef zeroext %102, i8 noundef zeroext %106, i8 noundef zeroext %111, i8 noundef zeroext 0) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !127
  br label %339

125:                                              ; preds = %76
  %126 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %127 = load i32, ptr %11, align 8
  %128 = lshr i32 %127, 5
  %129 = getelementptr i32, ptr @__cpu_online_mask, i32 %128
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %127, 31
  %132 = shl nuw i32 1, %131
  %133 = and i32 %132, %130
  %134 = icmp ne i32 %133, 0
  %135 = load i1, ptr @rcu_do_batch.__already_done, align 1
  %136 = select i1 %134, i1 true, i1 %135
  br i1 %136, label %138, label %137, !prof !52

137:                                              ; preds = %125
  store i1 true, ptr @rcu_do_batch.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2492, i32 noundef 9, ptr noundef null) #24
  br label %138

138:                                              ; preds = %137, %125
  %139 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 13, i32 3
  %140 = load volatile i32, ptr %139, align 4
  %141 = load volatile i32, ptr @rcu_divisor, align 4
  %142 = icmp slt i32 %141, 0
  %143 = call i32 @llvm.umin.i32(i32 %141, i32 30) #24
  %144 = select i1 %142, i32 7, i32 %143
  %145 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 17
  %146 = load i32, ptr %145, align 4
  %147 = ashr i32 %140, %144
  %148 = call i32 @llvm.smax.i32(i32 %146, i32 %147) #24
  %149 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %150 = load volatile i32, ptr %149, align 4
  %151 = and i32 %150, 256
  %152 = icmp ne i32 %151, 0
  %153 = icmp sgt i32 %148, 100
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %155, label %162, !prof !128

155:                                              ; preds = %138
  %156 = load volatile i32, ptr @rcu_resched_ns, align 4
  %157 = call i32 @llvm.smin.i32(i32 %156, i32 1000000000) #24
  %158 = call i32 @llvm.smax.i32(i32 %157, i32 1000000) #24
  %159 = call i64 @sched_clock() #24
  %160 = trunc i64 %159 to i32
  %161 = add i32 %158, %160
  br label %162

162:                                              ; preds = %155, %138
  %163 = phi i32 [ %161, %155 ], [ 0, %138 ]
  %164 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %165 = load volatile i32, ptr %139, align 4
  %166 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_batch_start, i32 0, i32 1), align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = load i32, ptr %11, align 8
  %170 = lshr i32 %169, 5
  %171 = getelementptr i32, ptr @__cpu_online_mask, i32 %170
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %169, 31
  %174 = shl nuw i32 1, %173
  %175 = and i32 %174, %172
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %168
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !124
  %178 = call i32 @__traceiter_rcu_batch_start(ptr noundef null, ptr noundef %164, i32 noundef %165, i32 noundef %148) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !125
  br label %179

179:                                              ; preds = %177, %168, %162
  call void @rcu_segcblist_extract_done_cbs(ptr noundef %9, ptr noundef nonnull %1) #24
  %180 = load ptr, ptr @rcu_do_batch.___tp_str, align 4
  %181 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_segcb_stats, i32 0, i32 1), align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = load i32, ptr %11, align 8
  %185 = lshr i32 %184, 5
  %186 = getelementptr i32, ptr @__cpu_online_mask, i32 %185
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %184, 31
  %189 = shl nuw i32 1, %188
  %190 = and i32 %189, %187
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %183
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !57
  %193 = call i32 @__traceiter_rcu_segcb_stats(ptr noundef null, ptr noundef %9, ptr noundef %180) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !58
  br label %194

194:                                              ; preds = %192, %183, %179
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %126) #24, !srcloc !24
  %195 = call ptr @rcu_cblist_dequeue(ptr noundef nonnull %1) #24
  %196 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %197 = icmp eq ptr %195, null
  br i1 %197, label %249, label %198

198:                                              ; preds = %194
  %199 = icmp eq i32 %163, 0
  %200 = sext i32 %163 to i64
  br label %201

201:                                              ; preds = %246, %198
  %202 = phi ptr [ %195, %198 ], [ %247, %246 ]
  %203 = phi i32 [ 0, %198 ], [ %204, %246 ]
  %204 = add i32 %203, 1
  %205 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %206 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_invoke_callback, i32 0, i32 1), align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %201
  %209 = load i32, ptr %11, align 8
  %210 = lshr i32 %209, 5
  %211 = getelementptr i32, ptr @__cpu_online_mask, i32 %210
  %212 = load volatile i32, ptr %211, align 4
  %213 = and i32 %209, 31
  %214 = shl nuw i32 1, %213
  %215 = and i32 %214, %212
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %208
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !129
  %218 = call i32 @__traceiter_rcu_invoke_callback(ptr noundef null, ptr noundef %205, ptr noundef nonnull %202) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !130
  br label %219

219:                                              ; preds = %217, %208, %201
  %220 = getelementptr inbounds %struct.callback_head, ptr %202, i32 0, i32 1
  %221 = load ptr, ptr %220, align 4
  store volatile ptr null, ptr %220, align 4
  call void %221(ptr noundef nonnull %202) #24
  %222 = load volatile i32, ptr %149, align 4
  %223 = and i32 %222, 256
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %242, label %225

225:                                              ; preds = %219
  %226 = icmp slt i32 %204, %148
  br i1 %226, label %235, label %227

227:                                              ; preds = %225
  %228 = load volatile i32, ptr %10, align 4
  %229 = and i32 %228, 2
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %249

231:                                              ; preds = %227
  %232 = load i32, ptr %196, align 4
  %233 = and i32 %232, 2
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %249, label %235

235:                                              ; preds = %231, %225
  br i1 %199, label %246, label %236, !prof !52

236:                                              ; preds = %235
  %237 = and i32 %204, 31
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = call i64 @sched_clock() #24
  %241 = icmp ult i64 %240, %200
  br i1 %241, label %246, label %249

242:                                              ; preds = %219
  call fastcc void @local_bh_enable() #24
  %243 = call i32 @__cond_resched() #24
  %244 = load volatile i32, ptr %149, align 4
  %245 = add i32 %244, 512
  store volatile i32 %245, ptr %149, align 4
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !123
  br label %246

246:                                              ; preds = %242, %239, %236, %235
  %247 = call ptr @rcu_cblist_dequeue(ptr noundef nonnull %1) #24
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %201

249:                                              ; preds = %246, %239, %231, %227, %194
  %250 = phi i32 [ 0, %194 ], [ %204, %227 ], [ %204, %231 ], [ %204, %239 ], [ %204, %246 ]
  %251 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #24, !srcloc !23
  %252 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 15
  %253 = load i32, ptr %252, align 4
  %254 = add i32 %253, %250
  store i32 %254, ptr %252, align 4
  %255 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %256 = load ptr, ptr %1, align 4
  %257 = icmp ne ptr %256, null
  %258 = zext i1 %257 to i8
  %259 = load volatile i32, ptr %10, align 4
  %260 = trunc i32 %259 to i8
  %261 = lshr i8 %260, 1
  %262 = and i8 %261, 1
  %263 = load i32, ptr %196, align 4
  %264 = trunc i32 %263 to i8
  %265 = lshr i8 %264, 1
  %266 = and i8 %265, 1
  %267 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_batch_end, i32 0, i32 1), align 4
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %249
  %270 = load i32, ptr %11, align 8
  %271 = lshr i32 %270, 5
  %272 = getelementptr i32, ptr @__cpu_online_mask, i32 %271
  %273 = load volatile i32, ptr %272, align 4
  %274 = and i32 %270, 31
  %275 = shl nuw i32 1, %274
  %276 = and i32 %275, %273
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %269
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !126
  %279 = call i32 @__traceiter_rcu_batch_end(ptr noundef null, ptr noundef %255, i32 noundef %250, i8 noundef zeroext %258, i8 noundef zeroext %262, i8 noundef zeroext %266, i8 noundef zeroext 0) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !127
  br label %280

280:                                              ; preds = %278, %269, %249
  call void @rcu_segcblist_insert_done_cbs(ptr noundef %9, ptr noundef nonnull %1) #24
  %281 = sub i32 0, %250
  call void @rcu_segcblist_add_len(ptr noundef %9, i32 noundef %281) #24
  %282 = load volatile i32, ptr %139, align 4
  %283 = load i32, ptr %145, align 4
  %284 = icmp slt i32 %283, 10000
  %285 = load i32, ptr @qlowmark, align 4
  %286 = icmp sgt i32 %282, %285
  %287 = select i1 %284, i1 true, i1 %286
  br i1 %287, label %290, label %288

288:                                              ; preds = %280
  %289 = load i32, ptr @blimit, align 4
  store i32 %289, ptr %145, align 4
  br label %290

290:                                              ; preds = %288, %280
  %291 = icmp eq i32 %282, 0
  %292 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 14
  %293 = load i32, ptr %292, align 4
  br i1 %291, label %294, label %299

294:                                              ; preds = %290
  %295 = icmp eq i32 %293, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %294
  store i32 0, ptr %292, align 4
  %297 = load volatile i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 28), align 32
  %298 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 16
  store i32 %297, ptr %298, align 4
  br label %305

299:                                              ; preds = %294, %290
  %300 = phi i32 [ 0, %294 ], [ %293, %290 ]
  %301 = load i32, ptr @qhimark, align 4
  %302 = sub i32 %300, %301
  %303 = icmp slt i32 %282, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  store i32 %282, ptr %292, align 4
  br label %305

305:                                              ; preds = %304, %299, %296
  %306 = load volatile ptr, ptr %9, align 4
  %307 = icmp eq ptr %306, null
  %308 = xor i1 %307, true
  %309 = select i1 %291, i1 %308, i1 false
  %310 = load i1, ptr @rcu_do_batch.__already_done.173, align 1
  %311 = xor i1 %310, true
  %312 = select i1 %309, i1 %311, i1 false
  br i1 %312, label %319, label %313, !prof !16

313:                                              ; preds = %305
  %314 = icmp ne i32 %282, 0
  %315 = select i1 %314, i1 %307, i1 false
  %316 = load i1, ptr @rcu_do_batch.__already_done.174, align 1
  %317 = xor i1 %316, true
  %318 = select i1 %315, i1 %317, i1 false
  br i1 %318, label %319, label %322, !prof !16

319:                                              ; preds = %313, %305
  %320 = phi ptr [ @rcu_do_batch.__already_done.173, %305 ], [ @rcu_do_batch.__already_done.174, %313 ]
  %321 = phi i32 [ 2583, %305 ], [ 2585, %313 ]
  store i1 true, ptr %320, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %321, i32 noundef 9, ptr noundef null) #24
  br label %322

322:                                              ; preds = %319, %313
  br i1 %291, label %323, label %330

323:                                              ; preds = %322
  %324 = call i32 @rcu_segcblist_n_segment_cbs(ptr noundef %9) #24
  %325 = icmp ne i32 %324, 0
  %326 = load i1, ptr @rcu_do_batch.__already_done.175, align 1
  %327 = xor i1 %326, true
  %328 = select i1 %325, i1 %327, i1 false
  br i1 %328, label %329, label %330, !prof !16

329:                                              ; preds = %323
  store i1 true, ptr @rcu_do_batch.__already_done.175, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2586, i32 noundef 9, ptr noundef null) #24
  br label %330

330:                                              ; preds = %329, %323, %322
  br i1 %307, label %338, label %331

331:                                              ; preds = %330
  %332 = call i32 @rcu_segcblist_n_segment_cbs(ptr noundef %9) #24
  %333 = icmp eq i32 %332, 0
  %334 = load i1, ptr @rcu_do_batch.__already_done.176, align 1
  %335 = xor i1 %334, true
  %336 = select i1 %333, i1 %335, i1 false
  br i1 %336, label %337, label %338, !prof !16

337:                                              ; preds = %331
  store i1 true, ptr @rcu_do_batch.__already_done.176, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2587, i32 noundef 9, ptr noundef null) #24
  br label %338

338:                                              ; preds = %337, %331, %330
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %251) #24, !srcloc !24
  br label %339

339:                                              ; preds = %338, %123, %114, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %1) #24
  %340 = call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %9) #24
  br i1 %340, label %341, label %342

341:                                              ; preds = %339
  call fastcc void @invoke_rcu_core()
  br label %342

342:                                              ; preds = %341, %339, %73, %71
  %343 = load ptr, ptr @rcu_core.___tp_str.170, align 4
  %344 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_utilization, i32 0, i32 1), align 4
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %357

346:                                              ; preds = %342
  %347 = load i32, ptr %11, align 8
  %348 = lshr i32 %347, 5
  %349 = getelementptr i32, ptr @__cpu_online_mask, i32 %348
  %350 = load volatile i32, ptr %349, align 4
  %351 = and i32 %347, 31
  %352 = shl nuw i32 1, %351
  %353 = and i32 %352, %350
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %357, label %355

355:                                              ; preds = %346
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !30
  %356 = call i32 @__traceiter_rcu_utilization(ptr noundef null, ptr noundef %343) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !31
  br label %357

357:                                              ; preds = %355, %346, %342, %0
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_extract_done_cbs(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcu_cblist_dequeue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_insert_done_cbs(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_add_len(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_segcblist_n_segment_cbs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_batch_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_batch_end(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_invoke_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kfree_rcu_work(ptr nocapture noundef %0) #1 {
  %2 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.kfree_rcu_cpu_work, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #24
  %7 = getelementptr %struct.kfree_rcu_cpu_work, ptr %0, i32 0, i32 2, i32 0
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 8
  store ptr null, ptr %7, align 4
  %9 = getelementptr %struct.kfree_rcu_cpu_work, ptr %0, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds [2 x ptr], ptr %2, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store ptr null, ptr %9, align 4
  %12 = getelementptr inbounds %struct.kfree_rcu_cpu_work, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr null, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #24
  %14 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %4, i32 0, i32 13
  %15 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %4, i32 0, i32 12
  br label %16

16:                                               ; preds = %99, %1
  %17 = phi ptr [ %8, %1 ], [ %101, %99 ]
  %18 = phi i32 [ 0, %1 ], [ %97, %99 ]
  %19 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %18
  %20 = icmp eq ptr %17, null
  br i1 %20, label %96, label %21

21:                                               ; preds = %16
  %22 = icmp eq i32 %18, 0
  br label %25

23:                                               ; preds = %96
  %24 = icmp eq ptr %13, null
  br i1 %24, label %137, label %102

25:                                               ; preds = %93, %21
  %26 = phi ptr [ %17, %21 ], [ %28, %93 ]
  %27 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  br i1 %22, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %26, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %80, label %54

32:                                               ; preds = %25
  %33 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %34 = load i32, ptr %26, align 4
  %35 = getelementptr inbounds %struct.kvfree_rcu_bulk_data, ptr %26, i32 0, i32 2
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_invoke_kfree_bulk_callback, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = tail call ptr @llvm.thread.pointer() #24
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !131
  %50 = tail call i32 @__traceiter_rcu_invoke_kfree_bulk_callback(ptr noundef null, ptr noundef %33, i32 noundef %34, ptr noundef %35) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !132
  %51 = load i32, ptr %26, align 4
  br label %52

52:                                               ; preds = %49, %38, %32
  %53 = phi i32 [ %34, %32 ], [ %34, %38 ], [ %51, %49 ]
  tail call void @kmem_cache_free_bulk(ptr noundef null, i32 noundef %53, ptr noundef %35) #24
  br label %80

54:                                               ; preds = %75, %29
  %55 = phi i32 [ %77, %75 ], [ 0, %29 ]
  %56 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %57 = getelementptr %struct.kvfree_rcu_bulk_data, ptr %26, i32 0, i32 2, i32 %55
  %58 = load ptr, ptr %57, align 4
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_invoke_kvfree_callback, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = tail call ptr @llvm.thread.pointer() #24
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !133
  %73 = tail call i32 @__traceiter_rcu_invoke_kvfree_callback(ptr noundef null, ptr noundef %56, ptr noundef %58, i32 noundef 0) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !134
  %74 = load ptr, ptr %57, align 4
  br label %75

75:                                               ; preds = %72, %61, %54
  %76 = phi ptr [ %58, %54 ], [ %58, %61 ], [ %74, %72 ]
  tail call void @vfree(ptr noundef %76) #24
  %77 = add nuw i32 %55, 1
  %78 = load i32, ptr %26, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %54, label %80

80:                                               ; preds = %75, %52, %29
  %81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #24
  %82 = load i32, ptr %14, align 4
  %83 = load i32, ptr @rcu_min_cached_objs, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %26, ptr noundef nonnull %26, ptr noundef %15) #24
  %87 = load i32, ptr %14, align 4
  %88 = add i32 %87, 1
  store volatile i32 %88, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %81) #24
  br label %93

89:                                               ; preds = %80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %81) #24
  %90 = icmp eq ptr %26, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  %92 = ptrtoint ptr %26 to i32
  tail call void @free_pages(i32 noundef %92, i32 noundef 0) #24
  br label %93

93:                                               ; preds = %91, %89, %85
  %94 = tail call i32 @__cond_resched() #24
  %95 = icmp eq ptr %28, null
  br i1 %95, label %96, label %25

96:                                               ; preds = %93, %16
  store ptr null, ptr %19, align 4
  %97 = add nuw nsw i32 %18, 1
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %23, label %99

99:                                               ; preds = %96
  %100 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %97
  %101 = load ptr, ptr %100, align 4
  br label %16

102:                                              ; preds = %134, %23
  %103 = phi ptr [ %109, %134 ], [ %13, %23 ]
  %104 = getelementptr inbounds %struct.callback_head, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = sub i32 0, %106
  %108 = getelementptr i8, ptr %103, i32 %107
  %109 = load ptr, ptr %103, align 4
  %110 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_invoke_kvfree_callback, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %102
  %114 = tail call ptr @llvm.thread.pointer() #24
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = lshr i32 %116, 5
  %118 = getelementptr i32, ptr @__cpu_online_mask, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %116, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %113
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !133
  %125 = tail call i32 @__traceiter_rcu_invoke_kvfree_callback(ptr noundef null, ptr noundef %110, ptr noundef nonnull %103, i32 noundef %106) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !134
  br label %126

126:                                              ; preds = %124, %113, %102
  %127 = icmp uge ptr %105, inttoptr (i32 4096 to ptr)
  %128 = load i1, ptr @kfree_rcu_work.__already_done, align 1
  %129 = xor i1 %128, true
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %132, !prof !16

131:                                              ; preds = %126
  store i1 true, ptr @kfree_rcu_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3355, i32 noundef 9, ptr noundef null) #24
  br label %132

132:                                              ; preds = %131, %126
  br i1 %127, label %134, label %133

133:                                              ; preds = %132
  tail call void @kvfree(ptr noundef %108) #24
  br label %134

134:                                              ; preds = %133, %132
  %135 = tail call i32 @__cond_resched() #24
  %136 = icmp eq ptr %109, null
  br i1 %136, label %137, label %102

137:                                              ; preds = %134, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kfree_rcu_monitor(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -104
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #24
  %5 = getelementptr i8, ptr %0, i32 -92
  %6 = getelementptr i8, ptr %0, i32 -100
  %7 = getelementptr i8, ptr %0, i32 -96
  %8 = getelementptr i8, ptr %0, i32 48
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -60
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %11, %1
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %0, i32 -56
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18, %15
  %23 = load ptr, ptr %2, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %0, i32 -64
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %25, %18, %11
  %30 = getelementptr i8, ptr %0, i32 -60
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store ptr %9, ptr %30, align 4
  store ptr null, ptr %6, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr i8, ptr %0, i32 -56
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 -96
  %40 = load ptr, ptr %39, align 4
  store ptr %40, ptr %35, align 4
  store ptr null, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr i8, ptr %0, i32 -64
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load ptr, ptr %2, align 8
  store ptr %46, ptr %42, align 4
  store ptr null, ptr %2, align 8
  br label %47

47:                                               ; preds = %45, %41
  store volatile i32 0, ptr %8, align 8
  %48 = load ptr, ptr @system_wq, align 4
  %49 = tail call zeroext i1 @queue_rcu_work(ptr noundef %48, ptr noundef %5) #24
  %50 = load ptr, ptr %6, align 4
  br label %51

51:                                               ; preds = %47, %25, %22
  %52 = phi ptr [ %50, %47 ], [ %9, %25 ], [ %9, %22 ]
  %53 = getelementptr i8, ptr %0, i32 -48
  %54 = icmp eq ptr %52, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %0, i32 -16
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55, %51
  %60 = load ptr, ptr %7, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr i8, ptr %0, i32 -12
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %62, %59
  %67 = load ptr, ptr %2, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %95, label %69

69:                                               ; preds = %66
  %70 = getelementptr i8, ptr %0, i32 -20
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %95

73:                                               ; preds = %69, %62, %55
  %74 = getelementptr i8, ptr %0, i32 -16
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store ptr %52, ptr %74, align 4
  store ptr null, ptr %6, align 4
  br label %78

78:                                               ; preds = %77, %73
  %79 = getelementptr i8, ptr %0, i32 -12
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %0, i32 -96
  %84 = load ptr, ptr %83, align 4
  store ptr %84, ptr %79, align 4
  store ptr null, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = getelementptr i8, ptr %0, i32 -20
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load ptr, ptr %2, align 8
  store ptr %90, ptr %86, align 4
  store ptr null, ptr %2, align 8
  br label %91

91:                                               ; preds = %89, %85
  store volatile i32 0, ptr %8, align 8
  %92 = load ptr, ptr @system_wq, align 4
  %93 = tail call zeroext i1 @queue_rcu_work(ptr noundef %92, ptr noundef %53) #24
  %94 = load ptr, ptr %6, align 4
  br label %95

95:                                               ; preds = %91, %69, %66
  %96 = phi ptr [ %94, %91 ], [ %52, %69 ], [ %52, %66 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load ptr, ptr %7, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load ptr, ptr %2, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = getelementptr i8, ptr %0, i32 44
  store i8 0, ptr %105, align 4
  br label %109

106:                                              ; preds = %101, %98, %95
  %107 = load ptr, ptr @system_wq, align 4
  %108 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %107, ptr noundef %0, i32 noundef 2) #24
  br label %109

109:                                              ; preds = %106, %104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fill_page_cache_func(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 44
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr @rcu_min_cached_objs, align 4
  %6 = select i1 %4, i32 %5, i32 1
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -56
  %10 = getelementptr i8, ptr %0, i32 104
  %11 = getelementptr i8, ptr %0, i32 100
  br label %12

12:                                               ; preds = %27, %8
  %13 = phi i32 [ 0, %8 ], [ %28, %27 ]
  %14 = tail call i32 @__get_free_pages(i32 noundef 601280, i32 noundef 0) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #24
  %18 = load i32, ptr %10, align 4
  %19 = load i32, ptr @rcu_min_cached_objs, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = inttoptr i32 %14 to ptr
  %23 = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %22, ptr noundef nonnull %22, ptr noundef %11) #24
  %24 = load i32, ptr %10, align 4
  %25 = add i32 %24, 1
  store volatile i32 %25, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %17) #24
  br label %27

26:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %17) #24
  tail call void @free_pages(i32 noundef %14, i32 noundef 0) #24
  br label %30

27:                                               ; preds = %21, %12
  %28 = add nuw nsw i32 %13, 1
  %29 = icmp eq i32 %28, %6
  br i1 %29, label %30, label %12

30:                                               ; preds = %27, %26, %1
  %31 = getelementptr i8, ptr %0, i32 48
  store volatile i32 0, ptr %31, align 4
  store volatile i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_invoke_kfree_bulk_callback(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free_bulk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_invoke_kvfree_callback(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_rcu_work(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kfree_rcu_shrink_count(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #21 {
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #26
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %6, label %22

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %20, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %18, %6 ], [ 0, %2 ]
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @krc to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %12, i32 0, i32 7
  %14 = load volatile i32, ptr %13, align 8
  %15 = add i32 %14, %8
  %16 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %12, i32 0, i32 13
  %17 = load volatile i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %12, i32 0, i32 9
  store volatile i32 1, ptr %19, align 4
  %20 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_possible_mask) #26
  %21 = icmp ult i32 %20, %3
  br i1 %21, label %6, label %22

22:                                               ; preds = %6, %2
  %23 = phi i32 [ 0, %2 ], [ %18, %6 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kfree_rcu_shrink_scan(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  br label %4

4:                                                ; preds = %33, %2
  %5 = phi i32 [ 0, %2 ], [ %39, %33 ]
  %6 = phi i32 [ -1, %2 ], [ %7, %33 ]
  %7 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_possible_mask) #26
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %4
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @krc to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %14, i32 0, i32 7
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %14, i32 0, i32 3
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #24
  %19 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %14, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !135
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #24, !srcloc !18
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %19) #24, !srcloc !44
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !136
  %22 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %14, i32 0, i32 13
  store volatile i32 0, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #24
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %10
  %25 = inttoptr i32 %21 to ptr
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %29, %26 ], [ %25, %24 ]
  %28 = phi i32 [ %31, %26 ], [ 0, %24 ]
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %27 to i32
  tail call void @free_pages(i32 noundef %30, i32 noundef 0) #24
  %31 = add i32 %28, 1
  %32 = icmp eq ptr %29, null
  br i1 %32, label %33, label %26

33:                                               ; preds = %26, %10
  %34 = phi i32 [ 0, %10 ], [ %31, %26 ]
  %35 = add i32 %34, %16
  %36 = getelementptr inbounds %struct.kfree_rcu_cpu, ptr %14, i32 0, i32 4
  tail call void @kfree_rcu_monitor(ptr noundef %36)
  %37 = load i32, ptr %3, align 4
  %38 = sub i32 %37, %35
  store i32 %38, ptr %3, align 4
  %39 = add i32 %35, %5
  %40 = icmp eq i32 %37, %35
  br i1 %40, label %41, label %4

41:                                               ; preds = %33, %4
  %42 = phi i32 [ %39, %33 ], [ %5, %4 ]
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 -1, i32 %42
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rcu_boot_init_percpu_data(i32 noundef %0) unnamed_addr #10 section ".init.text" {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @rcu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcu_node, ptr %7, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %0, %9
  %11 = shl nuw i32 1, %10
  %12 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 8
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 12
  store i32 -32, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 12, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 12, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 12, i32 2
  store ptr @strict_work_handler, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 1
  %20 = load i1, ptr @rcu_boot_init_percpu_data.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !16

23:                                               ; preds = %1
  store i1 true, ptr @rcu_boot_init_percpu_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4141, i32 noundef 9, ptr noundef null) #24
  br label %24

24:                                               ; preds = %23, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !12
  %25 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 21
  %26 = load volatile i32, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !13
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = load i1, ptr @rcu_boot_init_percpu_data.__already_done.194, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !16

32:                                               ; preds = %24
  store i1 true, ptr @rcu_boot_init_percpu_data.__already_done.194, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4142, i32 noundef 9, ptr noundef null) #24
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %35 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 35
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 36
  store i16 8, ptr %36, align 4
  %37 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 6), align 4
  %38 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 37
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 38
  store i16 8, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rcu_data, ptr %5, i32 0, i32 40
  store i32 %0, ptr %40, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @strict_work_handler(ptr nocapture noundef readnone %0) #1 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !137
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !138
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_expedite_gp() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_unexpedite_gp() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rcu_panic(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #22 {
  store i32 1, ptr @rcu_cpu_stall_suppress, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sysrq_key(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysrq_show_rcu(i32 noundef %0) #1 {
  tail call void @show_rcu_gp_kthreads()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcu_report_exp_cpu_mult(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #24
  %6 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #24
  br label %80

11:                                               ; preds = %3
  %12 = xor i32 %1, -1
  %13 = and i32 %7, %12
  store volatile i32 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 18
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = load i32, ptr @rcu_num_lvls, align 4
  %18 = add i32 %17, -1
  %19 = icmp ne i32 %18, %16
  %20 = load i1, ptr @rcu_report_exp_cpu_mult.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !16

23:                                               ; preds = %11
  store i1 true, ptr @rcu_report_exp_cpu_mult.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 243, i32 noundef 9, ptr noundef null) #24
  br label %24

24:                                               ; preds = %23, %11
  %25 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef 0) #24
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 16
  %30 = load i32, ptr %29, align 64
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %32, %24
  %33 = phi i32 [ %38, %32 ], [ %28, %24 ]
  %34 = load i32, ptr %25, align 4
  %35 = add i32 %33, 1
  %36 = sub i32 %35, %34
  %37 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef %36) #24
  %38 = add i32 %37, %34
  %39 = load i32, ptr %29, align 64
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %32

41:                                               ; preds = %32, %24
  %42 = getelementptr inbounds %struct.rcu_node, ptr %0, i32 0, i32 23
  %43 = load volatile ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %73, %41
  %46 = phi ptr [ %63, %73 ], [ %0, %41 ]
  %47 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 9
  %48 = load volatile i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %73, %45, %41
  %51 = phi ptr [ %0, %41 ], [ %46, %45 ], [ %63, %73 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %5) #24
  br label %80

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 20
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %5) #24
  br i1 %2, label %57, label %80

57:                                               ; preds = %56
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !139
  call void @swake_up_one(ptr noundef getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 22)) #24
  br label %80

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.rcu_node, ptr %46, i32 0, i32 14
  %60 = load i32, ptr %59, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !48
  %61 = load i16, ptr %46, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %46, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !49
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !50
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !51
  %63 = load ptr, ptr %53, align 8
  call void @_raw_spin_lock(ptr noundef %63) #24
  %64 = getelementptr inbounds %struct.rcu_node, ptr %63, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, %60
  %67 = icmp eq i32 %66, 0
  %68 = load i1, ptr @__rcu_report_exp_rnp.__already_done, align 1
  %69 = xor i1 %68, true
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %73, !prof !16

71:                                               ; preds = %58
  store i1 true, ptr @__rcu_report_exp_rnp.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 209, i32 noundef 9, ptr noundef null) #24
  %72 = load i32, ptr %64, align 4
  br label %73

73:                                               ; preds = %71, %58
  %74 = phi i32 [ %72, %71 ], [ %65, %58 ]
  %75 = xor i32 %60, -1
  %76 = and i32 %74, %75
  store volatile i32 %76, ptr %64, align 4
  %77 = getelementptr inbounds %struct.rcu_node, ptr %63, i32 0, i32 23
  %78 = load volatile ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %45, label %50

80:                                               ; preds = %57, %56, %50, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_exp_handler(ptr nocapture noundef readnone %0) #1 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #16, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @rcu_data to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rcu_node, ptr %8, i32 0, i32 9
  %10 = load volatile i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rcu_data, ptr %6, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %72, label %15

15:                                               ; preds = %1
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #16, !srcloc !9
  %19 = add i32 %18, ptrtoint (ptr getelementptr inbounds (%struct.anon.95, ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 2), i32 0, i32 1) to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %15
  %24 = add i32 %18, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 20) to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %60, label %28

28:                                               ; preds = %23
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %28
  %31 = tail call ptr @llvm.thread.pointer() #24
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = load i1, ptr @rcu_is_cpu_rrupt_from_idle.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !16

39:                                               ; preds = %30
  store i1 true, ptr @rcu_is_cpu_rrupt_from_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 447, i32 noundef 9, ptr noundef null) #24
  br label %40

40:                                               ; preds = %39, %30, %28
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #16, !srcloc !9
  %44 = add i32 %43, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 19) to i32)
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #16, !srcloc !9
  %52 = add i32 %51, ptrtoint (ptr @rcu_data to i32)
  %53 = inttoptr i32 %52 to ptr
  %54 = getelementptr inbounds %struct.rcu_data, ptr %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.anon.95, ptr %54, i32 0, i32 1
  store volatile i8 0, ptr %55, align 1
  %56 = getelementptr inbounds %struct.rcu_data, ptr %53, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.rcu_data, ptr %53, i32 0, i32 8
  %59 = load i32, ptr %58, align 4
  tail call fastcc void @rcu_report_exp_cpu_mult(ptr noundef %57, i32 noundef %59, i1 noundef zeroext true) #24
  br label %72

60:                                               ; preds = %40, %23
  %61 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #16, !srcloc !9
  %64 = add i32 %63, ptrtoint (ptr getelementptr inbounds (%struct.anon.95, ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 2), i32 0, i32 1) to i32)
  %65 = inttoptr i32 %64 to ptr
  store i8 1, ptr %65, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !87
  %66 = tail call i32 @llvm.read_register.i32(metadata !0) #24
  %67 = inttoptr i32 %66 to ptr
  %68 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #16, !srcloc !9
  %69 = add i32 %68, ptrtoint (ptr getelementptr inbounds (%struct.rcu_data, ptr @rcu_data, i32 0, i32 23) to i32)
  %70 = inttoptr i32 %69 to ptr
  store volatile i8 1, ptr %70, align 1
  %71 = tail call ptr @llvm.thread.pointer() #24
  tail call void @_set_bit(i32 noundef 1, ptr noundef %71) #24
  br label %72

72:                                               ; preds = %60, %48, %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_exp_grace_period(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rcu_exp_funnel_lock(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sync_rcu_exp_select_node_cpus(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  %3 = getelementptr i8, ptr %0, i32 -252
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #24
  %5 = getelementptr i8, ptr %0, i32 -183
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = load i32, ptr @rcu_num_lvls, align 4
  %9 = add i32 %8, -1
  %10 = icmp ne i32 %9, %7
  %11 = load i1, ptr @sync_rcu_exp_select_node_cpus.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !16

14:                                               ; preds = %1
  store i1 true, ptr @sync_rcu_exp_select_node_cpus.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 352, i32 noundef 9, ptr noundef null) #24
  br label %15

15:                                               ; preds = %14, %1
  %16 = getelementptr i8, ptr %0, i32 -192
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 -216
  %19 = tail call i32 @_find_next_bit_le(ptr noundef %18, i32 noundef 32, i32 noundef 0) #24
  %20 = add i32 %19, %17
  %21 = getelementptr i8, ptr %0, i32 -188
  %22 = load i32, ptr %21, align 64
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %63, label %24

24:                                               ; preds = %15
  %25 = tail call ptr @llvm.thread.pointer() #24
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = getelementptr i8, ptr %0, i32 -224
  br label %28

28:                                               ; preds = %54, %24
  %29 = phi i32 [ %20, %24 ], [ %60, %54 ]
  %30 = phi i32 [ 0, %24 ], [ %55, %54 ]
  %31 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, ptrtoint (ptr @rcu_data to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.rcu_data, ptr %34, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %26, align 8
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = load i32, ptr %27, align 4
  %41 = and i32 %40, %36
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %28
  %44 = or i32 %36, %30
  br label %54

45:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !12
  %46 = getelementptr inbounds %struct.rcu_data, ptr %34, i32 0, i32 21
  %47 = load volatile i32, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !13
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = or i32 %36, %30
  br label %54

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.rcu_data, ptr %34, i32 0, i32 27
  store i32 %47, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %50, %43
  %55 = phi i32 [ %44, %43 ], [ %51, %50 ], [ %30, %52 ]
  %56 = load i32, ptr %16, align 4
  %57 = add i32 %29, 1
  %58 = sub i32 %57, %56
  %59 = tail call i32 @_find_next_bit_le(ptr noundef %18, i32 noundef 32, i32 noundef %58) #24
  %60 = add i32 %59, %56
  %61 = load i32, ptr %21, align 64
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %28

63:                                               ; preds = %54, %15
  %64 = phi i32 [ 0, %15 ], [ %55, %54 ]
  %65 = load i32, ptr %18, align 4
  %66 = xor i32 %64, -1
  %67 = and i32 %65, %66
  store i32 %67, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #24
  %68 = load i8, ptr %5, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, ptr @rcu_num_lvls, align 4
  %71 = add i32 %70, -1
  %72 = icmp ne i32 %71, %69
  %73 = load i1, ptr @sync_rcu_exp_select_node_cpus.__already_done.219, align 1
  %74 = xor i1 %73, true
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %77, !prof !16

76:                                               ; preds = %63
  store i1 true, ptr @sync_rcu_exp_select_node_cpus.__already_done.219, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.210, i32 noundef 380, i32 noundef 9, ptr noundef null) #24
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i32, ptr %16, align 4
  %79 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #24
  %80 = add i32 %79, %78
  %81 = load i32, ptr %21, align 64
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %158, label %83

83:                                               ; preds = %77
  %84 = getelementptr i8, ptr %0, i32 -224
  br label %85

85:                                               ; preds = %149, %83
  %86 = phi i32 [ %80, %83 ], [ %155, %149 ]
  %87 = phi i32 [ %64, %83 ], [ %150, %149 ]
  %88 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, ptrtoint (ptr @rcu_data to i32)
  %91 = inttoptr i32 %90 to ptr
  %92 = getelementptr inbounds %struct.rcu_data, ptr %91, i32 0, i32 8
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.rcu_data, ptr %91, i32 0, i32 27
  %95 = load i32, ptr %94, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !12
  %96 = getelementptr inbounds %struct.rcu_data, ptr %91, i32 0, i32 21
  %97 = load volatile i32, ptr %96, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !13
  %98 = icmp eq i32 %97, %95
  br i1 %98, label %101, label %99

99:                                               ; preds = %139, %85
  %100 = or i32 %93, %87
  br label %149

101:                                              ; preds = %139, %85
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !140
  %102 = tail call ptr @llvm.thread.pointer() #24
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, %86
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = or i32 %93, %87
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !141
  br label %149

108:                                              ; preds = %101
  %109 = call i32 @smp_call_function_single(i32 noundef %86, ptr noundef nonnull @rcu_exp_handler, ptr noundef null, i32 noundef 0) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !142
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %149, label %111

111:                                              ; preds = %108
  %112 = call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #24
  %113 = load i32, ptr %84, align 4
  %114 = and i32 %113, %93
  %115 = icmp eq i32 %114, 0
  %116 = load i32, ptr %18, align 4
  %117 = and i32 %116, %93
  %118 = icmp eq i32 %117, 0
  br i1 %115, label %144, label %119

119:                                              ; preds = %111
  br i1 %118, label %145, label %120

120:                                              ; preds = %119
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %112) #24
  %121 = load ptr, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 36), align 64
  %122 = load i32, ptr getelementptr inbounds (%struct.rcu_state, ptr @rcu_state, i32 0, i32 20), align 4
  %123 = or i32 %122, 3
  %124 = add i32 %123, 1
  %125 = load ptr, ptr @sync_rcu_exp_select_node_cpus.___tp_str, align 4
  %126 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_exp_grace_period, i32 0, i32 1), align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %120
  %129 = load i32, ptr %103, align 8
  %130 = lshr i32 %129, 5
  %131 = getelementptr i32, ptr @__cpu_online_mask, i32 %130
  %132 = load volatile i32, ptr %131, align 4
  %133 = and i32 %129, 31
  %134 = shl nuw i32 1, %133
  %135 = and i32 %134, %132
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %128
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !64
  %138 = call i32 @__traceiter_rcu_exp_grace_period(ptr noundef null, ptr noundef %121, i32 noundef %124, ptr noundef %125) #24
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !65
  br label %139

139:                                              ; preds = %137, %128, %120
  %140 = call i32 @schedule_timeout_idle(i32 noundef 1) #24
  %141 = load i32, ptr %94, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !12
  %142 = load volatile i32, ptr %96, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !13
  %143 = icmp eq i32 %142, %141
  br i1 %143, label %101, label %99

144:                                              ; preds = %111
  br i1 %118, label %145, label %146

145:                                              ; preds = %144, %119
  br label %146

146:                                              ; preds = %145, %144
  %147 = phi i32 [ 0, %145 ], [ %93, %144 ]
  %148 = or i32 %147, %87
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %112) #24
  br label %149

149:                                              ; preds = %146, %108, %106, %99
  %150 = phi i32 [ %100, %99 ], [ %107, %106 ], [ %148, %146 ], [ %87, %108 ]
  %151 = load i32, ptr %16, align 4
  %152 = add i32 %86, 1
  %153 = sub i32 %152, %151
  %154 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %153) #24
  %155 = add i32 %154, %151
  %156 = load i32, ptr %21, align 64
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %85

158:                                              ; preds = %149, %77
  %159 = phi i32 [ %64, %77 ], [ %150, %149 ]
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  call fastcc void @rcu_report_exp_cpu_mult(ptr noundef %3, i32 noundef %159, i1 noundef zeroext false)
  br label %162

162:                                              ; preds = %161, %158
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rcu_bootup_announce_oddness() unnamed_addr #10 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237) #25
  %2 = load i8, ptr @rcu_fanout_exact, align 1, !range !32
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #25
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, ptr @rcu_fanout_leaf, align 4
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, i32 noundef %7) #25
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, i32 noundef 16, i32 noundef %12) #25
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, ptr @blimit, align 4
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, i32 noundef %17) #25
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, ptr @qhimark, align 4
  %23 = icmp eq i32 %22, 10000
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, i32 noundef %22) #25
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, ptr @qlowmark, align 4
  %28 = icmp eq i32 %27, 100
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, i32 noundef %27) #25
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, ptr @qovld, align 4
  %33 = icmp eq i32 %32, 20000
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, i32 noundef %32) #25
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, ptr @jiffies_till_first_fqs, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, i32 noundef %37) #25
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, ptr @jiffies_till_next_fqs, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, i32 noundef %42) #25
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, ptr @jiffies_till_sched_qs, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, i32 noundef %47) #25
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i8, ptr @rcu_kick_kthreads, align 1, !range !32
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248) #25
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, ptr @gp_preinit_delay, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, i32 noundef %57) #25
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, ptr @gp_init_delay, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, i32 noundef %62) #25
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32, ptr @gp_cleanup_delay, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, i32 noundef %67) #25
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i8, ptr @use_softirq, align 1, !range !32
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252) #25
  br label %76

76:                                               ; preds = %74, %71
  tail call void @rcupdate_announce_bootup_oddness() #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcupdate_announce_bootup_oddness() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline noprofile nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind readonly }
attributes #17 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #23 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #24 = { nounwind }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { cold }

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
!9 = !{i64 479481}
!10 = !{i64 2154442664}
!11 = !{i64 2154442856}
!12 = !{i64 2154922905}
!13 = !{i64 2148159935}
!14 = !{i64 2154924436}
!15 = !{i64 2154927154}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148165547}
!18 = !{i64 565542, i64 2148055513, i64 2148055539, i64 2148055586, i64 2148055608, i64 2148055636, i64 2148055656}
!19 = !{i64 2148068409, i64 2148068441, i64 2148068470, i64 2148068504, i64 2148068535, i64 2148068558}
!20 = !{i64 2148165750}
!21 = !{i64 2154626545}
!22 = !{i64 2154626763}
!23 = !{i64 460781, i64 460842}
!24 = !{i64 463798}
!25 = !{i64 2155071107}
!26 = !{i64 2155080536}
!27 = !{i64 2155080584}
!28 = !{i64 2155081847}
!29 = !{i64 2155094242}
!30 = !{i64 2154422022}
!31 = !{i64 2154422166}
!32 = !{i8 0, i8 2}
!33 = !{i64 2155448195}
!34 = !{i64 2155928339}
!35 = !{i64 2155931597}
!36 = !{i64 2155934720}
!37 = !{i64 2155941444}
!38 = !{i64 577713, i64 577734, i64 577757, i64 577776, i64 577795}
!39 = !{i64 2155941821}
!40 = !{i64 2154609664}
!41 = !{i64 2154609834}
!42 = !{i64 2155852399}
!43 = !{i64 2148351739}
!44 = !{i64 574989, i64 575006, i64 575030, i64 575056, i64 575074}
!45 = !{i64 2148352083}
!46 = !{i64 2155946440}
!47 = !{i64 2155946817}
!48 = !{i64 2148976336}
!49 = !{i64 2148972160}
!50 = !{i64 2148972235, i64 2148972262, i64 2148972309, i64 2148972331, i64 2148972359, i64 2148972379}
!51 = !{i64 2148999339}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2154680422}
!54 = !{i64 2154680624}
!55 = !{i64 2154647149}
!56 = !{i64 2154647321}
!57 = !{i64 2154663309}
!58 = !{i64 2154663465}
!59 = !{i64 2155581059}
!60 = !{i64 2155584226}
!61 = !{!"auto-init"}
!62 = !{i64 2156341424}
!63 = !{i64 2154836945}
!64 = !{i64 2154497154}
!65 = !{i64 2154497352}
!66 = !{i64 2156374671}
!67 = !{i64 2154518753}
!68 = !{i64 2154518977}
!69 = !{i64 2154829599}
!70 = !{i64 2156493100}
!71 = !{i64 2155586753}
!72 = !{i64 2154461041}
!73 = !{i64 2154461313}
!74 = !{i64 2155591408}
!75 = !{i64 2154810116}
!76 = !{i64 2154810302}
!77 = !{i64 2155602181}
!78 = !{i64 461216}
!79 = !{i64 461026}
!80 = !{i64 2148168380}
!81 = !{i64 2148070766, i64 2148070798, i64 2148070827, i64 2148070861, i64 2148070892, i64 2148070915}
!82 = !{i64 2148168583}
!83 = !{i64 2154831106}
!84 = !{i64 2148067725, i64 2148067751, i64 2148067780, i64 2148067814, i64 2148067845, i64 2148067868}
!85 = !{i64 2156482177}
!86 = !{i64 2156488201}
!87 = !{i64 2156458696}
!88 = !{i64 2156488899}
!89 = !{i64 2156488976}
!90 = !{i64 2155629945}
!91 = !{i64 2155634828}
!92 = !{i64 2155644690}
!93 = !{i64 2155647937}
!94 = !{i64 2154575897}
!95 = !{i64 2154576181}
!96 = !{i64 2155651900}
!97 = !{i64 2155661648}
!98 = !{i64 2155686880}
!99 = !{i64 2155766080}
!100 = !{i64 2155766206}
!101 = !{i64 2156306273}
!102 = !{i64 2156307007}
!103 = !{i64 2156347569}
!104 = !{i64 2156341298}
!105 = !{i64 2156440068}
!106 = !{i64 463513}
!107 = !{i64 2156678176}
!108 = !{i64 2156707789}
!109 = !{i64 2156707857}
!110 = !{i64 2156724139}
!111 = !{i64 2156755150}
!112 = !{i64 2149000480}
!113 = !{i64 2155781179}
!114 = !{i64 2155240164}
!115 = !{i64 2155245934}
!116 = !{i64 2154479604}
!117 = !{i64 2154479846}
!118 = !{i64 2155283177}
!119 = !{ptr @dyntick_save_progress_counter, ptr @rcu_implicit_dynticks_qs}
!120 = !{i64 2154593619}
!121 = !{i64 2154593803}
!122 = !{i64 2155126621}
!123 = !{i64 2148806365}
!124 = !{i64 2154697228}
!125 = !{i64 2154697412}
!126 = !{i64 2154771166}
!127 = !{i64 2154771394}
!128 = !{!"branch_weights", i32 1, i32 4001}
!129 = !{i64 2154717888}
!130 = !{i64 2154718062}
!131 = !{i64 2154753138}
!132 = !{i64 2154753354}
!133 = !{i64 2154735283}
!134 = !{i64 2154735487}
!135 = !{i64 2148954181}
!136 = !{i64 2148954508}
!137 = !{i64 2149069161}
!138 = !{i64 2149069378}
!139 = !{i64 2156361870}
!140 = !{i64 2156398335}
!141 = !{i64 2156398499}
!142 = !{i64 2156398576}
