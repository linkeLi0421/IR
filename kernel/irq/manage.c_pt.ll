; ModuleID = '/llk/IR/kernel/irq/manage.c_pt.bc'
source_filename = "../kernel/irq/manage.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_hardirq:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_hardirq\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_hardirq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_irq\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_force_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_force_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_irq_force_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_apply_affinity_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_apply_affinity_hint\22\09\09\09\09\09"
module asm "__kstrtabns___irq_apply_affinity_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_affinity_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_affinity_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_affinity_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_vcpu_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_vcpu_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_vcpu_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_irq_nosync:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_irq_nosync\22\09\09\09\09\09"
module asm "__kstrtabns_disable_irq_nosync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_hardirq:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_hardirq\22\09\09\09\09\09"
module asm "__kstrtabns_disable_hardirq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22enable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_irq_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_irq_wake\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_irq_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_wake_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_wake_thread\22\09\09\09\09\09"
module asm "__kstrtabns_irq_wake_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22request_threaded_irq\22\09\09\09\09\09"
module asm "__kstrtabns_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_any_context_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22request_any_context_irq\22\09\09\09\09\09"
module asm "__kstrtabns_request_any_context_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enable_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22enable_percpu_irq\22\09\09\09\09\09"
module asm "__kstrtabns_enable_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_percpu_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_percpu_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_irq_percpu_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_percpu_irq\22\09\09\09\09\09"
module asm "__kstrtabns_disable_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22free_percpu_irq\22\09\09\09\09\09"
module asm "__kstrtabns_free_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___request_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22__request_percpu_irq\22\09\09\09\09\09"
module asm "__kstrtabns___request_percpu_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_get_irqchip_state:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_get_irqchip_state\22\09\09\09\09\09"
module asm "__kstrtabns_irq_get_irqchip_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_irqchip_state:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_irqchip_state\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_irqchip_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_has_action:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_has_action\22\09\09\09\09\09"
module asm "__kstrtabns_irq_has_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_check_status_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_check_status_bit\22\09\09\09\09\09"
module asm "__kstrtabns_irq_check_status_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [12 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.25, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.25 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@force_irqthreads_key = dso_local global %struct.static_key_false zeroinitializer, align 4
@__setup_str_setup_forced_irqthreads = internal constant [11 x i8] c"threadirqs\00", section ".init.rodata", align 1
@__setup_setup_forced_irqthreads = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_forced_irqthreads, ptr @setup_forced_irqthreads, i32 1 }, section ".init.setup", align 4
@__kstrtab_synchronize_hardirq = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_hardirq = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_hardirq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_hardirq to i32), ptr @__kstrtab_synchronize_hardirq, ptr @__kstrtabns_synchronize_hardirq }, section "___ksymtab+synchronize_hardirq", align 4
@__kstrtab_synchronize_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_irq to i32), ptr @__kstrtab_synchronize_irq, ptr @__kstrtabns_synchronize_irq }, section "___ksymtab+synchronize_irq", align 4
@irq_do_set_affinity.tmp_mask_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@irq_do_set_affinity.tmp_mask = internal global %struct.cpumask zeroinitializer, align 4
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@__kstrtab_irq_set_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_affinity to i32), ptr @__kstrtab_irq_set_affinity, ptr @__kstrtabns_irq_set_affinity }, section "___ksymtab_gpl+irq_set_affinity", align 4
@__kstrtab_irq_force_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_force_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_force_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_force_affinity to i32), ptr @__kstrtab_irq_force_affinity, ptr @__kstrtabns_irq_force_affinity }, section "___ksymtab_gpl+irq_force_affinity", align 4
@__kstrtab___irq_apply_affinity_hint = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_apply_affinity_hint = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_apply_affinity_hint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_apply_affinity_hint to i32), ptr @__kstrtab___irq_apply_affinity_hint, ptr @__kstrtabns___irq_apply_affinity_hint }, section "___ksymtab_gpl+__irq_apply_affinity_hint", align 4
@__kstrtab_irq_set_affinity_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_affinity_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_affinity_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_affinity_notifier to i32), ptr @__kstrtab_irq_set_affinity_notifier, ptr @__kstrtabns_irq_set_affinity_notifier }, section "___ksymtab_gpl+irq_set_affinity_notifier", align 4
@irq_default_affinity = dso_local local_unnamed_addr global [1 x %struct.cpumask] zeroinitializer, align 4
@irq_setup_affinity.mask_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@irq_setup_affinity.mask = internal global %struct.cpumask zeroinitializer, align 4
@__kstrtab_irq_set_vcpu_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_vcpu_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_vcpu_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_vcpu_affinity to i32), ptr @__kstrtab_irq_set_vcpu_affinity, ptr @__kstrtabns_irq_set_vcpu_affinity }, section "___ksymtab_gpl+irq_set_vcpu_affinity", align 4
@__kstrtab_disable_irq_nosync = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_irq_nosync = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_irq_nosync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_irq_nosync to i32), ptr @__kstrtab_disable_irq_nosync, ptr @__kstrtabns_disable_irq_nosync }, section "___ksymtab+disable_irq_nosync", align 4
@__kstrtab_disable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_irq to i32), ptr @__kstrtab_disable_irq, ptr @__kstrtabns_disable_irq }, section "___ksymtab+disable_irq", align 4
@__kstrtab_disable_hardirq = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_hardirq = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_hardirq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_hardirq to i32), ptr @__kstrtab_disable_hardirq, ptr @__kstrtabns_disable_hardirq }, section "___ksymtab_gpl+disable_hardirq", align 4
@.str = private unnamed_addr constant [20 x i8] c"kernel/irq/manage.c\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\014Unbalanced enable for IRQ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\013enable_irq before setup/request_irq: irq %u\0A\00", align 1
@__kstrtab_enable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_enable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_enable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enable_irq to i32), ptr @__kstrtab_enable_irq, ptr @__kstrtabns_enable_irq }, section "___ksymtab+enable_irq", align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unbalanced IRQ %d wake disable\0A\00", align 1
@__kstrtab_irq_set_irq_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_irq_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_irq_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_irq_wake to i32), ptr @__kstrtab_irq_set_irq_wake, ptr @__kstrtabns_irq_set_irq_wake }, section "___ksymtab+irq_set_irq_wake", align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"\013genirq: Setting trigger mode %lu for irq %u failed (%pS)\0A\00", align 1
@__kstrtab_irq_set_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_parent to i32), ptr @__kstrtab_irq_set_parent, ptr @__kstrtabns_irq_set_parent }, section "___ksymtab_gpl+irq_set_parent", align 4
@__kstrtab_irq_wake_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_wake_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_wake_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_wake_thread to i32), ptr @__kstrtab_irq_wake_thread, ptr @__kstrtabns_irq_wake_thread }, section "___ksymtab_gpl+irq_wake_thread", align 4
@__kstrtab_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_irq to i32), ptr @__kstrtab_free_irq, ptr @__kstrtabns_free_irq }, section "___ksymtab+free_irq", align 4
@__kstrtab_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_request_threaded_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_threaded_irq to i32), ptr @__kstrtab_request_threaded_irq, ptr @__kstrtabns_request_threaded_irq }, section "___ksymtab+request_threaded_irq", align 4
@__kstrtab_request_any_context_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_any_context_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_request_any_context_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_any_context_irq to i32), ptr @__kstrtab_request_any_context_irq, ptr @__kstrtabns_request_any_context_irq }, section "___ksymtab_gpl+request_any_context_irq", align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to set type for IRQ%d\0A\00", align 1
@__kstrtab_enable_percpu_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_enable_percpu_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_enable_percpu_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enable_percpu_irq to i32), ptr @__kstrtab_enable_percpu_irq, ptr @__kstrtabns_enable_percpu_irq }, section "___ksymtab_gpl+enable_percpu_irq", align 4
@__kstrtab_irq_percpu_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_percpu_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_percpu_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_percpu_is_enabled to i32), ptr @__kstrtab_irq_percpu_is_enabled, ptr @__kstrtabns_irq_percpu_is_enabled }, section "___ksymtab_gpl+irq_percpu_is_enabled", align 4
@__kstrtab_disable_percpu_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_percpu_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_percpu_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_percpu_irq to i32), ptr @__kstrtab_disable_percpu_irq, ptr @__kstrtabns_disable_percpu_irq }, section "___ksymtab_gpl+disable_percpu_irq", align 4
@__kstrtab_free_percpu_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_percpu_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_free_percpu_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_percpu_irq to i32), ptr @__kstrtab_free_percpu_irq, ptr @__kstrtabns_free_percpu_irq }, section "___ksymtab_gpl+free_percpu_irq", align 4
@__kstrtab___request_percpu_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns___request_percpu_irq = external dso_local constant [0 x i8], align 1
@__ksymtab___request_percpu_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__request_percpu_irq to i32), ptr @__kstrtab___request_percpu_irq, ptr @__kstrtabns___request_percpu_irq }, section "___ksymtab_gpl+__request_percpu_irq", align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"\013prepare_percpu_nmi called for a non-NMI interrupt: irq %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\013genirq: Failed to setup NMI delivery: irq %u\0A\00", align 1
@__irq_get_irqchip_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_irq_get_irqchip_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_get_irqchip_state = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_get_irqchip_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_get_irqchip_state to i32), ptr @__kstrtab_irq_get_irqchip_state, ptr @__kstrtabns_irq_get_irqchip_state }, section "___ksymtab_gpl+irq_get_irqchip_state", align 4
@irq_set_irqchip_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_irq_set_irqchip_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_irqchip_state = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_irqchip_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_irqchip_state to i32), ptr @__kstrtab_irq_set_irqchip_state, ptr @__kstrtabns_irq_set_irqchip_state }, section "___ksymtab_gpl+irq_set_irqchip_state", align 4
@__kstrtab_irq_has_action = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_has_action = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_has_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_has_action to i32), ptr @__kstrtab_irq_has_action, ptr @__kstrtabns_irq_has_action }, section "___ksymtab_gpl+irq_has_action", align 4
@__kstrtab_irq_check_status_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_check_status_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_check_status_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_check_status_bit to i32), ptr @__kstrtab_irq_check_status_bit, ptr @__kstrtabns_irq_check_status_bit }, section "___ksymtab_gpl+irq_check_status_bit", align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@irq_validate_effective_affinity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"\014genirq: irq_chip %s did not update eff. affinity mask of irq %u\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"Trying to free IRQ %d from IRQ context!\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Trying to free already-free IRQ %d\0A\00", align 1
@__free_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@.str.13 = private unnamed_addr constant [69 x i8] c"\013genirq: Failed to request resources for %s (irq %d) on irqchip %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"\013genirq: Invalid attempt to share NMI for %s (irq %d) on irqchip %s.\0A\00", align 1
@.str.15 = private unnamed_addr constant [81 x i8] c"\013genirq: Threaded irq requested with handler=NULL and !ONESHOT for %s (irq %d)\0A\00", align 1
@__setup_irq.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"&desc->wait_for_threads\00", align 1
@noirqdebug = external dso_local local_unnamed_addr global i8, align 1
@__setup_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"\014genirq: irq %d uses trigger mode %u; requested %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"\013genirq: Flags mismatch irq %d. %08x (%s) vs. %08x (%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Primary handler called for nested irq %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Secondary action handler called for irq %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"irq/%d-%s\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"irq/%d-s-%s\00", align 1
@irq_thread_dtor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"\013genirq: exiting task \22%s\22 (%d) is an active IRQ thread (irq %d)\0A\00", align 1
@irq_wake_secondary.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"percpu IRQ %d still enabled on CPU%d!\0A\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab___irq_apply_affinity_hint, ptr @__ksymtab___request_percpu_irq, ptr @__ksymtab_disable_hardirq, ptr @__ksymtab_disable_irq, ptr @__ksymtab_disable_irq_nosync, ptr @__ksymtab_disable_percpu_irq, ptr @__ksymtab_enable_irq, ptr @__ksymtab_enable_percpu_irq, ptr @__ksymtab_free_irq, ptr @__ksymtab_free_percpu_irq, ptr @__ksymtab_irq_check_status_bit, ptr @__ksymtab_irq_force_affinity, ptr @__ksymtab_irq_get_irqchip_state, ptr @__ksymtab_irq_has_action, ptr @__ksymtab_irq_percpu_is_enabled, ptr @__ksymtab_irq_set_affinity, ptr @__ksymtab_irq_set_affinity_notifier, ptr @__ksymtab_irq_set_irq_wake, ptr @__ksymtab_irq_set_irqchip_state, ptr @__ksymtab_irq_set_parent, ptr @__ksymtab_irq_set_vcpu_affinity, ptr @__ksymtab_irq_wake_thread, ptr @__ksymtab_request_any_context_irq, ptr @__ksymtab_request_threaded_irq, ptr @__ksymtab_synchronize_hardirq, ptr @__ksymtab_synchronize_irq, ptr @__setup_setup_forced_irqthreads], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_forced_irqthreads(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  %2 = load i8, ptr @static_key_initialized, align 1, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @force_irqthreads_key) #11
  br label %5

5:                                                ; preds = %4, %1
  %6 = load volatile i32, ptr @force_irqthreads_key, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load volatile i32, ptr @force_irqthreads_key, align 4
  %10 = icmp ne i32 %9, 1
  %11 = load i1, ptr @static_key_enable.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !9

14:                                               ; preds = %8
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 321, i32 noundef 9, ptr noundef null) #11
  br label %16

15:                                               ; preds = %5
  store volatile i32 1, ptr @force_irqthreads_key, align 4
  br label %16

16:                                               ; preds = %15, %14, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @synchronize_hardirq(i32 noundef %0) #1 {
  %2 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 15
  br label %7

7:                                                ; preds = %17, %4
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %12, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !11
  %13 = load ptr, ptr %5, align 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 262144
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %12

17:                                               ; preds = %12, %7
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %19 = load ptr, ptr %5, align 4
  %20 = load i32, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %18) #11
  %21 = and i32 %20, 262144
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %7

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 21
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %23, %1
  %28 = phi i1 [ %26, %23 ], [ true, %1 ]
  ret i1 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__synchronize_hardirq(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !annotation !12
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  br label %7

7:                                                ; preds = %52, %2
  %8 = load ptr, ptr %5, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %12, %7
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !11
  %13 = load ptr, ptr %5, align 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 262144
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %12

17:                                               ; preds = %12, %7
  %18 = call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %19 = load ptr, ptr %5, align 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 262144
  %22 = icmp eq i32 %21, 0
  %23 = lshr exact i32 %21, 18
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %3, align 1
  %25 = and i1 %22, %1
  br i1 %25, label %26, label %52

26:                                               ; preds = %17
  %27 = load i1, ptr @__irq_get_irqchip_state.__already_done, align 1
  br label %28

28:                                               ; preds = %44, %26
  %29 = phi i1 [ %27, %26 ], [ %39, %44 ]
  %30 = phi ptr [ %4, %26 ], [ %46, %44 ]
  %31 = getelementptr inbounds %struct.irq_data, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = xor i1 %29, true
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %38, !prof !9

36:                                               ; preds = %28
  store i1 true, ptr @__irq_get_irqchip_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2771, i32 noundef 9, ptr noundef null) #11
  %37 = load i1, ptr @__irq_get_irqchip_state.__already_done, align 1
  br label %38

38:                                               ; preds = %36, %28
  %39 = phi i1 [ %37, %36 ], [ %29, %28 ]
  br i1 %33, label %52, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.irq_chip, ptr %32, i32 0, i32 26
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.irq_data, ptr %30, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %28

48:                                               ; preds = %40
  %49 = icmp eq ptr %30, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = call i32 %42(ptr noundef nonnull %30, i32 noundef 1, ptr noundef nonnull %3) #11
  br label %52

52:                                               ; preds = %50, %48, %44, %38, %17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %18) #11
  %53 = load i8, ptr %3, align 1, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %7

55:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @synchronize_irq(i32 noundef %0) #1 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  tail call fastcc void @__synchronize_hardirq(ptr noundef nonnull %3, i1 noundef zeroext true)
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 21
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #11
  %10 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 22
  %11 = call i32 @prepare_to_wait_event(ptr noundef %10, ptr noundef nonnull %2, i32 noundef 2) #11
  %12 = load volatile i32, ptr %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %9
  call void @schedule() #11
  %15 = call i32 @prepare_to_wait_event(ptr noundef %10, ptr noundef nonnull %2, i32 noundef 2) #11
  %16 = load volatile i32, ptr %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %9
  call void @finish_wait(ptr noundef %10, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  br label %19

19:                                               ; preds = %18, %5, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_can_set_affinity(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 1, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 3072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 1, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_chip, ptr %12, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ne ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %10, %4, %1
  %20 = phi i32 [ 0, %10 ], [ 0, %4 ], [ 0, %1 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_can_set_affinity_usr(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 1, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 3072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 1, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_chip, ptr %12, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = and i32 %7, 2097152
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %18, %14, %10, %4, %1
  %22 = phi i1 [ false, %14 ], [ %20, %18 ], [ false, %10 ], [ false, %4 ], [ false, %1 ]
  ret i1 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_set_thread_affinity(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %12, %1
  %6 = phi ptr [ %14, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.irqaction, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irqaction, ptr %6, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %11) #11
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.irqaction, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_do_set_affinity(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %73, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %5, align 4
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i1 @housekeeping_enabled(i32 noundef 128) #11
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %10, align 4
  br label %35

21:                                               ; preds = %17
  %22 = tail call ptr @housekeeping_cpumask(i32 noundef 128) #11
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_do_set_affinity.tmp_mask_lock) #11
  %23 = load i32, ptr %1, align 4
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %23, 65535
  %26 = and i32 %25, %24
  store i32 %26, ptr @irq_do_set_affinity.tmp_mask, align 4
  %27 = load i32, ptr @__cpu_online_mask, align 4
  %28 = and i32 %27, %26
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr %1, ptr @irq_do_set_affinity.tmp_mask
  %31 = load ptr, ptr %10, align 4
  %32 = tail call i32 %31(ptr noundef %0, ptr noundef %30, i1 noundef zeroext %2) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %33 = load i16, ptr @irq_do_set_affinity.tmp_mask_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @irq_do_set_affinity.tmp_mask_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %38

35:                                               ; preds = %19, %13
  %36 = phi ptr [ %20, %19 ], [ %11, %13 ]
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #11
  br label %38

38:                                               ; preds = %35, %21
  %39 = phi i32 [ %32, %21 ], [ %37, %35 ]
  switch i32 %39, label %73 [
    i32 0, label %40
    i32 2, label %40
    i32 1, label %43
  ]

40:                                               ; preds = %38, %38
  %41 = getelementptr inbounds %struct.irq_common_data, ptr %5, i32 0, i32 3
  %42 = load i32, ptr %1, align 4
  store i32 %42, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %38
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.irq_common_data, ptr %44, i32 0, i32 4
  %46 = load ptr, ptr %6, align 4
  %47 = load i32, ptr %45, align 4
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i1, ptr @irq_validate_effective_affinity.__already_done, align 1
  br i1 %51, label %58, label %52, !prof !17

52:                                               ; preds = %50
  store i1 true, ptr @irq_validate_effective_affinity.__already_done, align 1
  %53 = getelementptr inbounds %struct.irq_chip, ptr %46, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %54, i32 noundef %56) #12
  br label %58

58:                                               ; preds = %52, %50, %43
  %59 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %69, %58
  %63 = phi ptr [ %71, %69 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.irqaction, ptr %63, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.irqaction, ptr %63, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %68) #11
  br label %69

69:                                               ; preds = %67, %62
  %70 = getelementptr inbounds %struct.irqaction, ptr %63, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %62

73:                                               ; preds = %69, %58, %38, %9, %3
  %74 = phi i32 [ -22, %9 ], [ -22, %3 ], [ %39, %38 ], [ 0, %58 ], [ 0, %69 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @housekeeping_enabled(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_affinity_locked(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %7, align 4
  %15 = and i32 %14, 536871424
  %16 = icmp eq i32 %15, 536870912
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_common_data, ptr %7, i32 0, i32 3
  %19 = load i32, ptr %1, align 4
  store i32 %19, ptr %18, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.irq_common_data, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %1, align 4
  store i32 %22, ptr %21, align 4
  br label %66

23:                                               ; preds = %13
  %24 = and i32 %14, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = tail call i32 @irq_do_set_affinity(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #11
  %28 = icmp ne i32 %27, -16
  %29 = or i1 %28, %2
  %30 = select i1 %29, i32 %27, i32 -16
  br label %33

31:                                               ; preds = %23
  %32 = or i32 %14, 256
  store i32 %32, ptr %7, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ 0, %31 ], [ %30, %26 ]
  %35 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.irq_affinity_notify, ptr %36, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #11, !srcloc !18
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #11, !srcloc !19
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43, !prof !9

43:                                               ; preds = %38
  %44 = add i32 %41, 1
  %45 = or i32 %44, %41
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %49, label %47, !prof !17

47:                                               ; preds = %43, %38
  %48 = phi i32 [ 2, %38 ], [ 1, %43 ]
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef %48) #11
  br label %49

49:                                               ; preds = %47, %43
  %50 = load ptr, ptr %35, align 4
  %51 = getelementptr inbounds %struct.irq_affinity_notify, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr @system_wq, align 4
  %53 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %52, ptr noundef %51) #11
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %35, align 4
  %56 = getelementptr inbounds %struct.irq_affinity_notify, ptr %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.irq_affinity_notify, ptr %55, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #11, !srcloc !18
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #11, !srcloc !21
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = icmp sgt i32 %60, 0
  br i1 %63, label %66, label %64, !prof !17

64:                                               ; preds = %62
  tail call void @refcount_warn_saturate(ptr noundef %56, i32 noundef 3) #11
  br label %66

65:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void %58(ptr noundef %56) #11
  br label %66

66:                                               ; preds = %65, %64, %62, %49, %33, %17
  %67 = phi i32 [ 0, %17 ], [ %34, %65 ], [ %34, %64 ], [ %34, %62 ], [ %34, %49 ], [ %34, %33 ]
  %68 = load ptr, ptr %6, align 4
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 4096
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %66, %9, %3
  %72 = phi i32 [ -22, %9 ], [ -22, %3 ], [ %67, %66 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_update_affinity_desc(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !12
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true, i32 noundef 0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 6291456
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %6
  %14 = and i32 %10, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void @irq_domain_deactivate_irq(ptr noundef %7) #11
  br label %17

17:                                               ; preds = %16, %13
  %18 = getelementptr inbounds %struct.irq_affinity_desc, ptr %1, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %8, align 4
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 2097152
  store i32 %25, ptr %23, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 8388608
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %22, %17
  %30 = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 3
  %31 = load i32, ptr %1, align 4
  store i32 %31, ptr %30, align 4
  br i1 %15, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 @irq_domain_activate_irq(ptr noundef %7, i1 noundef zeroext false) #11
  br label %34

34:                                               ; preds = %32, %29, %6
  %35 = phi i32 [ 0, %32 ], [ 0, %29 ], [ -16, %6 ]
  %36 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %36, i1 noundef zeroext true) #11
  br label %37

37:                                               ; preds = %34, %2
  %38 = phi i32 [ %35, %34 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_deactivate_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_activate_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_affinity(i32 noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %9 = tail call i32 @irq_set_affinity_locked(ptr noundef %8, ptr noundef %1, i1 noundef zeroext false) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ %9, %5 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_force_affinity(i32 noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %9 = tail call i32 @irq_set_affinity_locked(ptr noundef %8, ptr noundef %1, i1 noundef zeroext true) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ %9, %5 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__irq_apply_affinity_hint(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !12
  %5 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false, i32 noundef 1) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 18
  store ptr %1, ptr %8, align 8
  %9 = load i32, ptr %4, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %5, i32 noundef %9, i1 noundef zeroext false) #11
  %10 = icmp ne ptr %1, null
  %11 = and i1 %10, %2
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = call ptr @irq_to_desc(i32 noundef %0) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 15
  %17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #11
  %18 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 1
  %19 = call i32 @irq_set_affinity_locked(ptr noundef %18, ptr noundef nonnull %1, i1 noundef zeroext false) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #11
  br label %20

20:                                               ; preds = %15, %12, %7, %3
  %21 = phi i32 [ -22, %3 ], [ 0, %7 ], [ 0, %12 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_affinity_notifier(i32 noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %5
  %11 = icmp eq ptr %1, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  store i32 %0, ptr %1, align 4
  %13 = getelementptr inbounds %struct.irq_affinity_notify, ptr %1, i32 0, i32 1
  store volatile i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.irq_affinity_notify, ptr %1, i32 0, i32 2
  store i32 -32, ptr %14, align 4
  %15 = getelementptr inbounds %struct.irq_affinity_notify, ptr %1, i32 0, i32 2, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.irq_affinity_notify, ptr %1, i32 0, i32 2, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.irq_affinity_notify, ptr %1, i32 0, i32 2, i32 2
  store ptr @irq_affinity_notify, ptr %17, align 4
  br label %18

18:                                               ; preds = %12, %10
  %19 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #11
  %21 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  store ptr %1, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.irq_affinity_notify, ptr %22, i32 0, i32 2
  %26 = tail call zeroext i1 @cancel_work_sync(ptr noundef %25) #11
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.irq_affinity_notify, ptr %22, i32 0, i32 1
  %29 = getelementptr inbounds %struct.irq_affinity_notify, ptr %22, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #11, !srcloc !18
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #11, !srcloc !21
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %38, label %36, !prof !17

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef 3) #11
  br label %38

37:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void %30(ptr noundef %28) #11
  br label %38

38:                                               ; preds = %37, %36, %34, %24
  %39 = getelementptr inbounds %struct.irq_affinity_notify, ptr %22, i32 0, i32 1
  %40 = getelementptr inbounds %struct.irq_affinity_notify, ptr %22, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #11, !srcloc !18
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #11, !srcloc !21
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %49, label %47, !prof !17

47:                                               ; preds = %45
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef 3) #11
  br label %49

48:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void %41(ptr noundef %39) #11
  br label %49

49:                                               ; preds = %48, %47, %45, %18, %5, %2
  %50 = phi i32 [ -22, %5 ], [ -22, %2 ], [ 0, %18 ], [ 0, %45 ], [ 0, %47 ], [ 0, %48 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_affinity_notify(ptr noundef %0) #1 {
  %2 = alloca [1 x %struct.cpumask], align 4
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @irq_to_desc(i32 noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 15
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.irq_common_data, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #11
  %12 = getelementptr i8, ptr %0, i32 16
  %13 = load ptr, ptr %12, align 4
  call void %13(ptr noundef %3, ptr noundef nonnull %2) #11
  br label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr i8, ptr %0, i32 -4
  %16 = getelementptr i8, ptr %0, i32 20
  %17 = load ptr, ptr %16, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #11, !srcloc !18
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #11, !srcloc !21
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %25, label %23, !prof !17

23:                                               ; preds = %21
  call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #11
  br label %25

24:                                               ; preds = %14
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  call void %17(ptr noundef %15) #11
  br label %25

25:                                               ; preds = %24, %23, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_setup_affinity(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 3072
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_setup_affinity.mask_lock) #11
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %4, align 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2101248
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr @__cpu_online_mask, align 4
  %27 = and i32 %25, 65535
  %28 = and i32 %27, %26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = and i32 %20, -4097
  store i32 %31, ptr %19, align 4
  br label %32

32:                                               ; preds = %30, %23, %17
  %33 = phi ptr [ @irq_default_affinity, %30 ], [ %24, %23 ], [ @irq_default_affinity, %17 ]
  %34 = load i32, ptr @__cpu_online_mask, align 4
  %35 = load i32, ptr %33, align 4
  %36 = and i32 %34, 65535
  %37 = and i32 %36, %35
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 %34, i32 %37
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %39, i32 %40
  store i32 %42, ptr @irq_setup_affinity.mask, align 4
  %43 = tail call i32 @irq_do_set_affinity(ptr noundef %18, ptr noundef nonnull @irq_setup_affinity.mask, i1 noundef zeroext false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %44 = load i16, ptr @irq_setup_affinity.mask_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @irq_setup_affinity.mask_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %46

46:                                               ; preds = %32, %13, %9, %3, %1
  %47 = phi i32 [ %43, %32 ], [ 0, %13 ], [ 0, %9 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_vcpu_affinity(i32 noundef %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !12
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false, i32 noundef 0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1
  br label %8

8:                                                ; preds = %17, %6
  %9 = phi ptr [ %7, %6 ], [ %19, %17 ]
  %10 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %8
  %18 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %8

21:                                               ; preds = %13
  %22 = icmp eq ptr %9, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = call i32 %15(ptr noundef nonnull %9, ptr noundef %1) #11
  br label %25

25:                                               ; preds = %23, %21, %17
  %26 = phi i32 [ %24, %23 ], [ -38, %21 ], [ -38, %17 ]
  %27 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %27, i1 noundef zeroext false) #11
  br label %28

28:                                               ; preds = %25, %2
  %29 = phi i32 [ %26, %25 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__disable_irq(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @irq_disable(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disable_irq_nosync(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true, i32 noundef 1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void @irq_disable(ptr noundef nonnull %3) #11
  br label %11

11:                                               ; preds = %10, %5
  %12 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %3, i32 noundef %12, i1 noundef zeroext true) #11
  br label %13

13:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disable_irq(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true, i32 noundef 1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  call void @irq_disable(ptr noundef nonnull %3) #11
  br label %12

11:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %14

12:                                               ; preds = %10, %5
  %13 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %3, i32 noundef %13, i1 noundef zeroext true) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  call void @synchronize_irq(i32 noundef %0)
  br label %14

14:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @disable_hardirq(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true, i32 noundef 1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  call void @irq_disable(ptr noundef nonnull %3) #11
  br label %12

11:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %39

12:                                               ; preds = %10, %5
  %13 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %3, i32 noundef %13, i1 noundef zeroext true) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %14 = call ptr @irq_to_desc(i32 noundef %0) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 1, i32 3
  %18 = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 15
  br label %19

19:                                               ; preds = %29, %16
  %20 = load ptr, ptr %17, align 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 262144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %24, %19
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !11
  %25 = load ptr, ptr %17, align 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 262144
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %24

29:                                               ; preds = %24, %19
  %30 = call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #11
  %31 = load ptr, ptr %17, align 4
  %32 = load i32, ptr %31, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %30) #11
  %33 = and i32 %32, 262144
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %19

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 21
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %35, %12, %11
  %40 = phi i1 [ false, %11 ], [ %38, %35 ], [ true, %12 ]
  ret i1 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disable_nmi_nosync(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true, i32 noundef 1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void @irq_disable(ptr noundef nonnull %3) #11
  br label %11

11:                                               ; preds = %10, %5
  %12 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %3, i32 noundef %12, i1 noundef zeroext true) #11
  br label %13

13:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__enable_irq(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %17 [
    i32 0, label %4
    i32 1, label %7
  ]

4:                                                ; preds = %7, %1
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 775, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %6) #11
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 1024
  store i32 %15, ptr %13, align 4
  %16 = tail call i32 @irq_startup(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %19

17:                                               ; preds = %1
  %18 = add i32 %3, -1
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %17, %12, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_startup(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @enable_irq(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true, i32 noundef 1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 816, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %0) #11
  br label %28

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %26 [
    i32 0, label %13
    i32 1, label %16
  ]

13:                                               ; preds = %16, %10
  %14 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 775, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %15) #11
  br label %28

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, 1024
  store i32 %24, ptr %22, align 4
  %25 = call i32 @irq_startup(ptr noundef nonnull %3, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br label %28

26:                                               ; preds = %10
  %27 = add i32 %12, -1
  store i32 %27, ptr %11, align 4
  br label %28

28:                                               ; preds = %26, %21, %13, %9
  %29 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %3, i32 noundef %29, i1 noundef zeroext true) #11
  br label %30

30:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @enable_nmi(i32 noundef %0) local_unnamed_addr #1 {
  tail call void @enable_irq(i32 noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_irq_wake(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !12
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true, i32 noundef 1) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %70

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 0
  %13 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 8
  %14 = load i32, ptr %13, align 16
  br i1 %12, label %41, label %15

15:                                               ; preds = %11
  %16 = add i32 %14, 1
  store i32 %16, ptr %13, align 16
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %15
  %19 = call ptr @irq_to_desc(i32 noundef %0) #11
  %20 = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 1, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.irq_chip, ptr %21, i32 0, i32 33
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.irq_chip, ptr %21, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 1
  %32 = call i32 %28(ptr noundef %31, i32 noundef %1) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %32, %30 ], [ -6, %26 ]
  store i32 0, ptr %13, align 16
  br label %70

36:                                               ; preds = %30, %18
  %37 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 16384
  store i32 %40, ptr %38, align 4
  br label %70

41:                                               ; preds = %11
  %42 = icmp eq i32 %14, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 900, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %0) #11
  br label %70

44:                                               ; preds = %41
  %45 = add i32 %14, -1
  store i32 %45, ptr %13, align 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = call ptr @irq_to_desc(i32 noundef %0) #11
  %49 = getelementptr inbounds %struct.irq_desc, ptr %48, i32 0, i32 1, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.irq_chip, ptr %50, i32 0, i32 33
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.irq_chip, ptr %50, i32 0, i32 14
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.irq_desc, ptr %48, i32 0, i32 1
  %61 = call i32 %57(ptr noundef %60, i32 noundef 0) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59, %55
  %64 = phi i32 [ %61, %59 ], [ -6, %55 ]
  store i32 1, ptr %13, align 16
  br label %70

65:                                               ; preds = %59, %47
  %66 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, -16385
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %65, %63, %44, %43, %36, %34, %15, %6
  %71 = phi i32 [ %35, %34 ], [ 0, %36 ], [ 0, %15 ], [ 0, %43 ], [ %64, %63 ], [ 0, %65 ], [ 0, %44 ], [ -22, %6 ]
  %72 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %72, i1 noundef zeroext true) #11
  br label %73

73:                                               ; preds = %70, %2
  %74 = phi i32 [ %71, %70 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_request_irq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !12
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false, i32 noundef 0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 4
  %13 = load ptr, ptr %12, align 64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irqaction, ptr %13, i32 0, i32 8
  %17 = load i32, ptr %16, align 32
  %18 = and i32 %1, 128
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %11
  br label %22

22:                                               ; preds = %21, %15, %6
  %23 = phi i32 [ 1, %21 ], [ 0, %15 ], [ 0, %6 ]
  %24 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %24, i1 noundef zeroext false) #11
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i32 [ %23, %22 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__irq_set_trigger(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %72, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 33
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 131072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  tail call void @mask_irq(ptr noundef %0) #11
  %23 = load ptr, ptr %17, align 4
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %8, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi ptr [ %25, %22 ], [ %9, %16 ]
  %28 = phi i32 [ %24, %22 ], [ %19, %16 ]
  %29 = and i32 %28, 65536
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %11
  %32 = phi ptr [ %9, %11 ], [ %27, %26 ]
  %33 = phi i1 [ true, %11 ], [ %30, %26 ]
  %34 = and i32 %1, 15
  %35 = tail call i32 %32(ptr noundef %3, i32 noundef %34) #11
  switch i32 %35, label %64 [
    i32 0, label %36
    i32 2, label %36
    i32 1, label %44
  ]

36:                                               ; preds = %31, %31
  %37 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -16
  store i32 %40, ptr %38, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %34
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %36, %31
  %45 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 15
  %49 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, -16
  %52 = or i32 %51, %48
  store i32 %52, ptr %49, align 4
  %53 = load i32, ptr %46, align 4
  %54 = and i32 %53, -8193
  store i32 %54, ptr %46, align 4
  %55 = load i32, ptr %49, align 4
  %56 = and i32 %55, -257
  store i32 %56, ptr %49, align 4
  %57 = and i32 %47, 12
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %44
  %60 = or i32 %55, 256
  store i32 %60, ptr %49, align 4
  %61 = load ptr, ptr %45, align 4
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 8192
  store i32 %63, ptr %61, align 4
  br label %69

64:                                               ; preds = %31
  %65 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %8, align 4
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %34, i32 noundef %66, ptr noundef %67) #12
  br label %69

69:                                               ; preds = %64, %59, %44
  %70 = phi i32 [ %35, %64 ], [ 0, %59 ], [ 0, %44 ]
  br i1 %33, label %72, label %71

71:                                               ; preds = %69
  tail call void @unmask_irq(ptr noundef %0) #11
  br label %72

72:                                               ; preds = %71, %69, %7, %2
  %73 = phi i32 [ 0, %7 ], [ 0, %2 ], [ %70, %71 ], [ %70, %69 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_parent(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !12
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false, i32 noundef 0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 31
  store i32 %1, ptr %7, align 8
  %8 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %8, i1 noundef zeroext false) #11
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_wake_thread(i32 noundef %0, ptr noundef readnone %1) #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !17

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #11
  br label %32

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #11
  %14 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %27, %11
  %18 = phi ptr [ %29, %27 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.irqaction, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.irqaction, ptr %18, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  tail call void @__irq_wake_thread(ptr noundef nonnull %3, ptr noundef nonnull %18) #11
  br label %31

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.irqaction, ptr %18, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %17

31:                                               ; preds = %27, %26, %22, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #11
  br label %32

32:                                               ; preds = %31, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_wake_thread(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @free_irq(i32 noundef %0, ptr noundef readnone %1) #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %161, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !17

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1998, i32 noundef 9, ptr noundef null) #11
  br label %161

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !17

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2002, i32 noundef 9, ptr noundef null) #11
  store ptr null, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @llvm.thread.pointer() #11
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 15728640
  %24 = load volatile i32, ptr %21, align 4
  %25 = and i32 %24, 983040
  %26 = or i32 %25, %23
  %27 = load volatile i32, ptr %21, align 4
  %28 = and i32 %27, 65280
  %29 = or i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !17

31:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1846, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %19) #11
  br label %32

32:                                               ; preds = %31, %16
  %33 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %33) #11
  %34 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !17

39:                                               ; preds = %32
  tail call void %37(ptr noundef %17) #11
  br label %40

40:                                               ; preds = %39, %32
  %41 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #11
  %43 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.irqaction, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %68, label %61

50:                                               ; preds = %61, %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1861, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %19) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %42) #11
  %51 = load ptr, ptr %34, align 8
  %52 = getelementptr inbounds %struct.irq_chip, ptr %51, i32 0, i32 16
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !17

55:                                               ; preds = %50
  tail call void %53(ptr noundef %17) #11
  br label %56

56:                                               ; preds = %55, %50
  tail call void @mutex_unlock(ptr noundef %33) #11
  br label %161

57:                                               ; preds = %61
  %58 = getelementptr inbounds %struct.irqaction, ptr %64, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %1
  br i1 %60, label %66, label %61

61:                                               ; preds = %57, %46
  %62 = phi ptr [ %64, %57 ], [ %44, %46 ]
  %63 = getelementptr inbounds %struct.irqaction, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %50, label %57

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.irqaction, ptr %62, i32 0, i32 3
  br label %68

68:                                               ; preds = %66, %46
  %69 = phi ptr [ %44, %46 ], [ %64, %66 ]
  %70 = phi ptr [ %43, %46 ], [ %67, %66 ]
  %71 = getelementptr inbounds %struct.irqaction, ptr %69, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  store ptr %72, ptr %70, align 4
  tail call void @irq_pm_remove_action(ptr noundef nonnull %3, ptr noundef nonnull %69) #11
  %73 = load ptr, ptr %43, align 64
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, ptr %6, align 4
  %77 = and i32 %76, -524289
  store i32 %77, ptr %6, align 4
  tail call void @irq_shutdown(ptr noundef nonnull %3) #11
  br label %78

78:                                               ; preds = %75, %68
  %79 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 18
  %80 = load ptr, ptr %79, align 8
  %81 = icmp ne ptr %80, null
  %82 = load i1, ptr @__free_irq.__already_done, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !9

85:                                               ; preds = %78
  store i1 true, ptr @__free_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1887, i32 noundef 9, ptr noundef null) #11
  br label %86

86:                                               ; preds = %85, %78
  br i1 %81, label %87, label %88

87:                                               ; preds = %86
  store ptr null, ptr %79, align 8
  br label %88

88:                                               ; preds = %87, %86
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %42) #11
  %89 = load ptr, ptr %34, align 8
  %90 = getelementptr inbounds %struct.irq_chip, ptr %89, i32 0, i32 16
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93, !prof !17

93:                                               ; preds = %88
  tail call void %91(ptr noundef %17) #11
  br label %94

94:                                               ; preds = %93, %88
  tail call void @unregister_handler_proc(i32 noundef %19, ptr noundef nonnull %69) #11
  tail call fastcc void @__synchronize_hardirq(ptr noundef nonnull %3, i1 noundef zeroext true) #11
  %95 = getelementptr inbounds %struct.irqaction, ptr %69, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %130, label %98

98:                                               ; preds = %94
  %99 = tail call i32 @kthread_stop(ptr noundef nonnull %96) #11
  %100 = load ptr, ptr %95, align 4
  %101 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #11, !srcloc !18
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #11, !srcloc !21
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = icmp sgt i32 %103, 0
  br i1 %106, label %109, label %107, !prof !17

107:                                              ; preds = %105
  tail call void @refcount_warn_saturate(ptr noundef %101, i32 noundef 3) #11
  br label %109

108:                                              ; preds = %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void @__put_task_struct(ptr noundef %100) #11
  br label %109

109:                                              ; preds = %108, %107, %105
  %110 = getelementptr inbounds %struct.irqaction, ptr %69, i32 0, i32 6
  %111 = load ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %130, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.irqaction, ptr %111, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %130, label %117

117:                                              ; preds = %113
  %118 = tail call i32 @kthread_stop(ptr noundef nonnull %115) #11
  %119 = load ptr, ptr %110, align 8
  %120 = getelementptr inbounds %struct.irqaction, ptr %119, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #11, !srcloc !18
  %123 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #11, !srcloc !21
  %124 = extractvalue { i32, i32, i32 } %123, 0
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %129, label %126

126:                                              ; preds = %117
  %127 = icmp sgt i32 %124, 0
  br i1 %127, label %130, label %128, !prof !17

128:                                              ; preds = %126
  tail call void @refcount_warn_saturate(ptr noundef %122, i32 noundef 3) #11
  br label %130

129:                                              ; preds = %117
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void @__put_task_struct(ptr noundef %121) #11
  br label %130

130:                                              ; preds = %129, %128, %126, %113, %109, %94
  %131 = load ptr, ptr %43, align 64
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load ptr, ptr %34, align 8
  %135 = getelementptr inbounds %struct.irq_chip, ptr %134, i32 0, i32 15
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138, !prof !17

138:                                              ; preds = %133
  tail call void %136(ptr noundef %17) #11
  br label %139

139:                                              ; preds = %138, %133
  %140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #11
  tail call void @irq_domain_deactivate_irq(ptr noundef %17) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %140) #11
  %141 = load ptr, ptr %34, align 4
  %142 = getelementptr inbounds %struct.irq_chip, ptr %141, i32 0, i32 23
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %139
  tail call void %143(ptr noundef %17) #11
  %146 = load ptr, ptr %34, align 8
  br label %147

147:                                              ; preds = %145, %139
  %148 = phi ptr [ %141, %139 ], [ %146, %145 ]
  %149 = getelementptr inbounds %struct.irq_chip, ptr %148, i32 0, i32 16
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152, !prof !17

152:                                              ; preds = %147
  tail call void %150(ptr noundef %17) #11
  br label %153

153:                                              ; preds = %152, %147, %130
  tail call void @mutex_unlock(ptr noundef %33) #11
  %154 = tail call i32 @irq_chip_pm_put(ptr noundef %17) #11
  %155 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 32
  %156 = load ptr, ptr %155, align 4
  tail call void @module_put(ptr noundef %156) #11
  %157 = getelementptr inbounds %struct.irqaction, ptr %69, i32 0, i32 6
  %158 = load ptr, ptr %157, align 8
  tail call void @kfree(ptr noundef %158) #11
  %159 = getelementptr inbounds %struct.irqaction, ptr %69, i32 0, i32 11
  %160 = load ptr, ptr %159, align 4
  tail call void @kfree(ptr noundef nonnull %69) #11
  br label %161

161:                                              ; preds = %153, %56, %10, %2
  %162 = phi ptr [ %160, %153 ], [ null, %10 ], [ null, %2 ], [ null, %56 ]
  ret ptr %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @free_nmi(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2050, i32 noundef 9, ptr noundef null) #11
  br label %34

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 131072
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !17

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2053, i32 noundef 9, ptr noundef null) #11
  br label %34

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2057, i32 noundef 9, ptr noundef null) #11
  tail call void @disable_nmi_nosync(i32 noundef %0)
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #11
  %25 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.irq_chip, ptr %26, i32 0, i32 32
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  tail call void %28(ptr noundef %31) #11
  br label %32

32:                                               ; preds = %30, %22
  %33 = tail call fastcc ptr @__cleanup_nmi(i32 noundef %0, ptr noundef nonnull %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #11
  br label %34

34:                                               ; preds = %32, %16, %10, %2
  %35 = phi ptr [ null, %16 ], [ %33, %32 ], [ null, %10 ], [ null, %2 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__cleanup_nmi(i32 noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -8193
  store i32 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2024, i32 noundef 9, ptr noundef null) #11
  br label %15

10:                                               ; preds = %2
  tail call void @irq_pm_remove_action(ptr noundef %1, ptr noundef nonnull %7) #11
  %11 = load ptr, ptr %6, align 64
  %12 = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  tail call void @unregister_handler_proc(i32 noundef %0, ptr noundef %11) #11
  %14 = load ptr, ptr %6, align 64
  tail call void @kfree(ptr noundef %14) #11
  store ptr null, ptr %6, align 64
  br label %15

15:                                               ; preds = %10, %9
  %16 = phi ptr [ %13, %10 ], [ null, %9 ]
  %17 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -524289
  store i32 %19, ptr %17, align 4
  tail call void @irq_shutdown_and_deactivate(ptr noundef %1) #11
  %20 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.irq_chip, ptr %21, i32 0, i32 23
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1
  tail call void %23(ptr noundef %26) #11
  br label %27

27:                                               ; preds = %25, %15
  %28 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1
  %29 = tail call i32 @irq_chip_pm_put(ptr noundef %28) #11
  %30 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 32
  %31 = load ptr, ptr %30, align 4
  tail call void @module_put(ptr noundef %31) #11
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_threaded_irq(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = icmp eq i32 %0, -2147483648
  br i1 %7, label %59, label %8

8:                                                ; preds = %6
  %9 = and i32 %3, 128
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq ptr %5, null
  %12 = and i1 %10, %11
  %13 = and i32 %3, 524416
  %14 = icmp eq i32 %13, 524416
  %15 = or i1 %14, %12
  %16 = and i32 %3, 262272
  %17 = icmp eq i32 %16, 262144
  %18 = or i1 %17, %15
  %19 = and i32 %3, 278528
  %20 = icmp eq i32 %19, 278528
  %21 = or i1 %20, %18
  br i1 %21, label %59, label %22

22:                                               ; preds = %8
  %23 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %59, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.irq_desc, ptr %23, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = and i32 %27, 131072
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33, !prof !17

33:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2147, i32 noundef 9, ptr noundef null) #11
  br label %59

34:                                               ; preds = %30
  %35 = icmp eq ptr %1, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = icmp eq ptr %2, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %1, %34 ], [ @irq_default_primary_handler, %36 ]
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 64) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  store ptr %39, ptr %41, align 64
  %44 = getelementptr inbounds %struct.irqaction, ptr %41, i32 0, i32 4
  store ptr %2, ptr %44, align 16
  %45 = getelementptr inbounds %struct.irqaction, ptr %41, i32 0, i32 8
  store i32 %3, ptr %45, align 32
  %46 = getelementptr inbounds %struct.irqaction, ptr %41, i32 0, i32 11
  store ptr %4, ptr %46, align 4
  %47 = getelementptr inbounds %struct.irqaction, ptr %41, i32 0, i32 1
  store ptr %5, ptr %47, align 4
  %48 = getelementptr inbounds %struct.irq_desc, ptr %23, i32 0, i32 1
  %49 = tail call i32 @irq_chip_pm_get(ptr noundef %48) #11
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  tail call void @kfree(ptr noundef nonnull %41) #11
  br label %59

52:                                               ; preds = %43
  %53 = tail call fastcc i32 @__setup_irq(i32 noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %41)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @irq_chip_pm_put(ptr noundef %48) #11
  %57 = getelementptr inbounds %struct.irqaction, ptr %41, i32 0, i32 6
  %58 = load ptr, ptr %57, align 8
  tail call void @kfree(ptr noundef %58) #11
  tail call void @kfree(ptr noundef nonnull %41) #11
  br label %59

59:                                               ; preds = %55, %52, %51, %38, %36, %33, %25, %22, %8, %6
  %60 = phi i32 [ %49, %51 ], [ -107, %6 ], [ -22, %8 ], [ -22, %22 ], [ -22, %33 ], [ -22, %25 ], [ -22, %36 ], [ -12, %38 ], [ %53, %55 ], [ 0, %52 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @irq_default_primary_handler(i32 noundef %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_pm_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__setup_irq(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %426, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, @no_irq_chip
  br i1 %9, label %426, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 @try_module_get(ptr noundef %12) #11
  br i1 %13, label %14, label %426

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 7
  store i32 %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 8
  %17 = load i32, ptr %16, align 32
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 15
  %25 = or i32 %24, %17
  store i32 %25, ptr %16, align 32
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i32 [ %25, %20 ], [ %17, %14 ]
  %28 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 4
  %34 = load ptr, ptr %33, align 16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %423, label %36

36:                                               ; preds = %32
  store ptr @irq_nested_primary_handler, ptr %2, align 64
  br label %107

37:                                               ; preds = %26
  %38 = and i32 %29, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  %41 = load volatile i32, ptr @force_irqthreads_key, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %76, !prof !9

43:                                               ; preds = %40
  %44 = and i32 %27, 74752
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  %47 = load ptr, ptr %2, align 64
  %48 = icmp eq ptr %47, @irq_default_primary_handler
  br i1 %48, label %76, label %49

49:                                               ; preds = %46
  %50 = or i32 %27, 8192
  store i32 %50, ptr %16, align 32
  %51 = icmp eq ptr %47, null
  br i1 %51, label %72, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 4
  %54 = load ptr, ptr %53, align 16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 64) #13
  %59 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 6
  store ptr %58, ptr %59, align 8
  %60 = icmp eq ptr %58, null
  br i1 %60, label %423, label %61

61:                                               ; preds = %56
  store ptr @irq_forced_secondary_handler, ptr %58, align 64
  %62 = load ptr, ptr %53, align 16
  %63 = getelementptr inbounds %struct.irqaction, ptr %58, i32 0, i32 4
  store ptr %62, ptr %63, align 16
  %64 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.irqaction, ptr %58, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  %67 = load i32, ptr %15, align 4
  %68 = getelementptr inbounds %struct.irqaction, ptr %58, i32 0, i32 7
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.irqaction, ptr %58, i32 0, i32 11
  store ptr %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %61, %52, %49
  %73 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 3, ptr noundef %73) #11
  %74 = load ptr, ptr %2, align 64
  %75 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 4
  store ptr %74, ptr %75, align 16
  store ptr @irq_default_primary_handler, ptr %2, align 64
  br label %76

76:                                               ; preds = %72, %46, %43, %40, %37
  %77 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 4
  %78 = load ptr, ptr %77, align 16
  %79 = icmp eq ptr %78, null
  br i1 %79, label %107, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @irq_thread, ptr noundef %2, i32 noundef -1, ptr noundef nonnull @.str.21, i32 noundef %0, ptr noundef %82) #11
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %102, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #11, !srcloc !18
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #11, !srcloc !19
  %88 = extractvalue { i32, i32, i32 } %87, 0
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90, !prof !9

90:                                               ; preds = %85
  %91 = add i32 %88, 1
  %92 = or i32 %91, %88
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %96, label %94, !prof !17

94:                                               ; preds = %90, %85
  %95 = phi i32 [ 2, %85 ], [ 1, %90 ]
  tail call void @refcount_warn_saturate(ptr noundef %86, i32 noundef %95) #11
  br label %96

96:                                               ; preds = %94, %90
  %97 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 5
  store ptr %83, ptr %97, align 4
  %98 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %98) #11
  %99 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 6
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %104

102:                                              ; preds = %80
  %103 = ptrtoint ptr %83 to i32
  br label %423

104:                                              ; preds = %96
  %105 = tail call fastcc i32 @setup_irq_thread(ptr noundef nonnull %100, i32 noundef %0, i1 noundef zeroext true)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %390

107:                                              ; preds = %104, %96, %76, %36
  %108 = load ptr, ptr %7, align 8
  %109 = getelementptr inbounds %struct.irq_chip, ptr %108, i32 0, i32 33
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i32, ptr %16, align 32
  %115 = and i32 %114, -8193
  store i32 %115, ptr %16, align 32
  br label %116

116:                                              ; preds = %113, %107
  %117 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %117) #11
  %118 = load ptr, ptr %7, align 8
  %119 = getelementptr inbounds %struct.irq_chip, ptr %118, i32 0, i32 15
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122, !prof !17

122:                                              ; preds = %116
  tail call void %120(ptr noundef %6) #11
  br label %123

123:                                              ; preds = %122, %116
  %124 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 4
  %125 = load ptr, ptr %124, align 64
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load ptr, ptr %7, align 4
  %129 = getelementptr inbounds %struct.irq_chip, ptr %128, i32 0, i32 22
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %142, label %132

132:                                              ; preds = %127
  %133 = tail call i32 %130(ptr noundef %6) #11
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 11
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %7, align 8
  %139 = getelementptr inbounds %struct.irq_chip, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %137, i32 noundef %0, ptr noundef %140) #12
  br label %382

142:                                              ; preds = %132, %127, %123
  %143 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 15
  %144 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %143) #11
  %145 = load ptr, ptr %124, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %205, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 6
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 8192
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %194

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 33554432
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = and i32 %155, 15
  br label %170

160:                                              ; preds = %152
  %161 = load i32, ptr %16, align 32
  %162 = and i32 %161, 15
  %163 = and i32 %155, -16
  store i32 %163, ptr %154, align 4
  %164 = load ptr, ptr %153, align 4
  %165 = load i32, ptr %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, ptr %164, align 4
  %167 = load ptr, ptr %153, align 4
  %168 = load i32, ptr %167, align 4
  %169 = or i32 %168, 33554432
  store i32 %169, ptr %167, align 4
  br label %170

170:                                              ; preds = %160, %158
  %171 = phi i32 [ %159, %158 ], [ %162, %160 ]
  %172 = getelementptr inbounds %struct.irqaction, ptr %145, i32 0, i32 8
  %173 = load i32, ptr %172, align 32
  %174 = load i32, ptr %16, align 32
  %175 = and i32 %173, 128
  %176 = and i32 %175, %174
  %177 = icmp ne i32 %176, 0
  %178 = and i32 %174, 15
  %179 = icmp eq i32 %171, %178
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %181, label %363

181:                                              ; preds = %170
  %182 = xor i32 %174, %173
  %183 = and i32 %182, 9216
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %363

185:                                              ; preds = %185, %181
  %186 = phi i32 [ %190, %185 ], [ 0, %181 ]
  %187 = phi ptr [ %192, %185 ], [ %145, %181 ]
  %188 = getelementptr inbounds %struct.irqaction, ptr %187, i32 0, i32 10
  %189 = load i32, ptr %188, align 8
  %190 = or i32 %189, %186
  %191 = getelementptr inbounds %struct.irqaction, ptr %187, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %201, label %185

194:                                              ; preds = %147
  %195 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 11
  %196 = load ptr, ptr %195, align 4
  %197 = load ptr, ptr %7, align 8
  %198 = getelementptr inbounds %struct.irq_chip, ptr %197, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %196, i32 noundef %0, ptr noundef %199) #12
  br label %372

201:                                              ; preds = %185
  %202 = getelementptr inbounds %struct.irqaction, ptr %187, i32 0, i32 3
  %203 = and i32 %174, 8192
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %220, label %209

205:                                              ; preds = %142
  %206 = load i32, ptr %16, align 32
  %207 = and i32 %206, 8192
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %220, label %211

209:                                              ; preds = %201
  %210 = icmp eq i32 %190, -1
  br i1 %210, label %372, label %211

211:                                              ; preds = %209, %205
  %212 = phi i32 [ 1, %209 ], [ 0, %205 ]
  %213 = phi i32 [ %190, %209 ], [ 0, %205 ]
  %214 = phi ptr [ %202, %209 ], [ %124, %205 ]
  %215 = phi i32 [ %174, %209 ], [ %206, %205 ]
  %216 = xor i32 %213, -1
  %217 = tail call i32 @llvm.cttz.i32(i32 %216, i1 false) #11, !range !23
  %218 = shl nuw i32 1, %217
  %219 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 10
  store i32 %218, ptr %219, align 8
  br label %236

220:                                              ; preds = %205, %201
  %221 = phi i32 [ %206, %205 ], [ %174, %201 ]
  %222 = phi ptr [ %124, %205 ], [ %202, %201 ]
  %223 = phi i32 [ 0, %205 ], [ 1, %201 ]
  %224 = load ptr, ptr %2, align 64
  %225 = icmp eq ptr %224, @irq_default_primary_handler
  br i1 %225, label %226, label %236

226:                                              ; preds = %220
  %227 = load ptr, ptr %7, align 8
  %228 = getelementptr inbounds %struct.irq_chip, ptr %227, i32 0, i32 33
  %229 = load i32, ptr %228, align 4
  %230 = and i32 %229, 32
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 11
  %234 = load ptr, ptr %233, align 4
  %235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %234, i32 noundef %0) #12
  br label %372

236:                                              ; preds = %226, %220, %211
  %237 = phi i32 [ %221, %220 ], [ %221, %226 ], [ %215, %211 ]
  %238 = phi ptr [ %222, %220 ], [ %222, %226 ], [ %214, %211 ]
  %239 = phi i32 [ %223, %220 ], [ %223, %226 ], [ %212, %211 ]
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %318

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 22
  tail call void @__init_waitqueue_head(ptr noundef %242, ptr noundef nonnull @.str.16, ptr noundef nonnull @__setup_irq.__key) #11
  %243 = load i32, ptr %16, align 32
  %244 = and i32 %243, 15
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %241
  %247 = tail call i32 @__irq_set_trigger(ptr noundef %1, i32 noundef %244)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %372

249:                                              ; preds = %246, %241
  %250 = tail call i32 @irq_activate(ptr noundef %1) #11
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %372

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 6
  %254 = load i32, ptr %253, align 8
  %255 = and i32 %254, -164
  store i32 %255, ptr %253, align 8
  %256 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, i32 3
  %257 = load ptr, ptr %256, align 4
  %258 = load i32, ptr %257, align 4
  %259 = and i32 %258, -262145
  store i32 %259, ptr %257, align 4
  %260 = load i32, ptr %16, align 32
  %261 = and i32 %260, 1024
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %274, label %263

263:                                              ; preds = %252
  %264 = load ptr, ptr %256, align 4
  %265 = load i32, ptr %264, align 4
  %266 = or i32 %265, 2048
  store i32 %266, ptr %264, align 4
  %267 = load i32, ptr %28, align 4
  %268 = or i32 %267, 512
  store i32 %268, ptr %28, align 4
  %269 = load i32, ptr %16, align 32
  %270 = and i32 %269, 1048576
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %263
  %273 = or i32 %267, 2097664
  store i32 %273, ptr %28, align 4
  br label %274

274:                                              ; preds = %272, %263, %252
  %275 = load i8, ptr @noirqdebug, align 1, !range !8
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %28, align 4
  %279 = or i32 %278, 2097152
  store i32 %279, ptr %28, align 4
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i32, ptr %16, align 32
  %282 = and i32 %281, 8192
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %280
  %285 = load i32, ptr %253, align 8
  %286 = or i32 %285, 32
  store i32 %286, ptr %253, align 8
  %287 = load i32, ptr %16, align 32
  br label %288

288:                                              ; preds = %284, %280
  %289 = phi i32 [ %287, %284 ], [ %281, %280 ]
  %290 = and i32 %289, 2048
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %299, label %292

292:                                              ; preds = %288
  %293 = load i32, ptr %28, align 4
  %294 = or i32 %293, 8192
  store i32 %294, ptr %28, align 4
  %295 = load ptr, ptr %256, align 4
  %296 = load i32, ptr %295, align 4
  %297 = or i32 %296, 1024
  store i32 %297, ptr %295, align 4
  %298 = load i32, ptr %16, align 32
  br label %299

299:                                              ; preds = %292, %288
  %300 = phi i32 [ %298, %292 ], [ %289, %288 ]
  %301 = and i32 %300, 524288
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %299
  %304 = load i32, ptr %28, align 4
  %305 = and i32 %304, 4096
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = tail call i32 @irq_startup(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br label %329

309:                                              ; preds = %303, %299
  %310 = and i32 %300, 128
  %311 = icmp ne i32 %310, 0
  %312 = load i1, ptr @__setup_irq.__already_done, align 1
  %313 = xor i1 %312, true
  %314 = select i1 %311, i1 %313, i1 false
  br i1 %314, label %315, label %316, !prof !9

315:                                              ; preds = %309
  store i1 true, ptr @__setup_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1745, i32 noundef 9, ptr noundef null) #11
  br label %316

316:                                              ; preds = %315, %309
  %317 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 7
  store i32 1, ptr %317, align 4
  br label %329

318:                                              ; preds = %236
  %319 = and i32 %237, 15
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %332, label %321

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 1, i32 3
  %323 = load ptr, ptr %322, align 4
  %324 = load i32, ptr %323, align 4
  %325 = and i32 %324, 15
  %326 = icmp eq i32 %319, %325
  br i1 %326, label %332, label %327

327:                                              ; preds = %321
  %328 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %0, i32 noundef %325, i32 noundef %319) #12
  br label %332

329:                                              ; preds = %316, %307
  store ptr %2, ptr %238, align 4
  tail call void @irq_pm_install_action(ptr noundef %1, ptr noundef %2) #11
  %330 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 10
  store i32 0, ptr %330, align 8
  %331 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 12
  store i32 0, ptr %331, align 32
  br label %341

332:                                              ; preds = %327, %321, %318
  store ptr %2, ptr %238, align 4
  tail call void @irq_pm_install_action(ptr noundef %1, ptr noundef %2) #11
  %333 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 10
  store i32 0, ptr %333, align 8
  %334 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 12
  store i32 0, ptr %334, align 32
  %335 = getelementptr inbounds %struct.irq_desc, ptr %1, i32 0, i32 6
  %336 = load i32, ptr %335, align 8
  %337 = and i32 %336, 2
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %341, label %339

339:                                              ; preds = %332
  %340 = and i32 %336, -3
  store i32 %340, ptr %335, align 8
  tail call void @__enable_irq(ptr noundef %1)
  br label %341

341:                                              ; preds = %339, %332, %329
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %143, i32 noundef %144) #11
  %342 = load ptr, ptr %7, align 8
  %343 = getelementptr inbounds %struct.irq_chip, ptr %342, i32 0, i32 16
  %344 = load ptr, ptr %343, align 4
  %345 = icmp eq ptr %344, null
  br i1 %345, label %347, label %346, !prof !17

346:                                              ; preds = %341
  tail call void %344(ptr noundef %6) #11
  br label %347

347:                                              ; preds = %346, %341
  tail call void @mutex_unlock(ptr noundef %117) #11
  %348 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 5
  %349 = load ptr, ptr %348, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %347
  %352 = tail call i32 @wake_up_process(ptr noundef nonnull %349) #11
  br label %353

353:                                              ; preds = %351, %347
  %354 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 6
  %355 = load ptr, ptr %354, align 8
  %356 = icmp eq ptr %355, null
  br i1 %356, label %361, label %357

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.irqaction, ptr %355, i32 0, i32 5
  %359 = load ptr, ptr %358, align 4
  %360 = tail call i32 @wake_up_process(ptr noundef %359) #11
  br label %361

361:                                              ; preds = %357, %353
  tail call void @register_irq_proc(i32 noundef %0, ptr noundef %1) #11
  %362 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 12
  store ptr null, ptr %362, align 16
  tail call void @register_handler_proc(i32 noundef %0, ptr noundef %2) #11
  br label %426

363:                                              ; preds = %181, %170
  %364 = and i32 %174, 256
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 11
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr inbounds %struct.irqaction, ptr %145, i32 0, i32 11
  %370 = load ptr, ptr %369, align 4
  %371 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %0, i32 noundef %174, ptr noundef %368, i32 noundef %173, ptr noundef %370) #12
  br label %372

372:                                              ; preds = %366, %363, %249, %246, %232, %209, %194
  %373 = phi i32 [ -22, %194 ], [ %247, %246 ], [ %250, %249 ], [ -22, %232 ], [ -16, %209 ], [ -16, %366 ], [ -16, %363 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %143, i32 noundef %144) #11
  %374 = load ptr, ptr %124, align 64
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %382

376:                                              ; preds = %372
  %377 = load ptr, ptr %7, align 4
  %378 = getelementptr inbounds %struct.irq_chip, ptr %377, i32 0, i32 23
  %379 = load ptr, ptr %378, align 4
  %380 = icmp eq ptr %379, null
  br i1 %380, label %382, label %381

381:                                              ; preds = %376
  tail call void %379(ptr noundef %6) #11
  br label %382

382:                                              ; preds = %381, %376, %372, %135
  %383 = phi i32 [ %373, %372 ], [ %133, %135 ], [ %373, %376 ], [ %373, %381 ]
  %384 = load ptr, ptr %7, align 8
  %385 = getelementptr inbounds %struct.irq_chip, ptr %384, i32 0, i32 16
  %386 = load ptr, ptr %385, align 4
  %387 = icmp eq ptr %386, null
  br i1 %387, label %389, label %388, !prof !17

388:                                              ; preds = %382
  tail call void %386(ptr noundef %6) #11
  br label %389

389:                                              ; preds = %388, %382
  tail call void @mutex_unlock(ptr noundef %117) #11
  br label %390

390:                                              ; preds = %389, %104
  %391 = phi i32 [ %383, %389 ], [ %105, %104 ]
  %392 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 5
  %393 = load ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %405, label %395

395:                                              ; preds = %390
  store ptr null, ptr %392, align 4
  %396 = tail call i32 @kthread_stop(ptr noundef nonnull %393) #11
  %397 = getelementptr inbounds %struct.task_struct, ptr %393, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %397) #11, !srcloc !18
  %398 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %397, ptr %397, i32 1, ptr elementtype(i32) %397) #11, !srcloc !21
  %399 = extractvalue { i32, i32, i32 } %398, 0
  %400 = icmp eq i32 %399, 1
  br i1 %400, label %404, label %401

401:                                              ; preds = %395
  %402 = icmp sgt i32 %399, 0
  br i1 %402, label %405, label %403, !prof !17

403:                                              ; preds = %401
  tail call void @refcount_warn_saturate(ptr noundef %397, i32 noundef 3) #11
  br label %405

404:                                              ; preds = %395
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void @__put_task_struct(ptr noundef nonnull %393) #11
  br label %405

405:                                              ; preds = %404, %403, %401, %390
  %406 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 6
  %407 = load ptr, ptr %406, align 8
  %408 = icmp eq ptr %407, null
  br i1 %408, label %423, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.irqaction, ptr %407, i32 0, i32 5
  %411 = load ptr, ptr %410, align 4
  %412 = icmp eq ptr %411, null
  br i1 %412, label %423, label %413

413:                                              ; preds = %409
  store ptr null, ptr %410, align 4
  %414 = tail call i32 @kthread_stop(ptr noundef nonnull %411) #11
  %415 = getelementptr inbounds %struct.task_struct, ptr %411, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %415) #11, !srcloc !18
  %416 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %415, ptr %415, i32 1, ptr elementtype(i32) %415) #11, !srcloc !21
  %417 = extractvalue { i32, i32, i32 } %416, 0
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %422, label %419

419:                                              ; preds = %413
  %420 = icmp sgt i32 %417, 0
  br i1 %420, label %423, label %421, !prof !17

421:                                              ; preds = %419
  tail call void @refcount_warn_saturate(ptr noundef %415, i32 noundef 3) #11
  br label %423

422:                                              ; preds = %413
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  tail call void @__put_task_struct(ptr noundef nonnull %411) #11
  br label %423

423:                                              ; preds = %422, %421, %419, %409, %405, %102, %56, %32
  %424 = phi i32 [ %391, %409 ], [ %391, %405 ], [ %103, %102 ], [ -22, %32 ], [ -12, %56 ], [ %391, %419 ], [ %391, %421 ], [ %391, %422 ]
  %425 = load ptr, ptr %11, align 4
  tail call void @module_put(ptr noundef %425) #11
  br label %426

426:                                              ; preds = %423, %361, %10, %5, %3
  %427 = phi i32 [ %424, %423 ], [ 0, %361 ], [ -22, %3 ], [ -38, %5 ], [ -19, %10 ]
  ret i32 %427
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_pm_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_any_context_irq(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = icmp eq i32 %0, -2147483648
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @request_threaded_irq(i32 noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 1, i32 %16
  br label %21

19:                                               ; preds = %10
  %20 = tail call i32 @request_threaded_irq(i32 noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %3, ptr noundef %4) #11
  br label %21

21:                                               ; preds = %19, %15, %7, %5
  %22 = phi i32 [ %18, %15 ], [ %20, %19 ], [ -107, %5 ], [ -22, %7 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_nmi(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = icmp eq i32 %0, -2147483648
  br i1 %6, label %83, label %7

7:                                                ; preds = %5
  %8 = and i32 %2, 267392
  %9 = icmp ne i32 %8, 1024
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %83, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %83, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 4096
  %19 = and i32 %2, 524288
  %20 = or i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %17, 2048
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %83

25:                                               ; preds = %15
  %26 = and i32 %17, 131072
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !17

28:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2296, i32 noundef 9, ptr noundef null) #11
  br label %83

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 1, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 1, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %83

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 16
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 33
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 64) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %83, label %52

52:                                               ; preds = %48
  store ptr %1, ptr %50, align 64
  %53 = or i32 %2, 67584
  %54 = getelementptr inbounds %struct.irqaction, ptr %50, i32 0, i32 8
  store i32 %53, ptr %54, align 32
  %55 = getelementptr inbounds %struct.irqaction, ptr %50, i32 0, i32 11
  store ptr %3, ptr %55, align 4
  %56 = getelementptr inbounds %struct.irqaction, ptr %50, i32 0, i32 1
  store ptr %4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 1
  %58 = tail call i32 @irq_chip_pm_get(ptr noundef %57) #11
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %52
  %61 = tail call fastcc i32 @__setup_irq(i32 noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %50)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 15
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #11
  %66 = getelementptr inbounds %struct.irq_desc, ptr %13, i32 0, i32 6
  %67 = load i32, ptr %66, align 8
  %68 = or i32 %67, 8192
  store i32 %68, ptr %66, align 8
  %69 = load ptr, ptr %34, align 4
  %70 = getelementptr inbounds %struct.irq_chip, ptr %69, i32 0, i32 31
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = tail call i32 %71(ptr noundef %57) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73, %63
  %77 = tail call fastcc ptr @__cleanup_nmi(i32 noundef %0, ptr noundef nonnull %13)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #11
  br label %83

78:                                               ; preds = %73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #11
  br label %83

79:                                               ; preds = %60
  %80 = tail call i32 @irq_chip_pm_put(ptr noundef %57) #11
  br label %81

81:                                               ; preds = %79, %52
  %82 = phi i32 [ %58, %52 ], [ %61, %79 ]
  tail call void @kfree(ptr noundef nonnull %50) #11
  br label %83

83:                                               ; preds = %81, %78, %76, %48, %43, %39, %33, %29, %28, %15, %12, %7, %5
  %84 = phi i32 [ %82, %81 ], [ -22, %76 ], [ 0, %78 ], [ -107, %5 ], [ -22, %7 ], [ -22, %28 ], [ -22, %15 ], [ -22, %43 ], [ -22, %12 ], [ -12, %48 ], [ -22, %29 ], [ -22, %39 ], [ -22, %33 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @enable_percpu_irq(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !12
  %7 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false, i32 noundef 3) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = and i32 %1, 15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12, %9
  %19 = phi i32 [ %16, %12 ], [ %10, %9 ]
  %20 = call i32 @__irq_set_trigger(ptr noundef nonnull %7, i32 noundef %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2363, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %0) #11
  br label %24

23:                                               ; preds = %18, %12
  call void @irq_percpu_enable(ptr noundef nonnull %7, i32 noundef %6) #11
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %7, i32 noundef %25, i1 noundef zeroext false) #11
  br label %26

26:                                               ; preds = %24, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_percpu_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @enable_percpu_nmi(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  tail call void @enable_percpu_irq(i32 noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_percpu_is_enabled(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @llvm.thread.pointer() #11
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %6 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false, i32 noundef 3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 16
  %10 = load ptr, ptr %9, align 16
  %11 = lshr i32 %5, 5
  %12 = getelementptr i32, ptr %10, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %5, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  %18 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %6, i32 noundef %18, i1 noundef zeroext false) #11
  br label %19

19:                                               ; preds = %8, %1
  %20 = phi i1 [ %17, %8 ], [ false, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disable_percpu_irq(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @llvm.thread.pointer() #11
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %6 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false, i32 noundef 3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  call void @irq_percpu_disable(ptr noundef nonnull %6, i32 noundef %5) #11
  %9 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %6, i32 noundef %9, i1 noundef zeroext false) #11
  br label %10

10:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_percpu_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disable_percpu_nmi(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @llvm.thread.pointer() #11
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %6 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false, i32 noundef 3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  call void @irq_percpu_disable(ptr noundef nonnull %6, i32 noundef %5) #11
  %9 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %6, i32 noundef %9, i1 noundef zeroext false) #11
  br label %10

10:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @remove_percpu_irq(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call fastcc ptr @__free_percpu_irq(i32 noundef %0, ptr noundef %12)
  br label %14

14:                                               ; preds = %10, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__free_percpu_irq(i32 noundef %0, ptr noundef readnone %1) unnamed_addr #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 15728640
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 983040
  %10 = or i32 %9, %7
  %11 = load volatile i32, ptr %5, align 4
  %12 = and i32 %11, 65280
  %13 = or i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !17

15:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2432, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %0) #11
  br label %16

16:                                               ; preds = %15, %2
  %17 = icmp eq ptr %3, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 15
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #11
  %21 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 4
  %22 = load ptr, ptr %21, align 64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.irqaction, ptr %22, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2441, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %0) #11
  br label %45

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 16
  %31 = load ptr, ptr %30, align 16
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = tail call i32 @_find_first_bit_le(ptr noundef %31, i32 noundef 16) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2447, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %0, i32 noundef %36) #11
  br label %45

37:                                               ; preds = %29
  store ptr null, ptr %21, align 64
  %38 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -8193
  store i32 %40, ptr %38, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  tail call void @unregister_handler_proc(i32 noundef %0, ptr noundef nonnull %22) #11
  %41 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %42 = tail call i32 @irq_chip_pm_put(ptr noundef %41) #11
  %43 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 32
  %44 = load ptr, ptr %43, align 4
  tail call void @module_put(ptr noundef %44) #11
  br label %46

45:                                               ; preds = %35, %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  br label %46

46:                                               ; preds = %45, %37, %16
  %47 = phi ptr [ null, %45 ], [ %22, %37 ], [ null, %16 ]
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_percpu_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.irq_chip, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !17

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  tail call void %14(ptr noundef %17) #11
  br label %18

18:                                               ; preds = %16, %10
  %19 = tail call fastcc ptr @__free_percpu_irq(i32 noundef %0, ptr noundef %1)
  tail call void @kfree(ptr noundef %19) #11
  %20 = load ptr, ptr %11, align 8
  %21 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 16
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !17

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  tail call void %22(ptr noundef %25) #11
  br label %26

26:                                               ; preds = %24, %18, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_percpu_nmi(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2516, i32 noundef 9, ptr noundef null) #11
  br label %18

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @__free_percpu_irq(i32 noundef %0, ptr noundef %1)
  tail call void @kfree(ptr noundef %17) #11
  br label %18

18:                                               ; preds = %16, %15, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @setup_percpu_irq(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %12 = tail call i32 @irq_chip_pm_get(ptr noundef %11) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @__setup_irq(i32 noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @irq_chip_pm_put(ptr noundef %11) #11
  br label %19

19:                                               ; preds = %17, %14, %10, %5, %2
  %20 = phi i32 [ -22, %5 ], [ -22, %2 ], [ %12, %10 ], [ %15, %17 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__request_percpu_irq(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 133120
  %14 = icmp eq i32 %13, 131072
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  switch i32 %2, label %35 [
    i32 82432, label %16
    i32 0, label %16
  ]

16:                                               ; preds = %15, %15
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 64) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  store ptr %1, ptr %18, align 64
  %21 = or i32 %2, 17408
  %22 = getelementptr inbounds %struct.irqaction, ptr %18, i32 0, i32 8
  store i32 %21, ptr %22, align 32
  %23 = getelementptr inbounds %struct.irqaction, ptr %18, i32 0, i32 11
  store ptr %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.irqaction, ptr %18, i32 0, i32 2
  store ptr %4, ptr %24, align 8
  %25 = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 1
  %26 = tail call i32 @irq_chip_pm_get(ptr noundef %25) #11
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = tail call fastcc i32 @__setup_irq(i32 noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %18)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @irq_chip_pm_put(ptr noundef %25) #11
  br label %33

33:                                               ; preds = %31, %20
  %34 = phi i32 [ %29, %31 ], [ %26, %20 ]
  tail call void @kfree(ptr noundef nonnull %18) #11
  br label %35

35:                                               ; preds = %33, %28, %16, %15, %10, %7, %5
  %36 = phi i32 [ -22, %5 ], [ -22, %10 ], [ -22, %7 ], [ -22, %15 ], [ -12, %16 ], [ 0, %28 ], [ %34, %33 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @request_percpu_nmi(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 137216
  %13 = icmp eq i32 %12, 135168
  br i1 %13, label %14, label %61

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 33
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 6
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 64) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %61, label %42

42:                                               ; preds = %38
  store ptr %1, ptr %40, align 64
  %43 = getelementptr inbounds %struct.irqaction, ptr %40, i32 0, i32 8
  store i32 84992, ptr %43, align 32
  %44 = getelementptr inbounds %struct.irqaction, ptr %40, i32 0, i32 11
  store ptr %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.irqaction, ptr %40, i32 0, i32 2
  store ptr %3, ptr %45, align 8
  %46 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1
  %47 = tail call i32 @irq_chip_pm_get(ptr noundef %46) #11
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %42
  %50 = tail call fastcc i32 @__setup_irq(i32 noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %40)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #11
  %55 = load i32, ptr %34, align 8
  %56 = or i32 %55, 8192
  store i32 %56, ptr %34, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #11
  br label %61

57:                                               ; preds = %49
  %58 = tail call i32 @irq_chip_pm_put(ptr noundef %46) #11
  br label %59

59:                                               ; preds = %57, %42
  %60 = phi i32 [ %47, %42 ], [ %50, %57 ]
  tail call void @kfree(ptr noundef nonnull %40) #11
  br label %61

61:                                               ; preds = %59, %52, %38, %33, %28, %24, %18, %14, %9, %6, %4
  %62 = phi i32 [ %60, %59 ], [ 0, %52 ], [ -22, %4 ], [ -22, %28 ], [ -22, %9 ], [ -22, %6 ], [ -22, %33 ], [ -12, %38 ], [ -22, %14 ], [ -22, %24 ], [ -22, %18 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prepare_percpu_nmi(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false, i32 noundef 3) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2715, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %0) #11
  br label %24

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 31
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %19 = call i32 %15(ptr noundef %18) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %19, %17 ], [ -22, %11 ]
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %0) #12
  br label %24

24:                                               ; preds = %21, %17, %10
  %25 = phi i32 [ -22, %10 ], [ %22, %21 ], [ 0, %17 ]
  %26 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %3, i32 noundef %26, i1 noundef zeroext false) #11
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i32 [ %25, %24 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @teardown_percpu_nmi(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false, i32 noundef 3) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2755, i32 noundef 9, ptr noundef null) #11
  br label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  call void %15(ptr noundef %18) #11
  br label %19

19:                                               ; preds = %17, %11, %10
  %20 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %3, i32 noundef %20, i1 noundef zeroext false) #11
  br label %21

21:                                               ; preds = %19, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__irq_get_irqchip_state(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = load i1, ptr @__irq_get_irqchip_state.__already_done, align 1
  br label %5

5:                                                ; preds = %21, %3
  %6 = phi i1 [ %4, %3 ], [ %16, %21 ]
  %7 = phi ptr [ %0, %3 ], [ %23, %21 ]
  %8 = getelementptr inbounds %struct.irq_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = xor i1 %6, true
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %15, !prof !9

13:                                               ; preds = %5
  store i1 true, ptr @__irq_get_irqchip_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2771, i32 noundef 9, ptr noundef null) #11
  %14 = load i1, ptr @__irq_get_irqchip_state.__already_done, align 1
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i1 [ %14, %13 ], [ %6, %5 ]
  br i1 %10, label %29, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 26
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.irq_data, ptr %7, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %5

25:                                               ; preds = %17
  %26 = icmp eq ptr %7, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = tail call i32 %19(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2) #11
  br label %29

29:                                               ; preds = %27, %25, %21, %15
  %30 = phi i32 [ %28, %27 ], [ -22, %25 ], [ -22, %21 ], [ -19, %15 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_get_irqchip_state(i32 noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !12
  %5 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %4, i1 noundef zeroext true, i32 noundef 0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1
  %9 = load i1, ptr @__irq_get_irqchip_state.__already_done, align 1
  br label %10

10:                                               ; preds = %26, %7
  %11 = phi i1 [ %9, %7 ], [ %21, %26 ]
  %12 = phi ptr [ %8, %7 ], [ %28, %26 ]
  %13 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = xor i1 %11, true
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %20, !prof !9

18:                                               ; preds = %10
  store i1 true, ptr @__irq_get_irqchip_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2771, i32 noundef 9, ptr noundef null) #11
  %19 = load i1, ptr @__irq_get_irqchip_state.__already_done, align 1
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i1 [ %19, %18 ], [ %11, %10 ]
  br i1 %15, label %34, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.irq_chip, ptr %14, i32 0, i32 26
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %10

30:                                               ; preds = %22
  %31 = icmp eq ptr %12, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = call i32 %24(ptr noundef nonnull %12, i32 noundef %1, ptr noundef %2) #11
  br label %34

34:                                               ; preds = %32, %30, %26, %20
  %35 = phi i32 [ %33, %32 ], [ -22, %30 ], [ -19, %20 ], [ -22, %26 ]
  %36 = load i32, ptr %4, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %5, i32 noundef %36, i1 noundef zeroext true) #11
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i32 [ %35, %34 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_irqchip_state(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !12
  %5 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %4, i1 noundef zeroext true, i32 noundef 0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1
  %9 = load i1, ptr @irq_set_irqchip_state.__already_done, align 1
  br label %10

10:                                               ; preds = %26, %7
  %11 = phi i1 [ %9, %7 ], [ %21, %26 ]
  %12 = phi ptr [ %8, %7 ], [ %28, %26 ]
  %13 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = xor i1 %11, true
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %20, !prof !9

18:                                               ; preds = %10
  store i1 true, ptr @irq_set_irqchip_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2850, i32 noundef 9, ptr noundef null) #11
  %19 = load i1, ptr @irq_set_irqchip_state.__already_done, align 1
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i1 [ %19, %18 ], [ %11, %10 ]
  br i1 %15, label %34, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.irq_chip, ptr %14, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %10

30:                                               ; preds = %22
  %31 = icmp eq ptr %12, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = call i32 %24(ptr noundef nonnull %12, i32 noundef %1, i1 noundef zeroext %2) #11
  br label %34

34:                                               ; preds = %32, %30, %26, %20
  %35 = phi i32 [ %33, %32 ], [ -22, %30 ], [ -22, %26 ], [ -19, %20 ]
  %36 = load i32, ptr %4, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %5, i32 noundef %36, i1 noundef zeroext true) #11
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i32 [ %35, %34 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_has_action(i32 noundef %0) #1 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %2 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 4
  %6 = load ptr, ptr %5, align 64
  %7 = icmp ne ptr %6, null
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i1 [ false, %1 ], [ %7, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_check_status_bit(i32 noundef %0, i32 noundef %1) #1 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %1
  %9 = icmp ne i32 %8, 0
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i1 [ %9, %5 ], [ false, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_get_desc_lock(i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_put_desc_unlock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_pm_remove_action(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_handler_proc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown_and_deactivate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_nested_primary_handler(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1027, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @setup_irq_thread(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = select i1 %2, ptr @.str.22, ptr @.str.21
  %7 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @irq_thread, ptr noundef %0, i32 noundef -1, ptr noundef nonnull %6, i32 noundef %1, ptr noundef %5) #11
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = ptrtoint ptr %7 to i32
  br label %25

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #11, !srcloc !18
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #11, !srcloc !19
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !9

16:                                               ; preds = %11
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !17

20:                                               ; preds = %16, %11
  %21 = phi i32 [ 2, %11 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #11
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 5
  store ptr %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %24) #11
  br label %25

25:                                               ; preds = %22, %9
  %26 = phi i32 [ %10, %9 ], [ 0, %22 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_activate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_pm_install_action(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_irq_proc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_handler_proc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_forced_secondary_handler(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1033, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_thread(ptr noundef %0) #1 {
  %2 = alloca [1 x %struct.cpumask], align 4
  %3 = alloca [1 x %struct.cpumask], align 4
  %4 = alloca %struct.callback_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !12
  %5 = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @irq_to_desc(i32 noundef %6) #11
  %8 = tail call ptr @llvm.thread.pointer() #11
  tail call void @sched_set_fifo(ptr noundef %8) #11
  %9 = load volatile i32, ptr @force_irqthreads_key, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %16, !prof !9

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 9
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi ptr [ @irq_thread_fn, %16 ], [ @irq_forced_thread_fn, %11 ]
  %19 = getelementptr inbounds %struct.callback_head, ptr %4, i32 0, i32 1
  store ptr @irq_thread_dtor, ptr %19, align 4
  %20 = call i32 @task_work_add(ptr noundef %8, ptr noundef nonnull %4, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %21 = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 9
  %22 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %21) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15
  call void @_raw_spin_lock_irq(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.irq_common_data, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %3, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %30 = load i16, ptr %25, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %32 = call i32 @set_cpus_allowed_ptr(ptr noundef %8, ptr noundef nonnull %3) #11
  br label %33

33:                                               ; preds = %24, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %34 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %35 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 15
  %36 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, i32 3
  %37 = getelementptr inbounds %struct.irqaction, ptr %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 21
  %39 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 22
  br label %40

40:                                               ; preds = %79, %33
  store volatile i32 1, ptr %34, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !28
  %41 = call zeroext i1 @kthread_should_stop() #11
  br i1 %41, label %48, label %42

42:                                               ; preds = %46, %40
  %43 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %21) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store volatile i32 0, ptr %34, align 8
  br label %51

46:                                               ; preds = %42
  call void @schedule() #11
  store volatile i32 1, ptr %34, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !28
  %47 = call zeroext i1 @kthread_should_stop() #11
  br i1 %47, label %48, label %42

48:                                               ; preds = %46, %40
  %49 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %21) #11
  %50 = icmp eq i32 %49, 0
  store volatile i32 0, ptr %34, align 8
  br i1 %50, label %81, label %51

51:                                               ; preds = %48, %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %52 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %21) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  call void @_raw_spin_lock_irq(ptr noundef %35) #11
  %55 = load ptr, ptr %36, align 4
  %56 = getelementptr inbounds %struct.irq_common_data, ptr %55, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %2, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %58 = load i16, ptr %35, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %60 = call i32 @set_cpus_allowed_ptr(ptr noundef %8, ptr noundef nonnull %2) #11
  br label %61

61:                                               ; preds = %54, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %62 = call i32 %18(ptr noundef %7, ptr noundef %0) #11, !callees !29
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load ptr, ptr %37, align 8
  %66 = icmp eq ptr %65, null
  %67 = load i1, ptr @irq_wake_secondary.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71, !prof !9

70:                                               ; preds = %64
  store i1 true, ptr @irq_wake_secondary.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1243, i32 noundef 9, ptr noundef null) #11
  br label %71

71:                                               ; preds = %70, %64
  br i1 %66, label %75, label %72

72:                                               ; preds = %71
  call void @_raw_spin_lock_irq(ptr noundef %35) #11
  call void @__irq_wake_thread(ptr noundef %7, ptr noundef nonnull %65) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %73 = load i16, ptr %35, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  br label %75

75:                                               ; preds = %72, %71, %61
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #11, !srcloc !18
  %76 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #11, !srcloc !31
  %77 = extractvalue { i32, i32 } %76, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %80, %75
  br label %40

80:                                               ; preds = %75
  call void @__wake_up(ptr noundef %39, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %79

81:                                               ; preds = %48
  %82 = call ptr @task_work_cancel(ptr noundef %8, ptr noundef nonnull @irq_thread_dtor) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_forced_thread_fn(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #11
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = add i32 %5, 512
  store volatile i32 %6, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !34
  %7 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %8(i32 noundef %10, ptr noundef %12) #11
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #11, !srcloc !18
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #11, !srcloc !35
  br label %18

18:                                               ; preds = %15, %2
  tail call fastcc void @irq_finalize_oneshot(ptr noundef %0, ptr noundef %1)
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !26
  tail call fastcc void @local_bh_enable()
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_thread_fn(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %4(i32 noundef %6, ptr noundef %8) #11
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #11, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #11, !srcloc !35
  br label %14

14:                                               ; preds = %11, %2
  tail call fastcc void @irq_finalize_oneshot(ptr noundef %0, ptr noundef %1)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_thread_dtor(ptr nocapture noundef readnone %0) #1 {
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @irq_thread_dtor.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %1
  store i1 true, ptr @irq_thread_dtor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1218, i32 noundef 9, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %1
  br i1 %6, label %33, label %12

12:                                               ; preds = %11
  %13 = tail call ptr @kthread_data(ptr noundef %2) #11
  %14 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 85
  %15 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.irqaction, ptr %13, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %14, i32 noundef %16, i32 noundef %18) #12
  %20 = load i32, ptr %17, align 4
  %21 = tail call ptr @irq_to_desc(i32 noundef %20) #11
  %22 = getelementptr inbounds %struct.irqaction, ptr %13, i32 0, i32 9
  %23 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.irq_desc, ptr %21, i32 0, i32 21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #11, !srcloc !18
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #11, !srcloc !31
  %28 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.irq_desc, ptr %21, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %31, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %32

32:                                               ; preds = %30, %25, %12
  tail call fastcc void @irq_finalize_oneshot(ptr noundef %21, ptr noundef %13)
  br label %33

33:                                               ; preds = %32, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_work_cancel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @irq_finalize_oneshot(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %61, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 64
  %9 = icmp eq ptr %8, @irq_forced_secondary_handler
  br i1 %9, label %61, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  br label %15

15:                                               ; preds = %34, %10
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !17

20:                                               ; preds = %15
  tail call void %18(ptr noundef %12) #11
  br label %21

21:                                               ; preds = %20, %15
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #11
  %22 = load ptr, ptr %14, align 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 262144
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26, !prof !17

26:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %27 = load i16, ptr %13, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %29 = load ptr, ptr %11, align 8
  %30 = getelementptr inbounds %struct.irq_chip, ptr %29, i32 0, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !17

33:                                               ; preds = %26
  tail call void %31(ptr noundef %12) #11
  br label %34

34:                                               ; preds = %33, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !37
  br label %15

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 9
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 10
  %42 = load i32, ptr %41, align 8
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 20
  %45 = load i32, ptr %44, align 64
  %46 = and i32 %45, %43
  store i32 %46, ptr %44, align 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, ptr %22, align 4
  %50 = and i32 %49, 196608
  %51 = icmp eq i32 %50, 131072
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @unmask_threaded_irq(ptr noundef %0) #11
  br label %53

53:                                               ; preds = %52, %48, %40, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %54 = load i16, ptr %13, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %56 = load ptr, ptr %11, align 8
  %57 = getelementptr inbounds %struct.irq_chip, ptr %56, i32 0, i32 16
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !17

60:                                               ; preds = %53
  tail call void %58(ptr noundef %12) #11
  br label %61

61:                                               ; preds = %60, %53, %7, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmask_threaded_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151965247}
!11 = !{i64 2151965089}
!12 = !{!"auto-init"}
!13 = !{i64 2148940504}
!14 = !{i64 2148936328}
!15 = !{i64 2148936403, i64 2148936430, i64 2148936477, i64 2148936499, i64 2148936527, i64 2148936547}
!16 = !{i64 2148963507}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 771900, i64 2148261871, i64 2148261897, i64 2148261944, i64 2148261966, i64 2148261994, i64 2148262014}
!19 = !{i64 2148274744, i64 2148274776, i64 2148274805, i64 2148274839, i64 2148274870, i64 2148274893}
!20 = !{i64 2148374966}
!21 = !{i64 2148277101, i64 2148277133, i64 2148277162, i64 2148277196, i64 2148277227, i64 2148277250}
!22 = !{i64 2149362230}
!23 = !{i32 0, i32 33}
!24 = !{i64 2149411650}
!25 = !{i64 2149411867}
!26 = !{i64 677823}
!27 = !{i64 2148964648}
!28 = !{i64 2152003357}
!29 = !{ptr @irq_forced_thread_fn, ptr @irq_thread_fn}
!30 = !{i64 2148373965}
!31 = !{i64 2148276327, i64 2148276359, i64 2148276388, i64 2148276422, i64 2148276453, i64 2148276476}
!32 = !{i64 2148374168}
!33 = !{i64 2148734730}
!34 = !{i64 678013}
!35 = !{i64 2148273286, i64 2148273312, i64 2148273341, i64 2148273375, i64 2148273406, i64 2148273429}
!36 = !{i64 2152011832}
!37 = !{i64 2152011674}
