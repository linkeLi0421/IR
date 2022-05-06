; ModuleID = '/llk/IR/kernel/tracepoint.c_pt.bc'
source_filename = "../kernel/tracepoint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_probe_register_prio_may_exist:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_probe_register_prio_may_exist\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_probe_register_prio_may_exist:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_probe_register_prio:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_probe_register_prio\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_probe_register_prio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_probe_register:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_probe_register\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_probe_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracepoint_probe_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22tracepoint_probe_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_tracepoint_probe_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_tracepoint_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_tracepoint_module_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_tracepoint_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_tracepoint_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_tracepoint_module_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_tracepoint_module_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_for_each_kernel_tracepoint:\09\09\09\09\09"
module asm "\09.asciz \09\22for_each_kernel_tracepoint\22\09\09\09\09\09"
module asm "__kstrtabns_for_each_kernel_tracepoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.srcu_data = type { [2 x i32], [2 x i32], [48 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [56 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], i32, [4 x i32], i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.lockdep_map = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.34, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.34 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.tp_probes = type { %struct.callback_head, [0 x %struct.tracepoint_func] }
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
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.tp_module = type { %struct.list_head, ptr }

@tracepoint_srcu_srcu_data = internal global %struct.srcu_data zeroinitializer, section ".data..percpu", align 64
@tracepoint_srcu = dso_local global %struct.srcu_struct { [1 x %struct.srcu_node] zeroinitializer, [2 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock zeroinitializer, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @tracepoint_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_srcu, i64 176), ptr getelementptr (i8, ptr @tracepoint_srcu, i64 176) }, ptr null }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, %struct.lockdep_map zeroinitializer }, align 4
@__kstrtab_tracepoint_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_srcu to i32), ptr @__kstrtab_tracepoint_srcu, ptr @__kstrtabns_tracepoint_srcu }, section "___ksymtab_gpl+tracepoint_srcu", align 4
@__initcall__kmod_tracepoint__183_140_release_early_probes2 = internal global ptr @release_early_probes, section ".initcall2.init", align 4
@tracepoints_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracepoints_mutex, i64 12), ptr getelementptr (i8, ptr @tracepoints_mutex, i64 12) } }, align 4
@__kstrtab_tracepoint_probe_register_prio_may_exist = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_probe_register_prio_may_exist = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_probe_register_prio_may_exist = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_probe_register_prio_may_exist to i32), ptr @__kstrtab_tracepoint_probe_register_prio_may_exist, ptr @__kstrtabns_tracepoint_probe_register_prio_may_exist }, section "___ksymtab_gpl+tracepoint_probe_register_prio_may_exist", align 4
@__kstrtab_tracepoint_probe_register_prio = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_probe_register_prio = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_probe_register_prio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_probe_register_prio to i32), ptr @__kstrtab_tracepoint_probe_register_prio, ptr @__kstrtabns_tracepoint_probe_register_prio }, section "___ksymtab_gpl+tracepoint_probe_register_prio", align 4
@__kstrtab_tracepoint_probe_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_probe_register = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_probe_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_probe_register to i32), ptr @__kstrtab_tracepoint_probe_register, ptr @__kstrtabns_tracepoint_probe_register }, section "___ksymtab_gpl+tracepoint_probe_register", align 4
@__kstrtab_tracepoint_probe_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracepoint_probe_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_tracepoint_probe_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracepoint_probe_unregister to i32), ptr @__kstrtab_tracepoint_probe_unregister, ptr @__kstrtabns_tracepoint_probe_unregister }, section "___ksymtab_gpl+tracepoint_probe_unregister", align 4
@tracepoint_module_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_module_list_mutex, i64 12), ptr getelementptr (i8, ptr @tracepoint_module_list_mutex, i64 12) } }, align 4
@tracepoint_notify_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_notify_list, i64 16), ptr getelementptr (i8, ptr @tracepoint_notify_list, i64 16) } }, ptr null }, align 4
@tracepoint_module_list = internal global %struct.list_head { ptr @tracepoint_module_list, ptr @tracepoint_module_list }, align 4
@__kstrtab_register_tracepoint_module_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_tracepoint_module_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_tracepoint_module_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_tracepoint_module_notifier to i32), ptr @__kstrtab_register_tracepoint_module_notifier, ptr @__kstrtabns_register_tracepoint_module_notifier }, section "___ksymtab_gpl+register_tracepoint_module_notifier", align 4
@__kstrtab_unregister_tracepoint_module_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_tracepoint_module_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_tracepoint_module_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_tracepoint_module_notifier to i32), ptr @__kstrtab_unregister_tracepoint_module_notifier, ptr @__kstrtabns_unregister_tracepoint_module_notifier }, section "___ksymtab_gpl+unregister_tracepoint_module_notifier", align 4
@__initcall__kmod_tracepoint__200_738_init_tracepoints6 = internal global ptr @init_tracepoints, section ".initcall6.init", align 4
@__start___tracepoints_ptrs = external dso_local constant [0 x ptr], align 4
@__stop___tracepoints_ptrs = external dso_local constant [0 x ptr], align 4
@__kstrtab_for_each_kernel_tracepoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_for_each_kernel_tracepoint = external dso_local constant [0 x i8], align 1
@__ksymtab_for_each_kernel_tracepoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @for_each_kernel_tracepoint to i32), ptr @__kstrtab_for_each_kernel_tracepoint, ptr @__kstrtabns_for_each_kernel_tracepoint }, section "___ksymtab_gpl+for_each_kernel_tracepoint", align 4
@sys_tracepoint_refcount = internal unnamed_addr global i32 0, align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@ok_to_free_tracepoints = internal unnamed_addr global i1 false, align 1
@early_probes = internal unnamed_addr global ptr null, align 4
@tracepoint_add_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"kernel/tracepoint.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tp_transition_snapshot.0 = internal unnamed_addr global i32 0, align 4
@tp_transition_snapshot.1 = internal unnamed_addr global i32 0, align 4
@tp_transition_snapshot.2 = internal unnamed_addr global i1 false, align 4
@tp_transition_snapshot.3 = internal unnamed_addr global i32 0, align 4
@tp_transition_snapshot.4 = internal unnamed_addr global i32 0, align 4
@tp_transition_snapshot.5 = internal unnamed_addr global i1 false, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tracepoint_remove_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tracepoint_module_nb = internal global %struct.notifier_block { ptr @tracepoint_module_notify, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"\014Failed to register tracepoint module enter notifier\0A\00", align 1
@tp_module_going_check_quiescent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_tracepoint__183_140_release_early_probes2, ptr @__initcall__kmod_tracepoint__200_738_init_tracepoints6, ptr @__ksymtab_for_each_kernel_tracepoint, ptr @__ksymtab_register_tracepoint_module_notifier, ptr @__ksymtab_tracepoint_probe_register, ptr @__ksymtab_tracepoint_probe_register_prio, ptr @__ksymtab_tracepoint_probe_register_prio_may_exist, ptr @__ksymtab_tracepoint_probe_unregister, ptr @__ksymtab_tracepoint_srcu, ptr @__ksymtab_unregister_tracepoint_module_notifier], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @release_early_probes() #1 section ".init.text" {
  store i1 true, ptr @ok_to_free_tracepoints, align 1
  %1 = load ptr, ptr @early_probes, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr @early_probes, align 4
  tail call void @call_rcu(ptr noundef nonnull %4, ptr noundef nonnull @rcu_free_old_probes) #11
  %6 = load ptr, ptr @early_probes, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracepoint_probe_register_prio_may_exist(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.tracepoint_func, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  tail call void @mutex_lock(ptr noundef nonnull @tracepoints_mutex) #11
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 2
  store i32 %3, ptr %7, align 4
  %8 = call fastcc i32 @tracepoint_add_func(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %3, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoints_mutex) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tracepoint_add_func(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %6() #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %181, label %15

15:                                               ; preds = %12, %8, %4
  %16 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %1, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #11
  br label %106

21:                                               ; preds = %15
  %22 = icmp eq ptr %17, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %17, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tracepoint_func, ptr %1, i32 0, i32 1
  br label %28

28:                                               ; preds = %42, %26
  %29 = phi ptr [ %24, %26 ], [ %46, %42 ]
  %30 = phi i32 [ 0, %26 ], [ %43, %42 ]
  %31 = phi i32 [ 0, %26 ], [ %44, %42 ]
  %32 = icmp eq ptr %29, @tp_stub_func
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = icmp eq ptr %29, %18
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = getelementptr %struct.tracepoint_func, ptr %17, i32 %31, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %27, align 4
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %106, label %40

40:                                               ; preds = %35, %33
  %41 = add i32 %30, 1
  br label %42

42:                                               ; preds = %40, %28
  %43 = phi i32 [ %30, %28 ], [ %41, %40 ]
  %44 = add i32 %31, 1
  %45 = getelementptr %struct.tracepoint_func, ptr %17, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %28

48:                                               ; preds = %42, %23, %21
  %49 = phi i32 [ 0, %21 ], [ 0, %23 ], [ %43, %42 ]
  %50 = add i32 %49, 2
  %51 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 12) #11
  %52 = extractvalue { i32, i1 } %51, 1
  %53 = extractvalue { i32, i1 } %51, 0
  %54 = tail call i32 @llvm.uadd.sat.i32(i32 %53, i32 8) #11
  %55 = select i1 %52, i32 -1, i32 %54
  %56 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %55, i32 noundef 3264) #12
  %57 = icmp eq ptr %56, null
  %58 = getelementptr inbounds %struct.tp_probes, ptr %56, i32 0, i32 1
  br i1 %57, label %106, label %59

59:                                               ; preds = %48
  br i1 %22, label %60, label %62

60:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %58, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false) #11
  %61 = getelementptr %struct.tp_probes, ptr %56, i32 2, i32 0, i32 1
  store ptr null, ptr %61, align 4
  br label %116

62:                                               ; preds = %59
  %63 = load ptr, ptr %17, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %97, label %65

65:                                               ; preds = %86, %62
  %66 = phi ptr [ %91, %86 ], [ %63, %62 ]
  %67 = phi ptr [ %90, %86 ], [ %17, %62 ]
  %68 = phi i32 [ %88, %86 ], [ -1, %62 ]
  %69 = phi i32 [ %87, %86 ], [ 0, %62 ]
  %70 = phi i32 [ %89, %86 ], [ 0, %62 ]
  %71 = icmp eq ptr %66, @tp_stub_func
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = icmp slt i32 %68, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %72
  %75 = getelementptr %struct.tracepoint_func, ptr %17, i32 %70, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = icmp slt i32 %76, %2
  %78 = zext i1 %77 to i32
  %79 = add i32 %69, %78
  %80 = select i1 %77, i32 %69, i32 %68
  br label %81

81:                                               ; preds = %74, %72
  %82 = phi i32 [ %69, %72 ], [ %79, %74 ]
  %83 = phi i32 [ %68, %72 ], [ %80, %74 ]
  %84 = add i32 %82, 1
  %85 = getelementptr %struct.tracepoint_func, ptr %58, i32 %82
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %85, ptr noundef align 4 dereferenceable(12) %67, i32 12, i1 false) #11
  br label %86

86:                                               ; preds = %81, %65
  %87 = phi i32 [ %69, %65 ], [ %84, %81 ]
  %88 = phi i32 [ %68, %65 ], [ %83, %81 ]
  %89 = add i32 %70, 1
  %90 = getelementptr %struct.tracepoint_func, ptr %17, i32 %89
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %65

93:                                               ; preds = %86
  %94 = icmp slt i32 %88, 0
  %95 = lshr i32 %88, 31
  %96 = add i32 %95, %87
  br i1 %94, label %97, label %100

97:                                               ; preds = %93, %62
  %98 = phi i32 [ %96, %93 ], [ 1, %62 ]
  %99 = phi i32 [ %87, %93 ], [ 0, %62 ]
  br label %100

100:                                              ; preds = %97, %93
  %101 = phi i32 [ %98, %97 ], [ %96, %93 ]
  %102 = phi i32 [ %99, %97 ], [ %88, %93 ]
  %103 = getelementptr %struct.tracepoint_func, ptr %58, i32 %102
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %103, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false) #11
  %104 = getelementptr %struct.tracepoint_func, ptr %58, i32 %101
  store ptr null, ptr %104, align 4
  %105 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %116

106:                                              ; preds = %100, %48, %35, %20
  %107 = phi ptr [ %17, %100 ], [ inttoptr (i32 -12 to ptr), %48 ], [ inttoptr (i32 -22 to ptr), %20 ], [ inttoptr (i32 -17 to ptr), %35 ]
  br i1 %3, label %108, label %114

108:                                              ; preds = %106
  %109 = icmp ne ptr %107, inttoptr (i32 -12 to ptr)
  %110 = load i1, ptr @tracepoint_add_func.__already_done, align 1
  %111 = xor i1 %110, true
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %114, !prof !8

113:                                              ; preds = %108
  store i1 true, ptr @tracepoint_add_func.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 340, i32 noundef 9, ptr noundef null) #11
  br label %114

114:                                              ; preds = %113, %108, %106
  %115 = ptrtoint ptr %107 to i32
  br label %181

116:                                              ; preds = %100, %60
  %117 = getelementptr %struct.tp_probes, ptr %56, i32 2, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = getelementptr %struct.tp_probes, ptr %56, i32 4
  %122 = load ptr, ptr %121, align 32
  %123 = icmp eq ptr %122, null
  br i1 %123, label %158, label %165

124:                                              ; preds = %116
  %125 = load i1, ptr @tp_transition_snapshot.2, align 4
  br i1 %125, label %126, label %132

126:                                              ; preds = %124
  %127 = load i32, ptr @tp_transition_snapshot.0, align 4
  tail call void @cond_synchronize_rcu(i32 noundef %127) #11
  %128 = load i32, ptr @tp_transition_snapshot.1, align 4
  %129 = tail call zeroext i1 @poll_state_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu, i32 noundef %128) #11
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #11
  br label %131

131:                                              ; preds = %130, %126
  store i1 false, ptr @tp_transition_snapshot.2, align 4
  br label %132

132:                                              ; preds = %131, %124
  %133 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 4
  %138 = load ptr, ptr %117, align 4
  %139 = icmp eq ptr %138, null
  %140 = select i1 %139, ptr %58, ptr %137
  %141 = load ptr, ptr %140, align 4
  store volatile ptr %141, ptr %134, align 4
  br label %142

142:                                              ; preds = %136, %132
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  store volatile ptr %58, ptr %16, align 4
  %143 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 1
  %144 = load i8, ptr @static_key_initialized, align 1, !range !10
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %147, !prof !8

146:                                              ; preds = %142
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.static_key_enable, ptr noundef %143) #11
  br label %147

147:                                              ; preds = %146, %142
  %148 = load volatile i32, ptr %143, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = load volatile i32, ptr %143, align 4
  %152 = icmp ne i32 %151, 1
  %153 = load i1, ptr @static_key_enable.__already_done, align 1
  %154 = xor i1 %153, true
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %174, !prof !8

156:                                              ; preds = %150
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 321, i32 noundef 9, ptr noundef null) #11
  br label %174

157:                                              ; preds = %147
  store volatile i32 1, ptr %143, align 4
  br label %174

158:                                              ; preds = %120
  %159 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 2
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 4
  %164 = load ptr, ptr %163, align 4
  store volatile ptr %164, ptr %160, align 4
  br label %165

165:                                              ; preds = %162, %158, %120
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  store volatile ptr %58, ptr %16, align 4
  %166 = getelementptr inbounds %struct.tp_probes, ptr %56, i32 1, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.tracepoint_func, ptr %17, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %167, %169
  br i1 %170, label %174, label %171

171:                                              ; preds = %165
  %172 = tail call i32 @get_state_synchronize_rcu() #11
  store i32 %172, ptr @tp_transition_snapshot.3, align 4
  %173 = tail call i32 @start_poll_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #11
  store i32 %173, ptr @tp_transition_snapshot.4, align 4
  store i1 true, ptr @tp_transition_snapshot.5, align 4
  br label %174

174:                                              ; preds = %171, %165, %157, %156, %150
  br i1 %22, label %181, label %175

175:                                              ; preds = %174
  %176 = getelementptr i8, ptr %17, i32 -8
  %177 = load i1, ptr @ok_to_free_tracepoints, align 1
  br i1 %177, label %180, label %178, !prof !12

178:                                              ; preds = %175
  %179 = load ptr, ptr @early_probes, align 4
  store ptr %179, ptr %176, align 4
  store ptr %176, ptr @early_probes, align 4
  br label %181

180:                                              ; preds = %175
  tail call void @call_rcu(ptr noundef %176, ptr noundef nonnull @rcu_free_old_probes) #11
  br label %181

181:                                              ; preds = %180, %178, %174, %114, %12
  %182 = phi i32 [ %115, %114 ], [ %13, %12 ], [ 0, %174 ], [ 0, %178 ], [ 0, %180 ]
  ret i32 %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracepoint_probe_register_prio(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.tracepoint_func, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  tail call void @mutex_lock(ptr noundef nonnull @tracepoints_mutex) #11
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tracepoint_func, ptr %5, i32 0, i32 2
  store i32 %3, ptr %7, align 4
  %8 = call fastcc i32 @tracepoint_add_func(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %3, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoints_mutex) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracepoint_probe_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.tracepoint_func, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  tail call void @mutex_lock(ptr noundef nonnull @tracepoints_mutex) #11
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tracepoint_func, ptr %4, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tracepoint_func, ptr %4, i32 0, i32 2
  store i32 10, ptr %6, align 4
  %7 = call fastcc i32 @tracepoint_add_func(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 10, i1 noundef zeroext true) #11
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoints_mutex) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracepoint_probe_unregister(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @tracepoints_mutex) #11
  %4 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %91, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %91, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %91, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %1, @tp_stub_func
  br label %14

14:                                               ; preds = %28, %12
  %15 = phi ptr [ %10, %12 ], [ %32, %28 ]
  %16 = phi i32 [ 0, %12 ], [ %29, %28 ]
  %17 = phi i32 [ 0, %12 ], [ %30, %28 ]
  %18 = icmp eq ptr %15, %1
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr %struct.tracepoint_func, ptr %5, i32 %17, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %2
  %23 = or i1 %13, %22
  br i1 %23, label %26, label %28

24:                                               ; preds = %14
  %25 = icmp eq ptr %15, @tp_stub_func
  br i1 %25, label %26, label %28

26:                                               ; preds = %24, %19
  %27 = add i32 %16, 1
  br label %28

28:                                               ; preds = %26, %24, %19
  %29 = phi i32 [ %27, %26 ], [ %16, %24 ], [ %16, %19 ]
  %30 = add i32 %17, 1
  %31 = getelementptr %struct.tracepoint_func, ptr %5, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %14

34:                                               ; preds = %28
  %35 = sub i32 %30, %29
  %36 = icmp eq i32 %30, %29
  br i1 %36, label %91, label %37

37:                                               ; preds = %34
  %38 = add i32 %35, 1
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 12) #11
  %40 = extractvalue { i32, i1 } %39, 1
  %41 = extractvalue { i32, i1 } %39, 0
  %42 = tail call i32 @llvm.uadd.sat.i32(i32 %41, i32 8) #11
  %43 = select i1 %40, i32 -1, i32 %42
  %44 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef 3264) #12
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.tp_probes, ptr %44, i32 0, i32 1
  %47 = select i1 %45, ptr null, ptr %46
  %48 = load ptr, ptr %5, align 4
  %49 = icmp eq ptr %48, null
  br i1 %45, label %51, label %50

50:                                               ; preds = %37
  br i1 %49, label %74, label %52

51:                                               ; preds = %37
  br i1 %49, label %91, label %76

52:                                               ; preds = %68, %50
  %53 = phi ptr [ %72, %68 ], [ %48, %50 ]
  %54 = phi ptr [ %71, %68 ], [ %5, %50 ]
  %55 = phi i32 [ %69, %68 ], [ 0, %50 ]
  %56 = phi i32 [ %70, %68 ], [ 0, %50 ]
  %57 = icmp eq ptr %53, %1
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = getelementptr %struct.tracepoint_func, ptr %5, i32 %56, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %2
  %62 = or i1 %61, %13
  br i1 %62, label %68, label %65

63:                                               ; preds = %52
  %64 = icmp eq ptr %53, @tp_stub_func
  br i1 %64, label %68, label %65

65:                                               ; preds = %63, %58
  %66 = add i32 %55, 1
  %67 = getelementptr %struct.tracepoint_func, ptr %47, i32 %55
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %67, ptr noundef align 4 dereferenceable(12) %54, i32 12, i1 false) #11
  br label %68

68:                                               ; preds = %65, %63, %58
  %69 = phi i32 [ %66, %65 ], [ %55, %63 ], [ %55, %58 ]
  %70 = add i32 %56, 1
  %71 = getelementptr %struct.tracepoint_func, ptr %5, i32 %70
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %52

74:                                               ; preds = %68, %50
  %75 = getelementptr %struct.tracepoint_func, ptr %47, i32 %35
  store ptr null, ptr %75, align 4
  br label %91

76:                                               ; preds = %86, %51
  %77 = phi ptr [ %89, %86 ], [ %48, %51 ]
  %78 = phi ptr [ %88, %86 ], [ %5, %51 ]
  %79 = phi i32 [ %87, %86 ], [ 0, %51 ]
  %80 = icmp eq ptr %77, %1
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = getelementptr %struct.tracepoint_func, ptr %5, i32 %79, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %2
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store volatile ptr @tp_stub_func, ptr %78, align 4
  br label %86

86:                                               ; preds = %85, %81, %76
  %87 = add i32 %79, 1
  %88 = getelementptr %struct.tracepoint_func, ptr %5, i32 %87
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %76

91:                                               ; preds = %86, %74, %51, %34, %9, %7, %3
  %92 = phi ptr [ null, %3 ], [ null, %9 ], [ null, %7 ], [ null, %34 ], [ %47, %74 ], [ %5, %51 ], [ %5, %86 ]
  %93 = phi ptr [ inttoptr (i32 -2 to ptr), %3 ], [ %5, %9 ], [ %5, %7 ], [ %5, %34 ], [ %5, %74 ], [ %5, %51 ], [ %5, %86 ]
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  %95 = load i1, ptr @tracepoint_remove_func.__already_done, align 1
  %96 = xor i1 %95, true
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %99, !prof !8

98:                                               ; preds = %91
  store i1 true, ptr @tracepoint_remove_func.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 404, i32 noundef 9, ptr noundef null) #11
  br label %99

99:                                               ; preds = %98, %91
  br i1 %94, label %100, label %102

100:                                              ; preds = %99
  %101 = ptrtoint ptr %93 to i32
  br label %182

102:                                              ; preds = %99
  %103 = icmp eq ptr %92, %93
  br i1 %103, label %182, label %104

104:                                              ; preds = %102
  %105 = icmp eq ptr %92, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %104
  %107 = getelementptr %struct.tracepoint_func, ptr %92, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11
  store volatile ptr %92, ptr %4, align 4
  %110 = getelementptr inbounds %struct.tracepoint_func, ptr %92, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.tracepoint_func, ptr %93, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %111, %113
  br i1 %109, label %150, label %172

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 6
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 1
  %121 = load volatile i32, ptr %120, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  tail call void %117() #11
  br label %124

124:                                              ; preds = %123, %119, %115
  %125 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 1
  %126 = load i8, ptr @static_key_initialized, align 1, !range !10
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %129, !prof !8

128:                                              ; preds = %124
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.static_key_disable, ptr noundef %125) #11
  br label %129

129:                                              ; preds = %128, %124
  %130 = load volatile i32, ptr %125, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = load volatile i32, ptr %125, align 4
  %134 = icmp ne i32 %133, 0
  %135 = load i1, ptr @static_key_disable.__already_done, align 1
  %136 = xor i1 %135, true
  %137 = select i1 %134, i1 %136, i1 false
  br i1 %137, label %138, label %140, !prof !8

138:                                              ; preds = %132
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 332, i32 noundef 9, ptr noundef null) #11
  br label %140

139:                                              ; preds = %129
  store volatile i32 0, ptr %125, align 4
  br label %140

140:                                              ; preds = %139, %138, %132
  %141 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 4
  %146 = load ptr, ptr %145, align 4
  store volatile ptr %146, ptr %142, align 4
  br label %147

147:                                              ; preds = %144, %140
  store volatile ptr null, ptr %4, align 4
  %148 = tail call i32 @get_state_synchronize_rcu() #11
  store i32 %148, ptr @tp_transition_snapshot.0, align 4
  %149 = tail call i32 @start_poll_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #11
  store i32 %149, ptr @tp_transition_snapshot.1, align 4
  store i1 true, ptr @tp_transition_snapshot.2, align 4
  br label %176

150:                                              ; preds = %106
  br i1 %114, label %154, label %151

151:                                              ; preds = %150
  %152 = tail call i32 @get_state_synchronize_rcu() #11
  store i32 %152, ptr @tp_transition_snapshot.3, align 4
  %153 = tail call i32 @start_poll_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #11
  store i32 %153, ptr @tp_transition_snapshot.4, align 4
  store i1 true, ptr @tp_transition_snapshot.5, align 4
  br label %156

154:                                              ; preds = %150
  %155 = load i1, ptr @tp_transition_snapshot.5, align 4
  br i1 %155, label %156, label %162

156:                                              ; preds = %154, %151
  %157 = load i32, ptr @tp_transition_snapshot.3, align 4
  tail call void @cond_synchronize_rcu(i32 noundef %157) #11
  %158 = load i32, ptr @tp_transition_snapshot.4, align 4
  %159 = tail call zeroext i1 @poll_state_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu, i32 noundef %158) #11
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #11
  br label %161

161:                                              ; preds = %160, %156
  store i1 false, ptr @tp_transition_snapshot.5, align 4
  br label %162

162:                                              ; preds = %161, %154
  %163 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 2
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %176, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.tracepoint, ptr %0, i32 0, i32 4
  %168 = load ptr, ptr %107, align 4
  %169 = icmp eq ptr %168, null
  %170 = select i1 %169, ptr %92, ptr %167
  %171 = load ptr, ptr %170, align 4
  store volatile ptr %171, ptr %164, align 4
  br label %176

172:                                              ; preds = %106
  br i1 %114, label %176, label %173

173:                                              ; preds = %172
  %174 = tail call i32 @get_state_synchronize_rcu() #11
  store i32 %174, ptr @tp_transition_snapshot.3, align 4
  %175 = tail call i32 @start_poll_synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #11
  store i32 %175, ptr @tp_transition_snapshot.4, align 4
  store i1 true, ptr @tp_transition_snapshot.5, align 4
  br label %176

176:                                              ; preds = %173, %172, %166, %162, %147
  %177 = getelementptr i8, ptr %93, i32 -8
  %178 = load i1, ptr @ok_to_free_tracepoints, align 1
  br i1 %178, label %181, label %179, !prof !12

179:                                              ; preds = %176
  %180 = load ptr, ptr @early_probes, align 4
  store ptr %180, ptr %177, align 4
  store ptr %177, ptr @early_probes, align 4
  br label %182

181:                                              ; preds = %176
  tail call void @call_rcu(ptr noundef %177, ptr noundef nonnull @rcu_free_old_probes) #11
  br label %182

182:                                              ; preds = %181, %179, %102, %100
  %183 = phi i32 [ %101, %100 ], [ 0, %102 ], [ 0, %179 ], [ 0, %181 ]
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoints_mutex) #11
  ret i32 %183
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @trace_module_has_bad_taint(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 26
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -13313
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_tracepoint_module_notifier(ptr noundef %0) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @tracepoint_module_list_mutex) #11
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @tracepoint_notify_list, ptr noundef %0) #11
  %3 = icmp ne i32 %2, 0
  %4 = load ptr, ptr @tracepoint_module_list, align 4
  %5 = icmp eq ptr %4, @tracepoint_module_list
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %11, %7 ], [ %4, %1 ]
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 1, ptr noundef %8) #11
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, @tracepoint_module_list
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoint_module_list_mutex) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_tracepoint_module_notifier(ptr noundef %0) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @tracepoint_module_list_mutex) #11
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @tracepoint_notify_list, ptr noundef %0) #11
  %3 = icmp ne i32 %2, 0
  %4 = load ptr, ptr @tracepoint_module_list, align 4
  %5 = icmp eq ptr %4, @tracepoint_module_list
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %11, %7 ], [ %4, %1 ]
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef 2, ptr noundef %8) #11
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, @tracepoint_module_list
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoint_module_list_mutex) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_tracepoints() #1 section ".init.text" {
  %1 = tail call i32 @register_module_notifier(ptr noundef nonnull @tracepoint_module_nb) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @for_each_kernel_tracepoint(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  br i1 icmp ult (ptr @__start___tracepoints_ptrs, ptr @__stop___tracepoints_ptrs), label %3, label %8

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %6, %3 ], [ @__start___tracepoints_ptrs, %2 ]
  %5 = load ptr, ptr %4, align 4
  tail call void %0(ptr noundef %5, ptr noundef %1) #11
  %6 = getelementptr ptr, ptr %4, i32 1
  %7 = icmp ult ptr %6, @__stop___tracepoints_ptrs
  br i1 %7, label %3, label %8

8:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @syscall_regfunc() local_unnamed_addr #2 {
  %1 = load i32, ptr @sys_tracepoint_refcount, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %32

3:                                                ; preds = %0
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #11
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %5 = getelementptr i8, ptr %4, i32 -1116
  %6 = icmp eq ptr %5, @init_task
  br i1 %6, label %25, label %11

7:                                                ; preds = %18, %11
  %8 = load volatile ptr, ptr %12, align 4
  %9 = getelementptr i8, ptr %8, i32 -1116
  %10 = icmp eq ptr %9, @init_task
  br i1 %10, label %25, label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %8, %7 ], [ %4, %3 ]
  %13 = getelementptr i8, ptr %12, i32 500
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 3
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %7, label %18

18:                                               ; preds = %18, %11
  %19 = phi ptr [ %21, %18 ], [ %16, %11 ]
  %20 = getelementptr i8, ptr %19, i32 -1388
  tail call void @_set_bit(i32 noundef 6, ptr noundef %20) #11
  %21 = load volatile ptr, ptr %19, align 4
  %22 = load ptr, ptr %13, align 16
  %23 = getelementptr inbounds %struct.signal_struct, ptr %22, i32 0, i32 3
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %7, label %18

25:                                               ; preds = %7, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #11, !srcloc !14
  %26 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #11, !srcloc !15
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !17
  br label %30

30:                                               ; preds = %29, %25
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %31 = load i32, ptr @sys_tracepoint_refcount, align 4
  br label %32

32:                                               ; preds = %30, %0
  %33 = phi i32 [ %31, %30 ], [ %1, %0 ]
  %34 = add i32 %33, 1
  store i32 %34, ptr @sys_tracepoint_refcount, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @syscall_unregfunc() local_unnamed_addr #2 {
  %1 = load i32, ptr @sys_tracepoint_refcount, align 4
  %2 = add i32 %1, -1
  store i32 %2, ptr @sys_tracepoint_refcount, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %0
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #11
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %6 = getelementptr i8, ptr %5, i32 -1116
  %7 = icmp eq ptr %6, @init_task
  br i1 %7, label %26, label %12

8:                                                ; preds = %19, %12
  %9 = load volatile ptr, ptr %13, align 4
  %10 = getelementptr i8, ptr %9, i32 -1116
  %11 = icmp eq ptr %10, @init_task
  br i1 %11, label %26, label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %9, %8 ], [ %5, %4 ]
  %14 = getelementptr i8, ptr %13, i32 500
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr inbounds %struct.signal_struct, ptr %15, i32 0, i32 3
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %8, label %19

19:                                               ; preds = %19, %12
  %20 = phi ptr [ %22, %19 ], [ %17, %12 ]
  %21 = getelementptr i8, ptr %20, i32 -1388
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %21) #11
  %22 = load volatile ptr, ptr %20, align 4
  %23 = load ptr, ptr %14, align 16
  %24 = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 3
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %8, label %19

26:                                               ; preds = %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #11, !srcloc !14
  %27 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #11, !srcloc !15
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !17
  br label %31

31:                                               ; preds = %30, %26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  br label %32

32:                                               ; preds = %31, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_free_old_probes(ptr noundef %0) #2 {
  tail call void @call_srcu(ptr noundef nonnull @tracepoint_srcu, ptr noundef %0, ptr noundef nonnull @srcu_free_old_probes) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_srcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @srcu_free_old_probes(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tp_stub_func() #5 {
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @cond_synchronize_rcu(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @poll_state_synchronize_srcu(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_state_synchronize_rcu() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @start_poll_synchronize_srcu(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracepoint_module_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #2 {
  switch i32 %1, label %67 [
    i32 1, label %4
    i32 2, label %17
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 39
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %67, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 26
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -13313
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @tracepoint_module_list_mutex) #11
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 12) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %60

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 39
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %67, label %21

21:                                               ; preds = %17
  tail call void @mutex_lock(ptr noundef nonnull @tracepoint_module_list_mutex) #11
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi ptr [ @tracepoint_module_list, %21 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @tracepoint_module_list
  br i1 %25, label %65, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tp_module, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %30, label %22

30:                                               ; preds = %26
  %31 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @tracepoint_notify_list, i32 noundef 2, ptr noundef %24) #11
  %32 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %24, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  tail call void @kfree(ptr noundef %24) #11
  %36 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 40
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %18, align 8
  %39 = getelementptr ptr, ptr %37, i32 %38
  %40 = icmp ne ptr %37, null
  %41 = icmp ult ptr %37, %39
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %30
  %44 = load i1, ptr @tp_module_going_check_quiescent.__already_done, align 1
  br label %45

45:                                               ; preds = %56, %43
  %46 = phi i1 [ %57, %56 ], [ %44, %43 ]
  %47 = phi ptr [ %58, %56 ], [ %37, %43 ]
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tracepoint, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ne ptr %50, null
  %52 = xor i1 %46, true
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %56, !prof !8

54:                                               ; preds = %45
  store i1 true, ptr @tp_module_going_check_quiescent.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 636, i32 noundef 9, ptr noundef null) #11
  %55 = load i1, ptr @tp_module_going_check_quiescent.__already_done, align 1
  br label %56

56:                                               ; preds = %54, %45
  %57 = phi i1 [ %46, %45 ], [ %55, %54 ]
  %58 = getelementptr ptr, ptr %47, i32 1
  %59 = icmp ult ptr %58, %39
  br i1 %59, label %45, label %65

60:                                               ; preds = %13
  %61 = getelementptr inbounds %struct.tp_module, ptr %15, i32 0, i32 1
  store ptr %2, ptr %61, align 8
  %62 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tracepoint_module_list, i32 0, i32 1), align 4
  store ptr %15, ptr getelementptr inbounds (%struct.list_head, ptr @tracepoint_module_list, i32 0, i32 1), align 4
  store ptr @tracepoint_module_list, ptr %15, align 8
  %63 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %15, ptr %62, align 4
  %64 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @tracepoint_notify_list, i32 noundef 1, ptr noundef nonnull %15) #11
  br label %65

65:                                               ; preds = %60, %56, %30, %22, %13
  %66 = phi i32 [ 1, %60 ], [ 32781, %13 ], [ 1, %30 ], [ 1, %56 ], [ 1, %22 ]
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoint_module_list_mutex) #11
  br label %67

67:                                               ; preds = %65, %17, %8, %4, %3
  %68 = phi i32 [ 1, %17 ], [ 1, %8 ], [ 1, %4 ], [ 1, %3 ], [ %66, %65 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{i64 2151546108}
!10 = !{i8 0, i8 2}
!11 = !{i64 2151553342}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2148952951}
!14 = !{i64 560544, i64 2148050515, i64 2148050541, i64 2148050588, i64 2148050610, i64 2148050638, i64 2148050658}
!15 = !{i64 1456375, i64 1456398, i64 1456418, i64 1456442, i64 1456458}
!16 = !{i64 2148940893}
!17 = !{i64 2148940968, i64 2148940995, i64 2148941042, i64 2148941064, i64 2148941092, i64 2148941112}
!18 = !{i64 2148990554}
