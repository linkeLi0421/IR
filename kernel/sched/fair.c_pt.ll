; ModuleID = '/llk/IR/kernel/sched/fair.c_pt.bc'
source_filename = "../kernel/sched/fair.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_cfs_rq_avg:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_cfs_rq_avg\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_cfs_rq_avg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_cfs_rq_path:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_cfs_rq_path\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_cfs_rq_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_cfs_rq_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_cfs_rq_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_cfs_rq_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_rq_avg_rt:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_rq_avg_rt\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_rq_avg_rt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_rq_avg_dl:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_rq_avg_dl\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_rq_avg_dl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_rq_avg_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_rq_avg_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_rq_avg_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_rq_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_rq_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_rq_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_rq_cpu_capacity:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_rq_cpu_capacity\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_rq_cpu_capacity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_rd_span:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_rd_span\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_rd_span:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_trace_rq_nr_running:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_trace_rq_nr_running\22\09\09\09\09\09"
module asm "__kstrtabns_sched_trace_rq_nr_running:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.sched_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.1, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.1 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.2, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.2 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.anon.126 = type { [1 x %struct.cpumask], %struct.atomic_t, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.static_key_false = type { %struct.static_key }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.116 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i32, i16, i16, i32, i64, ptr, i64, ptr, [8 x %struct.hrtimer_clock_base] }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type {}
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i32, ptr }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, ptr, %union.anon.85, ptr, i32, [0 x i32] }
%union.anon.85 = type { %struct.callback_head }
%struct.sched_group = type { ptr, %struct.atomic_t, i32, ptr, i32, i32, [0 x i32] }
%struct.sched_group_capacity = type { %struct.atomic_t, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.sched_domain_shared = type { %struct.atomic_t, %struct.atomic_t, i32 }
%struct.css_set = type { [0 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [0 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.sg_lb_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sd_lb_stats = type { ptr, ptr, i32, i32, i32, i32, %struct.sg_lb_stats, %struct.sg_lb_stats }
%struct.lb_env = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.list_head }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }

@sysctl_sched_latency = dso_local local_unnamed_addr global i32 6000000, align 4
@sysctl_sched_tunable_scaling = dso_local local_unnamed_addr global i32 1, align 4
@sysctl_sched_min_granularity = dso_local local_unnamed_addr global i32 750000, align 4
@sysctl_sched_idle_min_granularity = dso_local local_unnamed_addr global i32 750000, align 4
@sysctl_sched_wakeup_granularity = dso_local local_unnamed_addr global i32 1000000, align 4
@sysctl_sched_migration_cost = dso_local local_unnamed_addr global i32 500000, section ".data..read_mostly", align 4
@__setup_str_setup_sched_thermal_decay_shift = internal constant [27 x i8] c"sched_thermal_decay_shift=\00", section ".init.rodata", align 1
@__setup_setup_sched_thermal_decay_shift = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_sched_thermal_decay_shift, ptr @setup_sched_thermal_decay_shift, i32 0 }, section ".init.setup", align 4
@sched_nr_latency = internal unnamed_addr global i32 8, align 4
@normalized_sysctl_sched_min_granularity = internal unnamed_addr global i32 750000, align 4
@normalized_sysctl_sched_latency = internal unnamed_addr global i32 6000000, align 4
@normalized_sysctl_sched_wakeup_granularity = internal unnamed_addr global i32 1000000, align 4
@fair_sched_class = dso_local constant %struct.sched_class { ptr @enqueue_task_fair, ptr @dequeue_task_fair, ptr @yield_task_fair, ptr @yield_to_task_fair, ptr @check_preempt_wakeup, ptr @__pick_next_task_fair, ptr @put_prev_task_fair, ptr @set_next_task_fair, ptr @balance_fair, ptr @select_task_rq_fair, ptr @pick_task_fair, ptr @migrate_task_rq_fair, ptr null, ptr @set_cpus_allowed_common, ptr @rq_online_fair, ptr @rq_offline_fair, ptr null, ptr @task_tick_fair, ptr @task_fork_fair, ptr @task_dead_fair, ptr @switched_from_fair, ptr @switched_to_fair, ptr @prio_changed_fair, ptr @get_rr_interval_fair, ptr @update_curr_fair }, section "__fair_sched_class", align 4
@sched_prio_to_weight = external dso_local local_unnamed_addr constant [40 x i32], align 4
@sched_prio_to_wmult = external dso_local local_unnamed_addr constant [40 x i32], align 4
@max_load_balance_interval = internal unnamed_addr global i32 10, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@nohz_balance_exit_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [20 x i8] c"kernel/sched/fair.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rq != this_rq()\00", align 1
@nohz = internal global %struct.anon.126 zeroinitializer, align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@nohz_balance_enter_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cpu != smp_processor_id()\00", align 1
@__kstrtab_sched_trace_cfs_rq_avg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_cfs_rq_avg = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_cfs_rq_avg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_cfs_rq_avg to i32), ptr @__kstrtab_sched_trace_cfs_rq_avg, ptr @__kstrtabns_sched_trace_cfs_rq_avg }, section "___ksymtab_gpl+sched_trace_cfs_rq_avg", align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@__kstrtab_sched_trace_cfs_rq_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_cfs_rq_path = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_cfs_rq_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_cfs_rq_path to i32), ptr @__kstrtab_sched_trace_cfs_rq_path, ptr @__kstrtabns_sched_trace_cfs_rq_path }, section "___ksymtab_gpl+sched_trace_cfs_rq_path", align 4
@__kstrtab_sched_trace_cfs_rq_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_cfs_rq_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_cfs_rq_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_cfs_rq_cpu to i32), ptr @__kstrtab_sched_trace_cfs_rq_cpu, ptr @__kstrtabns_sched_trace_cfs_rq_cpu }, section "___ksymtab_gpl+sched_trace_cfs_rq_cpu", align 4
@__kstrtab_sched_trace_rq_avg_rt = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_rq_avg_rt = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_rq_avg_rt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_rq_avg_rt to i32), ptr @__kstrtab_sched_trace_rq_avg_rt, ptr @__kstrtabns_sched_trace_rq_avg_rt }, section "___ksymtab_gpl+sched_trace_rq_avg_rt", align 4
@__kstrtab_sched_trace_rq_avg_dl = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_rq_avg_dl = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_rq_avg_dl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_rq_avg_dl to i32), ptr @__kstrtab_sched_trace_rq_avg_dl, ptr @__kstrtabns_sched_trace_rq_avg_dl }, section "___ksymtab_gpl+sched_trace_rq_avg_dl", align 4
@__kstrtab_sched_trace_rq_avg_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_rq_avg_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_rq_avg_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_rq_avg_irq to i32), ptr @__kstrtab_sched_trace_rq_avg_irq, ptr @__kstrtabns_sched_trace_rq_avg_irq }, section "___ksymtab_gpl+sched_trace_rq_avg_irq", align 4
@__kstrtab_sched_trace_rq_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_rq_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_rq_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_rq_cpu to i32), ptr @__kstrtab_sched_trace_rq_cpu, ptr @__kstrtabns_sched_trace_rq_cpu }, section "___ksymtab_gpl+sched_trace_rq_cpu", align 4
@__kstrtab_sched_trace_rq_cpu_capacity = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_rq_cpu_capacity = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_rq_cpu_capacity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_rq_cpu_capacity to i32), ptr @__kstrtab_sched_trace_rq_cpu_capacity, ptr @__kstrtabns_sched_trace_rq_cpu_capacity }, section "___ksymtab_gpl+sched_trace_rq_cpu_capacity", align 4
@__kstrtab_sched_trace_rd_span = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_rd_span = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_rd_span = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_rd_span to i32), ptr @__kstrtab_sched_trace_rd_span, ptr @__kstrtabns_sched_trace_rd_span }, section "___ksymtab_gpl+sched_trace_rd_span", align 4
@__kstrtab_sched_trace_rq_nr_running = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_trace_rq_nr_running = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_trace_rq_nr_running = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_trace_rq_nr_running to i32), ptr @__kstrtab_sched_trace_rq_nr_running, ptr @__kstrtabns_sched_trace_rq_nr_running }, section "___ksymtab_gpl+sched_trace_rq_nr_running", align 4
@sysctl_sched_child_runs_first = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sched_thermal_decay_shift = dso_local local_unnamed_addr global i32 0, align 4
@load_balance_mask = dso_local global [1 x %struct.cpumask] zeroinitializer, section ".data..percpu", align 4
@select_idle_mask = dso_local global [1 x %struct.cpumask] zeroinitializer, section ".data..percpu", align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"\014Unable to set scheduler thermal pressure decay shift parameter\0A\00", align 1
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@assert_clock_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"kernel/sched/sched.h\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"rq->clock_update_flags < RQCF_ACT_SKIP\00", align 1
@__tracepoint_sched_stat_runtime = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@put_prev_task.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_pelt_cfs_tp = external dso_local global %struct.tracepoint, align 4
@cpufreq_update_util_data = external dso_local global ptr, section ".data..percpu", align 4
@sysctl_sched_features = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@hrtick_start_fair.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"task_rq(p) != rq\00", align 1
@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@__tracepoint_sched_cpu_capacity_tp = external dso_local global %struct.tracepoint, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@sd_llc = external dso_local global ptr, section ".data..percpu", align 4
@__cpu_active_mask = external dso_local global %struct.cpumask, align 4
@housekeeping_overridden = external dso_local global %struct.static_key_false, align 4
@_nohz_idle_balance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"(flags & NOHZ_KICK_MASK) == NOHZ_BALANCE_KICK\00", align 1
@rt_sched_class = external dso_local constant %struct.sched_class, align 4
@dl_sched_class = external dso_local constant %struct.sched_class, align 4
@thermal_pressure = external dso_local global i32, section ".data..percpu", align 4
@rq_pin_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@balance_push_callback = external dso_local global %struct.callback_head, align 4
@.str.10 = private unnamed_addr constant [71 x i8] c"rq->balance_callback && rq->balance_callback != &balance_push_callback\00", align 1
@balancing = internal global %struct.spinlock zeroinitializer, align 4
@sysctl_sched_nr_migrate = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__tracepoint_sched_overutilized_tp = external dso_local global %struct.tracepoint, align 4
@sd_asym_packing = external dso_local global ptr, section ".data..percpu", align 4
@sd_asym_cpucapacity = external dso_local global ptr, section ".data..percpu", align 4
@sd_llc_shared = external dso_local global ptr, section ".data..percpu", align 4
@__tracepoint_sched_util_est_cfs_tp = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_update_nr_running_tp = external dso_local global %struct.tracepoint, align 4
@set_next_buddy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"!se->on_rq\00", align 1
@__tracepoint_sched_util_est_se_tp = external dso_local global %struct.tracepoint, align 4
@sd_llc_size = external dso_local global i32, section ".data..percpu", align 4
@sched_numa_balancing = external dso_local global %struct.static_key_false, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_sched_trace_cfs_rq_avg, ptr @__ksymtab_sched_trace_cfs_rq_cpu, ptr @__ksymtab_sched_trace_cfs_rq_path, ptr @__ksymtab_sched_trace_rd_span, ptr @__ksymtab_sched_trace_rq_avg_dl, ptr @__ksymtab_sched_trace_rq_avg_irq, ptr @__ksymtab_sched_trace_rq_avg_rt, ptr @__ksymtab_sched_trace_rq_cpu, ptr @__ksymtab_sched_trace_rq_cpu_capacity, ptr @__ksymtab_sched_trace_rq_nr_running, ptr @__setup_setup_sched_thermal_decay_shift], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_sched_thermal_decay_shift(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store i32 0, ptr %2, align 4
  %3 = call i32 @kstrtoint(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #22
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, ptr %2, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 10)
  store i32 %10, ptr @sched_thermal_decay_shift, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_asym_cpu_priority(i32 noundef %0) local_unnamed_addr #1 {
  %2 = sub i32 0, %0
  ret i32 %2
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @sched_init_granularity() local_unnamed_addr #2 section ".init.text" {
  tail call fastcc void @update_sysctl()
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @update_sysctl() unnamed_addr #3 {
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 8) #21
  %3 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  switch i32 %3, label %5 [
    i32 0, label %10
    i32 2, label %4
  ]

4:                                                ; preds = %0
  br label %10

5:                                                ; preds = %0
  %6 = icmp eq i32 %2, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #21, !range !9
  %8 = sub nuw nsw i32 32, %7
  %9 = select i1 %6, i32 0, i32 %8
  br label %10

10:                                               ; preds = %5, %4, %0
  %11 = phi i32 [ %9, %5 ], [ %2, %4 ], [ 1, %0 ]
  %12 = load i32, ptr @normalized_sysctl_sched_min_granularity, align 4
  %13 = mul i32 %12, %11
  store i32 %13, ptr @sysctl_sched_min_granularity, align 4
  %14 = load i32, ptr @normalized_sysctl_sched_latency, align 4
  %15 = mul i32 %14, %11
  store i32 %15, ptr @sysctl_sched_latency, align 4
  %16 = load i32, ptr @normalized_sysctl_sched_wakeup_granularity, align 4
  %17 = mul i32 %16, %11
  store i32 %17, ptr @sysctl_sched_wakeup_granularity, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @__pick_first_entity(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 8, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -8
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__pick_last_entity(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 8
  %3 = tail call ptr @rb_last(ptr noundef %2) #21
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -8
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @sched_update_scaling() local_unnamed_addr #3 {
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 8) #21
  %3 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  switch i32 %3, label %5 [
    i32 0, label %10
    i32 2, label %4
  ]

4:                                                ; preds = %0
  br label %10

5:                                                ; preds = %0
  %6 = icmp eq i32 %2, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #21, !range !9
  %8 = sub nuw nsw i32 32, %7
  %9 = select i1 %6, i32 0, i32 %8
  br label %10

10:                                               ; preds = %5, %4, %0
  %11 = phi i32 [ %9, %5 ], [ %2, %4 ], [ 1, %0 ]
  %12 = load i32, ptr @sysctl_sched_latency, align 4
  %13 = load i32, ptr @sysctl_sched_min_granularity, align 4
  %14 = add i32 %12, -1
  %15 = add i32 %14, %13
  %16 = udiv i32 %15, %13
  store i32 %16, ptr @sched_nr_latency, align 4
  %17 = udiv i32 %13, %11
  store i32 %17, ptr @normalized_sysctl_sched_min_granularity, align 4
  %18 = udiv i32 %12, %11
  store i32 %18, ptr @normalized_sysctl_sched_latency, align 4
  %19 = load i32, ptr @sysctl_sched_wakeup_granularity, align 4
  %20 = udiv i32 %19, %11
  store i32 %20, ptr @normalized_sysctl_sched_wakeup_granularity, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @init_entity_runnable_average(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.sched_entity, ptr %0, i32 0, i32 10
  tail call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(64) %2, i8 0, i32 64, i1 false)
  %3 = load i32, ptr %0, align 64
  %4 = getelementptr inbounds %struct.sched_entity, ptr %0, i32 0, i32 10, i32 5
  store i32 %3, ptr %4, align 32
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @post_init_entity_util_avg(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %3 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 0, i32 2
  %4 = load volatile i32, ptr %3, align 8
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @runqueues to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10
  %10 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 40
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @cpu_scale to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 10, i32 15, i32 7
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %16, %18
  %20 = sdiv i32 %19, 2
  %21 = icmp sgt i32 %19, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 7
  %24 = load i32, ptr %23, align 8
  br label %38

25:                                               ; preds = %1
  %26 = icmp eq i32 %18, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %2, align 64
  %29 = mul i32 %28, %18
  %30 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 7
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 10, i32 15, i32 5
  %32 = load i32, ptr %31, align 32
  %33 = add i32 %32, 1
  %34 = udiv i32 %29, %33
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %20)
  store i32 %35, ptr %30, align 8
  br label %38

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 7
  store i32 %20, ptr %37, align 8
  br label %38

38:                                               ; preds = %36, %27, %22
  %39 = phi i32 [ %24, %22 ], [ %35, %27 ], [ %20, %36 ]
  %40 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 6
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, @fair_sched_class
  br i1 %43, label %59, label %44

44:                                               ; preds = %38
  %45 = getelementptr %struct.rq, ptr %8, i32 0, i32 19
  %46 = load i32, ptr %45, align 32
  %47 = icmp ult i32 %46, 2
  %48 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !10

51:                                               ; preds = %44
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %52

52:                                               ; preds = %51, %44
  %53 = getelementptr %struct.rq, ptr %8, i32 0, i32 23
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr %struct.rq, ptr %8, i32 0, i32 24
  %56 = load i32, ptr %55, align 16
  %57 = zext i32 %56 to i64
  %58 = sub i64 %54, %57
  store i64 %58, ptr %9, align 64
  br label %70

59:                                               ; preds = %38
  %60 = load volatile i32, ptr %3, align 8
  %61 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, ptrtoint (ptr @runqueues to i32)
  %64 = inttoptr i32 %63 to ptr
  %65 = getelementptr inbounds %struct.rq, ptr %64, i32 0, i32 10
  %66 = load i32, ptr @sysctl_sched_features, align 4
  %67 = lshr i32 %66, 15
  %68 = and i32 %67, 2
  %69 = xor i32 %68, 2
  tail call fastcc void @update_load_avg(ptr noundef %65, ptr noundef %2, i32 noundef %69) #21
  tail call fastcc void @attach_entity_load_avg(ptr noundef %65, ptr noundef %2) #21
  br label %70

70:                                               ; preds = %59, %52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reweight_task(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %4 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10
  %11 = getelementptr [40 x i32], ptr @sched_prio_to_weight, i32 0, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call fastcc void @update_curr(ptr noundef %10) #21
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, ptr %3, align 64
  %23 = load i32, ptr %10, align 4
  %24 = sub i32 %23, %22
  store i32 %24, ptr %10, align 4
  %25 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 0, i32 1
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 15, i32 5
  %28 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 5
  %29 = load i32, ptr %28, align 32
  %30 = load volatile i32, ptr %27, align 4
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %30, i32 %29) #21
  store volatile i32 %31, ptr %27, align 4
  %32 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 15, i32 1
  %33 = load i32, ptr %3, align 64
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = mul i64 %36, %34
  %38 = load volatile i64, ptr %32, align 8
  %39 = tail call i64 @llvm.usub.sat.i64(i64 %38, i64 %37) #21
  store volatile i64 %39, ptr %32, align 8
  %40 = trunc i64 %39 to i32
  %41 = mul i32 %31, 46718
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 %40) #21
  %43 = zext i32 %42 to i64
  store i64 %43, ptr %32, align 8
  store i32 %12, ptr %3, align 4
  %44 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 0, i32 1
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 46718
  %48 = sext i32 %12 to i64
  %49 = load i64, ptr %35, align 8
  %50 = mul i64 %49, %48
  %51 = icmp ult i64 %50, 4294967296
  br i1 %51, label %52, label %55, !prof !11

52:                                               ; preds = %26
  %53 = trunc i64 %50 to i32
  %54 = udiv i32 %53, %47
  br label %59

55:                                               ; preds = %26
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %47, i64 %50) #23, !srcloc !12
  %57 = extractvalue { i64, i64 } %56, 1
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i32 [ %54, %52 ], [ %58, %55 ]
  store i32 %60, ptr %28, align 32
  %61 = load i32, ptr %27, align 32
  %62 = add i32 %61, %60
  store i32 %62, ptr %27, align 32
  %63 = load i32, ptr %3, align 64
  %64 = sext i32 %63 to i64
  %65 = load i64, ptr %35, align 8
  %66 = mul i64 %65, %64
  %67 = load i64, ptr %32, align 8
  %68 = add i64 %67, %66
  store i64 %68, ptr %32, align 8
  %69 = load i32, ptr %13, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %59
  %72 = load i32, ptr %3, align 64
  %73 = load i32, ptr %10, align 4
  %74 = add i32 %73, %72
  store i32 %74, ptr %10, align 4
  %75 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 0, i32 1
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %71, %59
  %77 = getelementptr [40 x i32], ptr @sched_prio_to_wmult, i32 0, i32 %1
  %78 = load i32, ptr %77, align 4
  store i32 %78, ptr %44, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @init_cfs_bandwidth(ptr nocapture noundef %0) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pick_next_task_fair(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca i32, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 1
  %8 = icmp eq ptr %2, null
  br label %9

9:                                                ; preds = %101, %3
  %10 = load i32, ptr %7, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %97, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %1, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ne ptr %16, %1
  %18 = load i1, ptr @put_prev_task.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !10

21:                                               ; preds = %14
  store i1 true, ptr @put_prev_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2190, i32 noundef 9, ptr noundef null) #21
  br label %22

22:                                               ; preds = %21, %14
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 22
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sched_class, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %27

27:                                               ; preds = %22, %12
  %28 = tail call fastcc ptr @pick_next_entity(ptr noundef %6, ptr noundef null)
  tail call fastcc void @set_next_entity(ptr noundef %6, ptr noundef %28)
  %29 = getelementptr i8, ptr %28, i32 -640
  %30 = getelementptr i8, ptr %28, i32 20
  %31 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 42
  %32 = getelementptr i8, ptr %28, i32 24
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  %36 = load ptr, ptr %31, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %30, ptr %37, align 4
  store ptr %36, ptr %30, align 4
  store ptr %31, ptr %32, align 4
  store volatile ptr %30, ptr %31, align 4
  %38 = load i32, ptr @sysctl_sched_features, align 4
  %39 = and i32 %38, 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_active_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 57, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %54, i32 0, i32 4
  %56 = load i8, ptr %55, align 16
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  tail call fastcc void @hrtick_start_fair(ptr noundef %0, ptr noundef %29)
  br label %60

60:                                               ; preds = %59, %51, %41, %27
  %61 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %131, !prof !10

63:                                               ; preds = %60
  %64 = icmp eq ptr %29, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %63
  %66 = getelementptr i8, ptr %28, i32 452
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %94, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, ptrtoint (ptr @runqueues to i32)
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr inbounds %struct.rq, ptr %75, i32 0, i32 31
  %77 = load i32, ptr %76, align 16
  %78 = getelementptr i8, ptr %28, i32 168
  %79 = load volatile i32, ptr %78, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %80 = getelementptr i8, ptr %28, i32 176
  %81 = load volatile i32, ptr %80, align 16
  store volatile i32 %81, ptr %4, align 8
  %82 = getelementptr i8, ptr %28, i32 180
  %83 = load volatile i32, ptr %82, align 4
  store volatile i32 %83, ptr %5, align 4
  %84 = and i32 %81, 2147483647
  %85 = tail call i32 @llvm.umax.i32(i32 %83, i32 %84) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %86 = tail call i32 @llvm.umax.i32(i32 %79, i32 %85) #21
  %87 = mul i32 %86, 1280
  %88 = shl i32 %77, 10
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %69
  %91 = getelementptr i8, ptr %28, i32 160
  %92 = load i32, ptr %91, align 32
  %93 = tail call i32 @llvm.umax.i32(i32 %92, i32 1) #21
  br label %94

94:                                               ; preds = %90, %69, %65, %63
  %95 = phi i32 [ %93, %90 ], [ 0, %65 ], [ 0, %63 ], [ 0, %69 ]
  %96 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 36
  store i32 %95, ptr %96, align 64
  br label %131

97:                                               ; preds = %9
  br i1 %8, label %131, label %98

98:                                               ; preds = %97
  %99 = tail call fastcc i32 @newidle_balance(ptr noundef %0, ptr noundef nonnull %2)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %131, label %101

101:                                              ; preds = %98
  %102 = icmp eq i32 %99, 0
  br i1 %102, label %103, label %9

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 15, i32 3
  %105 = load i32, ptr %104, align 8
  %106 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 44, i32 3
  %107 = load i32, ptr %106, align 8
  %108 = add i32 %107, %105
  %109 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 45, i32 3
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %108, %110
  %112 = icmp ugt i32 %111, 47791489
  br i1 %112, label %113, label %131

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %115 = load i32, ptr %114, align 32
  %116 = icmp ult i32 %115, 2
  %117 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %118 = xor i1 %117, true
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %121, !prof !10

120:                                              ; preds = %113
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %121

121:                                              ; preds = %120, %113
  %122 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 22
  %123 = load i64, ptr %122, align 64
  %124 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %125 = load i64, ptr %124, align 8
  %126 = sub i64 %123, %125
  %127 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 24
  %128 = load i32, ptr %127, align 16
  %129 = trunc i64 %126 to i32
  %130 = add i32 %128, %129
  store i32 %130, ptr %127, align 16
  br label %131

131:                                              ; preds = %121, %103, %98, %97, %94, %60
  %132 = phi ptr [ %29, %60 ], [ %29, %94 ], [ null, %103 ], [ null, %121 ], [ inttoptr (i32 -1 to ptr), %98 ], [ null, %97 ]
  ret ptr %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pick_next_entity(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 8, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -8
  %7 = select i1 %5, ptr null, ptr %6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 6
  %13 = load i64, ptr %12, align 16
  %14 = getelementptr inbounds %struct.sched_entity, ptr %7, i32 0, i32 6
  %15 = load i64, ptr %14, align 16
  %16 = sub i64 %13, %15
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %2
  br label %19

19:                                               ; preds = %18, %11, %9
  %20 = phi ptr [ %1, %18 ], [ %6, %11 ], [ %6, %9 ]
  %21 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %22, null
  %24 = icmp eq ptr %22, %20
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %96

26:                                               ; preds = %19
  %27 = icmp eq ptr %20, %1
  br i1 %27, label %45, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.sched_entity, ptr %20, i32 0, i32 1
  %30 = tail call ptr @rb_next(ptr noundef %29) #21
  %31 = icmp eq ptr %30, null
  %32 = getelementptr i8, ptr %30, i32 -8
  %33 = icmp eq ptr %32, null
  %34 = or i1 %31, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %28
  %36 = icmp eq ptr %1, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 6
  %39 = load i64, ptr %38, align 16
  %40 = getelementptr i8, ptr %30, i32 40
  %41 = load i64, ptr %40, align 16
  %42 = sub i64 %39, %41
  %43 = icmp slt i64 %42, 0
  %44 = select i1 %43, ptr %1, ptr %32
  br label %48

45:                                               ; preds = %28, %26
  %46 = phi ptr [ %7, %26 ], [ %1, %28 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %96, label %48

48:                                               ; preds = %45, %37, %35
  %49 = phi ptr [ %46, %45 ], [ %32, %35 ], [ %44, %37 ]
  %50 = getelementptr inbounds %struct.sched_entity, ptr %49, i32 0, i32 6
  %51 = load i64, ptr %50, align 16
  %52 = getelementptr inbounds %struct.sched_entity, ptr %20, i32 0, i32 6
  %53 = load i64, ptr %52, align 16
  %54 = sub i64 %51, %53
  %55 = icmp slt i64 %54, 1
  br i1 %55, label %95, label %56

56:                                               ; preds = %48
  %57 = load i32, ptr @sysctl_sched_wakeup_granularity, align 4
  %58 = zext i32 %57 to i64
  %59 = load i32, ptr %20, align 64
  %60 = icmp eq i32 %59, 1024
  br i1 %60, label %92, label %61, !prof !11

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.load_weight, ptr %20, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71, !prof !10

65:                                               ; preds = %61
  %66 = icmp eq i32 %59, 0
  br i1 %66, label %69, label %67, !prof !10

67:                                               ; preds = %65
  %68 = udiv i32 -1, %59
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %68, %67 ], [ -1, %65 ]
  store i32 %70, ptr %62, align 4
  br label %71

71:                                               ; preds = %69, %61
  %72 = phi i32 [ %63, %61 ], [ %70, %69 ]
  %73 = zext i32 %72 to i64
  %74 = shl nuw nsw i64 %73, 10
  %75 = icmp ult i32 %72, 4194304
  %76 = trunc i64 %74 to i32
  br i1 %75, label %84, label %77

77:                                               ; preds = %71
  %78 = lshr i32 %72, 22
  %79 = tail call i32 @llvm.ctlz.i32(i32 %78, i1 true) #21, !range !9
  %80 = sub nuw nsw i32 32, %79
  %81 = zext i32 %80 to i64
  %82 = lshr i64 %74, %81
  %83 = trunc i64 %82 to i32
  br label %84

84:                                               ; preds = %77, %71
  %85 = phi i32 [ %83, %77 ], [ %76, %71 ]
  %86 = phi i32 [ %79, %77 ], [ 32, %71 ]
  %87 = zext i32 %85 to i64
  %88 = mul nuw i64 %87, %58
  %89 = zext i32 %86 to i64
  %90 = lshr i64 %88, %89
  %91 = and i64 %90, 4294967295
  br label %92

92:                                               ; preds = %84, %56
  %93 = phi i64 [ %58, %56 ], [ %91, %84 ]
  %94 = icmp ugt i64 %54, %93
  br i1 %94, label %96, label %95

95:                                               ; preds = %92, %48
  br label %96

96:                                               ; preds = %95, %92, %45, %19
  %97 = phi ptr [ %20, %19 ], [ %20, %45 ], [ %49, %95 ], [ %20, %92 ]
  %98 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 10
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %149, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.sched_entity, ptr %99, i32 0, i32 6
  %103 = load i64, ptr %102, align 16
  %104 = getelementptr inbounds %struct.sched_entity, ptr %20, i32 0, i32 6
  %105 = load i64, ptr %104, align 16
  %106 = sub i64 %103, %105
  %107 = icmp slt i64 %106, 1
  br i1 %107, label %201, label %108

108:                                              ; preds = %101
  %109 = load i32, ptr @sysctl_sched_wakeup_granularity, align 4
  %110 = zext i32 %109 to i64
  %111 = load i32, ptr %20, align 64
  %112 = icmp eq i32 %111, 1024
  br i1 %112, label %144, label %113, !prof !11

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.load_weight, ptr %20, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123, !prof !10

117:                                              ; preds = %113
  %118 = icmp eq i32 %111, 0
  br i1 %118, label %121, label %119, !prof !10

119:                                              ; preds = %117
  %120 = udiv i32 -1, %111
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %120, %119 ], [ -1, %117 ]
  store i32 %122, ptr %114, align 4
  br label %123

123:                                              ; preds = %121, %113
  %124 = phi i32 [ %115, %113 ], [ %122, %121 ]
  %125 = zext i32 %124 to i64
  %126 = shl nuw nsw i64 %125, 10
  %127 = icmp ult i32 %124, 4194304
  %128 = trunc i64 %126 to i32
  br i1 %127, label %136, label %129

129:                                              ; preds = %123
  %130 = lshr i32 %124, 22
  %131 = tail call i32 @llvm.ctlz.i32(i32 %130, i1 true) #21, !range !9
  %132 = sub nuw nsw i32 32, %131
  %133 = zext i32 %132 to i64
  %134 = lshr i64 %126, %133
  %135 = trunc i64 %134 to i32
  br label %136

136:                                              ; preds = %129, %123
  %137 = phi i32 [ %135, %129 ], [ %128, %123 ]
  %138 = phi i32 [ %131, %129 ], [ 32, %123 ]
  %139 = zext i32 %137 to i64
  %140 = mul nuw i64 %139, %110
  %141 = zext i32 %138 to i64
  %142 = lshr i64 %140, %141
  %143 = and i64 %142, 4294967295
  br label %144

144:                                              ; preds = %136, %108
  %145 = phi i64 [ %110, %108 ], [ %143, %136 ]
  %146 = icmp ugt i64 %106, %145
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %98, align 4
  br label %201

149:                                              ; preds = %144, %96
  %150 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 11
  %151 = load ptr, ptr %150, align 64
  %152 = icmp eq ptr %151, null
  br i1 %152, label %201, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.sched_entity, ptr %151, i32 0, i32 6
  %155 = load i64, ptr %154, align 16
  %156 = getelementptr inbounds %struct.sched_entity, ptr %20, i32 0, i32 6
  %157 = load i64, ptr %156, align 16
  %158 = sub i64 %155, %157
  %159 = icmp slt i64 %158, 1
  br i1 %159, label %201, label %160

160:                                              ; preds = %153
  %161 = load i32, ptr @sysctl_sched_wakeup_granularity, align 4
  %162 = zext i32 %161 to i64
  %163 = load i32, ptr %20, align 64
  %164 = icmp eq i32 %163, 1024
  br i1 %164, label %196, label %165, !prof !11

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.load_weight, ptr %20, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %175, !prof !10

169:                                              ; preds = %165
  %170 = icmp eq i32 %163, 0
  br i1 %170, label %173, label %171, !prof !10

171:                                              ; preds = %169
  %172 = udiv i32 -1, %163
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %172, %171 ], [ -1, %169 ]
  store i32 %174, ptr %166, align 4
  br label %175

175:                                              ; preds = %173, %165
  %176 = phi i32 [ %167, %165 ], [ %174, %173 ]
  %177 = zext i32 %176 to i64
  %178 = shl nuw nsw i64 %177, 10
  %179 = icmp ult i32 %176, 4194304
  %180 = trunc i64 %178 to i32
  br i1 %179, label %188, label %181

181:                                              ; preds = %175
  %182 = lshr i32 %176, 22
  %183 = tail call i32 @llvm.ctlz.i32(i32 %182, i1 true) #21, !range !9
  %184 = sub nuw nsw i32 32, %183
  %185 = zext i32 %184 to i64
  %186 = lshr i64 %178, %185
  %187 = trunc i64 %186 to i32
  br label %188

188:                                              ; preds = %181, %175
  %189 = phi i32 [ %187, %181 ], [ %180, %175 ]
  %190 = phi i32 [ %183, %181 ], [ 32, %175 ]
  %191 = zext i32 %189 to i64
  %192 = mul nuw i64 %191, %162
  %193 = zext i32 %190 to i64
  %194 = lshr i64 %192, %193
  %195 = and i64 %194, 4294967295
  br label %196

196:                                              ; preds = %188, %160
  %197 = phi i64 [ %162, %160 ], [ %195, %188 ]
  %198 = icmp ugt i64 %158, %197
  br i1 %198, label %201, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr %150, align 64
  br label %201

201:                                              ; preds = %199, %196, %153, %149, %147, %101
  %202 = phi ptr [ %97, %196 ], [ %97, %149 ], [ %148, %147 ], [ %99, %101 ], [ %200, %199 ], [ %151, %153 ]
  ret ptr %202
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_next_entity(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 64
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %52, label %8

8:                                                ; preds = %6
  %9 = getelementptr i8, ptr %1, i32 -632
  %10 = load volatile i32, ptr %9, align 8
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @runqueues to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.rq, ptr %14, i32 0, i32 10, i32 11
  %16 = load ptr, ptr %15, align 64
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store ptr null, ptr %15, align 64
  br label %19

19:                                               ; preds = %18, %8, %2
  %20 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, %1
  %23 = icmp eq ptr %1, null
  %24 = or i1 %23, %22
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %1, i32 -632
  %27 = load volatile i32, ptr %26, align 8
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, ptrtoint (ptr @runqueues to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 10, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store ptr null, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %25, %19
  %37 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 12
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ne ptr %38, %1
  %40 = or i1 %23, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %1, i32 -632
  %43 = load volatile i32, ptr %42, align 8
  %44 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, ptrtoint (ptr @runqueues to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.rq, ptr %47, i32 0, i32 10, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store ptr null, ptr %48, align 4
  br label %52

52:                                               ; preds = %51, %41, %36, %6
  %53 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 1
  %58 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 8, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %57
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = tail call ptr @rb_next(ptr noundef %57) #21
  store ptr %62, ptr %58, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 8
  tail call void @rb_erase(ptr noundef %57, ptr noundef %64) #21
  tail call fastcc void @update_load_avg(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  br label %65

65:                                               ; preds = %63, %52
  %66 = getelementptr i8, ptr %0, i32 1312
  %67 = load i32, ptr %66, align 32
  %68 = icmp ult i32 %67, 2
  %69 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %70 = xor i1 %69, true
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %73, !prof !10

72:                                               ; preds = %65
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %73

73:                                               ; preds = %72, %65
  %74 = getelementptr i8, ptr %0, i32 1344
  %75 = load i64, ptr %74, align 64
  %76 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 4
  store i64 %75, ptr %76, align 32
  %77 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 9
  store ptr %1, ptr %77, align 8
  %78 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 5
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 7
  store i64 %79, ptr %80, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hrtick_start_fair(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %4 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10
  %11 = load volatile i32, ptr %4, align 8
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = icmp ne ptr %15, %0
  %17 = load i1, ptr @hrtick_start_fair.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !10

20:                                               ; preds = %2
  store i1 true, ptr @hrtick_start_fair.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5503, i32 noundef 9, ptr noundef nonnull @.str.8) #21
  br label %21

21:                                               ; preds = %20, %2
  %22 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = tail call fastcc i64 @sched_slice(ptr noundef %10, ptr noundef %3)
  %27 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 5
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 7
  %30 = load i64, ptr %29, align 8
  %31 = sub i64 %30, %28
  %32 = add i64 %31, %26
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  tail call void @resched_curr(ptr noundef %0) #21
  br label %40

39:                                               ; preds = %25
  tail call void @hrtick_start(ptr noundef %0, i64 noundef %32) #21
  br label %40

40:                                               ; preds = %39, %38, %34, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @newidle_balance(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %4, 100
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %7 = load i32, ptr %6, align 4
  %8 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %12, !prof !10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 36
  store i32 0, ptr %11, align 64
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %210

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %18 = load i32, ptr %17, align 32
  %19 = icmp ult i32 %18, 2
  %20 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !10

23:                                               ; preds = %16
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %24

24:                                               ; preds = %23, %16
  %25 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 20
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 47
  store i64 %26, ptr %27, align 64
  %28 = lshr i32 %7, 5
  %29 = getelementptr i32, ptr @__cpu_active_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %7, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %210, label %35

35:                                               ; preds = %24
  %36 = load i32, ptr %17, align 32
  %37 = icmp ugt i32 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.rq_flags, ptr %1, i32 0, i32 2
  store i32 4, ptr %39, align 4
  br label %40

40:                                               ; preds = %38, %35
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %41 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 30
  %42 = load volatile ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.root_domain, ptr %44, i32 0, i32 5
  %46 = load volatile i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  %48 = icmp eq ptr %42, null
  br i1 %47, label %56, label %49

49:                                               ; preds = %40
  br i1 %48, label %72, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 48
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds %struct.sched_domain, ptr %42, i32 0, i32 14
  %54 = load i64, ptr %53, align 8
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %57, label %72

56:                                               ; preds = %40
  br i1 %48, label %70, label %57

57:                                               ; preds = %56, %50
  %58 = getelementptr inbounds %struct.sched_domain, ptr %42, i32 0, i32 12
  %59 = load i32, ptr %58, align 8
  %60 = tail call i32 @__msecs_to_jiffies(i32 noundef %59) #21
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 1) #21
  %62 = load i32, ptr @max_load_balance_interval, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %61, i32 %62) #21
  %64 = getelementptr inbounds %struct.sched_domain, ptr %42, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  %67 = sub i32 %66, %5
  %68 = icmp slt i32 %67, 0
  %69 = select i1 %68, i32 %66, i32 %5
  br label %70

70:                                               ; preds = %57, %56
  %71 = phi i32 [ %5, %56 ], [ %69, %57 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  br label %167

72:                                               ; preds = %50, %49
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #21
  %73 = tail call i64 @sched_clock_cpu(i32 noundef %7) #21
  tail call fastcc void @update_blocked_averages(i32 noundef %7)
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %74 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, ptrtoint (ptr @runqueues to i32)
  %77 = inttoptr i32 %76 to ptr
  %78 = getelementptr inbounds %struct.rq, ptr %77, i32 0, i32 30
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %148, label %81

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 48
  %83 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  br label %84

84:                                               ; preds = %145, %81
  %85 = phi i64 [ %73, %81 ], [ %135, %145 ]
  %86 = phi i64 [ 0, %81 ], [ %136, %145 ]
  %87 = phi ptr [ %79, %81 ], [ %146, %145 ]
  %88 = phi i32 [ %5, %81 ], [ %100, %145 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %89 = getelementptr inbounds %struct.sched_domain, ptr %87, i32 0, i32 12
  %90 = load i32, ptr %89, align 8
  %91 = tail call i32 @__msecs_to_jiffies(i32 noundef %90) #21
  %92 = tail call i32 @llvm.umax.i32(i32 %91, i32 1) #21
  %93 = load i32, ptr @max_load_balance_interval, align 4
  %94 = tail call i32 @llvm.umin.i32(i32 %92, i32 %93) #21
  %95 = getelementptr inbounds %struct.sched_domain, ptr %87, i32 0, i32 11
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %94
  %98 = sub i32 %97, %88
  %99 = icmp slt i32 %98, 0
  %100 = select i1 %99, i32 %97, i32 %88
  %101 = load i64, ptr %82, align 8
  %102 = getelementptr inbounds %struct.sched_domain, ptr %87, i32 0, i32 14
  %103 = load i64, ptr %102, align 8
  %104 = add i64 %103, %86
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %142, label %106

106:                                              ; preds = %84
  %107 = getelementptr inbounds %struct.sched_domain, ptr %87, i32 0, i32 9
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %134, label %111

111:                                              ; preds = %106
  %112 = call fastcc i32 @load_balance(i32 noundef %7, ptr noundef %0, ptr noundef nonnull %87, i32 noundef 2, ptr noundef nonnull %3)
  %113 = tail call i64 @sched_clock_cpu(i32 noundef %7) #21
  %114 = sub i64 %113, %85
  %115 = load i64, ptr %102, align 8
  %116 = icmp ult i64 %115, %114
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  store i64 %114, ptr %102, align 8
  %118 = load volatile i32, ptr @jiffies, align 64
  %119 = getelementptr inbounds %struct.sched_domain, ptr %87, i32 0, i32 15
  store i32 %118, ptr %119, align 8
  br label %131

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.sched_domain, ptr %87, i32 0, i32 15
  %122 = load i32, ptr %121, align 8
  %123 = add i32 %122, 100
  %124 = load volatile i32, ptr @jiffies, align 64
  %125 = sub i32 %123, %124
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = mul i64 %115, 253
  %129 = lshr i64 %128, 8
  store i64 %129, ptr %102, align 8
  %130 = load volatile i32, ptr @jiffies, align 64
  store i32 %130, ptr %121, align 8
  br label %131

131:                                              ; preds = %127, %120, %117
  %132 = add i64 %114, %86
  %133 = icmp eq i32 %112, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %131, %106
  %135 = phi i64 [ %113, %131 ], [ %85, %106 ]
  %136 = phi i64 [ %132, %131 ], [ %86, %106 ]
  %137 = load i32, ptr %83, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, ptr %13, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139, %134, %131, %84
  %143 = phi i32 [ 0, %139 ], [ %112, %131 ], [ 0, %134 ], [ 0, %84 ]
  %144 = phi i64 [ %136, %139 ], [ %132, %131 ], [ %136, %134 ], [ %86, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %148

145:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  %146 = load ptr, ptr %87, align 8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %84

148:                                              ; preds = %145, %142, %72
  %149 = phi i32 [ %100, %142 ], [ %5, %72 ], [ %100, %145 ]
  %150 = phi i32 [ %143, %142 ], [ 0, %72 ], [ 0, %145 ]
  %151 = phi i64 [ %144, %142 ], [ 0, %72 ], [ %136, %145 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  tail call void @raw_spin_rq_lock_nested(ptr noundef %0, i32 noundef 0) #21
  %152 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 51
  %153 = load i64, ptr %152, align 32
  %154 = icmp ugt i64 %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  store i64 %151, ptr %152, align 32
  br label %156

156:                                              ; preds = %155, %148
  %157 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 2
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  %160 = icmp ne i32 %150, 0
  %161 = select i1 %159, i1 true, i1 %160
  %162 = select i1 %161, i32 %150, i32 1
  %163 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, %158
  %166 = select i1 %165, i32 %162, i32 -1
  br label %167

167:                                              ; preds = %156, %70
  %168 = phi i32 [ %71, %70 ], [ %149, %156 ]
  %169 = phi i32 [ 0, %70 ], [ %166, %156 ]
  %170 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 17
  %171 = load i32, ptr %170, align 8
  %172 = sub i32 %168, %171
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store i32 %168, ptr %170, align 8
  br label %175

175:                                              ; preds = %174, %167
  %176 = icmp eq i32 %169, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %175
  store i64 0, ptr %27, align 64
  br label %205

178:                                              ; preds = %175
  %179 = load i32, ptr %6, align 4
  %180 = load volatile i32, ptr @housekeeping_overridden, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %184, !prof !10

182:                                              ; preds = %178
  %183 = tail call zeroext i1 @housekeeping_test_cpu(i32 noundef %179, i32 noundef 8) #21
  br i1 %183, label %184, label %205

184:                                              ; preds = %182, %178
  %185 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 48
  %186 = load i64, ptr %185, align 8
  %187 = load i32, ptr @sysctl_sched_migration_cost, align 4
  %188 = zext i32 %187 to i64
  %189 = icmp ult i64 %186, %188
  br i1 %189, label %205, label %190

190:                                              ; preds = %184
  %191 = load volatile i32, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 2), align 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %205, label %193

193:                                              ; preds = %190
  %194 = load volatile i32, ptr @jiffies, align 64
  %195 = load volatile i32, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 5), align 4
  %196 = sub i32 %194, %195
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %193
  %199 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %179
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, ptrtoint (ptr @runqueues to i32)
  %202 = inttoptr i32 %201 to ptr
  %203 = getelementptr inbounds %struct.rq, ptr %202, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %203) #21, !srcloc !15
  %204 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %203, ptr %203, i32 4, ptr elementtype(i32) %203) #21, !srcloc !16
  br label %205

205:                                              ; preds = %198, %193, %190, %184, %182, %177
  %206 = getelementptr inbounds %struct.rq_flags, ptr %1, i32 0, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = load i32, ptr %17, align 32
  %209 = or i32 %208, %207
  store i32 %209, ptr %17, align 32
  br label %210

210:                                              ; preds = %205, %24, %12
  %211 = phi i32 [ %169, %205 ], [ 0, %12 ], [ 0, %24 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_group_capacity(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sched_domain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sched_domain, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sched_domain, ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #21
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 1)
  %11 = load i32, ptr @max_load_balance_interval, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %10, i32 %11)
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = add i32 %13, %12
  %15 = getelementptr inbounds %struct.sched_group, ptr %6, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sched_group_capacity, ptr %16, i32 0, i32 4
  store i32 %14, ptr %17, align 4
  %18 = icmp eq ptr %4, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %2
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, ptrtoint (ptr @cpu_scale to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %21, ptrtoint (ptr @runqueues to i32)
  %27 = inttoptr i32 %26 to ptr
  br i1 %25, label %40, label %28, !prof !10

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.rq, ptr %27, i32 0, i32 44, i32 7
  %30 = load volatile i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.rq, ptr %27, i32 0, i32 45, i32 7
  %32 = load volatile i32, ptr %31, align 8
  %33 = add i32 %32, %30
  %34 = getelementptr inbounds %struct.rq, ptr %27, i32 0, i32 46, i32 5
  %35 = load volatile i32, ptr %34, align 32
  %36 = add i32 %33, %35
  %37 = icmp ugt i32 %24, %36
  %38 = sub i32 %24, %36
  %39 = select i1 %37, i32 %38, i32 1
  br label %40

40:                                               ; preds = %28, %19
  %41 = phi i32 [ 1, %19 ], [ %39, %28 ]
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct.rq, ptr %27, i32 0, i32 32
  store i32 %24, ptr %43, align 4
  %44 = load i32, ptr %20, align 4
  %45 = add i32 %44, ptrtoint (ptr @runqueues to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 31
  store i32 %41, ptr %47, align 16
  %48 = load i32, ptr %20, align 4
  %49 = add i32 %48, ptrtoint (ptr @runqueues to i32)
  %50 = inttoptr i32 %49 to ptr
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_cpu_capacity_tp, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %40
  %54 = tail call ptr @llvm.thread.pointer() #21
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  %65 = tail call i32 @__traceiter_sched_cpu_capacity_tp(ptr noundef null, ptr noundef %50) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !18
  br label %66

66:                                               ; preds = %64, %53, %40
  %67 = getelementptr inbounds %struct.sched_group, ptr %42, i32 0, i32 3
  br label %115

68:                                               ; preds = %2
  %69 = getelementptr inbounds %struct.sched_domain, ptr %4, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 4096
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.sched_group, ptr %6, i32 0, i32 6
  %75 = load i32, ptr @nr_cpu_ids, align 4
  %76 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %74) #24
  %77 = icmp ult i32 %76, %75
  br i1 %77, label %78, label %115

78:                                               ; preds = %78, %73
  %79 = phi i32 [ %92, %78 ], [ %76, %73 ]
  %80 = phi i32 [ %89, %78 ], [ 0, %73 ]
  %81 = phi i32 [ %90, %78 ], [ -1, %73 ]
  %82 = phi i32 [ %91, %78 ], [ 0, %73 ]
  %83 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, ptrtoint (ptr @runqueues to i32)
  %86 = inttoptr i32 %85 to ptr
  %87 = getelementptr inbounds %struct.rq, ptr %86, i32 0, i32 31
  %88 = load i32, ptr %87, align 16
  %89 = add i32 %88, %80
  %90 = tail call i32 @llvm.umin.i32(i32 %88, i32 %81)
  %91 = tail call i32 @llvm.umax.i32(i32 %88, i32 %82)
  %92 = tail call i32 @cpumask_next(i32 noundef %79, ptr noundef %74) #24
  %93 = icmp ult i32 %92, %75
  br i1 %93, label %78, label %115

94:                                               ; preds = %68
  %95 = getelementptr inbounds %struct.sched_domain, ptr %4, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  br label %97

97:                                               ; preds = %97, %94
  %98 = phi i32 [ 0, %94 ], [ %112, %97 ]
  %99 = phi i32 [ -1, %94 ], [ %109, %97 ]
  %100 = phi i32 [ 0, %94 ], [ %106, %97 ]
  %101 = phi ptr [ %96, %94 ], [ %113, %97 ]
  %102 = getelementptr inbounds %struct.sched_group, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.sched_group_capacity, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, %100
  %107 = getelementptr inbounds %struct.sched_group_capacity, ptr %103, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 %99)
  %110 = getelementptr inbounds %struct.sched_group_capacity, ptr %103, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = tail call i32 @llvm.umax.i32(i32 %111, i32 %98)
  %113 = load ptr, ptr %101, align 4
  %114 = icmp eq ptr %113, %96
  br i1 %114, label %115, label %97

115:                                              ; preds = %97, %78, %73, %66
  %116 = phi ptr [ %67, %66 ], [ %15, %73 ], [ %15, %97 ], [ %15, %78 ]
  %117 = phi i32 [ %41, %66 ], [ 0, %73 ], [ %106, %97 ], [ %89, %78 ]
  %118 = phi i32 [ %41, %66 ], [ -1, %73 ], [ %109, %97 ], [ %90, %78 ]
  %119 = phi i32 [ %41, %66 ], [ 0, %73 ], [ %112, %97 ], [ %91, %78 ]
  %120 = load ptr, ptr %116, align 4
  %121 = getelementptr inbounds %struct.sched_group_capacity, ptr %120, i32 0, i32 1
  store i32 %117, ptr %121, align 4
  %122 = load ptr, ptr %116, align 4
  %123 = getelementptr inbounds %struct.sched_group_capacity, ptr %122, i32 0, i32 2
  store i32 %118, ptr %123, align 4
  %124 = load ptr, ptr %116, align 4
  %125 = getelementptr inbounds %struct.sched_group_capacity, ptr %124, i32 0, i32 3
  store i32 %119, ptr %125, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @update_max_interval() local_unnamed_addr #11 {
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  %2 = mul i32 %1, 100
  %3 = udiv i32 %2, 10
  store i32 %3, ptr @max_load_balance_interval, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nohz_balance_exit_idle(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #19, !srcloc !19
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp ne ptr %6, %0
  %8 = load i1, ptr @nohz_balance_exit_idle.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %1
  store i1 true, ptr @nohz_balance_exit_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 10549, i32 noundef 9, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16, !prof !11

16:                                               ; preds = %12
  store i32 0, ptr %13, align 32
  %17 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %18 = load i32, ptr %17, align 4
  tail call void @_clear_bit(i32 noundef %18, ptr noundef nonnull @nohz) #21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1)) #21, !srcloc !15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1), ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1)) #21, !srcloc !20
  %20 = load i32, ptr %17, align 4
  tail call fastcc void @set_cpu_sd_state_busy(i32 noundef %20)
  br label %21

21:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_cpu_sd_state_busy(i32 noundef %0) unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @sd_llc to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sched_domain, ptr %6, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  store i32 0, ptr %9, align 8
  %13 = getelementptr inbounds %struct.sched_domain, ptr %6, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sched_domain_shared, ptr %14, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #21, !srcloc !15
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #21, !srcloc !21
  br label %17

17:                                               ; preds = %12, %8, %1
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nohz_balance_enter_idle(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp ne i32 %8, %0
  %10 = load i1, ptr @nohz_balance_enter_idle.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !10

13:                                               ; preds = %1
  store i1 true, ptr @nohz_balance_enter_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 10585, i32 noundef 9, ptr noundef nonnull @.str.2) #21
  br label %14

14:                                               ; preds = %13, %1
  %15 = lshr i32 %0, 5
  %16 = getelementptr i32, ptr @__cpu_active_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %0, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %14
  %23 = load volatile i32, ptr @housekeeping_overridden, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27, !prof !10

25:                                               ; preds = %22
  %26 = tail call zeroext i1 @housekeeping_test_cpu(i32 noundef %0, i32 noundef 8) #21
  br i1 %26, label %27, label %54

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 3
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 5
  %30 = load i32, ptr %29, align 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 30
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %32
  store i32 1, ptr %29, align 32
  tail call void @_set_bit(i32 noundef %0, ptr noundef nonnull @nohz) #21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1)) #21, !srcloc !15
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1), ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1)) #21, !srcloc !21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %38 = load i32, ptr %2, align 4
  %39 = add i32 %38, ptrtoint (ptr @sd_llc to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.sched_domain, ptr %41, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  store i32 1, ptr %44, align 8
  %48 = getelementptr inbounds %struct.sched_domain, ptr %41, i32 0, i32 19
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.sched_domain_shared, ptr %49, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #21, !srcloc !15
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #21, !srcloc !20
  br label %52

52:                                               ; preds = %47, %43, %36
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  store volatile i32 1, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 3), align 4
  br label %53

53:                                               ; preds = %52, %27
  store volatile i32 1, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 2), align 8
  br label %54

54:                                               ; preds = %53, %32, %25, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nohz_run_idle_balance(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #21, !srcloc !15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 4, ptr elementtype(i32) %6) #21, !srcloc !24
  %8 = extractvalue { i32, i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !25
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #21
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, ptr %2, align 4
  %17 = add i32 %16, ptrtoint (ptr @runqueues to i32)
  %18 = inttoptr i32 %17 to ptr
  tail call fastcc void @_nohz_idle_balance(ptr noundef %18, i32 noundef 2)
  br label %19

19:                                               ; preds = %15, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_nohz_idle_balance(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, 6000
  %5 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %1, 11
  %8 = icmp eq i32 %7, 1
  %9 = load i1, ptr @_nohz_idle_balance.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %2
  store i1 true, ptr @_nohz_idle_balance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 10673, i32 noundef 9, ptr noundef nonnull @.str.9) #21
  br label %13

13:                                               ; preds = %12, %2
  %14 = and i32 %1, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store volatile i32 0, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 2), align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = and i32 %1, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store volatile i32 0, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 3), align 4
  br label %21

21:                                               ; preds = %20, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !26
  %22 = add i32 %6, 1
  %23 = tail call i32 @cpumask_next_wrap(i32 noundef %6, ptr noundef nonnull @nohz, i32 noundef %22, i1 noundef zeroext false) #21
  %24 = icmp ult i32 %23, 16
  br i1 %24, label %25, label %114

25:                                               ; preds = %21
  %26 = and i32 %1, 1
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %104, %25
  %29 = phi i32 [ %4, %25 ], [ %107, %104 ]
  %30 = phi i1 [ false, %25 ], [ %106, %104 ]
  %31 = phi i32 [ 0, %25 ], [ %105, %104 ]
  %32 = phi i32 [ %23, %25 ], [ %108, %104 ]
  %33 = tail call i32 @idle_cpu(i32 noundef %32) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %104, label %35

35:                                               ; preds = %28
  %36 = tail call ptr @llvm.thread.pointer() #21
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = xor i1 %15, true
  %42 = select i1 %41, i1 true, i1 %30
  br i1 %19, label %119, label %43

43:                                               ; preds = %40
  store volatile i32 1, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 3), align 4
  br i1 %42, label %121, label %122

44:                                               ; preds = %35
  %45 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, ptrtoint (ptr @runqueues to i32)
  %48 = inttoptr i32 %47 to ptr
  br i1 %15, label %75, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 40
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %49
  %56 = lshr i32 %51, 5
  %57 = getelementptr i32, ptr @nohz, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %51, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 2
  %65 = load volatile i32, ptr %64, align 8
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = sub i32 %65, %66
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  tail call fastcc void @update_blocked_averages(i32 noundef %51) #21
  %70 = load i32, ptr %52, align 4
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %69, %63, %55, %49
  %73 = phi i1 [ %71, %69 ], [ false, %49 ], [ false, %55 ], [ true, %63 ]
  %74 = or i1 %30, %73
  br label %75

75:                                               ; preds = %72, %44
  %76 = phi i1 [ %74, %72 ], [ %30, %44 ]
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 17
  %79 = load i32, ptr %78, align 8
  %80 = sub i32 %77, %79
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !27
  tail call void @raw_spin_rq_lock_nested(ptr noundef %48, i32 noundef 0) #21
  %84 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 19
  %85 = load i32, ptr %84, align 32
  %86 = and i32 %85, 3
  store i32 %86, ptr %84, align 32
  %87 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 33
  %88 = load ptr, ptr %87, align 8
  %89 = icmp ne ptr %88, null
  %90 = icmp ne ptr %88, @balance_push_callback
  %91 = and i1 %89, %90
  %92 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %93 = xor i1 %92, true
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %96, !prof !10

95:                                               ; preds = %82
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.10) #21
  br label %96

96:                                               ; preds = %95, %82
  tail call void @update_rq_clock(ptr noundef %48) #21
  tail call void @raw_spin_rq_unlock(ptr noundef %48) #21
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %83) #21, !srcloc !28
  br i1 %27, label %98, label %97

97:                                               ; preds = %96
  tail call fastcc void @rebalance_domains(ptr noundef %48, i32 noundef 0)
  br label %98

98:                                               ; preds = %97, %96, %75
  %99 = load i32, ptr %78, align 8
  %100 = sub i32 %99, %29
  %101 = icmp slt i32 %100, 0
  %102 = select i1 %101, i32 1, i32 %31
  %103 = select i1 %101, i32 %99, i32 %29
  br label %104

104:                                              ; preds = %98, %28
  %105 = phi i32 [ %31, %28 ], [ %102, %98 ]
  %106 = phi i1 [ %30, %28 ], [ %76, %98 ]
  %107 = phi i32 [ %29, %28 ], [ %103, %98 ]
  %108 = tail call i32 @cpumask_next_wrap(i32 noundef %32, ptr noundef nonnull @nohz, i32 noundef %22, i1 noundef zeroext true) #21
  %109 = icmp ult i32 %108, 16
  br i1 %109, label %28, label %110

110:                                              ; preds = %104
  %111 = icmp eq i32 %105, 0
  br i1 %111, label %113, label %112, !prof !10

112:                                              ; preds = %110
  store i32 %107, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 4), align 16
  br label %113

113:                                              ; preds = %112, %110
  br i1 %15, label %119, label %117

114:                                              ; preds = %21
  br i1 %15, label %122, label %115

115:                                              ; preds = %114
  %116 = add i32 %3, 4
  store volatile i32 %116, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 5), align 4
  br label %122

117:                                              ; preds = %113
  %118 = add i32 %3, 4
  store volatile i32 %118, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 5), align 4
  br i1 %106, label %121, label %122

119:                                              ; preds = %113, %40
  %120 = phi i1 [ %42, %40 ], [ %106, %113 ]
  br i1 %120, label %121, label %122

121:                                              ; preds = %119, %117, %43
  store volatile i32 1, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 2), align 8
  br label %122

122:                                              ; preds = %121, %119, %117, %115, %114, %43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trigger_load_balance(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 30
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %212, label %5, !prof !10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_active_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %212, label %15, !prof !10

15:                                               ; preds = %5
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 17
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %16, %18
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  tail call void @raise_softirq(i32 noundef 7) #21
  %22 = load i32, ptr %6, align 4
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi i32 [ %22, %21 ], [ %7, %15 ]
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 35
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %212, !prof !11

29:                                               ; preds = %23
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #19, !srcloc !19
  %33 = add i32 %32, ptrtoint (ptr @runqueues to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = icmp ne ptr %34, %0
  %36 = load i1, ptr @nohz_balance_exit_idle.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !10

39:                                               ; preds = %29
  store i1 true, ptr @nohz_balance_exit_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 10549, i32 noundef 9, ptr noundef nonnull @.str.1) #21
  br label %40

40:                                               ; preds = %39, %29
  %41 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %64, label %44, !prof !11

44:                                               ; preds = %40
  store i32 0, ptr %41, align 32
  %45 = load i32, ptr %6, align 4
  tail call void @_clear_bit(i32 noundef %45, ptr noundef nonnull @nohz) #21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1)) #21, !srcloc !15
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1), ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1)) #21, !srcloc !20
  %47 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %48 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, ptrtoint (ptr @sd_llc to i32)
  %51 = inttoptr i32 %50 to ptr
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.sched_domain, ptr %52, i32 0, i32 8
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  store i32 0, ptr %55, align 8
  %59 = getelementptr inbounds %struct.sched_domain, ptr %52, i32 0, i32 19
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sched_domain_shared, ptr %60, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #21, !srcloc !15
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #21, !srcloc !21
  br label %63

63:                                               ; preds = %58, %54, %44
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  br label %64

64:                                               ; preds = %63, %40
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 1), align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %212, label %67, !prof !11

67:                                               ; preds = %64
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 2), align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 5), align 4
  %72 = sub i32 %71, %25
  %73 = lshr i32 %72, 30
  %74 = and i32 %73, 2
  br label %75

75:                                               ; preds = %70, %67
  %76 = phi i32 [ 0, %67 ], [ %74, %70 ]
  %77 = load i32, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 4), align 16
  %78 = sub i32 %25, %77
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %160, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %160, label %84

84:                                               ; preds = %80
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %85 = load volatile ptr, ptr %2, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %101, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 31
  %93 = load i32, ptr %92, align 16
  %94 = getelementptr inbounds %struct.sched_domain, ptr %85, i32 0, i32 6
  %95 = load i32, ptr %94, align 8
  %96 = mul i32 %95, %93
  %97 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 32
  %98 = load i32, ptr %97, align 4
  %99 = mul i32 %98, 100
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %158, label %101

101:                                              ; preds = %91, %87, %84
  %102 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, ptrtoint (ptr @sd_asym_packing to i32)
  %105 = inttoptr i32 %104 to ptr
  %106 = load volatile ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %121, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.sched_domain, ptr %106, i32 0, i32 21
  br label %110

110:                                              ; preds = %115, %108
  %111 = phi i32 [ %112, %115 ], [ -1, %108 ]
  %112 = tail call i32 @cpumask_next_and(i32 noundef %111, ptr noundef %109, ptr noundef nonnull @nohz) #24
  %113 = load i32, ptr @nr_cpu_ids, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = tail call i32 @arch_asym_cpu_priority(i32 noundef %112) #21
  %117 = tail call i32 @arch_asym_cpu_priority(i32 noundef %24) #21
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %158, label %110

119:                                              ; preds = %110
  %120 = load i32, ptr %102, align 4
  br label %121

121:                                              ; preds = %119, %101
  %122 = phi i32 [ %120, %119 ], [ %103, %101 ]
  %123 = add i32 %122, ptrtoint (ptr @sd_asym_cpucapacity to i32)
  %124 = inttoptr i32 %123 to ptr
  %125 = load volatile ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %148, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 36
  %129 = load i32, ptr %128, align 64
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %147, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 32
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.root_domain, ptr %135, i32 0, i32 20
  %137 = load i32, ptr %136, align 4
  %138 = icmp ult i32 %133, %137
  br i1 %138, label %158, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 31
  %141 = load i32, ptr %140, align 16
  %142 = getelementptr inbounds %struct.sched_domain, ptr %125, i32 0, i32 6
  %143 = load i32, ptr %142, align 8
  %144 = mul i32 %143, %141
  %145 = mul i32 %133, 100
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %158, label %147

147:                                              ; preds = %139, %127
  br label %158

148:                                              ; preds = %121
  %149 = add i32 %122, ptrtoint (ptr @sd_llc_shared to i32)
  %150 = inttoptr i32 %149 to ptr
  %151 = load volatile ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.sched_domain_shared, ptr %151, i32 0, i32 1
  %155 = load volatile i32, ptr %154, align 4
  %156 = icmp sgt i32 %155, 1
  %157 = select i1 %156, i32 3, i32 %76
  br label %158

158:                                              ; preds = %153, %148, %147, %139, %131, %115, %91
  %159 = phi i32 [ %76, %148 ], [ 3, %91 ], [ %157, %153 ], [ %76, %147 ], [ 3, %139 ], [ 3, %131 ], [ 3, %115 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  br label %160

160:                                              ; preds = %158, %80, %75
  %161 = phi i32 [ %76, %75 ], [ %159, %158 ], [ 3, %80 ]
  %162 = load volatile i32, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 3), align 4
  %163 = icmp eq i32 %162, 0
  %164 = or i32 %161, 8
  %165 = select i1 %163, i32 %161, i32 %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %212, label %167

167:                                              ; preds = %160
  %168 = and i32 %165, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load volatile i32, ptr @jiffies, align 64
  %172 = add i32 %171, 1
  store i32 %172, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 4), align 16
  br label %173

173:                                              ; preds = %170, %167
  %174 = tail call ptr @housekeeping_cpumask(i32 noundef 4) #21
  %175 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef nonnull @nohz, ptr noundef %174) #24
  %176 = load i32, ptr @nr_cpu_ids, align 4
  %177 = icmp ult i32 %175, %176
  br i1 %177, label %178, label %212

178:                                              ; preds = %173
  %179 = tail call ptr @llvm.thread.pointer() #21
  %180 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 2
  br label %181

181:                                              ; preds = %186, %178
  %182 = phi i32 [ %176, %178 ], [ %187, %186 ]
  %183 = phi i32 [ %175, %178 ], [ %188, %186 ]
  %184 = load i32, ptr %180, align 8
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %190, %181
  %187 = phi i32 [ %182, %181 ], [ %193, %190 ]
  %188 = tail call i32 @cpumask_next_and(i32 noundef %183, ptr noundef nonnull @nohz, ptr noundef %174) #24
  %189 = icmp ult i32 %188, %187
  br i1 %189, label %181, label %212

190:                                              ; preds = %181
  %191 = tail call i32 @idle_cpu(i32 noundef %183) #21
  %192 = icmp eq i32 %191, 0
  %193 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %192, label %186, label %194

194:                                              ; preds = %190
  %195 = icmp ult i32 %183, %193
  br i1 %195, label %196, label %212

196:                                              ; preds = %194
  %197 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %183
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, ptrtoint (ptr @runqueues to i32)
  %200 = inttoptr i32 %199 to ptr
  %201 = getelementptr inbounds %struct.rq, ptr %200, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %201) #21, !srcloc !15
  %202 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %201, ptr %201, i32 %165, ptr elementtype(i32) %201) #21, !srcloc !30
  %203 = extractvalue { i32, i32, i32 } %202, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !31
  %204 = and i32 %203, 11
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %196
  %207 = load i32, ptr %197, align 4
  %208 = add i32 %207, ptrtoint (ptr @runqueues to i32)
  %209 = inttoptr i32 %208 to ptr
  %210 = getelementptr inbounds %struct.rq, ptr %209, i32 0, i32 4
  %211 = tail call i32 @smp_call_function_single_async(i32 noundef %183, ptr noundef %210) #21
  br label %212

212:                                              ; preds = %206, %196, %194, %186, %173, %160, %64, %23, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_cfs_rq(ptr nocapture noundef writeonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 8
  store ptr null, ptr %2, align 16
  %3 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 8, i32 1
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 6
  store i64 -1048576, ptr %4, align 32
  %5 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 7
  store i64 -1048576, ptr %5, align 8
  %6 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 18
  store i32 0, ptr %6, align 64
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @free_fair_sched_group(ptr nocapture noundef %0) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @alloc_fair_sched_group(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @online_fair_sched_group(ptr nocapture noundef %0) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @unregister_fair_sched_group(ptr nocapture noundef %0) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @enqueue_task_fair(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 25
  %8 = load i32, ptr %7, align 64
  %9 = icmp eq i32 %8, 5
  %10 = zext i1 %9 to i32
  %11 = and i32 %2, 1
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10
  %14 = load i32, ptr @sysctl_sched_features, align 4
  %15 = and i32 %14, 1048576
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 15, i32 9
  %19 = load i32, ptr %18, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9
  %21 = load volatile i32, ptr %20, align 16
  store volatile i32 %21, ptr %4, align 8
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9, i32 1
  %23 = load volatile i32, ptr %22, align 4
  store volatile i32 %23, ptr %5, align 4
  %24 = and i32 %21, 2147483647
  %25 = tail call i32 @llvm.umax.i32(i32 %23, i32 %24) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %26 = add i32 %25, %19
  store volatile i32 %26, ptr %18, align 16
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_util_est_cfs_tp, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %17
  %30 = tail call ptr @llvm.thread.pointer() #21
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %41 = tail call i32 @__traceiter_sched_util_est_cfs_tp(ptr noundef null, ptr noundef %13) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %42

42:                                               ; preds = %40, %29, %17, %3
  %43 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 49
  %44 = load i8, ptr %43, align 8
  %45 = and i8 %44, 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %53 = inttoptr i32 %52 to ptr
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %47
  %57 = load ptr, ptr %54, align 4
  %58 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %59 = load i32, ptr %58, align 32
  %60 = icmp ult i32 %59, 2
  %61 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %62 = xor i1 %61, true
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %65, !prof !10

64:                                               ; preds = %56
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %65

65:                                               ; preds = %64, %56
  %66 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 20
  %67 = load i64, ptr %66, align 8
  tail call void %57(ptr noundef nonnull %54, i64 noundef %67, i32 noundef 1) #21
  br label %68

68:                                               ; preds = %65, %47, %42
  %69 = icmp eq ptr %6, null
  br i1 %69, label %171, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %75 = load volatile i32, ptr %74, align 8
  %76 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, ptrtoint (ptr @runqueues to i32)
  %79 = inttoptr i32 %78 to ptr
  %80 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10
  br i1 %73, label %81, label %163

81:                                               ; preds = %70
  %82 = and i32 %2, 65
  %83 = icmp eq i32 %82, 1
  %84 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 9
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, %6
  %87 = xor i1 %86, true
  %88 = select i1 %83, i1 true, i1 %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 6
  %91 = load i64, ptr %90, align 32
  %92 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %93 = load i64, ptr %92, align 16
  %94 = add i64 %93, %91
  store i64 %94, ptr %92, align 16
  br label %95

95:                                               ; preds = %89, %81
  tail call fastcc void @update_curr(ptr noundef %80) #21
  %96 = select i1 %83, i1 true, i1 %86
  br i1 %96, label %103, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 6
  %99 = load i64, ptr %98, align 32
  %100 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %101 = load i64, ptr %100, align 16
  %102 = add i64 %101, %99
  store i64 %102, ptr %100, align 16
  br label %103

103:                                              ; preds = %97, %95
  tail call fastcc void @update_load_avg(ptr noundef %80, ptr noundef nonnull %6, i32 noundef 5) #21
  %104 = load i32, ptr %6, align 64
  %105 = load i32, ptr %80, align 4
  %106 = add i32 %105, %104
  store i32 %106, ptr %80, align 4
  %107 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 0, i32 1
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 2
  %109 = getelementptr %struct.rq, ptr %79, i32 0, i32 42
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %108, ptr %111, align 4
  store ptr %110, ptr %108, align 4
  %112 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 2, i32 1
  store ptr %109, ptr %112, align 4
  store volatile ptr %108, ptr %109, align 4
  %113 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 1
  %114 = load i32, ptr %113, align 8
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 8
  br i1 %12, label %130, label %116

116:                                              ; preds = %103
  %117 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 6
  %118 = load i64, ptr %117, align 32
  %119 = load i32, ptr @sysctl_sched_latency, align 4
  %120 = load i32, ptr @sysctl_sched_features, align 4
  %121 = and i32 %120, 1
  %122 = lshr i32 %119, %121
  %123 = zext i32 %122 to i64
  %124 = sub i64 %118, %123
  %125 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %126 = load i64, ptr %125, align 16
  %127 = sub i64 %124, %126
  %128 = icmp sgt i64 %127, 0
  %129 = select i1 %128, i64 %124, i64 %126
  store i64 %129, ptr %125, align 16
  br label %130

130:                                              ; preds = %116, %103
  br i1 %86, label %162, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1
  %133 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %156, label %136

136:                                              ; preds = %131
  %137 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %138 = load i64, ptr %137, align 16
  br label %139

139:                                              ; preds = %139, %136
  %140 = phi ptr [ %134, %136 ], [ %150, %139 ]
  %141 = phi i1 [ true, %136 ], [ %149, %139 ]
  %142 = getelementptr i8, ptr %140, i32 40
  %143 = load i64, ptr %142, align 16
  %144 = sub i64 %138, %143
  %145 = icmp slt i64 %144, 0
  %146 = getelementptr inbounds %struct.rb_node, ptr %140, i32 0, i32 2
  %147 = getelementptr inbounds %struct.rb_node, ptr %140, i32 0, i32 1
  %148 = select i1 %145, ptr %146, ptr %147
  %149 = select i1 %145, i1 %141, i1 false
  %150 = load ptr, ptr %148, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %139

152:                                              ; preds = %139
  %153 = ptrtoint ptr %140 to i32
  store i32 %153, ptr %132, align 4
  %154 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1, i32 1
  store ptr null, ptr %154, align 4
  %155 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1, i32 2
  store ptr null, ptr %155, align 4
  store ptr %132, ptr %148, align 4
  br i1 %149, label %159, label %161

156:                                              ; preds = %131
  store i32 0, ptr %132, align 4
  %157 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1, i32 1
  store ptr null, ptr %157, align 4
  %158 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1, i32 2
  store ptr null, ptr %158, align 4
  store ptr %132, ptr %133, align 4
  br label %159

159:                                              ; preds = %156, %152
  %160 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 8, i32 1
  store ptr %132, ptr %160, align 4
  br label %161

161:                                              ; preds = %159, %152
  tail call void @rb_insert_color(ptr noundef %132, ptr noundef %133) #21
  br label %162

162:                                              ; preds = %161, %130
  store i32 1, ptr %71, align 4
  br label %164

163:                                              ; preds = %70
  tail call fastcc void @update_load_avg(ptr noundef %80, ptr noundef nonnull %6, i32 noundef 1)
  br label %164

164:                                              ; preds = %163, %162
  %165 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4
  %168 = getelementptr inbounds %struct.rq, ptr %79, i32 0, i32 10, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = add i32 %169, %10
  store i32 %170, ptr %168, align 4
  br label %171

171:                                              ; preds = %164, %68
  %172 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4
  %175 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  tail call void @call_trace_sched_update_nr_running(ptr noundef %0, i32 noundef 1) #21
  br label %178

178:                                              ; preds = %177, %171
  %179 = icmp ult i32 %173, 2
  br i1 %179, label %180, label %190

180:                                              ; preds = %178
  %181 = load i32, ptr %172, align 4
  %182 = icmp ugt i32 %181, 1
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds %struct.root_domain, ptr %185, i32 0, i32 5
  %187 = load volatile i32, ptr %186, align 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  store volatile i32 1, ptr %186, align 8
  br label %190

190:                                              ; preds = %189, %183, %180, %178
  br i1 %12, label %240, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.root_domain, ptr %193, i32 0, i32 6
  %195 = load volatile i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %240

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %199
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, ptrtoint (ptr @runqueues to i32)
  %203 = inttoptr i32 %202 to ptr
  %204 = getelementptr inbounds %struct.rq, ptr %203, i32 0, i32 10, i32 15, i32 7
  %205 = load volatile i32, ptr %204, align 8
  %206 = load i32, ptr @sysctl_sched_features, align 4
  %207 = and i32 %206, 1048576
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %197
  %210 = getelementptr inbounds %struct.rq, ptr %203, i32 0, i32 10, i32 15, i32 9
  %211 = load volatile i32, ptr %210, align 16
  %212 = tail call i32 @llvm.umax.i32(i32 %205, i32 %211) #21
  br label %213

213:                                              ; preds = %209, %197
  %214 = phi i32 [ %212, %209 ], [ %205, %197 ]
  %215 = getelementptr inbounds %struct.rq, ptr %203, i32 0, i32 32
  %216 = load i32, ptr %215, align 4
  %217 = tail call i32 @llvm.umin.i32(i32 %214, i32 %216) #21
  %218 = mul i32 %217, 1280
  %219 = getelementptr inbounds %struct.rq, ptr %203, i32 0, i32 31
  %220 = load i32, ptr %219, align 16
  %221 = shl i32 %220, 10
  %222 = icmp ult i32 %218, %221
  br i1 %222, label %240, label %223

223:                                              ; preds = %213
  store volatile i32 2, ptr %194, align 4
  %224 = load ptr, ptr %192, align 8
  %225 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_overutilized_tp, i32 0, i32 1), align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %223
  %228 = tail call ptr @llvm.thread.pointer() #21
  %229 = getelementptr inbounds %struct.thread_info, ptr %228, i32 0, i32 2
  %230 = load i32, ptr %229, align 8
  %231 = lshr i32 %230, 5
  %232 = getelementptr i32, ptr @__cpu_online_mask, i32 %231
  %233 = load volatile i32, ptr %232, align 4
  %234 = and i32 %230, 31
  %235 = shl nuw i32 1, %234
  %236 = and i32 %235, %233
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %227
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %239 = tail call i32 @__traceiter_sched_overutilized_tp(ptr noundef null, ptr noundef %224, i1 noundef zeroext true) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !35
  br label %240

240:                                              ; preds = %238, %227, %223, %213, %191, %190
  %241 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %242 = load ptr, ptr %241, align 4
  %243 = load i32, ptr @sysctl_sched_features, align 4
  %244 = and i32 %243, 64
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %280, label %246

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %248 = load i32, ptr %247, align 4
  %249 = lshr i32 %248, 5
  %250 = getelementptr i32, ptr @__cpu_active_mask, i32 %249
  %251 = load volatile i32, ptr %250, align 4
  %252 = and i32 %248, 31
  %253 = shl nuw i32 1, %252
  %254 = and i32 %253, %251
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %280, label %256

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 57, i32 3
  %258 = load ptr, ptr %257, align 4
  %259 = load ptr, ptr %258, align 8
  %260 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %259, i32 0, i32 4
  %261 = load i8, ptr %260, align 16
  %262 = and i8 %261, 1
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %280, label %264

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.task_struct, ptr %242, i32 0, i32 22
  %266 = load ptr, ptr %265, align 8
  %267 = icmp eq ptr %266, @fair_sched_class
  br i1 %267, label %268, label %280

268:                                              ; preds = %264
  %269 = getelementptr %struct.task_struct, ptr %242, i32 0, i32 0, i32 2
  %270 = load volatile i32, ptr %269, align 8
  %271 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %270
  %272 = load i32, ptr %271, align 4
  %273 = add i32 %272, ptrtoint (ptr @runqueues to i32)
  %274 = inttoptr i32 %273 to ptr
  %275 = getelementptr inbounds %struct.rq, ptr %274, i32 0, i32 10, i32 1
  %276 = load i32, ptr %275, align 8
  %277 = load i32, ptr @sched_nr_latency, align 4
  %278 = icmp ult i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %268
  tail call fastcc void @hrtick_start_fair(ptr noundef %0, ptr noundef %242) #21
  br label %280

280:                                              ; preds = %279, %268, %264, %256, %246, %240
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dequeue_task_fair(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 25
  %10 = load i32, ptr %9, align 64
  %11 = icmp eq i32 %10, 5
  %12 = sext i1 %11 to i32
  %13 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %14, %16
  %18 = icmp eq i32 %14, 0
  %19 = or i1 %18, %17
  %20 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10
  %21 = load i32, ptr @sysctl_sched_features, align 4
  %22 = and i32 %21, 1048576
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 15, i32 9
  %26 = load i32, ptr %25, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %27 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9
  %28 = load volatile i32, ptr %27, align 16
  store volatile i32 %28, ptr %6, align 8
  %29 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9, i32 1
  %30 = load volatile i32, ptr %29, align 4
  store volatile i32 %30, ptr %7, align 4
  %31 = and i32 %28, 2147483647
  %32 = tail call i32 @llvm.umax.i32(i32 %30, i32 %31) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %33 = tail call i32 @llvm.usub.sat.i32(i32 %26, i32 %32) #21
  store volatile i32 %33, ptr %25, align 16
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_util_est_cfs_tp, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %24
  %37 = tail call ptr @llvm.thread.pointer() #21
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %48 = tail call i32 @__traceiter_sched_util_est_cfs_tp(ptr noundef null, ptr noundef %20) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %49

49:                                               ; preds = %47, %36, %24, %3
  %50 = icmp eq ptr %8, null
  br i1 %50, label %178, label %51

51:                                               ; preds = %49
  %52 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %53 = load volatile i32, ptr %52, align 8
  %54 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, ptrtoint (ptr @runqueues to i32)
  %57 = inttoptr i32 %56 to ptr
  %58 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10
  tail call fastcc void @update_curr(ptr noundef %58) #21
  tail call fastcc void @update_load_avg(ptr noundef %58, ptr noundef nonnull %8, i32 noundef 1) #21
  %59 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 11
  %60 = load ptr, ptr %59, align 64
  %61 = icmp eq ptr %60, %8
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load volatile i32, ptr %52, align 8
  %64 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, ptrtoint (ptr @runqueues to i32)
  %67 = inttoptr i32 %66 to ptr
  %68 = getelementptr inbounds %struct.rq, ptr %67, i32 0, i32 10, i32 11
  %69 = load ptr, ptr %68, align 64
  %70 = icmp eq ptr %69, %8
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store ptr null, ptr %68, align 64
  br label %72

72:                                               ; preds = %71, %62, %51
  %73 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 10
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %8
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load volatile i32, ptr %52, align 8
  %78 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, ptrtoint (ptr @runqueues to i32)
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.rq, ptr %81, i32 0, i32 10, i32 10
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %8
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store ptr null, ptr %82, align 4
  br label %86

86:                                               ; preds = %85, %76, %72
  %87 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 12
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %8
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load volatile i32, ptr %52, align 8
  %92 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, ptrtoint (ptr @runqueues to i32)
  %95 = inttoptr i32 %94 to ptr
  %96 = getelementptr inbounds %struct.rq, ptr %95, i32 0, i32 10, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, %8
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store ptr null, ptr %96, align 4
  br label %100

100:                                              ; preds = %99, %90, %86
  %101 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 9
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, %8
  br i1 %103, label %113, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1
  %106 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 8, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %105
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = tail call ptr @rb_next(ptr noundef %105) #21
  store ptr %110, ptr %106, align 4
  br label %111

111:                                              ; preds = %109, %104
  %112 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 8
  tail call void @rb_erase(ptr noundef %105, ptr noundef %112) #21
  br label %113

113:                                              ; preds = %111, %100
  %114 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 3
  store i32 0, ptr %114, align 4
  %115 = load i32, ptr %8, align 64
  %116 = load i32, ptr %58, align 4
  %117 = sub i32 %116, %115
  store i32 %117, ptr %58, align 4
  %118 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 0, i32 1
  store i32 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 2
  %120 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 2, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %119, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store volatile ptr %122, ptr %121, align 4
  store volatile ptr %119, ptr %119, align 4
  store ptr %119, ptr %120, align 4
  %124 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 1
  %125 = load i32, ptr %124, align 8
  %126 = add i32 %125, -1
  store i32 %126, ptr %124, align 8
  %127 = and i32 %2, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 6
  %131 = load i64, ptr %130, align 32
  %132 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %133 = load i64, ptr %132, align 16
  %134 = sub i64 %133, %131
  store i64 %134, ptr %132, align 16
  br label %135

135:                                              ; preds = %129, %113
  %136 = and i32 %2, 6
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %171, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %101, align 8
  %140 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 8, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 6
  %143 = load i64, ptr %142, align 32
  %144 = icmp eq ptr %139, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.sched_entity, ptr %139, i32 0, i32 3
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.sched_entity, ptr %139, i32 0, i32 6
  %151 = load i64, ptr %150, align 16
  br label %152

152:                                              ; preds = %149, %145, %138
  %153 = phi i64 [ %151, %149 ], [ %143, %138 ], [ %143, %145 ]
  %154 = phi ptr [ %139, %149 ], [ null, %138 ], [ null, %145 ]
  %155 = icmp eq ptr %141, null
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = icmp eq ptr %154, null
  %158 = getelementptr i8, ptr %141, i32 40
  %159 = load i64, ptr %158, align 16
  br i1 %157, label %164, label %160

160:                                              ; preds = %156
  %161 = sub i64 %159, %153
  %162 = icmp slt i64 %161, 0
  %163 = select i1 %162, i64 %159, i64 %153
  br label %164

164:                                              ; preds = %160, %156, %152
  %165 = phi i64 [ %153, %152 ], [ %163, %160 ], [ %159, %156 ]
  %166 = sub i64 %165, %143
  %167 = icmp sgt i64 %166, 0
  %168 = select i1 %167, i64 %165, i64 %143
  store i64 %168, ptr %142, align 32
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !36
  %169 = load i64, ptr %142, align 32
  %170 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 7
  store i64 %169, ptr %170, align 8
  br label %171

171:                                              ; preds = %164, %135
  %172 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, -1
  store i32 %174, ptr %172, align 4
  %175 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 4
  %176 = load i32, ptr %175, align 4
  %177 = add i32 %176, %12
  store i32 %177, ptr %175, align 4
  br label %178

178:                                              ; preds = %171, %49
  %179 = load i32, ptr %13, align 4
  %180 = add i32 %179, -1
  store i32 %180, ptr %13, align 4
  %181 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  tail call void @call_trace_sched_update_nr_running(ptr noundef %0, i32 noundef -1) #21
  br label %184

184:                                              ; preds = %183, %178
  br i1 %19, label %185, label %194

185:                                              ; preds = %184
  %186 = load i32, ptr %13, align 4
  %187 = load i32, ptr %15, align 4
  %188 = icmp eq i32 %186, %187
  %189 = icmp ne i32 %186, 0
  %190 = and i1 %189, %188
  br i1 %190, label %191, label %194, !prof !10

191:                                              ; preds = %185
  %192 = load volatile i32, ptr @jiffies, align 64
  %193 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 17
  store i32 %192, ptr %193, align 8
  br label %194

194:                                              ; preds = %191, %185, %184
  %195 = and i32 %2, 1
  %196 = icmp ne i32 %195, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %197 = load i32, ptr @sysctl_sched_features, align 4
  %198 = and i32 %197, 1048576
  %199 = icmp ne i32 %198, 0
  %200 = and i1 %196, %199
  br i1 %200, label %201, label %258

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9
  %203 = load i32, ptr %202, align 16
  %204 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9, i32 1
  %205 = load i32, ptr %204, align 4
  store i32 %205, ptr %5, align 4
  %206 = icmp sgt i32 %203, -1
  br i1 %206, label %207, label %258

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 7
  %209 = load volatile i32, ptr %208, align 8
  %210 = and i32 %197, 2097152
  %211 = icmp ne i32 %210, 0
  %212 = icmp ugt i32 %209, %205
  %213 = select i1 %211, i1 %212, i1 false
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  store i32 %209, ptr %5, align 4
  br label %238

215:                                              ; preds = %207
  %216 = sub i32 %209, %205
  %217 = add i32 %216, 9
  %218 = icmp ult i32 %217, 19
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = add nuw i32 %203, 9
  %221 = sub i32 %220, %209
  %222 = icmp ult i32 %221, 19
  br i1 %222, label %258, label %238

223:                                              ; preds = %215
  %224 = load volatile i32, ptr %208, align 8
  %225 = getelementptr %struct.rq, ptr %0, i32 0, i32 40
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %226
  %228 = load i32, ptr %227, align 4
  %229 = add i32 %228, ptrtoint (ptr @runqueues to i32)
  %230 = inttoptr i32 %229 to ptr
  %231 = getelementptr inbounds %struct.rq, ptr %230, i32 0, i32 32
  %232 = load i32, ptr %231, align 4
  %233 = icmp ugt i32 %224, %232
  br i1 %233, label %258, label %234

234:                                              ; preds = %223
  %235 = lshr i32 %216, 2
  %236 = add i32 %235, %205
  %237 = and i32 %236, 1073741823
  store i32 %237, ptr %5, align 4
  br label %238

238:                                              ; preds = %234, %219, %214
  %239 = or i32 %209, -2147483648
  store i32 %239, ptr %4, align 8
  %240 = load volatile i32, ptr %4, align 8
  store volatile i32 %240, ptr %202, align 16
  %241 = load volatile i32, ptr %5, align 4
  store volatile i32 %241, ptr %204, align 4
  %242 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_util_est_se_tp, i32 0, i32 1), align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %238
  %245 = tail call ptr @llvm.thread.pointer() #21
  %246 = getelementptr inbounds %struct.thread_info, ptr %245, i32 0, i32 2
  %247 = load i32, ptr %246, align 8
  %248 = lshr i32 %247, 5
  %249 = getelementptr i32, ptr @__cpu_online_mask, i32 %248
  %250 = load volatile i32, ptr %249, align 4
  %251 = and i32 %247, 31
  %252 = shl nuw i32 1, %251
  %253 = and i32 %252, %250
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %244
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  %256 = tail call i32 @__traceiter_sched_util_est_se_tp(ptr noundef null, ptr noundef %8) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  %257 = load i32, ptr @sysctl_sched_features, align 4
  br label %258

258:                                              ; preds = %255, %244, %238, %223, %219, %201, %194
  %259 = phi i32 [ %197, %194 ], [ %197, %201 ], [ %197, %219 ], [ %197, %223 ], [ %197, %238 ], [ %197, %244 ], [ %257, %255 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %260 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %261 = load ptr, ptr %260, align 4
  %262 = and i32 %259, 64
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %298, label %264

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %266 = load i32, ptr %265, align 4
  %267 = lshr i32 %266, 5
  %268 = getelementptr i32, ptr @__cpu_active_mask, i32 %267
  %269 = load volatile i32, ptr %268, align 4
  %270 = and i32 %266, 31
  %271 = shl nuw i32 1, %270
  %272 = and i32 %271, %269
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %298, label %274

274:                                              ; preds = %264
  %275 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 57, i32 3
  %276 = load ptr, ptr %275, align 4
  %277 = load ptr, ptr %276, align 8
  %278 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %277, i32 0, i32 4
  %279 = load i8, ptr %278, align 16
  %280 = and i8 %279, 1
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %298, label %282

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.task_struct, ptr %261, i32 0, i32 22
  %284 = load ptr, ptr %283, align 8
  %285 = icmp eq ptr %284, @fair_sched_class
  br i1 %285, label %286, label %298

286:                                              ; preds = %282
  %287 = getelementptr %struct.task_struct, ptr %261, i32 0, i32 0, i32 2
  %288 = load volatile i32, ptr %287, align 8
  %289 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %288
  %290 = load i32, ptr %289, align 4
  %291 = add i32 %290, ptrtoint (ptr @runqueues to i32)
  %292 = inttoptr i32 %291 to ptr
  %293 = getelementptr inbounds %struct.rq, ptr %292, i32 0, i32 10, i32 1
  %294 = load i32, ptr %293, align 8
  %295 = load i32, ptr @sched_nr_latency, align 4
  %296 = icmp ult i32 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %286
  tail call fastcc void @hrtick_start_fair(ptr noundef %0, ptr noundef %261) #21
  br label %298

298:                                              ; preds = %297, %286, %282, %274, %264, %258
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @yield_task_fair(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10
  %11 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 19
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %79, label %15, !prof !10

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 11
  %17 = load ptr, ptr %16, align 64
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = icmp eq ptr %11, null
  br i1 %20, label %62, label %21

21:                                               ; preds = %19
  %22 = load volatile i32, ptr %4, align 8
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, ptrtoint (ptr @runqueues to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.rq, ptr %26, i32 0, i32 10, i32 11
  %28 = load ptr, ptr %27, align 64
  %29 = icmp eq ptr %28, %11
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store ptr null, ptr %27, align 64
  br label %31

31:                                               ; preds = %30, %21, %15
  %32 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ne ptr %33, %11
  %35 = icmp eq ptr %11, null
  %36 = or i1 %35, %34
  br i1 %36, label %47, label %37

37:                                               ; preds = %31
  %38 = load volatile i32, ptr %4, align 8
  %39 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, ptrtoint (ptr @runqueues to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.rq, ptr %42, i32 0, i32 10, i32 10
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %11
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store ptr null, ptr %43, align 4
  br label %47

47:                                               ; preds = %46, %37, %31
  %48 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = icmp ne ptr %49, %11
  %51 = or i1 %35, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load volatile i32, ptr %4, align 8
  %54 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, ptrtoint (ptr @runqueues to i32)
  %57 = inttoptr i32 %56 to ptr
  %58 = getelementptr inbounds %struct.rq, ptr %57, i32 0, i32 10, i32 12
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %11
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store ptr null, ptr %58, align 4
  br label %62

62:                                               ; preds = %61, %52, %47, %19
  %63 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 25
  %64 = load i32, ptr %63, align 64
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  tail call void @update_rq_clock(ptr noundef %0) #21
  tail call fastcc void @update_curr(ptr noundef %10)
  %67 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %68 = load i32, ptr %67, align 32
  %69 = or i32 %68, 1
  store i32 %69, ptr %67, align 32
  br label %70

70:                                               ; preds = %66, %62
  %71 = icmp eq ptr %11, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %70
  %73 = load volatile i32, ptr %4, align 8
  %74 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, ptrtoint (ptr @runqueues to i32)
  %77 = inttoptr i32 %76 to ptr
  %78 = getelementptr inbounds %struct.rq, ptr %77, i32 0, i32 10, i32 12
  store ptr %11, ptr %78, align 4
  br label %79

79:                                               ; preds = %72, %70, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @yield_to_task_fair(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %9 = load volatile i32, ptr %8, align 8
  %10 = icmp eq ptr %3, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load volatile i32, ptr %8, align 8
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.rq, ptr %16, i32 0, i32 10, i32 10
  store ptr %3, ptr %17, align 4
  br label %18

18:                                               ; preds = %11, %7
  tail call void @yield_task_fair(ptr noundef %0)
  br label %19

19:                                               ; preds = %18, %2
  %20 = xor i1 %6, true
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @check_preempt_wakeup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 19
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %8 = getelementptr %struct.thread_info, ptr %5, i32 0, i32 2
  %9 = load volatile i32, ptr %8, align 8
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @runqueues to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 10, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = load i32, ptr @sched_nr_latency, align 4
  %17 = icmp uge i32 %15, %16
  %18 = icmp eq ptr %5, %1
  br i1 %18, label %160, label %19, !prof !10

19:                                               ; preds = %3
  %20 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %21 = load volatile i32, ptr %20, align 8
  %22 = load i32, ptr @sysctl_sched_features, align 4
  %23 = and i32 %22, 4
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %24, i1 %17, i1 false
  %26 = and i32 %2, 4
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %27, %25
  %29 = xor i1 %28, true
  %30 = icmp eq ptr %7, null
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  %36 = load i1, ptr @set_next_buddy.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !10

39:                                               ; preds = %32
  store i1 true, ptr @set_next_buddy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 7065, i32 noundef 9, ptr noundef nonnull @.str.11) #21
  br label %40

40:                                               ; preds = %39, %32
  br i1 %35, label %48, label %41

41:                                               ; preds = %40
  %42 = load volatile i32, ptr %20, align 8
  %43 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, ptrtoint (ptr @runqueues to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 10, i32 10
  store ptr %7, ptr %47, align 4
  br label %48

48:                                               ; preds = %41, %40, %19
  %49 = load volatile i32, ptr %5, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %160

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 25
  %54 = load i32, ptr %53, align 64
  %55 = icmp eq i32 %54, 5
  %56 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 25
  %57 = load i32, ptr %56, align 64
  br i1 %55, label %58, label %60, !prof !10

58:                                               ; preds = %52
  %59 = icmp eq i32 %57, 5
  br i1 %59, label %160, label %137, !prof !10

60:                                               ; preds = %52
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %62, label %160, !prof !11

62:                                               ; preds = %60
  %63 = load i32, ptr @sysctl_sched_features, align 4
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %160, label %66

66:                                               ; preds = %62
  br i1 %30, label %67, label %68, !prof !10

67:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/fair.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 7134, 0\0A.popsection", ""() #21, !srcloc !39
  unreachable

68:                                               ; preds = %66
  %69 = load volatile i32, ptr %8, align 8
  %70 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, ptrtoint (ptr @runqueues to i32)
  %73 = inttoptr i32 %72 to ptr
  %74 = getelementptr inbounds %struct.rq, ptr %73, i32 0, i32 10
  tail call fastcc void @update_curr(ptr noundef %74)
  %75 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 19, i32 6
  %76 = load i64, ptr %75, align 16
  %77 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %78 = load i64, ptr %77, align 16
  %79 = sub i64 %76, %78
  %80 = icmp slt i64 %79, 1
  br i1 %80, label %160, label %81

81:                                               ; preds = %68
  %82 = load i32, ptr @sysctl_sched_wakeup_granularity, align 4
  %83 = zext i32 %82 to i64
  %84 = load i32, ptr %7, align 64
  %85 = icmp eq i32 %84, 1024
  br i1 %85, label %117, label %86, !prof !11

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96, !prof !10

90:                                               ; preds = %86
  %91 = icmp eq i32 %84, 0
  br i1 %91, label %94, label %92, !prof !10

92:                                               ; preds = %90
  %93 = udiv i32 -1, %84
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %93, %92 ], [ -1, %90 ]
  store i32 %95, ptr %87, align 4
  br label %96

96:                                               ; preds = %94, %86
  %97 = phi i32 [ %88, %86 ], [ %95, %94 ]
  %98 = zext i32 %97 to i64
  %99 = shl nuw nsw i64 %98, 10
  %100 = icmp ult i32 %97, 4194304
  %101 = trunc i64 %99 to i32
  br i1 %100, label %109, label %102

102:                                              ; preds = %96
  %103 = lshr i32 %97, 22
  %104 = tail call i32 @llvm.ctlz.i32(i32 %103, i1 true) #21, !range !9
  %105 = sub nuw nsw i32 32, %104
  %106 = zext i32 %105 to i64
  %107 = lshr i64 %99, %106
  %108 = trunc i64 %107 to i32
  br label %109

109:                                              ; preds = %102, %96
  %110 = phi i32 [ %108, %102 ], [ %101, %96 ]
  %111 = phi i32 [ %104, %102 ], [ 32, %96 ]
  %112 = zext i32 %110 to i64
  %113 = mul nuw i64 %112, %83
  %114 = zext i32 %111 to i64
  %115 = lshr i64 %113, %114
  %116 = and i64 %115, 4294967295
  br label %117

117:                                              ; preds = %109, %81
  %118 = phi i64 [ %83, %81 ], [ %116, %109 ]
  %119 = icmp ugt i64 %79, %118
  br i1 %119, label %120, label %160

120:                                              ; preds = %117
  br i1 %28, label %137, label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  %125 = load i1, ptr @set_next_buddy.__already_done, align 1
  %126 = xor i1 %125, true
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %129, !prof !10

128:                                              ; preds = %121
  store i1 true, ptr @set_next_buddy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 7065, i32 noundef 9, ptr noundef nonnull @.str.11) #21
  br label %129

129:                                              ; preds = %128, %121
  br i1 %124, label %137, label %130

130:                                              ; preds = %129
  %131 = load volatile i32, ptr %20, align 8
  %132 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %131
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, ptrtoint (ptr @runqueues to i32)
  %135 = inttoptr i32 %134 to ptr
  %136 = getelementptr inbounds %struct.rq, ptr %135, i32 0, i32 10, i32 10
  store ptr %7, ptr %136, align 4
  br label %137

137:                                              ; preds = %130, %129, %120, %58
  tail call void @resched_curr(ptr noundef %0) #21
  %138 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 19, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %160, label %141, !prof !10

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 15
  %143 = load ptr, ptr %142, align 16
  %144 = icmp eq ptr %5, %143
  br i1 %144, label %160, label %145, !prof !10

145:                                              ; preds = %141
  %146 = load i32, ptr @sysctl_sched_features, align 4
  %147 = and i32 %146, 8
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %148, i1 %17, i1 false
  %150 = xor i1 %149, true
  %151 = icmp eq ptr %6, null
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %160, label %153

153:                                              ; preds = %145
  %154 = load volatile i32, ptr %8, align 8
  %155 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %154
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, ptrtoint (ptr @runqueues to i32)
  %158 = inttoptr i32 %157 to ptr
  %159 = getelementptr inbounds %struct.rq, ptr %158, i32 0, i32 10, i32 11
  store ptr %6, ptr %159, align 64
  br label %160

160:                                              ; preds = %153, %145, %141, %137, %117, %68, %62, %60, %58, %48, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @__pick_next_task_fair(ptr noundef %0) #1 {
  %2 = tail call ptr @pick_next_task_fair(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @put_prev_task_fair(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %7 = load volatile i32, ptr %6, align 8
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @runqueues to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.rq, ptr %11, i32 0, i32 10
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %5
  tail call fastcc void @update_curr(ptr noundef %12) #21
  %17 = load i32, ptr %13, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1
  %21 = getelementptr inbounds %struct.rq, ptr %11, i32 0, i32 10, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %26 = load i64, ptr %25, align 16
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %22, %24 ], [ %38, %27 ]
  %29 = phi i1 [ true, %24 ], [ %37, %27 ]
  %30 = getelementptr i8, ptr %28, i32 40
  %31 = load i64, ptr %30, align 16
  %32 = sub i64 %26, %31
  %33 = icmp slt i64 %32, 0
  %34 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 2
  %35 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 1
  %36 = select i1 %33, ptr %34, ptr %35
  %37 = select i1 %33, i1 %29, i1 false
  %38 = load ptr, ptr %36, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %27

40:                                               ; preds = %27
  %41 = ptrtoint ptr %28 to i32
  store i32 %41, ptr %20, align 4
  %42 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1, i32 1
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1, i32 2
  store ptr null, ptr %43, align 4
  store ptr %20, ptr %36, align 4
  br i1 %37, label %47, label %49

44:                                               ; preds = %19
  store i32 0, ptr %20, align 4
  %45 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1, i32 1
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 1, i32 2
  store ptr null, ptr %46, align 4
  store ptr %20, ptr %21, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = getelementptr inbounds %struct.rq, ptr %11, i32 0, i32 10, i32 8, i32 1
  store ptr %20, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %40
  tail call void @rb_insert_color(ptr noundef %20, ptr noundef %21) #21
  tail call fastcc void @update_load_avg(ptr noundef %12, ptr noundef nonnull %3, i32 noundef 0) #21
  br label %50

50:                                               ; preds = %49, %16, %5
  %51 = getelementptr inbounds %struct.rq, ptr %11, i32 0, i32 10, i32 9
  store ptr null, ptr %51, align 8
  br label %52

52:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_next_task_fair(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 2
  %10 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 42
  %11 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %9, ptr %16, align 4
  store ptr %15, ptr %9, align 4
  store ptr %10, ptr %11, align 4
  store volatile ptr %9, ptr %10, align 4
  br label %17

17:                                               ; preds = %8, %3
  %18 = icmp eq ptr %4, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %21 = load volatile i32, ptr %20, align 8
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, ptrtoint (ptr @runqueues to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.rq, ptr %25, i32 0, i32 10
  tail call fastcc void @set_next_entity(ptr noundef %26, ptr noundef nonnull %4)
  br label %27

27:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @balance_fair(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @newidle_balance(ptr noundef %0, ptr noundef %2)
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ 1, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @select_task_rq_fair(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 8
  %5 = alloca i32, align 4
  %6 = and i32 %2, 16
  %7 = icmp eq i32 %6, 0
  %8 = tail call ptr @llvm.thread.pointer() #21
  br i1 %7, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 2
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  br label %15

15:                                               ; preds = %9, %3
  %16 = phi i32 [ %14, %9 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %2, 15
  %20 = and i32 %2, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %70, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 100
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = sub i32 %25, %26
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 8
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 1
  store i32 %32, ptr %30, align 8
  %33 = load volatile i32, ptr @jiffies, align 64
  store i32 %33, ptr %23, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 10
  %36 = load ptr, ptr %35, align 64
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 8
  %40 = load i32, ptr %39, align 8
  br label %45

41:                                               ; preds = %34
  store ptr %0, ptr %35, align 64
  %42 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 8
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i32 [ %40, %38 ], [ %44, %41 ]
  %47 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 8
  %48 = load i32, ptr %47, align 8
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #19, !srcloc !19
  %52 = add i32 %51, ptrtoint (ptr @sd_llc_size to i32)
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.umin.i32(i32 %46, i32 %48) #21
  %56 = tail call i32 @llvm.umax.i32(i32 %46, i32 %48) #21
  %57 = icmp ult i32 %55, %54
  %58 = mul i32 %54, %55
  %59 = icmp ult i32 %56, %58
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %63 = load ptr, ptr %62, align 8
  %64 = lshr i32 %18, 5
  %65 = getelementptr i32, ptr %63, i32 %64
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %18, 31
  %68 = lshr i32 %66, %67
  %69 = and i32 %68, 1
  br label %70

70:                                               ; preds = %61, %45, %15
  %71 = phi i32 [ 0, %15 ], [ 0, %45 ], [ %69, %61 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %72 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, ptrtoint (ptr @runqueues to i32)
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr inbounds %struct.rq, ptr %75, i32 0, i32 30
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %207, label %79

79:                                               ; preds = %70
  %80 = icmp eq i32 %71, 0
  %81 = lshr i32 %1, 5
  %82 = and i32 %1, 31
  %83 = shl nuw i32 1, %82
  %84 = xor i1 %80, true
  br label %85

85:                                               ; preds = %197, %79
  %86 = phi ptr [ %77, %79 ], [ %200, %197 ]
  %87 = phi ptr [ null, %79 ], [ %199, %197 ]
  %88 = getelementptr inbounds %struct.sched_domain, ptr %86, i32 0, i32 9
  %89 = load i32, ptr %88, align 4
  br i1 %80, label %193, label %90

90:                                               ; preds = %85
  %91 = and i32 %89, 16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %190, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.sched_domain, ptr %86, i32 0, i32 21
  %95 = getelementptr i32, ptr %94, i32 %81
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %96, %83
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %190, label %99

99:                                               ; preds = %93
  %100 = icmp eq i32 %18, %1
  br i1 %100, label %207, label %101

101:                                              ; preds = %99
  %102 = load i32, ptr @sysctl_sched_features, align 4
  %103 = and i32 %102, 131072
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %124, label %105

105:                                              ; preds = %101
  %106 = tail call i32 @available_idle_cpu(i32 noundef %18) #21
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = tail call zeroext i1 @cpus_share_cache(i32 noundef %18, i32 noundef %1) #21
  br i1 %109, label %119, label %110

110:                                              ; preds = %108, %105
  %111 = icmp eq i32 %16, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %110
  %113 = load i32, ptr %72, align 4
  %114 = add i32 %113, ptrtoint (ptr @runqueues to i32)
  %115 = inttoptr i32 %114 to ptr
  %116 = getelementptr inbounds %struct.rq, ptr %115, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %124, label %119

119:                                              ; preds = %112, %110, %108
  %120 = phi i32 [ %18, %108 ], [ 16, %112 ], [ 16, %110 ]
  %121 = tail call i32 @available_idle_cpu(i32 noundef %1) #21
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 %120, i32 %1
  br label %124

124:                                              ; preds = %119, %112, %101
  %125 = phi i32 [ 16, %101 ], [ %18, %112 ], [ %123, %119 ]
  %126 = load i32, ptr @sysctl_sched_features, align 4
  %127 = and i32 %126, 262144
  %128 = icmp ne i32 %127, 0
  %129 = icmp eq i32 %125, 16
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %186

131:                                              ; preds = %124
  %132 = load i32, ptr %72, align 4
  %133 = add i32 %132, ptrtoint (ptr @runqueues to i32)
  %134 = inttoptr i32 %133 to ptr
  %135 = getelementptr inbounds %struct.rq, ptr %134, i32 0, i32 10, i32 15, i32 5
  %136 = load i32, ptr %135, align 32
  %137 = zext i32 %136 to i64
  %138 = icmp eq i32 %16, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 19, i32 10, i32 5
  %141 = load i32, ptr %140, align 32
  %142 = icmp ult i32 %136, %141
  %143 = zext i32 %141 to i64
  %144 = sub nsw i64 %137, %143
  br i1 %142, label %186, label %145

145:                                              ; preds = %139, %131
  %146 = phi i64 [ %144, %139 ], [ %137, %131 ]
  %147 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 5
  %148 = load i32, ptr %147, align 32
  %149 = zext i32 %148 to i64
  %150 = add nsw i64 %146, %149
  %151 = and i32 %126, 524288
  %152 = icmp eq i32 %151, 0
  %153 = mul nsw i64 %150, 100
  %154 = select i1 %152, i64 %150, i64 %153
  %155 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, ptrtoint (ptr @runqueues to i32)
  %158 = inttoptr i32 %157 to ptr
  %159 = getelementptr inbounds %struct.rq, ptr %158, i32 0, i32 31
  %160 = load i32, ptr %159, align 16
  %161 = zext i32 %160 to i64
  %162 = mul i64 %154, %161
  %163 = getelementptr inbounds %struct.rq, ptr %158, i32 0, i32 10, i32 15, i32 5
  %164 = load i32, ptr %163, align 32
  %165 = zext i32 %164 to i64
  %166 = sub nsw i64 %165, %149
  br i1 %152, label %175, label %167

167:                                              ; preds = %145
  %168 = getelementptr inbounds %struct.sched_domain, ptr %86, i32 0, i32 6
  %169 = load i32, ptr %168, align 8
  %170 = add i32 %169, -100
  %171 = lshr i32 %170, 1
  %172 = add nuw i32 %171, 100
  %173 = zext i32 %172 to i64
  %174 = mul i64 %166, %173
  br label %175

175:                                              ; preds = %167, %145
  %176 = phi i64 [ %174, %167 ], [ %166, %145 ]
  %177 = getelementptr inbounds %struct.rq, ptr %134, i32 0, i32 31
  %178 = load i32, ptr %177, align 16
  %179 = zext i32 %178 to i64
  %180 = mul i64 %176, %179
  %181 = xor i1 %138, true
  %182 = zext i1 %181 to i64
  %183 = add i64 %180, %182
  %184 = icmp slt i64 %162, %183
  %185 = select i1 %184, i32 %18, i32 16
  br label %186

186:                                              ; preds = %175, %139, %124
  %187 = phi i32 [ %125, %124 ], [ %185, %175 ], [ %18, %139 ]
  %188 = icmp eq i32 %187, 16
  %189 = select i1 %188, i32 %1, i32 %187
  br label %207

190:                                              ; preds = %93, %90
  %191 = and i32 %89, %19
  %192 = icmp ne i32 %191, 0
  br label %197

193:                                              ; preds = %85
  %194 = and i32 %89, %19
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %195, i1 true, i1 %84
  br i1 %196, label %197, label %202

197:                                              ; preds = %193, %190
  %198 = phi i1 [ %192, %190 ], [ %195, %193 ]
  %199 = select i1 %198, ptr %86, ptr %87
  %200 = load ptr, ptr %86, align 8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %85

202:                                              ; preds = %197, %193
  %203 = phi ptr [ %199, %197 ], [ %87, %193 ]
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205, !prof !11

205:                                              ; preds = %202
  %206 = tail call fastcc i32 @find_idlest_cpu(ptr noundef nonnull %203, ptr noundef %0, i32 noundef %18, i32 noundef %1, i32 noundef %19)
  br label %502

207:                                              ; preds = %202, %186, %99, %70
  %208 = phi i32 [ %1, %202 ], [ %1, %99 ], [ %189, %186 ], [ %1, %70 ]
  br i1 %21, label %502, label %209

209:                                              ; preds = %207
  %210 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %224, !prof !10

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  tail call fastcc void @sync_entity_load_avg(ptr noundef %213) #21
  %214 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 7
  %215 = load volatile i32, ptr %214, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %216 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 9
  %217 = load volatile i32, ptr %216, align 16
  store volatile i32 %217, ptr %4, align 8
  %218 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 9, i32 1
  %219 = load volatile i32, ptr %218, align 4
  store volatile i32 %219, ptr %5, align 4
  %220 = and i32 %217, 2147483647
  %221 = tail call i32 @llvm.umax.i32(i32 %219, i32 %220) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %222 = tail call i32 @llvm.umax.i32(i32 %215, i32 %221) #21
  %223 = mul i32 %222, 1280
  br label %224

224:                                              ; preds = %212, %209
  %225 = phi i32 [ %223, %212 ], [ 0, %209 ]
  %226 = tail call i32 @available_idle_cpu(i32 noundef %208) #21
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %224
  %229 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %208
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, ptrtoint (ptr @runqueues to i32)
  %232 = inttoptr i32 %231 to ptr
  %233 = getelementptr inbounds %struct.rq, ptr %232, i32 0, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds %struct.rq, ptr %232, i32 0, i32 10, i32 4
  %236 = load i32, ptr %235, align 4
  %237 = icmp ne i32 %234, %236
  %238 = icmp eq i32 %234, 0
  %239 = or i1 %238, %237
  br i1 %239, label %252, label %240

240:                                              ; preds = %228, %224
  %241 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %502, !prof !10

243:                                              ; preds = %240
  %244 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %208
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, ptrtoint (ptr @runqueues to i32)
  %247 = inttoptr i32 %246 to ptr
  %248 = getelementptr inbounds %struct.rq, ptr %247, i32 0, i32 31
  %249 = load i32, ptr %248, align 16
  %250 = shl i32 %249, 10
  %251 = icmp ult i32 %225, %250
  br i1 %251, label %502, label %252

252:                                              ; preds = %243, %228
  %253 = icmp eq i32 %208, %1
  br i1 %253, label %283, label %254

254:                                              ; preds = %252
  %255 = tail call zeroext i1 @cpus_share_cache(i32 noundef %1, i32 noundef %208) #21
  br i1 %255, label %256, label %283

256:                                              ; preds = %254
  %257 = tail call i32 @available_idle_cpu(i32 noundef %1) #21
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %256
  %260 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %261, ptrtoint (ptr @runqueues to i32)
  %263 = inttoptr i32 %262 to ptr
  %264 = getelementptr inbounds %struct.rq, ptr %263, i32 0, i32 1
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr inbounds %struct.rq, ptr %263, i32 0, i32 10, i32 4
  %267 = load i32, ptr %266, align 4
  %268 = icmp ne i32 %265, %267
  %269 = icmp eq i32 %265, 0
  %270 = or i1 %269, %268
  br i1 %270, label %283, label %271

271:                                              ; preds = %259, %256
  %272 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %502, !prof !10

274:                                              ; preds = %271
  %275 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %276 = load i32, ptr %275, align 4
  %277 = add i32 %276, ptrtoint (ptr @runqueues to i32)
  %278 = inttoptr i32 %277 to ptr
  %279 = getelementptr inbounds %struct.rq, ptr %278, i32 0, i32 31
  %280 = load i32, ptr %279, align 16
  %281 = shl i32 %280, 10
  %282 = icmp ult i32 %225, %281
  br i1 %282, label %502, label %283

283:                                              ; preds = %274, %259, %254, %252
  %284 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %285 = load i32, ptr %284, align 4
  %286 = and i32 %285, 2097152
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %327, label %288

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 26
  %290 = load i32, ptr %289, align 4
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %327

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %294 = load volatile i32, ptr %293, align 4
  %295 = and i32 %294, 15728640
  %296 = load volatile i32, ptr %293, align 4
  %297 = and i32 %296, 983040
  %298 = or i32 %297, %295
  %299 = load volatile i32, ptr %293, align 4
  %300 = and i32 %299, 256
  %301 = or i32 %298, %300
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %327

303:                                              ; preds = %292
  %304 = load i32, ptr %17, align 8
  %305 = icmp eq i32 %304, %1
  br i1 %305, label %306, label %327

306:                                              ; preds = %303
  %307 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %308 = inttoptr i32 %307 to ptr
  %309 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %308) #19, !srcloc !19
  %310 = add i32 %309, ptrtoint (ptr @runqueues to i32)
  %311 = inttoptr i32 %310 to ptr
  %312 = getelementptr inbounds %struct.rq, ptr %311, i32 0, i32 1
  %313 = load i32, ptr %312, align 4
  %314 = icmp ult i32 %313, 2
  br i1 %314, label %315, label %327

315:                                              ; preds = %306
  %316 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %502, !prof !10

318:                                              ; preds = %315
  %319 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %320 = load i32, ptr %319, align 4
  %321 = add i32 %320, ptrtoint (ptr @runqueues to i32)
  %322 = inttoptr i32 %321 to ptr
  %323 = getelementptr inbounds %struct.rq, ptr %322, i32 0, i32 31
  %324 = load i32, ptr %323, align 16
  %325 = shl i32 %324, 10
  %326 = icmp ult i32 %225, %325
  br i1 %326, label %502, label %327

327:                                              ; preds = %318, %306, %303, %292, %288, %283
  %328 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 11
  %329 = load i32, ptr %328, align 4
  store i32 %1, ptr %328, align 4
  %330 = icmp eq i32 %329, %1
  %331 = icmp eq i32 %329, %208
  %332 = or i1 %330, %331
  br i1 %332, label %373, label %333

333:                                              ; preds = %327
  %334 = tail call zeroext i1 @cpus_share_cache(i32 noundef %329, i32 noundef %208) #21
  br i1 %334, label %335, label %373

335:                                              ; preds = %333
  %336 = tail call i32 @available_idle_cpu(i32 noundef %329) #21
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %350

338:                                              ; preds = %335
  %339 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %329
  %340 = load i32, ptr %339, align 4
  %341 = add i32 %340, ptrtoint (ptr @runqueues to i32)
  %342 = inttoptr i32 %341 to ptr
  %343 = getelementptr inbounds %struct.rq, ptr %342, i32 0, i32 1
  %344 = load i32, ptr %343, align 4
  %345 = getelementptr inbounds %struct.rq, ptr %342, i32 0, i32 10, i32 4
  %346 = load i32, ptr %345, align 4
  %347 = icmp ne i32 %344, %346
  %348 = icmp eq i32 %344, 0
  %349 = or i1 %348, %347
  br i1 %349, label %373, label %350

350:                                              ; preds = %338, %335
  %351 = load i32, ptr %328, align 4
  %352 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %353 = load ptr, ptr %352, align 8
  %354 = lshr i32 %351, 5
  %355 = getelementptr i32, ptr %353, i32 %354
  %356 = load volatile i32, ptr %355, align 4
  %357 = and i32 %351, 31
  %358 = shl nuw i32 1, %357
  %359 = and i32 %356, %358
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %373, label %361

361:                                              ; preds = %350
  %362 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %364, label %502, !prof !10

364:                                              ; preds = %361
  %365 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %329
  %366 = load i32, ptr %365, align 4
  %367 = add i32 %366, ptrtoint (ptr @runqueues to i32)
  %368 = inttoptr i32 %367 to ptr
  %369 = getelementptr inbounds %struct.rq, ptr %368, i32 0, i32 31
  %370 = load i32, ptr %369, align 16
  %371 = shl i32 %370, 10
  %372 = icmp ult i32 %225, %371
  br i1 %372, label %502, label %373

373:                                              ; preds = %364, %350, %338, %333, %327
  %374 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %375 = icmp sgt i32 %374, 0
  %376 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %208
  %377 = load i32, ptr %376, align 4
  br i1 %375, label %378, label %387, !prof !10

378:                                              ; preds = %373
  %379 = add i32 %377, ptrtoint (ptr @sd_asym_cpucapacity to i32)
  %380 = inttoptr i32 %379 to ptr
  %381 = load volatile ptr, ptr %380, align 4
  %382 = icmp eq ptr %381, null
  br i1 %382, label %387, label %383

383:                                              ; preds = %378
  %384 = tail call fastcc i32 @select_idle_capacity(ptr noundef %0, ptr noundef nonnull %381, i32 noundef %208) #21
  %385 = icmp ult i32 %384, 16
  %386 = select i1 %385, i32 %384, i32 %208
  br label %502

387:                                              ; preds = %378, %373
  %388 = add i32 %377, ptrtoint (ptr @sd_llc to i32)
  %389 = inttoptr i32 %388 to ptr
  %390 = load volatile ptr, ptr %389, align 4
  %391 = icmp eq ptr %390, null
  br i1 %391, label %502, label %392

392:                                              ; preds = %387
  %393 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %394 = inttoptr i32 %393 to ptr
  %395 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %394) #19, !srcloc !19
  %396 = add i32 %395, ptrtoint (ptr @select_idle_mask to i32)
  %397 = inttoptr i32 %396 to ptr
  %398 = add i32 %395, ptrtoint (ptr @runqueues to i32)
  %399 = inttoptr i32 %398 to ptr
  %400 = add i32 %395, ptrtoint (ptr @sd_llc to i32)
  %401 = inttoptr i32 %400 to ptr
  %402 = load volatile ptr, ptr %401, align 4
  %403 = icmp eq ptr %402, null
  br i1 %403, label %502, label %404

404:                                              ; preds = %392
  %405 = getelementptr inbounds %struct.sched_domain, ptr %390, i32 0, i32 21
  %406 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %407 = load ptr, ptr %406, align 8
  %408 = load i32, ptr %405, align 4
  %409 = load i32, ptr %407, align 4
  %410 = and i32 %408, 65535
  %411 = and i32 %410, %409
  store i32 %411, ptr %397, align 4
  %412 = load i32, ptr @sysctl_sched_features, align 4
  %413 = and i32 %412, 2048
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %454, label %415

415:                                              ; preds = %404
  %416 = load volatile i32, ptr @jiffies, align 64
  %417 = getelementptr inbounds %struct.rq, ptr %399, i32 0, i32 49
  %418 = load i32, ptr %417, align 16
  %419 = icmp ult i32 %418, %416
  %420 = getelementptr inbounds %struct.rq, ptr %399, i32 0, i32 50
  %421 = load i64, ptr %420, align 8
  br i1 %419, label %422, label %430, !prof !10

422:                                              ; preds = %426, %415
  %423 = phi i64 [ %428, %426 ], [ %421, %415 ]
  %424 = phi i32 [ %427, %426 ], [ %418, %415 ]
  %425 = icmp eq i64 %423, 0
  br i1 %425, label %430, label %426

426:                                              ; preds = %422
  %427 = add nuw i32 %424, 1
  store i32 %427, ptr %417, align 16
  %428 = lshr i64 %423, 1
  store i64 %428, ptr %420, align 8
  %429 = icmp eq i32 %427, %416
  br i1 %429, label %430, label %422

430:                                              ; preds = %426, %422, %415
  %431 = phi i64 [ %421, %415 ], [ 0, %422 ], [ %428, %426 ]
  %432 = getelementptr inbounds %struct.sched_domain, ptr %402, i32 0, i32 16
  %433 = load i64, ptr %432, align 8
  %434 = add i64 %433, 1
  %435 = getelementptr inbounds %struct.sched_domain, ptr %390, i32 0, i32 20
  %436 = load i32, ptr %435, align 8
  %437 = zext i32 %436 to i64
  %438 = mul i64 %431, %437
  %439 = shl i64 %434, 2
  %440 = icmp ugt i64 %438, %439
  br i1 %440, label %441, label %451

441:                                              ; preds = %430
  %442 = trunc i64 %434 to i32
  %443 = icmp ult i64 %438, 4294967296
  br i1 %443, label %444, label %447, !prof !11

444:                                              ; preds = %441
  %445 = trunc i64 %438 to i32
  %446 = udiv i32 %445, %442
  br label %451

447:                                              ; preds = %441
  %448 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %442, i64 %438) #23, !srcloc !12
  %449 = extractvalue { i64, i64 } %448, 1
  %450 = trunc i64 %449 to i32
  br label %451

451:                                              ; preds = %447, %444, %430
  %452 = phi i32 [ 4, %430 ], [ %446, %444 ], [ %450, %447 ]
  %453 = tail call i64 @sched_clock() #21
  br label %454

454:                                              ; preds = %451, %404
  %455 = phi i64 [ %453, %451 ], [ 0, %404 ]
  %456 = phi i32 [ %452, %451 ], [ 2147483647, %404 ]
  %457 = add i32 %208, 1
  %458 = tail call i32 @cpumask_next_wrap(i32 noundef %208, ptr noundef %397, i32 noundef %457, i1 noundef zeroext false) #21
  %459 = icmp ult i32 %458, 16
  br i1 %459, label %460, label %483

460:                                              ; preds = %480, %454
  %461 = phi i32 [ %481, %480 ], [ %458, %454 ]
  %462 = phi i32 [ %463, %480 ], [ %456, %454 ]
  %463 = add i32 %462, -1
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %502, label %465

465:                                              ; preds = %460
  %466 = tail call i32 @available_idle_cpu(i32 noundef %461) #21
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %483

468:                                              ; preds = %465
  %469 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %461
  %470 = load i32, ptr %469, align 4
  %471 = add i32 %470, ptrtoint (ptr @runqueues to i32)
  %472 = inttoptr i32 %471 to ptr
  %473 = getelementptr inbounds %struct.rq, ptr %472, i32 0, i32 1
  %474 = load i32, ptr %473, align 4
  %475 = getelementptr inbounds %struct.rq, ptr %472, i32 0, i32 10, i32 4
  %476 = load i32, ptr %475, align 4
  %477 = icmp ne i32 %474, %476
  %478 = icmp eq i32 %474, 0
  %479 = or i1 %478, %477
  br i1 %479, label %480, label %483

480:                                              ; preds = %468
  %481 = tail call i32 @cpumask_next_wrap(i32 noundef %461, ptr noundef %397, i32 noundef %457, i1 noundef zeroext true) #21
  %482 = icmp ult i32 %481, 16
  br i1 %482, label %460, label %483

483:                                              ; preds = %480, %468, %465, %454
  %484 = phi i32 [ -1, %454 ], [ %461, %468 ], [ %461, %465 ], [ -1, %480 ]
  %485 = load i32, ptr @sysctl_sched_features, align 4
  %486 = and i32 %485, 2048
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %499, label %488

488:                                              ; preds = %483
  %489 = tail call i64 @sched_clock() #21
  %490 = sub i64 %489, %455
  %491 = getelementptr inbounds %struct.rq, ptr %399, i32 0, i32 50
  %492 = load i64, ptr %491, align 8
  %493 = tail call i64 @llvm.usub.sat.i64(i64 %492, i64 %490) #21
  store i64 %493, ptr %491, align 8
  %494 = getelementptr inbounds %struct.sched_domain, ptr %402, i32 0, i32 16
  %495 = load i64, ptr %494, align 8
  %496 = sub i64 %490, %495
  %497 = sdiv i64 %496, 8
  %498 = add i64 %497, %495
  store i64 %498, ptr %494, align 8
  br label %499

499:                                              ; preds = %488, %483
  %500 = icmp ult i32 %484, 16
  %501 = select i1 %500, i32 %484, i32 %208
  br label %502

502:                                              ; preds = %499, %460, %392, %387, %383, %364, %361, %318, %315, %274, %271, %243, %240, %207, %205
  %503 = phi i32 [ %206, %205 ], [ %208, %207 ], [ %386, %383 ], [ %208, %243 ], [ %1, %274 ], [ %1, %318 ], [ %329, %364 ], [ %208, %387 ], [ %208, %240 ], [ %1, %271 ], [ %1, %315 ], [ %329, %361 ], [ %208, %392 ], [ %501, %499 ], [ %208, %460 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  ret i32 %503
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pick_task_fair(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sched_entity, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @update_curr(ptr noundef %2)
  br label %15

15:                                               ; preds = %14, %10, %6
  %16 = phi ptr [ null, %6 ], [ %8, %14 ], [ null, %10 ]
  %17 = tail call fastcc ptr @pick_next_entity(ptr noundef %2, ptr noundef %16)
  %18 = getelementptr i8, ptr %17, i32 -640
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi ptr [ %18, %15 ], [ null, %1 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @migrate_task_rq_fair(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 512
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 0, i32 2
  %8 = load volatile i32, ptr %7, align 8
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @runqueues to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 10, i32 7
  %14 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 10, i32 6
  br label %15

15:                                               ; preds = %15, %6
  %16 = load i64, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  %17 = load i64, ptr %14, align 32
  %18 = icmp eq i64 %17, %16
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 6
  %21 = load i64, ptr %20, align 16
  %22 = sub i64 %21, %16
  store i64 %22, ptr %20, align 16
  br label %23

23:                                               ; preds = %19, %2
  %24 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %29 = load volatile i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  tail call fastcc void @detach_entity_cfs_rq(ptr noundef %30)
  br label %72

31:                                               ; preds = %23
  %32 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 0, i32 2
  %33 = load volatile i32, ptr %32, align 8
  %34 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = load volatile i32, ptr %32, align 8
  %37 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, ptrtoint (ptr @runqueues to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.rq, ptr %40, i32 0, i32 10, i32 16
  %42 = getelementptr inbounds %struct.rq, ptr %40, i32 0, i32 10, i32 15
  br label %43

43:                                               ; preds = %43, %31
  %44 = load i64, ptr %41, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !41
  %45 = load i64, ptr %42, align 64
  %46 = icmp eq i64 %45, %44
  br i1 %46, label %47, label %43

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %49 = add i32 %35, ptrtoint (ptr @runqueues to i32)
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 @__update_load_avg_blocked_se(i64 noundef %44, ptr noundef %48) #21
  %52 = getelementptr inbounds %struct.rq, ptr %50, i32 0, i32 10, i32 18
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %52) #21
  %54 = getelementptr inbounds %struct.rq, ptr %50, i32 0, i32 10, i32 18, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 7
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.rq, ptr %50, i32 0, i32 10, i32 18, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %58
  store i32 %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 5
  %63 = load i32, ptr %62, align 32
  %64 = getelementptr inbounds %struct.rq, ptr %50, i32 0, i32 10, i32 18, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, %63
  store i32 %66, ptr %64, align 8
  %67 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.rq, ptr %50, i32 0, i32 10, i32 18, i32 4
  %70 = load i32, ptr %69, align 16
  %71 = add i32 %70, %68
  store i32 %71, ptr %69, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %53) #21
  br label %72

72:                                               ; preds = %47, %27
  %73 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10
  store i64 0, ptr %73, align 64
  %74 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 4
  store i64 0, ptr %74, align 32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rq_online_fair(ptr nocapture noundef readnone %0) #3 {
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 8) #21
  %4 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  switch i32 %4, label %6 [
    i32 0, label %11
    i32 2, label %5
  ]

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #21, !range !9
  %9 = sub nuw nsw i32 32, %8
  %10 = select i1 %7, i32 0, i32 %9
  br label %11

11:                                               ; preds = %6, %5, %1
  %12 = phi i32 [ %10, %6 ], [ %3, %5 ], [ 1, %1 ]
  %13 = load i32, ptr @normalized_sysctl_sched_min_granularity, align 4
  %14 = mul i32 %13, %12
  store i32 %14, ptr @sysctl_sched_min_granularity, align 4
  %15 = load i32, ptr @normalized_sysctl_sched_latency, align 4
  %16 = mul i32 %15, %12
  store i32 %16, ptr @sysctl_sched_latency, align 4
  %17 = load i32, ptr @normalized_sysctl_sched_wakeup_granularity, align 4
  %18 = mul i32 %17, %12
  store i32 %18, ptr @sysctl_sched_wakeup_granularity, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rq_offline_fair(ptr nocapture noundef readnone %0) #3 {
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 8) #21
  %4 = load i32, ptr @sysctl_sched_tunable_scaling, align 4
  switch i32 %4, label %6 [
    i32 0, label %11
    i32 2, label %5
  ]

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #21, !range !9
  %9 = sub nuw nsw i32 32, %8
  %10 = select i1 %7, i32 0, i32 %9
  br label %11

11:                                               ; preds = %6, %5, %1
  %12 = phi i32 [ %10, %6 ], [ %3, %5 ], [ 1, %1 ]
  %13 = load i32, ptr @normalized_sysctl_sched_min_granularity, align 4
  %14 = mul i32 %13, %12
  store i32 %14, ptr @sysctl_sched_min_granularity, align 4
  %15 = load i32, ptr @normalized_sysctl_sched_latency, align 4
  %16 = mul i32 %15, %12
  store i32 %16, ptr @sysctl_sched_latency, align 4
  %17 = load i32, ptr @normalized_sysctl_sched_wakeup_granularity, align 4
  %18 = mul i32 %17, %12
  store i32 %18, ptr @sysctl_sched_wakeup_granularity, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @task_tick_fair(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 0
  %10 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %11 = load volatile i32, ptr %10, align 8
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 10
  tail call fastcc void @update_curr(ptr noundef %16) #21
  tail call fastcc void @update_load_avg(ptr noundef %16, ptr noundef nonnull %6, i32 noundef 1) #21
  br i1 %9, label %18, label %17

17:                                               ; preds = %8
  tail call void @resched_curr(ptr noundef %15) #21
  br label %100

18:                                               ; preds = %8
  %19 = load i32, ptr @sysctl_sched_features, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr %struct.rq, ptr %15, i32 0, i32 57
  %24 = tail call zeroext i1 @hrtimer_active(ptr noundef %23) #21
  br i1 %24, label %100, label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 10, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %100

29:                                               ; preds = %25
  %30 = tail call fastcc i64 @sched_slice(ptr noundef %16, ptr noundef nonnull %6) #21
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 5
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 7
  %35 = load i64, ptr %34, align 8
  %36 = sub i64 %33, %35
  %37 = trunc i64 %36 to i32
  %38 = icmp ugt i32 %37, %31
  br i1 %38, label %39, label %81

39:                                               ; preds = %29
  tail call void @resched_curr(ptr noundef %15) #21
  %40 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 10, i32 11
  %41 = load ptr, ptr %40, align 64
  %42 = icmp eq ptr %41, %6
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load volatile i32, ptr %10, align 8
  %45 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, ptrtoint (ptr @runqueues to i32)
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 10, i32 11
  %50 = load ptr, ptr %49, align 64
  %51 = icmp eq ptr %50, %6
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store ptr null, ptr %49, align 64
  br label %53

53:                                               ; preds = %52, %43, %39
  %54 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 10, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %6
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load volatile i32, ptr %10, align 8
  %59 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, ptrtoint (ptr @runqueues to i32)
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.rq, ptr %62, i32 0, i32 10, i32 10
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %6
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store ptr null, ptr %63, align 4
  br label %67

67:                                               ; preds = %66, %57, %53
  %68 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 10, i32 12
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %6
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load volatile i32, ptr %10, align 8
  %73 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, ptrtoint (ptr @runqueues to i32)
  %76 = inttoptr i32 %75 to ptr
  %77 = getelementptr inbounds %struct.rq, ptr %76, i32 0, i32 10, i32 12
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %6
  br i1 %79, label %80, label %100

80:                                               ; preds = %71
  store ptr null, ptr %77, align 4
  br label %100

81:                                               ; preds = %29
  %82 = load i32, ptr @sysctl_sched_min_granularity, align 4
  %83 = icmp ugt i32 %82, %37
  br i1 %83, label %100, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 10, i32 8, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  %88 = getelementptr i8, ptr %86, i32 -8
  %89 = select i1 %87, ptr null, ptr %88
  %90 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %91 = load i64, ptr %90, align 16
  %92 = getelementptr inbounds %struct.sched_entity, ptr %89, i32 0, i32 6
  %93 = load i64, ptr %92, align 16
  %94 = sub i64 %91, %93
  %95 = icmp sgt i64 %94, -1
  %96 = and i64 %30, 4294967295
  %97 = icmp sgt i64 %94, %96
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  tail call void @resched_curr(ptr noundef %15) #21
  br label %100

100:                                              ; preds = %99, %84, %81, %80, %71, %67, %25, %22, %17, %3
  %101 = load volatile i32, ptr @sched_numa_balancing, align 4
  %102 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %138, !prof !10

104:                                              ; preds = %100
  %105 = icmp eq ptr %1, null
  br i1 %105, label %135, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %135, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, ptrtoint (ptr @runqueues to i32)
  %116 = inttoptr i32 %115 to ptr
  %117 = getelementptr inbounds %struct.rq, ptr %116, i32 0, i32 31
  %118 = load i32, ptr %117, align 16
  %119 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 7
  %120 = load volatile i32, ptr %119, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %121 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9
  %122 = load volatile i32, ptr %121, align 16
  store volatile i32 %122, ptr %4, align 8
  %123 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9, i32 1
  %124 = load volatile i32, ptr %123, align 4
  store volatile i32 %124, ptr %5, align 4
  %125 = and i32 %122, 2147483647
  %126 = tail call i32 @llvm.umax.i32(i32 %124, i32 %125) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %127 = tail call i32 @llvm.umax.i32(i32 %120, i32 %126) #21
  %128 = mul i32 %127, 1280
  %129 = shl i32 %118, 10
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %110
  %132 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 5
  %133 = load i32, ptr %132, align 32
  %134 = tail call i32 @llvm.umax.i32(i32 %133, i32 1) #21
  br label %135

135:                                              ; preds = %131, %110, %106, %104
  %136 = phi i32 [ %134, %131 ], [ 0, %106 ], [ 0, %104 ], [ 0, %110 ]
  %137 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 36
  store i32 %136, ptr %137, align 64
  br label %138

138:                                              ; preds = %135, %100
  %139 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %140 = load volatile i32, ptr %139, align 8
  %141 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %140
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %142, ptrtoint (ptr @runqueues to i32)
  %144 = inttoptr i32 %143 to ptr
  %145 = getelementptr inbounds %struct.rq, ptr %144, i32 0, i32 29
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.root_domain, ptr %146, i32 0, i32 6
  %148 = load volatile i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %193

150:                                              ; preds = %138
  %151 = getelementptr inbounds %struct.rq, ptr %144, i32 0, i32 40
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %152
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, ptrtoint (ptr @runqueues to i32)
  %156 = inttoptr i32 %155 to ptr
  %157 = getelementptr inbounds %struct.rq, ptr %156, i32 0, i32 10, i32 15, i32 7
  %158 = load volatile i32, ptr %157, align 8
  %159 = load i32, ptr @sysctl_sched_features, align 4
  %160 = and i32 %159, 1048576
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %150
  %163 = getelementptr inbounds %struct.rq, ptr %156, i32 0, i32 10, i32 15, i32 9
  %164 = load volatile i32, ptr %163, align 16
  %165 = tail call i32 @llvm.umax.i32(i32 %158, i32 %164) #21
  br label %166

166:                                              ; preds = %162, %150
  %167 = phi i32 [ %165, %162 ], [ %158, %150 ]
  %168 = getelementptr inbounds %struct.rq, ptr %156, i32 0, i32 32
  %169 = load i32, ptr %168, align 4
  %170 = tail call i32 @llvm.umin.i32(i32 %167, i32 %169) #21
  %171 = mul i32 %170, 1280
  %172 = getelementptr inbounds %struct.rq, ptr %156, i32 0, i32 31
  %173 = load i32, ptr %172, align 16
  %174 = shl i32 %173, 10
  %175 = icmp ult i32 %171, %174
  br i1 %175, label %193, label %176

176:                                              ; preds = %166
  store volatile i32 2, ptr %147, align 4
  %177 = load ptr, ptr %145, align 8
  %178 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_overutilized_tp, i32 0, i32 1), align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %176
  %181 = tail call ptr @llvm.thread.pointer() #21
  %182 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 2
  %183 = load i32, ptr %182, align 8
  %184 = lshr i32 %183, 5
  %185 = getelementptr i32, ptr @__cpu_online_mask, i32 %184
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %183, 31
  %188 = shl nuw i32 1, %187
  %189 = and i32 %188, %186
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %180
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %192 = tail call i32 @__traceiter_sched_overutilized_tp(ptr noundef null, ptr noundef %177, i1 noundef zeroext true) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !35
  br label %193

193:                                              ; preds = %191, %180, %176, %166, %138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @task_fork_fair(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #19, !srcloc !19
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  tail call void @raw_spin_rq_lock_nested(ptr noundef %7, i32 noundef 0) #21
  %8 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 19
  %9 = load i32, ptr %8, align 32
  %10 = and i32 %9, 3
  store i32 %10, ptr %8, align 32
  %11 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 33
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %12, @balance_push_callback
  %15 = and i1 %13, %14
  %16 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %1
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.10) #21
  br label %20

20:                                               ; preds = %19, %1
  tail call void @update_rq_clock(ptr noundef %7) #21
  %21 = tail call ptr @llvm.thread.pointer() #21
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load volatile i32, ptr %22, align 8
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, ptrtoint (ptr @runqueues to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.rq, ptr %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.rq, ptr %27, i32 0, i32 10, i32 9
  %30 = load ptr, ptr %29, align 8
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  tail call fastcc void @update_curr(ptr noundef %28)
  %33 = getelementptr inbounds %struct.sched_entity, ptr %30, i32 0, i32 6
  %34 = load i64, ptr %33, align 16
  %35 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 6
  store i64 %34, ptr %35, align 16
  br label %36

36:                                               ; preds = %32, %20
  %37 = getelementptr inbounds %struct.rq, ptr %27, i32 0, i32 10, i32 6
  %38 = load i64, ptr %37, align 32
  %39 = load i32, ptr @sysctl_sched_features, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %88, label %42

42:                                               ; preds = %36
  %43 = tail call fastcc i64 @sched_slice(ptr noundef %28, ptr noundef %2) #21
  %44 = load i32, ptr %2, align 64
  %45 = icmp eq i32 %44, 1024
  br i1 %45, label %85, label %46, !prof !11

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56, !prof !10

50:                                               ; preds = %46
  %51 = icmp eq i32 %44, 0
  br i1 %51, label %54, label %52, !prof !10

52:                                               ; preds = %50
  %53 = udiv i32 -1, %44
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %53, %52 ], [ -1, %50 ]
  store i32 %55, ptr %47, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = phi i32 [ %48, %46 ], [ %55, %54 ]
  %58 = zext i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 10
  %60 = icmp ult i32 %57, 4194304
  %61 = trunc i64 %59 to i32
  br i1 %60, label %69, label %62

62:                                               ; preds = %56
  %63 = lshr i32 %57, 22
  %64 = tail call i32 @llvm.ctlz.i32(i32 %63, i1 true) #21, !range !9
  %65 = sub nuw nsw i32 32, %64
  %66 = zext i32 %65 to i64
  %67 = lshr i64 %59, %66
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i32 [ %68, %62 ], [ %61, %56 ]
  %71 = phi i32 [ %64, %62 ], [ 32, %56 ]
  %72 = and i64 %43, 4294967295
  %73 = zext i32 %70 to i64
  %74 = mul nuw i64 %72, %73
  %75 = zext i32 %71 to i64
  %76 = lshr i64 %74, %75
  %77 = icmp ult i64 %43, 4294967296
  br i1 %77, label %85, label %78

78:                                               ; preds = %69
  %79 = lshr i64 %43, 32
  %80 = mul nuw i64 %79, %73
  %81 = sub nuw nsw i32 32, %71
  %82 = zext i32 %81 to i64
  %83 = shl i64 %80, %82
  %84 = add i64 %83, %76
  br label %85

85:                                               ; preds = %78, %69, %42
  %86 = phi i64 [ %43, %42 ], [ %84, %78 ], [ %76, %69 ]
  %87 = add i64 %86, %38
  br label %88

88:                                               ; preds = %85, %36
  %89 = phi i64 [ %38, %36 ], [ %87, %85 ]
  %90 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 6
  %91 = load i64, ptr %90, align 16
  %92 = sub i64 %89, %91
  %93 = icmp sgt i64 %92, 0
  %94 = select i1 %93, i64 %89, i64 %91
  store i64 %94, ptr %90, align 16
  %95 = load i32, ptr @sysctl_sched_child_runs_first, align 4
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %96, i1 %31, i1 false
  br i1 %97, label %98, label %105

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.sched_entity, ptr %30, i32 0, i32 6
  %100 = load i64, ptr %99, align 16
  %101 = sub i64 %100, %94
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  store i64 %94, ptr %99, align 16
  store i64 %100, ptr %90, align 16
  tail call void @resched_curr(ptr noundef %7) #21
  %104 = load i64, ptr %90, align 16
  br label %105

105:                                              ; preds = %103, %98, %88
  %106 = phi i64 [ %104, %103 ], [ %94, %98 ], [ %94, %88 ]
  %107 = load i64, ptr %37, align 32
  %108 = sub i64 %106, %107
  store i64 %108, ptr %90, align 16
  tail call void @raw_spin_rq_unlock(ptr noundef %7) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @task_dead_fair(ptr noundef %0) #1 {
  %2 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = load volatile i32, ptr %2, align 8
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 10, i32 16
  %12 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 10, i32 15
  br label %13

13:                                               ; preds = %13, %1
  %14 = load i64, ptr %11, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !41
  %15 = load i64, ptr %12, align 64
  %16 = icmp eq i64 %15, %14
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %19 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 @__update_load_avg_blocked_se(i64 noundef %14, ptr noundef %18) #21
  %22 = getelementptr inbounds %struct.rq, ptr %20, i32 0, i32 10, i32 18
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #21
  %24 = getelementptr inbounds %struct.rq, ptr %20, i32 0, i32 10, i32 18, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 7
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.rq, ptr %20, i32 0, i32 10, i32 18, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %28
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 5
  %33 = load i32, ptr %32, align 32
  %34 = getelementptr inbounds %struct.rq, ptr %20, i32 0, i32 10, i32 18, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, %33
  store i32 %36, ptr %34, align 8
  %37 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.rq, ptr %20, i32 0, i32 10, i32 18, i32 4
  %40 = load i32, ptr %39, align 16
  %41 = add i32 %40, %38
  store i32 %41, ptr %39, align 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switched_from_fair(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %4 = load volatile i32, ptr %3, align 8
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @runqueues to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 5
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 512
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 49
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 10, i32 6
  %27 = load i64, ptr %26, align 32
  %28 = load i32, ptr @sysctl_sched_latency, align 4
  %29 = load i32, ptr @sysctl_sched_features, align 4
  %30 = and i32 %29, 1
  %31 = lshr i32 %28, %30
  %32 = zext i32 %31 to i64
  %33 = sub i64 %27, %32
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %35 = load i64, ptr %34, align 16
  %36 = sub i64 %33, %35
  %37 = icmp sgt i64 %36, 0
  %38 = select i1 %37, i64 %33, i64 %35
  store i64 %38, ptr %34, align 16
  %39 = load i64, ptr %26, align 32
  %40 = sub i64 %38, %39
  store i64 %40, ptr %34, align 16
  br label %41

41:                                               ; preds = %25, %20, %12, %2
  %42 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  tail call fastcc void @detach_entity_cfs_rq(ptr noundef %42) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switched_to_fair(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %4 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load volatile i32, ptr %4, align 8
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @runqueues to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.rq, ptr %14, i32 0, i32 10
  %16 = load i32, ptr @sysctl_sched_features, align 4
  %17 = lshr i32 %16, 15
  %18 = and i32 %17, 2
  %19 = xor i32 %18, 2
  tail call fastcc void @update_load_avg(ptr noundef %15, ptr noundef %3, i32 noundef %19) #21
  tail call fastcc void @attach_entity_load_avg(ptr noundef %15, ptr noundef %3) #21
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %47 [
    i32 0, label %22
    i32 1, label %41
  ]

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 5
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  %28 = load volatile i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 512
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 49
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 6
  %37 = load i64, ptr %36, align 32
  %38 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 6
  %39 = load i64, ptr %38, align 16
  %40 = add i64 %39, %37
  store i64 %40, ptr %38, align 16
  br label %47

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @resched_curr(ptr noundef %0) #21
  br label %47

46:                                               ; preds = %41
  tail call void @check_preempt_curr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21
  br label %47

47:                                               ; preds = %46, %45, %35, %30, %22, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prio_changed_fair(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %17 = load i32, ptr %16, align 16
  %18 = icmp sgt i32 %17, %2
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call void @resched_curr(ptr noundef %0) #21
  br label %21

20:                                               ; preds = %11
  tail call void @check_preempt_curr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21
  br label %21

21:                                               ; preds = %20, %19, %15, %7, %3
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_rr_interval_fair(ptr nocapture noundef readonly %0, ptr noundef %1) #14 {
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %8 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %9 = load volatile i32, ptr %8, align 8
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @runqueues to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 10
  %15 = tail call fastcc i64 @sched_slice(ptr noundef %14, ptr noundef %7)
  %16 = trunc i64 %15 to i32
  %17 = udiv i32 %16, 10000000
  br label %18

18:                                               ; preds = %6, %2
  %19 = phi i32 [ %17, %6 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @update_curr_fair(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10
  tail call fastcc void @update_curr(ptr noundef %10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_cfs_stats(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @print_cfs_rq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7) #21
  br label %10

10:                                               ; preds = %9, %2
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_cfs_rq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_sched_fair_class() local_unnamed_addr #0 section ".init.text" {
  tail call void @open_softirq(i32 noundef 7, ptr noundef nonnull @run_rebalance_domains) #21
  %1 = load volatile i32, ptr @jiffies, align 64
  store i32 %1, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 4), align 16
  %2 = load volatile i32, ptr @jiffies, align 64
  store i32 %2, ptr getelementptr inbounds (%struct.anon.126, ptr @nohz, i32 0, i32 5), align 4
  store i32 0, ptr @nohz, align 64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @run_rebalance_domains(ptr nocapture noundef readnone %0) #1 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #19, !srcloc !19
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 35
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 34
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  store i8 0, ptr %11, align 4
  br i1 %9, label %17, label %16

16:                                               ; preds = %15
  tail call fastcc void @_nohz_idle_balance(ptr noundef %6, i32 noundef %13) #21
  br label %20

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 40
  %19 = load i32, ptr %18, align 4
  tail call fastcc void @update_blocked_averages(i32 noundef %19)
  tail call fastcc void @rebalance_domains(ptr noundef %6, i32 noundef %10)
  br label %20

20:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @sched_trace_cfs_rq_avg(ptr noundef readnone %0) #9 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sched_trace_cfs_rq_path(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) #14 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  br i1 %4, label %6, label %9

6:                                                ; preds = %3
  br i1 %5, label %12, label %7

7:                                                ; preds = %6
  %8 = tail call i32 @strlcpy(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i32 noundef %2) #21
  br label %10

9:                                                ; preds = %3
  br i1 %5, label %12, label %10

10:                                               ; preds = %9, %7
  %11 = tail call i32 @strlcpy(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i32 noundef %2) #21
  br label %12

12:                                               ; preds = %10, %9, %6
  ret ptr %1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sched_trace_cfs_rq_cpu(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 1444
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @sched_trace_rq_avg_rt(ptr noundef readnone %0) #9 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 44
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @sched_trace_rq_avg_dl(ptr noundef readnone %0) #9 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 45
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @sched_trace_rq_avg_irq(ptr nocapture readnone %0) #9 {
  ret ptr null
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sched_trace_rq_cpu(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sched_trace_rq_cpu_capacity(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 31
  %5 = load i32, ptr %4, align 16
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @sched_trace_rd_span(ptr noundef readnone %0) #9 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.root_domain, ptr %0, i32 0, i32 3
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sched_trace_rq_nr_running(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_curr(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 1312
  %5 = load i32, ptr %4, align 32
  %6 = icmp ult i32 %5, 2
  %7 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %1
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr i8, ptr %0, i32 1344
  %13 = load i64, ptr %12, align 64
  %14 = icmp eq ptr %3, null
  br i1 %14, label %141, label %15, !prof !10

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 4
  %17 = load i64, ptr %16, align 32
  %18 = sub i64 %13, %17
  %19 = icmp slt i64 %18, 1
  br i1 %19, label %141, label %20, !prof !10

20:                                               ; preds = %15
  store i64 %13, ptr %16, align 32
  %21 = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 5
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %22, %18
  store i64 %23, ptr %21, align 8
  %24 = load i32, ptr %3, align 64
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %65, label %26, !prof !11

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.load_weight, ptr %3, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36, !prof !10

30:                                               ; preds = %26
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %30
  %33 = udiv i32 -1, %24
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %33, %32 ], [ -1, %30 ]
  store i32 %35, ptr %27, align 4
  br label %36

36:                                               ; preds = %34, %26
  %37 = phi i32 [ %28, %26 ], [ %35, %34 ]
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 10
  %40 = icmp ult i32 %37, 4194304
  %41 = trunc i64 %39 to i32
  br i1 %40, label %49, label %42

42:                                               ; preds = %36
  %43 = lshr i32 %37, 22
  %44 = tail call i32 @llvm.ctlz.i32(i32 %43, i1 true) #21, !range !9
  %45 = sub nuw nsw i32 32, %44
  %46 = zext i32 %45 to i64
  %47 = lshr i64 %39, %46
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i32 [ %48, %42 ], [ %41, %36 ]
  %51 = phi i32 [ %44, %42 ], [ 32, %36 ]
  %52 = and i64 %18, 4294967295
  %53 = zext i32 %50 to i64
  %54 = mul nuw i64 %52, %53
  %55 = zext i32 %51 to i64
  %56 = lshr i64 %54, %55
  %57 = icmp ult i64 %18, 4294967296
  br i1 %57, label %65, label %58

58:                                               ; preds = %49
  %59 = lshr i64 %18, 32
  %60 = mul nuw nsw i64 %59, %53
  %61 = sub nuw nsw i32 32, %51
  %62 = zext i32 %61 to i64
  %63 = shl i64 %60, %62
  %64 = add i64 %63, %56
  br label %65

65:                                               ; preds = %58, %49, %20
  %66 = phi i64 [ %18, %20 ], [ %64, %58 ], [ %56, %49 ]
  %67 = getelementptr inbounds %struct.sched_entity, ptr %3, i32 0, i32 6
  %68 = load i64, ptr %67, align 16
  %69 = add i64 %68, %66
  store i64 %69, ptr %67, align 16
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 8, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 6
  %74 = load i64, ptr %73, align 32
  %75 = icmp eq ptr %70, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.sched_entity, ptr %70, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.sched_entity, ptr %70, i32 0, i32 6
  %82 = load i64, ptr %81, align 16
  br label %83

83:                                               ; preds = %80, %76, %65
  %84 = phi i64 [ %82, %80 ], [ %74, %65 ], [ %74, %76 ]
  %85 = phi ptr [ %70, %80 ], [ null, %65 ], [ null, %76 ]
  %86 = icmp eq ptr %72, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = icmp eq ptr %85, null
  %89 = getelementptr i8, ptr %72, i32 40
  %90 = load i64, ptr %89, align 16
  br i1 %88, label %95, label %91

91:                                               ; preds = %87
  %92 = sub i64 %90, %84
  %93 = icmp slt i64 %92, 0
  %94 = select i1 %93, i64 %90, i64 %84
  br label %95

95:                                               ; preds = %91, %87, %83
  %96 = phi i64 [ %84, %83 ], [ %94, %91 ], [ %90, %87 ]
  %97 = sub i64 %96, %74
  %98 = icmp sgt i64 %97, 0
  %99 = select i1 %98, i64 %96, i64 %74
  store i64 %99, ptr %73, align 32
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !36
  %100 = load i64, ptr %73, align 32
  %101 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 7
  store i64 %100, ptr %101, align 8
  %102 = getelementptr i8, ptr %3, i32 -640
  %103 = load i64, ptr %67, align 16
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %95
  %107 = tail call ptr @llvm.thread.pointer() #21
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = lshr i32 %109, 5
  %111 = getelementptr i32, ptr @__cpu_online_mask, i32 %110
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %109, 31
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %106
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !42
  %118 = tail call i32 @__traceiter_sched_stat_runtime(ptr noundef null, ptr noundef %102, i64 noundef %18, i64 noundef %103) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !43
  br label %119

119:                                              ; preds = %117, %106, %95
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %120 = getelementptr i8, ptr %3, i32 1136
  %121 = load volatile ptr, ptr %120, align 16
  %122 = getelementptr inbounds %struct.css_set, ptr %121, i32 0, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %123, i32 0, i32 12
  %125 = load ptr, ptr %124, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %119
  tail call void @__cgroup_account_cputime(ptr noundef %123, i64 noundef %18) #21
  br label %128

128:                                              ; preds = %127, %119
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  %129 = getelementptr i8, ptr %3, i32 976
  %130 = load ptr, ptr %129, align 16
  %131 = getelementptr inbounds %struct.signal_struct, ptr %130, i32 0, i32 21, i32 1
  %132 = load volatile i32, ptr %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %128
  %135 = getelementptr i8, ptr %3, i32 980
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.signal_struct, ptr %130, i32 0, i32 20, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %139) #21, !srcloc !15
  %140 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %139, ptr %139, i64 %18, ptr elementtype(i64) %139) #21, !srcloc !44
  br label %141

141:                                              ; preds = %138, %134, %128, %15, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_stat_runtime(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cgroup_account_cputime(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_load_avg(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #18 {
  %4 = getelementptr i8, ptr %0, i32 1312
  %5 = load i32, ptr %4, align 32
  %6 = icmp ult i32 %5, 2
  %7 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %3
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr i8, ptr %0, i32 1352
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr i8, ptr %0, i32 1360
  %15 = load i32, ptr %14, align 16
  %16 = zext i32 %15 to i64
  %17 = sub i64 %13, %16
  %18 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10
  %19 = load i64, ptr %18, align 64
  %20 = icmp ne i64 %19, 0
  %21 = and i32 %2, 2
  %22 = icmp eq i32 %21, 0
  %23 = and i1 %22, %20
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = tail call i32 @__update_load_avg_se(i64 noundef %17, ptr noundef %0, ptr noundef %1) #21
  br label %26

26:                                               ; preds = %24, %11
  %27 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 18, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 18
  %32 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 46718
  tail call void @_raw_spin_lock(ptr noundef %31) #21
  %35 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 18, i32 3
  %36 = load i32, ptr %35, align 4
  store i32 0, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 18, i32 2
  %38 = load i32, ptr %37, align 8
  store i32 0, ptr %37, align 8
  %39 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 18, i32 4
  %40 = load i32, ptr %39, align 16
  store i32 0, ptr %39, align 16
  store i32 0, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !45
  %41 = load i16, ptr %31, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !46
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !47
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !48
  %43 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 5
  %44 = load volatile i32, ptr %43, align 4
  %45 = tail call i32 @llvm.usub.sat.i32(i32 %44, i32 %38) #21
  store volatile i32 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 1
  %47 = mul i32 %38, %34
  %48 = zext i32 %47 to i64
  %49 = load volatile i64, ptr %46, align 8
  %50 = tail call i64 @llvm.usub.sat.i64(i64 %49, i64 %48) #21
  store volatile i64 %50, ptr %46, align 8
  %51 = trunc i64 %50 to i32
  %52 = mul i32 %45, 46718
  %53 = tail call i32 @llvm.umax.i32(i32 %52, i32 %51) #21
  %54 = zext i32 %53 to i64
  store i64 %54, ptr %46, align 8
  %55 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 7
  %56 = load volatile i32, ptr %55, align 4
  %57 = tail call i32 @llvm.usub.sat.i32(i32 %56, i32 %36) #21
  store volatile i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 3
  %59 = mul i32 %36, %34
  %60 = load volatile i32, ptr %58, align 4
  %61 = tail call i32 @llvm.usub.sat.i32(i32 %60, i32 %59) #21
  store volatile i32 %61, ptr %58, align 4
  %62 = mul i32 %57, 46718
  %63 = tail call i32 @llvm.umax.i32(i32 %61, i32 %62) #21
  store i32 %63, ptr %58, align 8
  %64 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 6
  %65 = load volatile i32, ptr %64, align 4
  %66 = tail call i32 @llvm.usub.sat.i32(i32 %65, i32 %40) #21
  store volatile i32 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 2
  %68 = mul i32 %40, %34
  %69 = zext i32 %68 to i64
  %70 = load volatile i64, ptr %67, align 8
  %71 = tail call i64 @llvm.usub.sat.i64(i64 %70, i64 %69) #21
  store volatile i64 %71, ptr %67, align 8
  %72 = trunc i64 %71 to i32
  %73 = mul i32 %66, 46718
  %74 = tail call i32 @llvm.umax.i32(i32 %73, i32 %72) #21
  %75 = zext i32 %74 to i64
  store i64 %75, ptr %67, align 16
  br label %76

76:                                               ; preds = %30, %26
  %77 = phi i32 [ 1, %30 ], [ 0, %26 ]
  %78 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15
  %79 = tail call i32 @__update_load_avg_cfs_rq(i64 noundef %17, ptr noundef %0) #21
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !49
  %80 = load i64, ptr %78, align 64
  %81 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 16
  store i64 %80, ptr %81, align 64
  %82 = load i64, ptr %18, align 64
  %83 = icmp ne i64 %82, 0
  %84 = and i32 %2, 4
  %85 = icmp eq i32 %84, 0
  %86 = or i1 %85, %83
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  tail call fastcc void @attach_entity_load_avg(ptr noundef %0, ptr noundef %1)
  br label %111

88:                                               ; preds = %76
  %89 = or i32 %79, %77
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %88
  %92 = getelementptr i8, ptr %0, i32 1444
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %97 = inttoptr i32 %96 to ptr
  %98 = load volatile ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %111, label %100

100:                                              ; preds = %91
  %101 = load ptr, ptr %98, align 4
  %102 = load i32, ptr %4, align 32
  %103 = icmp ult i32 %102, 2
  %104 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %105 = xor i1 %104, true
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %108, !prof !10

107:                                              ; preds = %100
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %108

108:                                              ; preds = %107, %100
  %109 = getelementptr i8, ptr %0, i32 1320
  %110 = load i64, ptr %109, align 8
  tail call void %101(ptr noundef nonnull %98, i64 noundef %110, i32 noundef 0) #21
  br label %111

111:                                              ; preds = %108, %91, %88, %87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__update_load_avg_se(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @attach_entity_load_avg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15
  %4 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 46718
  %7 = load i64, ptr %3, align 64
  %8 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10
  store i64 %7, ptr %8, align 64
  %9 = load i32, ptr %4, align 4
  %10 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 4
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = mul i32 %12, %6
  %14 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 3
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %6
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 2
  store i64 %18, ptr %19, align 16
  %20 = zext i32 %6 to i64
  %21 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 1
  store i64 %20, ptr %21, align 8
  %22 = load i32, ptr %1, align 64
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 10, i32 5
  %25 = load i32, ptr %24, align 32
  br i1 %23, label %39, label %26

26:                                               ; preds = %2
  %27 = zext i32 %25 to i64
  %28 = mul nuw i64 %27, %20
  %29 = icmp ult i64 %28, 4294967296
  br i1 %29, label %30, label %34, !prof !11

30:                                               ; preds = %26
  %31 = trunc i64 %28 to i32
  %32 = udiv i32 %31, %22
  %33 = zext i32 %32 to i64
  br label %37

34:                                               ; preds = %26
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %28) #23, !srcloc !12
  %36 = extractvalue { i64, i64 } %35, 1
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i64 [ %33, %30 ], [ %36, %34 ]
  store i64 %38, ptr %21, align 8
  br label %39

39:                                               ; preds = %37, %2
  %40 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 5
  %41 = load i32, ptr %40, align 32
  %42 = add i32 %41, %25
  store i32 %42, ptr %40, align 32
  %43 = load i32, ptr %1, align 64
  %44 = sext i32 %43 to i64
  %45 = load i64, ptr %21, align 8
  %46 = mul i64 %45, %44
  %47 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %48, %46
  store i64 %49, ptr %47, align 8
  %50 = load i32, ptr %11, align 8
  %51 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 7
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, %50
  store i32 %53, ptr %51, align 8
  %54 = load i32, ptr %14, align 8
  %55 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 3
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, %54
  store i32 %57, ptr %55, align 8
  %58 = load i32, ptr %15, align 4
  %59 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %58
  store i32 %61, ptr %59, align 4
  %62 = load i64, ptr %19, align 16
  %63 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 15, i32 2
  %64 = load i64, ptr %63, align 16
  %65 = add i64 %64, %62
  store i64 %65, ptr %63, align 16
  %66 = getelementptr i8, ptr %0, i32 1444
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %39
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr i8, ptr %0, i32 1312
  %77 = load i32, ptr %76, align 32
  %78 = icmp ult i32 %77, 2
  %79 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %83, !prof !10

82:                                               ; preds = %74
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %83

83:                                               ; preds = %82, %74
  %84 = getelementptr i8, ptr %0, i32 1320
  %85 = load i64, ptr %84, align 8
  tail call void %75(ptr noundef nonnull %72, i64 noundef %85, i32 noundef 0) #21
  br label %86

86:                                               ; preds = %83, %39
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_cfs_tp, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = tail call ptr @llvm.thread.pointer() #21
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !50
  %101 = tail call i32 @__traceiter_pelt_cfs_tp(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !51
  br label %102

102:                                              ; preds = %100, %89, %86
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__update_load_avg_cfs_rq(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pelt_cfs_tp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @sched_slice(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #14 {
  %3 = alloca %struct.load_weight, align 8
  %4 = getelementptr inbounds %struct.cfs_rq, ptr %0, i32 0, i32 1
  %5 = load i32, ptr @sysctl_sched_features, align 4
  %6 = and i32 %5, 8388608
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr i8, ptr %0, i32 12
  %9 = select i1 %7, ptr %4, ptr %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sched_entity, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = add i32 %10, %14
  %16 = load i32, ptr @sched_nr_latency, align 4
  %17 = icmp ult i32 %16, %15
  br i1 %17, label %18, label %21, !prof !10

18:                                               ; preds = %2
  %19 = load i32, ptr @sysctl_sched_min_granularity, align 4
  %20 = mul i32 %19, %15
  br label %23

21:                                               ; preds = %2
  %22 = load i32, ptr @sysctl_sched_latency, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ %22, %21 ]
  %25 = zext i32 %24 to i64
  %26 = icmp eq ptr %1, null
  br i1 %26, label %81, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %28 = getelementptr i8, ptr %1, i32 -632
  %29 = load volatile i32, ptr %28, align 8
  %30 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, ptrtoint (ptr @runqueues to i32)
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr inbounds %struct.rq, ptr %33, i32 0, i32 10
  br i1 %13, label %35, label %41, !prof !10

35:                                               ; preds = %27
  %36 = load i64, ptr %34, align 64
  %37 = load i32, ptr %1, align 64
  %38 = trunc i64 %36 to i32
  %39 = add i32 %37, %38
  %40 = getelementptr inbounds %struct.load_weight, ptr %3, i32 0, i32 1
  br label %49

41:                                               ; preds = %27
  %42 = load i32, ptr %1, align 64
  %43 = getelementptr inbounds %struct.rq, ptr %33, i32 0, i32 10, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58, !prof !10

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rq, ptr %33, i32 0, i32 10, i32 0, i32 1
  %48 = load i32, ptr %34, align 4
  br label %49

49:                                               ; preds = %46, %35
  %50 = phi i32 [ %48, %46 ], [ %39, %35 ]
  %51 = phi ptr [ %47, %46 ], [ %40, %35 ]
  %52 = phi i32 [ %42, %46 ], [ %37, %35 ]
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %56, label %54, !prof !10

54:                                               ; preds = %49
  %55 = udiv i32 -1, %50
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi i32 [ %55, %54 ], [ -1, %49 ]
  store i32 %57, ptr %51, align 4
  br label %58

58:                                               ; preds = %56, %41
  %59 = phi i32 [ %42, %41 ], [ %52, %56 ]
  %60 = phi i32 [ %44, %41 ], [ %57, %56 ]
  %61 = zext i32 %59 to i64
  %62 = zext i32 %60 to i64
  %63 = mul nuw i64 %62, %61
  %64 = lshr i64 %63, 32
  %65 = trunc i64 %64 to i32
  %66 = icmp eq i32 %65, 0
  %67 = trunc i64 %63 to i32
  br i1 %66, label %74, label %68

68:                                               ; preds = %58
  %69 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 true) #21, !range !9
  %70 = sub nuw nsw i32 32, %69
  %71 = zext i32 %70 to i64
  %72 = lshr i64 %63, %71
  %73 = trunc i64 %72 to i32
  br label %74

74:                                               ; preds = %68, %58
  %75 = phi i32 [ %73, %68 ], [ %67, %58 ]
  %76 = phi i32 [ %69, %68 ], [ 32, %58 ]
  %77 = zext i32 %75 to i64
  %78 = mul nuw i64 %77, %25
  %79 = zext i32 %76 to i64
  %80 = lshr i64 %78, %79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %81

81:                                               ; preds = %74, %23
  %82 = phi i64 [ %80, %74 ], [ %25, %23 ]
  %83 = and i32 %5, 16777216
  %84 = icmp eq i32 %83, 0
  %85 = load i32, ptr @sysctl_sched_min_granularity, align 4
  %86 = zext i32 %85 to i64
  %87 = tail call i64 @llvm.umax.i64(i64 %82, i64 %86)
  %88 = select i1 %84, i64 %82, i64 %87
  ret i64 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtick_start(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_cpu_capacity_tp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #20

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @housekeeping_test_cpu(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_next_wrap(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idle_cpu(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rq_clock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rebalance_domains(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @runqueues to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.rq, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rq, ptr %11, i32 0, i32 10, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %13, %15
  %17 = icmp eq i32 %13, 0
  %18 = or i1 %17, %16
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %7, %2
  %21 = phi i32 [ 0, %2 ], [ %19, %7 ]
  %22 = load volatile i32, ptr @jiffies, align 64
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, ptrtoint (ptr @runqueues to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.rq, ptr %26, i32 0, i32 30
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = add i32 %22, 6000
  br label %33

32:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  br label %172

33:                                               ; preds = %150, %30
  %34 = phi i32 [ %156, %150 ], [ %1, %30 ]
  %35 = phi i32 [ %155, %150 ], [ %21, %30 ]
  %36 = phi ptr [ %157, %150 ], [ %28, %30 ]
  %37 = phi i32 [ %154, %150 ], [ %31, %30 ]
  %38 = phi i32 [ %153, %150 ], [ 0, %30 ]
  %39 = phi i64 [ %151, %150 ], [ 0, %30 ]
  %40 = getelementptr inbounds %struct.sched_domain, ptr %36, i32 0, i32 14
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.sched_domain, ptr %36, i32 0, i32 15
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, 100
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = sub i32 %44, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %33
  %49 = mul i64 %41, 253
  %50 = lshr i64 %49, 8
  store i64 %50, ptr %40, align 8
  %51 = load volatile i32, ptr @jiffies, align 64
  store i32 %51, ptr %42, align 8
  %52 = add i64 %50, %39
  %53 = load i32, ptr %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %150, label %59

55:                                               ; preds = %33
  %56 = add i64 %41, %39
  %57 = load i32, ptr %3, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %166, label %59

59:                                               ; preds = %55, %48
  %60 = phi i64 [ %56, %55 ], [ %52, %48 ]
  %61 = phi i32 [ 0, %55 ], [ 1, %48 ]
  %62 = getelementptr inbounds %struct.sched_domain, ptr %36, i32 0, i32 12
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %35, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.sched_domain, ptr %36, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, %63
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi i32 [ %68, %65 ], [ %63, %59 ]
  %71 = tail call i32 @__msecs_to_jiffies(i32 noundef %70) #21
  %72 = xor i1 %64, true
  %73 = sext i1 %72 to i32
  %74 = add i32 %71, %73
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 1) #21
  %76 = load i32, ptr @max_load_balance_interval, align 4
  %77 = tail call i32 @llvm.umin.i32(i32 %75, i32 %76) #21
  %78 = getelementptr inbounds %struct.sched_domain, ptr %36, i32 0, i32 9
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 512
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %69
  %83 = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @balancing) #21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %139, label %85

85:                                               ; preds = %82, %69
  %86 = load volatile i32, ptr @jiffies, align 64
  %87 = getelementptr inbounds %struct.sched_domain, ptr %36, i32 0, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %77, %88
  %90 = sub i32 %86, %89
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %132

92:                                               ; preds = %85
  %93 = call fastcc i32 @load_balance(i32 noundef %5, ptr noundef %0, ptr noundef nonnull %36, i32 noundef %34, ptr noundef nonnull %3)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @idle_cpu(i32 noundef %5) #21
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  br i1 %97, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, ptr %23, align 4
  %101 = add i32 %100, ptrtoint (ptr @runqueues to i32)
  %102 = inttoptr i32 %101 to ptr
  %103 = getelementptr inbounds %struct.rq, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.rq, ptr %102, i32 0, i32 10, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = icmp ne i32 %104, %106
  %108 = icmp eq i32 %104, 0
  %109 = or i1 %108, %107
  br label %110

110:                                              ; preds = %99, %95
  %111 = phi i1 [ false, %95 ], [ %109, %99 ]
  %112 = zext i1 %111 to i32
  br label %113

113:                                              ; preds = %110, %92
  %114 = phi i32 [ %112, %110 ], [ %35, %92 ]
  %115 = phi i32 [ %98, %110 ], [ %34, %92 ]
  %116 = load volatile i32, ptr @jiffies, align 64
  store i32 %116, ptr %87, align 4
  %117 = load i32, ptr %62, align 8
  %118 = icmp eq i32 %114, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.sched_domain, ptr %36, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = mul i32 %121, %117
  br label %123

123:                                              ; preds = %119, %113
  %124 = phi i32 [ %122, %119 ], [ %117, %113 ]
  %125 = tail call i32 @__msecs_to_jiffies(i32 noundef %124) #21
  %126 = xor i1 %118, true
  %127 = sext i1 %126 to i32
  %128 = add i32 %125, %127
  %129 = tail call i32 @llvm.umax.i32(i32 %128, i32 1) #21
  %130 = load i32, ptr @max_load_balance_interval, align 4
  %131 = tail call i32 @llvm.umin.i32(i32 %129, i32 %130) #21
  br label %132

132:                                              ; preds = %123, %85
  %133 = phi i32 [ %131, %123 ], [ %77, %85 ]
  %134 = phi i32 [ %114, %123 ], [ %35, %85 ]
  %135 = phi i32 [ %115, %123 ], [ %34, %85 ]
  br i1 %81, label %139, label %136

136:                                              ; preds = %132
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !45
  %137 = load i16, ptr @balancing, align 4
  %138 = add i16 %137, 1
  store i16 %138, ptr @balancing, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !46
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !47
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !48
  br label %139

139:                                              ; preds = %136, %132, %82
  %140 = phi i32 [ %133, %136 ], [ %133, %132 ], [ %77, %82 ]
  %141 = phi i32 [ %134, %136 ], [ %134, %132 ], [ %35, %82 ]
  %142 = phi i32 [ %135, %136 ], [ %135, %132 ], [ %34, %82 ]
  %143 = getelementptr inbounds %struct.sched_domain, ptr %36, i32 0, i32 11
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, %140
  %146 = sub i32 %145, %37
  %147 = icmp slt i32 %146, 0
  %148 = select i1 %147, i32 1, i32 %38
  %149 = select i1 %147, i32 %145, i32 %37
  br label %150

150:                                              ; preds = %139, %48
  %151 = phi i64 [ %60, %139 ], [ %52, %48 ]
  %152 = phi i32 [ %61, %139 ], [ 1, %48 ]
  %153 = phi i32 [ %148, %139 ], [ %38, %48 ]
  %154 = phi i32 [ %149, %139 ], [ %37, %48 ]
  %155 = phi i32 [ %141, %139 ], [ %35, %48 ]
  %156 = phi i32 [ %142, %139 ], [ %34, %48 ]
  %157 = load ptr, ptr %36, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %33

159:                                              ; preds = %150
  %160 = icmp eq i32 %152, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %159
  %162 = load i32, ptr @sysctl_sched_migration_cost, align 4
  %163 = zext i32 %162 to i64
  %164 = tail call i64 @llvm.umax.i64(i64 %151, i64 %163)
  %165 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 51
  store i64 %164, ptr %165, align 32
  br label %166

166:                                              ; preds = %161, %159, %55
  %167 = phi i32 [ %153, %161 ], [ %153, %159 ], [ %38, %55 ]
  %168 = phi i32 [ %154, %161 ], [ %154, %159 ], [ %37, %55 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  %169 = icmp eq i32 %167, 0
  br i1 %169, label %172, label %170, !prof !10

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 17
  store i32 %168, ptr %171, align 8
  br label %172

172:                                              ; preds = %170, %166, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_blocked_averages(i32 noundef %0) unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !27
  tail call void @raw_spin_rq_lock_nested(ptr noundef %5, i32 noundef 0) #21
  %7 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 19
  %8 = load i32, ptr %7, align 32
  %9 = and i32 %8, 3
  store i32 %9, ptr %7, align 32
  %10 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 33
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %11, @balance_push_callback
  %14 = and i1 %12, %13
  %15 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !10

18:                                               ; preds = %1
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.10) #21
  br label %19

19:                                               ; preds = %18, %1
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 2
  store volatile i32 %20, ptr %21, align 8
  tail call void @update_rq_clock(ptr noundef %5) #21
  %22 = load i32, ptr %7, align 32
  %23 = icmp ult i32 %22, 2
  %24 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !10

27:                                               ; preds = %19
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %28

28:                                               ; preds = %27, %19
  %29 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 23
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 24
  %32 = load i32, ptr %31, align 16
  %33 = zext i32 %32 to i64
  %34 = sub i64 %30, %33
  %35 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 22
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 40
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, ptrtoint (ptr @thermal_pressure to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq ptr %38, @rt_sched_class
  %47 = zext i1 %46 to i32
  %48 = tail call i32 @update_rt_rq_load_avg(i64 noundef %34, ptr noundef %5, i32 noundef %47) #21
  %49 = icmp eq ptr %38, @dl_sched_class
  %50 = zext i1 %49 to i32
  %51 = tail call i32 @update_dl_rq_load_avg(i64 noundef %34, ptr noundef %5, i32 noundef %50) #21
  %52 = load i32, ptr %7, align 32
  %53 = icmp ult i32 %52, 2
  %54 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58, !prof !10

57:                                               ; preds = %28
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %58

58:                                               ; preds = %57, %28
  %59 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 22
  %60 = load i64, ptr %59, align 64
  %61 = load i32, ptr @sched_thermal_decay_shift, align 4
  %62 = zext i32 %61 to i64
  %63 = lshr i64 %60, %62
  %64 = zext i32 %45 to i64
  %65 = tail call i32 @update_thermal_load_avg(i64 noundef %63, ptr noundef %5, i64 noundef %64) #21
  %66 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 44, i32 7
  %67 = load volatile i32, ptr %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 45, i32 7
  %71 = load volatile i32, ptr %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 46, i32 5
  %75 = load volatile i32, ptr %74, align 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73, %69, %58
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i1 [ false, %73 ], [ true, %77 ]
  %80 = or i32 %51, %48
  %81 = or i32 %80, %65
  %82 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10
  %83 = load i32, ptr %7, align 32
  %84 = icmp ult i32 %83, 2
  %85 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %89, !prof !10

88:                                               ; preds = %78
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %89

89:                                               ; preds = %88, %78
  %90 = load i64, ptr %29, align 8
  %91 = load i32, ptr %31, align 16
  %92 = zext i32 %91 to i64
  %93 = sub i64 %90, %92
  %94 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 18, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %143, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 18
  %99 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 46718
  tail call void @_raw_spin_lock(ptr noundef %98) #21
  %102 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 18, i32 3
  %103 = load i32, ptr %102, align 4
  store i32 0, ptr %102, align 4
  %104 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 18, i32 2
  %105 = load i32, ptr %104, align 8
  store i32 0, ptr %104, align 8
  %106 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 18, i32 4
  %107 = load i32, ptr %106, align 16
  store i32 0, ptr %106, align 16
  store i32 0, ptr %94, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !45
  %108 = load i16, ptr %98, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %98, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !46
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !47
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !48
  %110 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15, i32 5
  %111 = load volatile i32, ptr %110, align 4
  %112 = tail call i32 @llvm.usub.sat.i32(i32 %111, i32 %105) #21
  store volatile i32 %112, ptr %110, align 4
  %113 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15, i32 1
  %114 = mul i32 %105, %101
  %115 = zext i32 %114 to i64
  %116 = load volatile i64, ptr %113, align 8
  %117 = tail call i64 @llvm.usub.sat.i64(i64 %116, i64 %115) #21
  store volatile i64 %117, ptr %113, align 8
  %118 = trunc i64 %117 to i32
  %119 = mul i32 %112, 46718
  %120 = tail call i32 @llvm.umax.i32(i32 %119, i32 %118) #21
  %121 = zext i32 %120 to i64
  store i64 %121, ptr %113, align 8
  %122 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15, i32 7
  %123 = load volatile i32, ptr %122, align 4
  %124 = tail call i32 @llvm.usub.sat.i32(i32 %123, i32 %103) #21
  store volatile i32 %124, ptr %122, align 4
  %125 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15, i32 3
  %126 = mul i32 %103, %101
  %127 = load volatile i32, ptr %125, align 4
  %128 = tail call i32 @llvm.usub.sat.i32(i32 %127, i32 %126) #21
  store volatile i32 %128, ptr %125, align 4
  %129 = mul i32 %124, 46718
  %130 = tail call i32 @llvm.umax.i32(i32 %128, i32 %129) #21
  store i32 %130, ptr %125, align 8
  %131 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15, i32 6
  %132 = load volatile i32, ptr %131, align 4
  %133 = tail call i32 @llvm.usub.sat.i32(i32 %132, i32 %107) #21
  store volatile i32 %133, ptr %131, align 4
  %134 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15, i32 2
  %135 = mul i32 %107, %101
  %136 = zext i32 %135 to i64
  %137 = load volatile i64, ptr %134, align 8
  %138 = tail call i64 @llvm.usub.sat.i64(i64 %137, i64 %136) #21
  store volatile i64 %138, ptr %134, align 8
  %139 = trunc i64 %138 to i32
  %140 = mul i32 %133, 46718
  %141 = tail call i32 @llvm.umax.i32(i32 %140, i32 %139) #21
  %142 = zext i32 %141 to i64
  store i64 %142, ptr %134, align 16
  br label %143

143:                                              ; preds = %97, %89
  %144 = phi i32 [ 1, %97 ], [ 0, %89 ]
  %145 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15
  %146 = tail call i32 @__update_load_avg_cfs_rq(i64 noundef %93, ptr noundef %82) #21
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #21, !srcloc !49
  %147 = load i64, ptr %145, align 64
  %148 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 16
  store i64 %147, ptr %148, align 64
  %149 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15, i32 5
  %150 = load i32, ptr %149, align 32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 10, i32 15, i32 7
  %154 = load i32, ptr %153, align 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152, %143
  %157 = or i32 %144, %81
  %158 = or i32 %157, %146
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %186, label %167

160:                                              ; preds = %152
  %161 = or i32 %144, %81
  %162 = or i32 %161, %146
  %163 = icmp eq i32 %162, 0
  br i1 %79, label %166, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 3
  store i32 0, ptr %165, align 4
  br i1 %163, label %186, label %167

166:                                              ; preds = %160
  br i1 %163, label %186, label %167

167:                                              ; preds = %166, %164, %156
  %168 = load i32, ptr %39, align 4
  %169 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %168
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %172 = inttoptr i32 %171 to ptr
  %173 = load volatile ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %186, label %175

175:                                              ; preds = %167
  %176 = load ptr, ptr %173, align 4
  %177 = load i32, ptr %7, align 32
  %178 = icmp ult i32 %177, 2
  %179 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %180 = xor i1 %179, true
  %181 = select i1 %178, i1 %180, i1 false
  br i1 %181, label %182, label %183, !prof !10

182:                                              ; preds = %175
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %183

183:                                              ; preds = %182, %175
  %184 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 20
  %185 = load i64, ptr %184, align 8
  tail call void %176(ptr noundef nonnull %173, i64 noundef %185, i32 noundef 0) #21
  br label %186

186:                                              ; preds = %183, %167, %166, %164, %156
  tail call void @raw_spin_rq_unlock(ptr noundef %5) #21
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #21, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_rt_rq_load_avg(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_dl_rq_load_avg(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_thermal_load_avg(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @load_balance(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #1 {
  %6 = alloca i32, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sg_lb_stats, align 4
  %11 = alloca %struct.sd_lb_stats, align 4
  %12 = alloca %struct.lb_env, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #19, !srcloc !19
  %17 = add i32 %16, ptrtoint (ptr @load_balance_mask to i32)
  %18 = inttoptr i32 %17 to ptr
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #21
  store ptr %2, ptr %12, align 4
  %19 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 1
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 3
  store i32 %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 4
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 5
  %24 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sched_group, ptr %25, i32 0, i32 6
  store ptr %26, ptr %23, align 4
  %27 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 6
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 7
  store i32 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 8
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 9
  store ptr %18, ptr %30, align 4
  %31 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 10
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 11
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 12
  store i32 32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 13
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 14
  store i32 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 15
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 16
  store ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.lb_env, ptr %12, i32 0, i32 16, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 21
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr @__cpu_active_mask, align 4
  %42 = and i32 %40, 65535
  %43 = and i32 %42, %41
  store i32 %43, ptr %18, align 4
  %44 = load ptr, ptr %12, align 4
  %45 = getelementptr inbounds %struct.sched_domain, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = load i32, ptr %21, align 4
  %48 = load ptr, ptr %30, align 4
  %49 = lshr i32 %47, 5
  %50 = getelementptr i32, ptr %48, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %47, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %112, label %56

56:                                               ; preds = %5
  %57 = getelementptr inbounds i8, ptr %11, i32 52
  %58 = getelementptr inbounds i8, ptr %11, i32 56
  %59 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 7
  %60 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 1
  %61 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 6
  %62 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 7, i32 9
  %63 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 6, i32 9
  %64 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 6, i32 5
  %65 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 6, i32 11
  %66 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 2
  %67 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 3
  %68 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 5
  %69 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 7, i32 5
  %70 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 4
  %71 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 6, i32 6
  %72 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 7, i32 7
  %73 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 7, i32 2
  %74 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 7, i32 1
  %75 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 6, i32 2
  %76 = getelementptr inbounds %struct.sd_lb_stats, ptr %11, i32 0, i32 7, i32 3
  %77 = icmp eq ptr %13, null
  %78 = getelementptr inbounds %struct.sched_domain, ptr %13, i32 0, i32 2
  br label %79

79:                                               ; preds = %1058, %56
  %80 = phi i32 [ %47, %56 ], [ %1062, %1058 ]
  %81 = phi ptr [ %44, %56 ], [ %1059, %1058 ]
  %82 = phi ptr [ %48, %56 ], [ %1063, %1058 ]
  %83 = phi ptr [ %46, %56 ], [ %1061, %1058 ]
  %84 = load i32, ptr %28, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %113, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.sched_group, ptr %83, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.sched_group_capacity, ptr %88, i32 0, i32 7
  %90 = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %89, ptr noundef %82) #24
  %91 = load i32, ptr @nr_cpu_ids, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %97, %86
  %94 = phi i32 [ %101, %97 ], [ %90, %86 ]
  %95 = call i32 @idle_cpu(i32 noundef %94) #21
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load ptr, ptr %30, align 4
  %99 = load ptr, ptr %87, align 4
  %100 = getelementptr inbounds %struct.sched_group_capacity, ptr %99, i32 0, i32 7
  %101 = call i32 @cpumask_next_and(i32 noundef %94, ptr noundef %100, ptr noundef %98) #24
  %102 = load i32, ptr @nr_cpu_ids, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %93, label %104

104:                                              ; preds = %97, %86
  %105 = call i32 @group_balance_cpu(ptr noundef %83) #21
  br label %106

106:                                              ; preds = %104, %93
  %107 = phi i32 [ %105, %104 ], [ %94, %93 ]
  %108 = load i32, ptr %21, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load ptr, ptr %12, align 4
  br label %113

112:                                              ; preds = %1058, %106, %5
  store i32 0, ptr %4, align 4
  br label %1117

113:                                              ; preds = %110, %79
  %114 = phi i32 [ %107, %110 ], [ %80, %79 ]
  %115 = phi ptr [ %111, %110 ], [ %81, %79 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %11) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false) #21
  store i32 -1, ptr %57, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %58, i8 0, i64 64, i1 false) #21
  %116 = getelementptr inbounds %struct.sched_domain, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.sched_domain, ptr %115, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %10, i8 0, i32 48, i1 false) #21, !annotation !52
  br label %120

120:                                              ; preds = %461, %113
  %121 = phi i32 [ %114, %113 ], [ %462, %461 ]
  %122 = phi ptr [ null, %113 ], [ %449, %461 ]
  %123 = phi ptr [ null, %113 ], [ %149, %461 ]
  %124 = phi ptr [ null, %113 ], [ %299, %461 ]
  %125 = phi ptr [ %115, %113 ], [ %448, %461 ]
  %126 = phi i32 [ 0, %113 ], [ %257, %461 ]
  %127 = phi ptr [ %119, %113 ], [ %457, %461 ]
  %128 = getelementptr inbounds %struct.sched_group, ptr %127, i32 0, i32 6
  %129 = lshr i32 %121, 5
  %130 = getelementptr i32, ptr %128, i32 %129
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %121, 31
  %133 = shl nuw i32 1, %132
  %134 = and i32 %133, %131
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %120
  store ptr %127, ptr %60, align 4
  %137 = load i32, ptr %28, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load volatile i32, ptr @jiffies, align 64
  %141 = getelementptr inbounds %struct.sched_group, ptr %127, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.sched_group_capacity, ptr %142, i32 0, i32 4
  %144 = load i32, ptr %143, align 4
  %145 = sub i32 %140, %144
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %147, label %148

147:                                              ; preds = %139, %136
  call void @update_group_capacity(ptr noundef %125, i32 noundef %121) #21
  br label %148

148:                                              ; preds = %147, %139, %120
  %149 = phi ptr [ %127, %147 ], [ %127, %139 ], [ %123, %120 ]
  %150 = phi ptr [ %127, %147 ], [ %127, %139 ], [ %124, %120 ]
  %151 = phi ptr [ %59, %147 ], [ %59, %139 ], [ %10, %120 ]
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %151, i8 0, i32 48, i1 false) #21
  %152 = icmp eq ptr %150, %127
  %153 = load ptr, ptr %30, align 4
  %154 = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %128, ptr noundef %153) #24
  %155 = load i32, ptr @nr_cpu_ids, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %256

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 1
  %159 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 3
  %160 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 4
  %161 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 6
  %162 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 5
  %163 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 7
  %164 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 11
  %165 = load i32, ptr @sysctl_sched_features, align 4
  br label %166

166:                                              ; preds = %254, %157
  %167 = phi i32 [ %165, %157 ], [ %248, %254 ]
  %168 = phi i32 [ %126, %157 ], [ %249, %254 ]
  %169 = phi i32 [ 0, %157 ], [ %255, %254 ]
  %170 = phi i32 [ %154, %157 ], [ %251, %254 ]
  %171 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %170
  %172 = load i32, ptr %171, align 4
  %173 = add i32 %172, ptrtoint (ptr @runqueues to i32)
  %174 = inttoptr i32 %173 to ptr
  %175 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 10, i32 15, i32 5
  %176 = load i32, ptr %175, align 32
  %177 = add i32 %176, %169
  store i32 %177, ptr %158, align 4
  %178 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 10, i32 15, i32 7
  %179 = load volatile i32, ptr %178, align 8
  %180 = and i32 %167, 1048576
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %166
  %183 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 10, i32 15, i32 9
  %184 = load volatile i32, ptr %183, align 16
  %185 = call i32 @llvm.umax.i32(i32 %179, i32 %184) #21
  br label %186

186:                                              ; preds = %182, %166
  %187 = phi i32 [ %185, %182 ], [ %179, %166 ]
  %188 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 32
  %189 = load i32, ptr %188, align 4
  %190 = call i32 @llvm.umin.i32(i32 %187, i32 %189) #21
  %191 = load i32, ptr %159, align 4
  %192 = add i32 %191, %190
  store i32 %192, ptr %159, align 4
  %193 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 10, i32 15, i32 6
  %194 = load i32, ptr %193, align 4
  %195 = load i32, ptr %160, align 4
  %196 = add i32 %195, %194
  store i32 %196, ptr %160, align 4
  %197 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 10, i32 2
  %198 = load i32, ptr %197, align 4
  %199 = load i32, ptr %161, align 4
  %200 = add i32 %199, %198
  store i32 %200, ptr %161, align 4
  %201 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = load i32, ptr %162, align 4
  %204 = add i32 %203, %202
  store i32 %204, ptr %162, align 4
  %205 = icmp sgt i32 %202, 1
  %206 = zext i1 %205 to i32
  %207 = or i32 %168, %206
  %208 = load volatile i32, ptr %178, align 8
  br i1 %181, label %213, label %209

209:                                              ; preds = %186
  %210 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 10, i32 15, i32 9
  %211 = load volatile i32, ptr %210, align 16
  %212 = call i32 @llvm.umax.i32(i32 %208, i32 %211) #21
  br label %213

213:                                              ; preds = %209, %186
  %214 = phi i32 [ %212, %209 ], [ %208, %186 ]
  %215 = load i32, ptr %188, align 4
  %216 = call i32 @llvm.umin.i32(i32 %214, i32 %215) #21
  %217 = mul i32 %216, 1280
  %218 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 31
  %219 = load i32, ptr %218, align 16
  %220 = shl i32 %219, 10
  %221 = icmp ult i32 %217, %220
  %222 = or i32 %207, 2
  %223 = select i1 %221, i32 %207, i32 %222
  %224 = icmp eq i32 %202, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %213
  %226 = call i32 @idle_cpu(i32 noundef %170) #21
  %227 = icmp eq i32 %226, 0
  %228 = load i32, ptr @sysctl_sched_features, align 4
  br i1 %227, label %232, label %229

229:                                              ; preds = %225
  %230 = load i32, ptr %163, align 4
  %231 = add i32 %230, 1
  store i32 %231, ptr %163, align 4
  br label %247

232:                                              ; preds = %225, %213
  %233 = phi i32 [ %228, %225 ], [ %167, %213 ]
  br i1 %152, label %247, label %234

234:                                              ; preds = %232
  %235 = load ptr, ptr %12, align 4
  %236 = getelementptr inbounds %struct.sched_domain, ptr %235, i32 0, i32 9
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, 32
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %234
  %241 = load i32, ptr %164, align 4
  %242 = getelementptr inbounds %struct.rq, ptr %174, i32 0, i32 36
  %243 = load i32, ptr %242, align 64
  %244 = icmp ult i32 %241, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  store i32 %243, ptr %164, align 4
  %246 = or i32 %223, 1
  br label %247

247:                                              ; preds = %245, %240, %234, %232, %229
  %248 = phi i32 [ %233, %232 ], [ %233, %234 ], [ %233, %245 ], [ %233, %240 ], [ %228, %229 ]
  %249 = phi i32 [ %223, %232 ], [ %223, %234 ], [ %246, %245 ], [ %223, %240 ], [ %223, %229 ]
  %250 = load ptr, ptr %30, align 4
  %251 = call i32 @cpumask_next_and(i32 noundef %170, ptr noundef %128, ptr noundef %250) #24
  %252 = load i32, ptr @nr_cpu_ids, align 4
  %253 = icmp ult i32 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %247
  %255 = load i32, ptr %158, align 4
  br label %166

256:                                              ; preds = %247, %148
  %257 = phi i32 [ %126, %148 ], [ %249, %247 ]
  %258 = getelementptr inbounds %struct.sched_group, ptr %127, i32 0, i32 3
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.sched_group_capacity, ptr %259, i32 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 2
  store i32 %261, ptr %262, align 4
  %263 = getelementptr inbounds %struct.sched_group, ptr %127, i32 0, i32 2
  %264 = load i32, ptr %263, align 4
  %265 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 8
  store i32 %264, ptr %265, align 4
  br i1 %152, label %298, label %266

266:                                              ; preds = %256
  %267 = load ptr, ptr %12, align 4
  %268 = getelementptr inbounds %struct.sched_domain, ptr %267, i32 0, i32 9
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %269, 1024
  %271 = icmp eq i32 %270, 0
  %272 = load i32, ptr %28, align 4
  %273 = icmp eq i32 %272, 1
  %274 = select i1 %271, i1 true, i1 %273
  br i1 %274, label %298, label %275

275:                                              ; preds = %266
  %276 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 6
  %277 = load i32, ptr %276, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %298, label %279

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.sched_group, ptr %149, i32 0, i32 5
  %281 = load i32, ptr %280, align 4
  %282 = and i32 %281, 128
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %298

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.sched_group, ptr %127, i32 0, i32 5
  %286 = load i32, ptr %285, align 4
  %287 = and i32 %286, 128
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %284
  %290 = load i32, ptr %21, align 4
  %291 = getelementptr inbounds %struct.sched_group, ptr %127, i32 0, i32 4
  %292 = load i32, ptr %291, align 4
  %293 = call i32 @arch_asym_cpu_priority(i32 noundef %290) #21
  %294 = call i32 @arch_asym_cpu_priority(i32 noundef %292) #21
  %295 = icmp sgt i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 10
  store i32 1, ptr %297, align 4
  br label %298

298:                                              ; preds = %296, %289, %284, %279, %275, %266, %256
  %299 = phi ptr [ %149, %296 ], [ %149, %289 ], [ %149, %284 ], [ %149, %279 ], [ %150, %275 ], [ %150, %266 ], [ %127, %256 ]
  %300 = load ptr, ptr %12, align 4
  %301 = getelementptr inbounds %struct.sched_domain, ptr %300, i32 0, i32 6
  %302 = load i32, ptr %301, align 8
  %303 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 5
  %304 = load i32, ptr %303, align 4
  %305 = load i32, ptr %265, align 4
  %306 = icmp ugt i32 %304, %305
  br i1 %306, label %307, label %320

307:                                              ; preds = %298
  %308 = load i32, ptr %262, align 4
  %309 = mul i32 %308, 100
  %310 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 3
  %311 = load i32, ptr %310, align 4
  %312 = mul i32 %311, %302
  %313 = icmp ult i32 %309, %312
  br i1 %313, label %352, label %314

314:                                              ; preds = %307
  %315 = mul i32 %308, %302
  %316 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 4
  %317 = load i32, ptr %316, align 4
  %318 = mul i32 %317, 100
  %319 = icmp ult i32 %315, %318
  br i1 %319, label %352, label %320

320:                                              ; preds = %314, %298
  %321 = load ptr, ptr %258, align 4
  %322 = getelementptr inbounds %struct.sched_group_capacity, ptr %321, i32 0, i32 5
  %323 = load i32, ptr %322, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %349

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 10
  %327 = load i32, ptr %326, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %349

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 11
  %331 = load i32, ptr %330, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %349

333:                                              ; preds = %329
  %334 = icmp ult i32 %304, %305
  br i1 %334, label %348, label %335

335:                                              ; preds = %333
  %336 = load i32, ptr %262, align 4
  %337 = mul i32 %336, %302
  %338 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 4
  %339 = load i32, ptr %338, align 4
  %340 = mul i32 %339, 100
  %341 = icmp ult i32 %337, %340
  br i1 %341, label %349, label %342

342:                                              ; preds = %335
  %343 = mul i32 %336, 100
  %344 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 3
  %345 = load i32, ptr %344, align 4
  %346 = mul i32 %345, %302
  %347 = icmp ugt i32 %343, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %342, %333
  br label %349

349:                                              ; preds = %348, %342, %335, %329, %325, %320
  %350 = phi i32 [ 1, %335 ], [ 1, %342 ], [ 0, %348 ], [ 2, %329 ], [ 3, %325 ], [ 4, %320 ]
  %351 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 9
  store i32 %350, ptr %351, align 4
  br label %358

352:                                              ; preds = %314, %307
  %353 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 9
  store i32 5, ptr %353, align 4
  %354 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 1
  %355 = load i32, ptr %354, align 4
  %356 = shl i32 %355, 10
  %357 = udiv i32 %356, %308
  store i32 %357, ptr %151, align 4
  br label %358

358:                                              ; preds = %352, %349
  %359 = phi i32 [ %350, %349 ], [ 5, %352 ]
  br i1 %135, label %360, label %447

360:                                              ; preds = %358
  %361 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 6
  %362 = load i32, ptr %361, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %447, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 9
  %366 = icmp eq i32 %359, 2
  br i1 %366, label %367, label %384

367:                                              ; preds = %364
  %368 = load i32, ptr %21, align 4
  %369 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %368
  %370 = load i32, ptr %369, align 4
  %371 = add i32 %370, ptrtoint (ptr @runqueues to i32)
  %372 = inttoptr i32 %371 to ptr
  %373 = getelementptr inbounds %struct.rq, ptr %372, i32 0, i32 31
  %374 = load i32, ptr %373, align 16
  %375 = shl i32 %374, 10
  %376 = load ptr, ptr %258, align 4
  %377 = getelementptr inbounds %struct.sched_group_capacity, ptr %376, i32 0, i32 3
  %378 = load i32, ptr %377, align 4
  %379 = mul i32 %378, 1078
  %380 = icmp ugt i32 %375, %379
  %381 = load i32, ptr %62, align 4
  %382 = icmp eq i32 %381, 0
  %383 = select i1 %380, i1 %382, i1 false
  br i1 %383, label %384, label %447

384:                                              ; preds = %367, %364
  %385 = load i32, ptr %63, align 4
  %386 = icmp ugt i32 %359, %385
  br i1 %386, label %445, label %387

387:                                              ; preds = %384
  %388 = icmp ult i32 %359, %385
  br i1 %388, label %447, label %389

389:                                              ; preds = %387
  switch i32 %359, label %422 [
    i32 5, label %390
    i32 4, label %447
    i32 3, label %394
    i32 2, label %403
    i32 1, label %408
    i32 0, label %412
  ]

390:                                              ; preds = %389
  %391 = load i32, ptr %151, align 4
  %392 = load i32, ptr %61, align 4
  %393 = icmp ugt i32 %391, %392
  br i1 %393, label %422, label %447

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.sched_group, ptr %127, i32 0, i32 4
  %396 = load i32, ptr %395, align 4
  %397 = getelementptr inbounds %struct.sched_group, ptr %122, i32 0, i32 4
  %398 = load i32, ptr %397, align 4
  %399 = call i32 @arch_asym_cpu_priority(i32 noundef %396) #21
  %400 = call i32 @arch_asym_cpu_priority(i32 noundef %398) #21
  %401 = icmp sgt i32 %399, %400
  %402 = load ptr, ptr %12, align 4
  br i1 %401, label %447, label %422

403:                                              ; preds = %389
  %404 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 11
  %405 = load i32, ptr %404, align 4
  %406 = load i32, ptr %65, align 4
  %407 = icmp ult i32 %405, %406
  br i1 %407, label %447, label %422

408:                                              ; preds = %389
  %409 = load i32, ptr %151, align 4
  %410 = load i32, ptr %61, align 4
  %411 = icmp ugt i32 %409, %410
  br i1 %411, label %422, label %447

412:                                              ; preds = %389
  %413 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 7
  %414 = load i32, ptr %413, align 4
  %415 = load i32, ptr %57, align 4
  %416 = icmp ugt i32 %414, %415
  br i1 %416, label %447, label %417

417:                                              ; preds = %412
  %418 = icmp ne i32 %414, %415
  %419 = load i32, ptr %64, align 4
  %420 = icmp ugt i32 %304, %419
  %421 = select i1 %418, i1 true, i1 %420
  br i1 %421, label %422, label %447

422:                                              ; preds = %417, %408, %403, %394, %390, %389
  %423 = phi ptr [ %300, %417 ], [ %300, %408 ], [ %300, %403 ], [ %300, %390 ], [ %300, %389 ], [ %402, %394 ]
  %424 = getelementptr inbounds %struct.sched_domain, ptr %423, i32 0, i32 9
  %425 = load i32, ptr %424, align 4
  %426 = and i32 %425, 32
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %445, label %428

428:                                              ; preds = %422
  %429 = load i32, ptr %365, align 4
  %430 = icmp ult i32 %429, 2
  br i1 %430, label %431, label %445

431:                                              ; preds = %428
  %432 = load ptr, ptr %258, align 4
  %433 = getelementptr inbounds %struct.sched_group_capacity, ptr %432, i32 0, i32 2
  %434 = load i32, ptr %433, align 4
  %435 = shl i32 %434, 10
  %436 = load i32, ptr %21, align 4
  %437 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %436
  %438 = load i32, ptr %437, align 4
  %439 = add i32 %438, ptrtoint (ptr @runqueues to i32)
  %440 = inttoptr i32 %439 to ptr
  %441 = getelementptr inbounds %struct.rq, ptr %440, i32 0, i32 31
  %442 = load i32, ptr %441, align 16
  %443 = mul i32 %442, 1078
  %444 = icmp ugt i32 %435, %443
  br i1 %444, label %447, label %445

445:                                              ; preds = %431, %428, %422, %384
  %446 = phi ptr [ %423, %431 ], [ %423, %428 ], [ %423, %422 ], [ %300, %384 ]
  store ptr %127, ptr %11, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %61, ptr noundef align 4 dereferenceable(48) %151, i32 48, i1 false) #21
  br label %447

447:                                              ; preds = %445, %431, %417, %412, %408, %403, %394, %390, %389, %387, %367, %360, %358
  %448 = phi ptr [ %300, %417 ], [ %446, %445 ], [ %423, %431 ], [ %300, %412 ], [ %300, %408 ], [ %300, %403 ], [ %300, %390 ], [ %300, %389 ], [ %300, %387 ], [ %300, %367 ], [ %300, %360 ], [ %300, %358 ], [ %402, %394 ]
  %449 = phi ptr [ %122, %417 ], [ %127, %445 ], [ %122, %431 ], [ %122, %412 ], [ %122, %408 ], [ %122, %403 ], [ %122, %390 ], [ %122, %389 ], [ %122, %387 ], [ %122, %367 ], [ %122, %360 ], [ %122, %358 ], [ %122, %394 ]
  %450 = getelementptr inbounds %struct.sg_lb_stats, ptr %151, i32 0, i32 1
  %451 = load i32, ptr %450, align 4
  %452 = load i32, ptr %66, align 4
  %453 = add i32 %452, %451
  store i32 %453, ptr %66, align 4
  %454 = load i32, ptr %262, align 4
  %455 = load i32, ptr %67, align 4
  %456 = add i32 %455, %454
  store i32 %456, ptr %67, align 4
  %457 = load ptr, ptr %127, align 4
  %458 = getelementptr inbounds %struct.sched_domain, ptr %448, i32 0, i32 2
  %459 = load ptr, ptr %458, align 8
  %460 = icmp eq ptr %457, %459
  br i1 %460, label %463, label %461

461:                                              ; preds = %447
  %462 = load i32, ptr %21, align 4
  br label %120

463:                                              ; preds = %447
  %464 = icmp eq ptr %117, null
  br i1 %464, label %470, label %465

465:                                              ; preds = %463
  %466 = getelementptr inbounds %struct.sched_domain, ptr %117, i32 0, i32 9
  %467 = load i32, ptr %466, align 4
  %468 = lshr i32 %467, 11
  %469 = and i32 %468, 1
  br label %470

470:                                              ; preds = %465, %463
  %471 = phi i32 [ 0, %463 ], [ %469, %465 ]
  store i32 %471, ptr %68, align 4
  %472 = getelementptr inbounds %struct.sched_domain, ptr %448, i32 0, i32 9
  %473 = load i32, ptr %472, align 4
  %474 = and i32 %473, 8192
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %477, label %476

476:                                              ; preds = %470
  store i32 2, ptr %35, align 4
  br label %477

477:                                              ; preds = %476, %470
  %478 = load ptr, ptr %448, align 8
  %479 = icmp eq ptr %478, null
  br i1 %479, label %480, label %504

480:                                              ; preds = %477
  %481 = load ptr, ptr %22, align 4
  %482 = getelementptr inbounds %struct.rq, ptr %481, i32 0, i32 29
  %483 = load ptr, ptr %482, align 8
  %484 = and i32 %257, 1
  %485 = getelementptr inbounds %struct.root_domain, ptr %483, i32 0, i32 5
  store volatile i32 %484, ptr %485, align 8
  %486 = and i32 %257, 2
  %487 = getelementptr inbounds %struct.root_domain, ptr %483, i32 0, i32 6
  store volatile i32 %486, ptr %487, align 4
  %488 = icmp ne i32 %486, 0
  %489 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_overutilized_tp, i32 0, i32 1), align 4
  %490 = icmp sgt i32 %489, 0
  br i1 %490, label %491, label %527

491:                                              ; preds = %480
  %492 = tail call ptr @llvm.thread.pointer() #21
  %493 = getelementptr inbounds %struct.thread_info, ptr %492, i32 0, i32 2
  %494 = load i32, ptr %493, align 8
  %495 = lshr i32 %494, 5
  %496 = getelementptr i32, ptr @__cpu_online_mask, i32 %495
  %497 = load volatile i32, ptr %496, align 4
  %498 = and i32 %494, 31
  %499 = shl nuw i32 1, %498
  %500 = and i32 %499, %497
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %527, label %502

502:                                              ; preds = %491
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %503 = call i32 @__traceiter_sched_overutilized_tp(ptr noundef null, ptr noundef %483, i1 noundef zeroext %488) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !35
  br label %527

504:                                              ; preds = %477
  %505 = and i32 %257, 2
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %527, label %507

507:                                              ; preds = %504
  %508 = load ptr, ptr %22, align 4
  %509 = getelementptr inbounds %struct.rq, ptr %508, i32 0, i32 29
  %510 = load ptr, ptr %509, align 8
  %511 = getelementptr inbounds %struct.root_domain, ptr %510, i32 0, i32 6
  store volatile i32 2, ptr %511, align 4
  %512 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_overutilized_tp, i32 0, i32 1), align 4
  %513 = icmp sgt i32 %512, 0
  br i1 %513, label %514, label %527

514:                                              ; preds = %507
  %515 = tail call ptr @llvm.thread.pointer() #21
  %516 = getelementptr inbounds %struct.thread_info, ptr %515, i32 0, i32 2
  %517 = load i32, ptr %516, align 8
  %518 = lshr i32 %517, 5
  %519 = getelementptr i32, ptr @__cpu_online_mask, i32 %518
  %520 = load volatile i32, ptr %519, align 4
  %521 = and i32 %517, 31
  %522 = shl nuw i32 1, %521
  %523 = and i32 %522, %520
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %527, label %525

525:                                              ; preds = %514
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %526 = call i32 @__traceiter_sched_overutilized_tp(ptr noundef null, ptr noundef %510, i1 noundef zeroext true) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !35
  br label %527

527:                                              ; preds = %525, %514, %507, %504, %502, %491, %480
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #21
  %528 = icmp eq ptr %449, null
  br i1 %528, label %675, label %529

529:                                              ; preds = %527
  %530 = load i32, ptr %63, align 4
  %531 = add i32 %530, -2
  %532 = icmp ult i32 %531, 3
  br i1 %532, label %585, label %533

533:                                              ; preds = %529
  %534 = load i32, ptr %62, align 4
  %535 = icmp ugt i32 %534, %530
  br i1 %535, label %675, label %536

536:                                              ; preds = %533
  %537 = icmp eq i32 %534, 5
  br i1 %537, label %538, label %553

538:                                              ; preds = %536
  %539 = load i32, ptr %59, align 4
  %540 = load i32, ptr %61, align 4
  %541 = icmp ult i32 %539, %540
  br i1 %541, label %542, label %675

542:                                              ; preds = %538
  %543 = shl i32 %453, 10
  %544 = udiv i32 %543, %456
  store i32 %544, ptr %70, align 4
  %545 = icmp ult i32 %539, %544
  br i1 %545, label %546, label %675

546:                                              ; preds = %542
  %547 = mul i32 %540, 100
  %548 = load ptr, ptr %12, align 4
  %549 = getelementptr inbounds %struct.sched_domain, ptr %548, i32 0, i32 6
  %550 = load i32, ptr %549, align 8
  %551 = mul i32 %550, %539
  %552 = icmp ugt i32 %547, %551
  br i1 %552, label %566, label %675

553:                                              ; preds = %536
  %554 = icmp ne i32 %471, 0
  %555 = icmp eq i32 %534, 0
  %556 = select i1 %554, i1 %555, i1 false
  br i1 %556, label %557, label %564

557:                                              ; preds = %553
  %558 = load i32, ptr %64, align 4
  %559 = load i32, ptr %69, align 4
  %560 = add i32 %559, 1
  %561 = icmp ugt i32 %558, %560
  %562 = icmp eq i32 %530, 5
  %563 = select i1 %561, i1 true, i1 %562
  br i1 %563, label %585, label %568

564:                                              ; preds = %553
  %565 = icmp eq i32 %530, 5
  br i1 %565, label %592, label %568

566:                                              ; preds = %546
  %567 = icmp eq i32 %530, 5
  br i1 %567, label %644, label %568

568:                                              ; preds = %566, %564, %557
  %569 = load i32, ptr %28, align 4
  %570 = icmp eq i32 %569, 1
  br i1 %570, label %675, label %571

571:                                              ; preds = %568
  %572 = load i32, ptr %58, align 4
  %573 = icmp ugt i32 %572, 1
  br i1 %573, label %574, label %582

574:                                              ; preds = %571
  %575 = load i32, ptr %72, align 4
  %576 = load i32, ptr %57, align 4
  %577 = add i32 %576, 1
  %578 = icmp ule i32 %575, %577
  %579 = load i32, ptr %71, align 4
  %580 = icmp eq i32 %579, 1
  %581 = select i1 %578, i1 true, i1 %580
  br i1 %581, label %675, label %585

582:                                              ; preds = %571
  %583 = load i32, ptr %71, align 4
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %675, label %585

585:                                              ; preds = %582, %574, %557, %529
  switch i32 %530, label %589 [
    i32 2, label %677
    i32 3, label %586
    i32 4, label %588
  ]

586:                                              ; preds = %585
  store i32 2, ptr %36, align 4
  %587 = load i32, ptr %71, align 4
  br label %670

588:                                              ; preds = %585
  br label %677

589:                                              ; preds = %585
  %590 = load i32, ptr %62, align 4
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %593, label %637

592:                                              ; preds = %564
  br i1 %555, label %595, label %637

593:                                              ; preds = %589
  %594 = icmp ugt i32 %530, 1
  br i1 %594, label %595, label %609

595:                                              ; preds = %593, %592
  %596 = load ptr, ptr %12, align 4
  %597 = getelementptr inbounds %struct.sched_domain, ptr %596, i32 0, i32 9
  %598 = load i32, ptr %597, align 4
  %599 = and i32 %598, 256
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %609

601:                                              ; preds = %595
  store i32 1, ptr %36, align 4
  %602 = load i32, ptr %73, align 4
  %603 = load i32, ptr %76, align 4
  %604 = call i32 @llvm.usub.sat.i32(i32 %602, i32 %603) #21
  store i32 %604, ptr %29, align 4
  %605 = load i32, ptr %28, align 4
  %606 = icmp eq i32 %605, 1
  %607 = icmp ugt i32 %602, %603
  %608 = select i1 %606, i1 true, i1 %607
  br i1 %608, label %672, label %677

609:                                              ; preds = %595, %593
  %610 = load i32, ptr %58, align 4
  %611 = icmp ne i32 %610, 1
  %612 = icmp eq i32 %471, 0
  %613 = select i1 %611, i1 %612, i1 false
  br i1 %613, label %618, label %614

614:                                              ; preds = %609
  %615 = load i32, ptr %64, align 4
  %616 = load i32, ptr %69, align 4
  %617 = call i32 @llvm.usub.sat.i32(i32 %615, i32 %616) #21
  br label %622

618:                                              ; preds = %609
  %619 = load i32, ptr %72, align 4
  %620 = load i32, ptr %57, align 4
  %621 = sub i32 %619, %620
  br label %622

622:                                              ; preds = %618, %614
  %623 = phi i32 [ %621, %618 ], [ %617, %614 ]
  store i32 2, ptr %36, align 4
  %624 = lshr i32 %623, 1
  store i32 %624, ptr %29, align 4
  %625 = load ptr, ptr %12, align 4
  %626 = getelementptr inbounds %struct.sched_domain, ptr %625, i32 0, i32 9
  %627 = load i32, ptr %626, align 4
  %628 = and i32 %627, 8192
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %672, label %630

630:                                              ; preds = %622
  %631 = load i32, ptr %64, align 4
  %632 = ashr i32 %610, 2
  %633 = icmp sgt i32 %632, %631
  %634 = icmp ult i32 %623, 6
  %635 = and i1 %634, %633
  %636 = select i1 %635, i32 0, i32 %624
  br label %670

637:                                              ; preds = %592, %589
  %638 = phi i32 [ %534, %592 ], [ %590, %589 ]
  %639 = icmp ult i32 %638, 5
  br i1 %639, label %649, label %640

640:                                              ; preds = %637
  %641 = load i32, ptr %61, align 4
  %642 = load i32, ptr %70, align 4
  %643 = load i32, ptr %59, align 4
  br label %644

644:                                              ; preds = %640, %566
  %645 = phi i32 [ %643, %640 ], [ %539, %566 ]
  %646 = phi i32 [ %642, %640 ], [ %544, %566 ]
  %647 = phi i32 [ %641, %640 ], [ %540, %566 ]
  %648 = load i32, ptr %73, align 4
  br label %658

649:                                              ; preds = %637
  %650 = load i32, ptr %74, align 4
  %651 = shl i32 %650, 10
  %652 = load i32, ptr %73, align 4
  %653 = udiv i32 %651, %652
  store i32 %653, ptr %59, align 4
  %654 = shl i32 %453, 10
  %655 = udiv i32 %654, %456
  %656 = load i32, ptr %61, align 4
  %657 = icmp ult i32 %653, %656
  br i1 %657, label %658, label %675

658:                                              ; preds = %649, %644
  %659 = phi i32 [ %648, %644 ], [ %652, %649 ]
  %660 = phi i32 [ %645, %644 ], [ %653, %649 ]
  %661 = phi i32 [ %646, %644 ], [ %655, %649 ]
  %662 = phi i32 [ %647, %644 ], [ %656, %649 ]
  store i32 0, ptr %36, align 4
  %663 = sub i32 %662, %661
  %664 = load i32, ptr %75, align 4
  %665 = mul i32 %664, %663
  %666 = sub i32 %661, %660
  %667 = mul i32 %666, %659
  %668 = call i32 @llvm.umin.i32(i32 %665, i32 %667) #21
  %669 = lshr i32 %668, 10
  br label %670

670:                                              ; preds = %658, %630, %586
  %671 = phi i32 [ %669, %658 ], [ %636, %630 ], [ %587, %586 ]
  store i32 %671, ptr %29, align 4
  br label %672

672:                                              ; preds = %670, %622, %601
  %673 = phi i32 [ %604, %601 ], [ %624, %622 ], [ %671, %670 ]
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %676, label %679

675:                                              ; preds = %649, %582, %574, %568, %546, %542, %538, %533, %527
  store i32 0, ptr %29, align 4
  br label %676

676:                                              ; preds = %675, %672
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %11) #21
  br label %1117

677:                                              ; preds = %601, %588, %585
  %678 = phi i32 [ 2, %588 ], [ 3, %585 ], [ 2, %601 ]
  store i32 %678, ptr %36, align 4
  store i32 1, ptr %29, align 4
  br label %679

679:                                              ; preds = %677, %672
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %11) #21
  %680 = getelementptr inbounds %struct.sched_group, ptr %449, i32 0, i32 6
  %681 = load ptr, ptr %30, align 4
  %682 = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %680, ptr noundef %681) #24
  %683 = load i32, ptr @nr_cpu_ids, align 4
  %684 = icmp ult i32 %682, %683
  br i1 %684, label %685, label %1117

685:                                              ; preds = %787, %679
  %686 = phi i32 [ %794, %787 ], [ %682, %679 ]
  %687 = phi ptr [ %792, %787 ], [ null, %679 ]
  %688 = phi i32 [ %791, %787 ], [ 0, %679 ]
  %689 = phi i32 [ %790, %787 ], [ 0, %679 ]
  %690 = phi i32 [ %789, %787 ], [ 1, %679 ]
  %691 = phi i32 [ %788, %787 ], [ 0, %679 ]
  %692 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %686
  %693 = load i32, ptr %692, align 4
  %694 = add i32 %693, ptrtoint (ptr @runqueues to i32)
  %695 = inttoptr i32 %694 to ptr
  %696 = getelementptr inbounds %struct.rq, ptr %695, i32 0, i32 10, i32 2
  %697 = load i32, ptr %696, align 4
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %787, label %699

699:                                              ; preds = %685
  %700 = getelementptr inbounds %struct.rq, ptr %695, i32 0, i32 31
  %701 = load i32, ptr %700, align 16
  %702 = load ptr, ptr %12, align 4
  %703 = getelementptr inbounds %struct.sched_domain, ptr %702, i32 0, i32 9
  %704 = load i32, ptr %703, align 4
  %705 = and i32 %704, 32
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %720, label %707

707:                                              ; preds = %699
  %708 = load i32, ptr %21, align 4
  %709 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %708
  %710 = load i32, ptr %709, align 4
  %711 = add i32 %710, ptrtoint (ptr @runqueues to i32)
  %712 = inttoptr i32 %711 to ptr
  %713 = getelementptr inbounds %struct.rq, ptr %712, i32 0, i32 31
  %714 = load i32, ptr %713, align 16
  %715 = shl i32 %714, 10
  %716 = mul i32 %701, 1078
  %717 = icmp ule i32 %715, %716
  %718 = icmp eq i32 %697, 1
  %719 = select i1 %717, i1 %718, i1 false
  br i1 %719, label %787, label %720

720:                                              ; preds = %707, %699
  %721 = and i32 %704, 1024
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %730, label %723

723:                                              ; preds = %720
  %724 = load i32, ptr %21, align 4
  %725 = call i32 @arch_asym_cpu_priority(i32 noundef %686) #21
  %726 = call i32 @arch_asym_cpu_priority(i32 noundef %724) #21
  %727 = icmp sgt i32 %725, %726
  %728 = icmp eq i32 %697, 1
  %729 = select i1 %727, i1 %728, i1 false
  br i1 %729, label %787, label %730

730:                                              ; preds = %723, %720
  %731 = load i32, ptr %36, align 4
  switch i32 %731, label %787 [
    i32 0, label %732
    i32 1, label %754
    i32 2, label %777
    i32 3, label %781
  ]

732:                                              ; preds = %730
  %733 = getelementptr inbounds %struct.rq, ptr %695, i32 0, i32 10, i32 15, i32 5
  %734 = load i32, ptr %733, align 32
  %735 = icmp eq i32 %697, 1
  %736 = load i32, ptr %29, align 4
  %737 = icmp ugt i32 %734, %736
  %738 = select i1 %735, i1 %737, i1 false
  br i1 %738, label %739, label %749

739:                                              ; preds = %732
  %740 = load ptr, ptr %12, align 4
  %741 = load i32, ptr %700, align 16
  %742 = getelementptr inbounds %struct.sched_domain, ptr %740, i32 0, i32 6
  %743 = load i32, ptr %742, align 8
  %744 = mul i32 %743, %741
  %745 = getelementptr inbounds %struct.rq, ptr %695, i32 0, i32 32
  %746 = load i32, ptr %745, align 4
  %747 = mul i32 %746, 100
  %748 = icmp ult i32 %744, %747
  br i1 %748, label %749, label %787

749:                                              ; preds = %739, %732
  %750 = mul i32 %734, %690
  %751 = mul i32 %701, %689
  %752 = icmp ugt i32 %750, %751
  br i1 %752, label %753, label %787

753:                                              ; preds = %749
  br label %787

754:                                              ; preds = %730
  %755 = load i32, ptr %692, align 4
  %756 = add i32 %755, ptrtoint (ptr @runqueues to i32)
  %757 = inttoptr i32 %756 to ptr
  %758 = getelementptr inbounds %struct.rq, ptr %757, i32 0, i32 10, i32 15, i32 7
  %759 = load volatile i32, ptr %758, align 8
  %760 = load i32, ptr @sysctl_sched_features, align 4
  %761 = and i32 %760, 1048576
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %767, label %763

763:                                              ; preds = %754
  %764 = getelementptr inbounds %struct.rq, ptr %757, i32 0, i32 10, i32 15, i32 9
  %765 = load volatile i32, ptr %764, align 16
  %766 = call i32 @llvm.umax.i32(i32 %759, i32 %765) #21
  br label %767

767:                                              ; preds = %763, %754
  %768 = phi i32 [ %766, %763 ], [ %759, %754 ]
  %769 = icmp ult i32 %697, 2
  br i1 %769, label %787, label %770

770:                                              ; preds = %767
  %771 = getelementptr inbounds %struct.rq, ptr %757, i32 0, i32 32
  %772 = load i32, ptr %771, align 4
  %773 = call i32 @llvm.umin.i32(i32 %768, i32 %772) #21
  %774 = icmp ult i32 %688, %773
  %775 = call i32 @llvm.umax.i32(i32 %688, i32 %773) #21
  %776 = select i1 %774, ptr %695, ptr %687
  br label %787

777:                                              ; preds = %730
  %778 = icmp ult i32 %691, %697
  %779 = call i32 @llvm.umax.i32(i32 %691, i32 %697) #21
  %780 = select i1 %778, ptr %695, ptr %687
  br label %787

781:                                              ; preds = %730
  %782 = getelementptr inbounds %struct.rq, ptr %695, i32 0, i32 36
  %783 = load i32, ptr %782, align 64
  %784 = icmp ugt i32 %783, %689
  %785 = call i32 @llvm.umax.i32(i32 %783, i32 %689) #21
  %786 = select i1 %784, ptr %695, ptr %687
  br label %787

787:                                              ; preds = %781, %777, %770, %767, %753, %749, %739, %730, %723, %707, %685
  %788 = phi i32 [ %691, %685 ], [ %691, %707 ], [ %691, %723 ], [ %691, %767 ], [ %691, %730 ], [ %691, %753 ], [ %691, %749 ], [ %691, %739 ], [ %691, %770 ], [ %779, %777 ], [ %691, %781 ]
  %789 = phi i32 [ %690, %685 ], [ %690, %707 ], [ %690, %723 ], [ %690, %767 ], [ %690, %730 ], [ %701, %753 ], [ %690, %749 ], [ %690, %739 ], [ %690, %770 ], [ %690, %777 ], [ %690, %781 ]
  %790 = phi i32 [ %689, %685 ], [ %689, %707 ], [ %689, %723 ], [ %689, %767 ], [ %689, %730 ], [ %734, %753 ], [ %689, %749 ], [ %689, %739 ], [ %689, %770 ], [ %689, %777 ], [ %785, %781 ]
  %791 = phi i32 [ %688, %685 ], [ %688, %707 ], [ %688, %723 ], [ %688, %767 ], [ %688, %730 ], [ %688, %753 ], [ %688, %749 ], [ %688, %739 ], [ %775, %770 ], [ %688, %777 ], [ %688, %781 ]
  %792 = phi ptr [ %687, %685 ], [ %687, %707 ], [ %687, %723 ], [ %687, %767 ], [ %687, %730 ], [ %695, %753 ], [ %687, %749 ], [ %687, %739 ], [ %776, %770 ], [ %780, %777 ], [ %786, %781 ]
  %793 = load ptr, ptr %30, align 4
  %794 = call i32 @cpumask_next_and(i32 noundef %686, ptr noundef %680, ptr noundef %793) #24
  %795 = load i32, ptr @nr_cpu_ids, align 4
  %796 = icmp ult i32 %794, %795
  br i1 %796, label %685, label %797

797:                                              ; preds = %787
  %798 = icmp eq ptr %792, null
  br i1 %798, label %1117, label %799

799:                                              ; preds = %797
  %800 = load ptr, ptr %22, align 4
  %801 = icmp eq ptr %792, %800
  br i1 %801, label %802, label %803, !prof !10

802:                                              ; preds = %799
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/fair.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 9879, 0\0A.popsection", ""() #21, !srcloc !53
  unreachable

803:                                              ; preds = %799
  %804 = getelementptr inbounds %struct.rq, ptr %792, i32 0, i32 40
  %805 = load i32, ptr %804, align 4
  store i32 %805, ptr %20, align 4
  store ptr %792, ptr %19, align 4
  %806 = load i32, ptr %31, align 4
  %807 = or i32 %806, 1
  store i32 %807, ptr %31, align 4
  %808 = getelementptr inbounds %struct.rq, ptr %792, i32 0, i32 1
  %809 = load i32, ptr %808, align 4
  %810 = icmp ugt i32 %809, 1
  br i1 %810, label %811, label %1073

811:                                              ; preds = %803
  %812 = load i32, ptr @sysctl_sched_nr_migrate, align 4
  %813 = call i32 @llvm.umin.i32(i32 %812, i32 %809)
  store i32 %813, ptr %34, align 4
  %814 = getelementptr inbounds %struct.rq, ptr %792, i32 0, i32 19
  %815 = getelementptr inbounds %struct.rq, ptr %792, i32 0, i32 33
  br label %816

816:                                              ; preds = %1003, %811
  %817 = phi i32 [ 0, %811 ], [ %997, %1003 ]
  %818 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !27
  call void @raw_spin_rq_lock_nested(ptr noundef nonnull %792, i32 noundef 0) #21
  %819 = load i32, ptr %814, align 32
  %820 = and i32 %819, 3
  store i32 %820, ptr %814, align 32
  %821 = load ptr, ptr %815, align 8
  %822 = icmp ne ptr %821, null
  %823 = icmp ne ptr %821, @balance_push_callback
  %824 = and i1 %822, %823
  %825 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %826 = xor i1 %825, true
  %827 = select i1 %824, i1 %826, i1 false
  br i1 %827, label %828, label %829, !prof !10

828:                                              ; preds = %816
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.10) #21
  br label %829

829:                                              ; preds = %828, %816
  call void @update_rq_clock(ptr noundef nonnull %792) #21
  %830 = load ptr, ptr %19, align 4
  %831 = getelementptr inbounds %struct.rq, ptr %830, i32 0, i32 42
  %832 = getelementptr inbounds %struct.rq, ptr %830, i32 0, i32 1
  %833 = load i32, ptr %832, align 4
  %834 = icmp ult i32 %833, 2
  br i1 %834, label %835, label %838

835:                                              ; preds = %829
  %836 = load i32, ptr %31, align 4
  %837 = and i32 %836, -2
  store i32 %837, ptr %31, align 4
  br label %952

838:                                              ; preds = %829
  %839 = load i32, ptr %29, align 4
  %840 = icmp slt i32 %839, 1
  br i1 %840, label %952, label %841

841:                                              ; preds = %838
  %842 = getelementptr inbounds %struct.rq, ptr %830, i32 0, i32 42, i32 1
  br label %843

843:                                              ; preds = %934, %841
  %844 = phi i32 [ 0, %841 ], [ %940, %934 ]
  %845 = load volatile ptr, ptr %831, align 4
  %846 = icmp eq ptr %845, %831
  br i1 %846, label %953, label %847

847:                                              ; preds = %943, %843
  %848 = load i32, ptr %28, align 4
  %849 = icmp eq i32 %848, 1
  br i1 %849, label %855, label %850

850:                                              ; preds = %847
  %851 = load ptr, ptr %19, align 4
  %852 = getelementptr inbounds %struct.rq, ptr %851, i32 0, i32 1
  %853 = load i32, ptr %852, align 4
  %854 = icmp ult i32 %853, 2
  br i1 %854, label %953, label %855

855:                                              ; preds = %850, %847
  %856 = load ptr, ptr %842, align 4
  %857 = getelementptr i8, ptr %856, i32 -660
  %858 = load i32, ptr %32, align 4
  %859 = add i32 %858, 1
  store i32 %859, ptr %32, align 4
  %860 = load i32, ptr %34, align 4
  %861 = icmp ugt i32 %859, %860
  br i1 %861, label %953, label %862

862:                                              ; preds = %855
  %863 = load i32, ptr %33, align 4
  %864 = icmp ugt i32 %859, %863
  br i1 %864, label %865, label %869

865:                                              ; preds = %862
  %866 = add i32 %863, 32
  store i32 %866, ptr %33, align 4
  %867 = load i32, ptr %31, align 4
  %868 = or i32 %867, 2
  store i32 %868, ptr %31, align 4
  br label %953

869:                                              ; preds = %862
  %870 = call fastcc i32 @can_migrate_task(ptr noundef %857, ptr noundef nonnull %12) #21
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %943, label %872

872:                                              ; preds = %869
  %873 = load i32, ptr %36, align 4
  switch i32 %873, label %934 [
    i32 0, label %874
    i32 1, label %895
    i32 2, label %909
    i32 3, label %912
  ]

874:                                              ; preds = %872
  %875 = getelementptr i8, ptr %856, i32 140
  %876 = load i32, ptr %875, align 32
  %877 = call i32 @llvm.umax.i32(i32 %876, i32 1) #21
  %878 = load i32, ptr @sysctl_sched_features, align 4
  %879 = and i32 %878, 32768
  %880 = icmp ne i32 %879, 0
  %881 = icmp ult i32 %877, 16
  %882 = select i1 %880, i1 %881, i1 false
  %883 = load ptr, ptr %12, align 4
  %884 = getelementptr inbounds %struct.sched_domain, ptr %883, i32 0, i32 13
  %885 = load i32, ptr %884, align 4
  %886 = icmp eq i32 %885, 0
  %887 = select i1 %882, i1 %886, i1 false
  br i1 %887, label %943, label %888

888:                                              ; preds = %874
  %889 = call i32 @llvm.umin.i32(i32 %885, i32 31) #21
  %890 = lshr i32 %877, %889
  %891 = load i32, ptr %29, align 4
  %892 = icmp ugt i32 %890, %891
  br i1 %892, label %943, label %893

893:                                              ; preds = %888
  %894 = sub i32 %891, %877
  br label %932

895:                                              ; preds = %872
  %896 = getelementptr i8, ptr %856, i32 148
  %897 = load volatile i32, ptr %896, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %898 = getelementptr i8, ptr %856, i32 156
  %899 = load volatile i32, ptr %898, align 16
  store volatile i32 %899, ptr %8, align 8
  %900 = getelementptr i8, ptr %856, i32 160
  %901 = load volatile i32, ptr %900, align 4
  store volatile i32 %901, ptr %9, align 4
  %902 = and i32 %899, 2147483647
  %903 = call i32 @llvm.umax.i32(i32 %901, i32 %902) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  %904 = call i32 @llvm.umax.i32(i32 %897, i32 %903) #21
  %905 = load i32, ptr %29, align 4
  %906 = icmp ult i32 %905, %904
  br i1 %906, label %943, label %907

907:                                              ; preds = %895
  %908 = sub i32 %905, %904
  br label %932

909:                                              ; preds = %872
  %910 = load i32, ptr %29, align 4
  %911 = add i32 %910, -1
  br label %932

912:                                              ; preds = %872
  %913 = load i32, ptr %20, align 4
  %914 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %913
  %915 = load i32, ptr %914, align 4
  %916 = add i32 %915, ptrtoint (ptr @runqueues to i32)
  %917 = inttoptr i32 %916 to ptr
  %918 = getelementptr inbounds %struct.rq, ptr %917, i32 0, i32 31
  %919 = load i32, ptr %918, align 16
  %920 = getelementptr i8, ptr %856, i32 148
  %921 = load volatile i32, ptr %920, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %922 = getelementptr i8, ptr %856, i32 156
  %923 = load volatile i32, ptr %922, align 16
  store volatile i32 %923, ptr %6, align 8
  %924 = getelementptr i8, ptr %856, i32 160
  %925 = load volatile i32, ptr %924, align 4
  store volatile i32 %925, ptr %7, align 4
  %926 = and i32 %923, 2147483647
  %927 = call i32 @llvm.umax.i32(i32 %925, i32 %926) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %928 = call i32 @llvm.umax.i32(i32 %921, i32 %927) #21
  %929 = mul i32 %928, 1280
  %930 = shl i32 %919, 10
  %931 = icmp ult i32 %929, %930
  br i1 %931, label %943, label %932

932:                                              ; preds = %912, %909, %907, %893
  %933 = phi i32 [ %911, %909 ], [ %908, %907 ], [ %894, %893 ], [ 0, %912 ]
  store i32 %933, ptr %29, align 4
  br label %934

934:                                              ; preds = %932, %872
  %935 = load ptr, ptr %19, align 4
  call void @deactivate_task(ptr noundef %935, ptr noundef %857, i32 noundef 8) #21
  %936 = load i32, ptr %21, align 4
  call void @set_task_cpu(ptr noundef %857, i32 noundef %936) #21
  %937 = load ptr, ptr %37, align 4
  %938 = getelementptr inbounds %struct.list_head, ptr %937, i32 0, i32 1
  store ptr %856, ptr %938, align 4
  store ptr %937, ptr %856, align 4
  %939 = getelementptr inbounds %struct.list_head, ptr %856, i32 0, i32 1
  store ptr %37, ptr %939, align 4
  store volatile ptr %856, ptr %37, align 4
  %940 = add i32 %844, 1
  %941 = load i32, ptr %29, align 4
  %942 = icmp slt i32 %941, 1
  br i1 %942, label %953, label %843

943:                                              ; preds = %912, %895, %888, %874, %869
  %944 = getelementptr inbounds %struct.list_head, ptr %856, i32 0, i32 1
  %945 = load ptr, ptr %944, align 4
  %946 = load ptr, ptr %856, align 4
  %947 = getelementptr inbounds %struct.list_head, ptr %946, i32 0, i32 1
  store ptr %945, ptr %947, align 4
  store volatile ptr %946, ptr %945, align 4
  %948 = load ptr, ptr %831, align 4
  %949 = getelementptr inbounds %struct.list_head, ptr %948, i32 0, i32 1
  store ptr %856, ptr %949, align 4
  store ptr %948, ptr %856, align 4
  store ptr %831, ptr %944, align 4
  store volatile ptr %856, ptr %831, align 4
  %950 = load volatile ptr, ptr %831, align 4
  %951 = icmp eq ptr %950, %831
  br i1 %951, label %953, label %847

952:                                              ; preds = %838, %835
  call void @raw_spin_rq_unlock(ptr noundef nonnull %792) #21
  br label %996

953:                                              ; preds = %943, %934, %865, %855, %850, %843
  %954 = phi i32 [ %844, %865 ], [ %844, %850 ], [ %844, %855 ], [ %844, %943 ], [ %940, %934 ], [ %844, %843 ]
  call void @raw_spin_rq_unlock(ptr noundef nonnull %792) #21
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %996, label %956

956:                                              ; preds = %953
  %957 = load ptr, ptr %22, align 4
  call void @raw_spin_rq_lock_nested(ptr noundef %957, i32 noundef 0) #21
  %958 = getelementptr inbounds %struct.rq, ptr %957, i32 0, i32 19
  %959 = load i32, ptr %958, align 32
  %960 = and i32 %959, 3
  store i32 %960, ptr %958, align 32
  %961 = getelementptr inbounds %struct.rq, ptr %957, i32 0, i32 33
  %962 = load ptr, ptr %961, align 8
  %963 = icmp ne ptr %962, null
  %964 = icmp ne ptr %962, @balance_push_callback
  %965 = and i1 %963, %964
  %966 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %967 = xor i1 %966, true
  %968 = select i1 %965, i1 %967, i1 false
  br i1 %968, label %969, label %970, !prof !10

969:                                              ; preds = %956
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.10) #21
  br label %970

970:                                              ; preds = %969, %956
  %971 = load ptr, ptr %22, align 4
  call void @update_rq_clock(ptr noundef %971) #21
  %972 = load volatile ptr, ptr %37, align 4
  %973 = icmp eq ptr %972, %37
  br i1 %973, label %993, label %974

974:                                              ; preds = %989, %970
  %975 = phi ptr [ %991, %989 ], [ %972, %970 ]
  %976 = getelementptr inbounds %struct.list_head, ptr %975, i32 0, i32 1
  %977 = load ptr, ptr %976, align 4
  %978 = load ptr, ptr %975, align 4
  %979 = getelementptr inbounds %struct.list_head, ptr %978, i32 0, i32 1
  store ptr %977, ptr %979, align 4
  store volatile ptr %978, ptr %977, align 4
  store volatile ptr %975, ptr %975, align 4
  store ptr %975, ptr %976, align 4
  %980 = load ptr, ptr %22, align 4
  %981 = getelementptr i8, ptr %975, i32 -652
  %982 = load volatile i32, ptr %981, align 8
  %983 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %982
  %984 = load i32, ptr %983, align 4
  %985 = add i32 %984, ptrtoint (ptr @runqueues to i32)
  %986 = inttoptr i32 %985 to ptr
  %987 = icmp eq ptr %980, %986
  br i1 %987, label %989, label %988, !prof !11

988:                                              ; preds = %974
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/fair.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 8014, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

989:                                              ; preds = %974
  %990 = getelementptr i8, ptr %975, i32 -660
  call void @activate_task(ptr noundef %980, ptr noundef %990, i32 noundef 8) #21
  call void @check_preempt_curr(ptr noundef %980, ptr noundef %990, i32 noundef 0) #21
  %991 = load volatile ptr, ptr %37, align 4
  %992 = icmp eq ptr %991, %37
  br i1 %992, label %993, label %974

993:                                              ; preds = %989, %970
  %994 = load ptr, ptr %22, align 4
  call void @raw_spin_rq_unlock(ptr noundef %994) #21
  %995 = add i32 %954, %817
  br label %996

996:                                              ; preds = %993, %953, %952
  %997 = phi i32 [ %995, %993 ], [ %817, %953 ], [ %817, %952 ]
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %818) #21, !srcloc !28
  %998 = load i32, ptr %31, align 4
  %999 = and i32 %998, 2
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1004, label %1001

1001:                                             ; preds = %996
  %1002 = and i32 %998, -3
  store i32 %1002, ptr %31, align 4
  br label %1003

1003:                                             ; preds = %1010, %1001
  br label %816

1004:                                             ; preds = %996
  %1005 = and i32 %998, 4
  %1006 = icmp ne i32 %1005, 0
  %1007 = load i32, ptr %29, align 4
  %1008 = icmp sgt i32 %1007, 0
  %1009 = select i1 %1006, i1 %1008, i1 false
  br i1 %1009, label %1010, label %1027

1010:                                             ; preds = %1004
  %1011 = load i32, ptr %21, align 4
  %1012 = load ptr, ptr %30, align 4
  %1013 = and i32 %1011, 31
  %1014 = shl nuw i32 1, %1013
  %1015 = lshr i32 %1011, 5
  %1016 = getelementptr i32, ptr %1012, i32 %1015
  %1017 = xor i32 %1014, -1
  %1018 = load i32, ptr %1016, align 4
  %1019 = and i32 %1018, %1017
  store i32 %1019, ptr %1016, align 4
  %1020 = load i32, ptr %27, align 4
  %1021 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1020
  %1022 = load i32, ptr %1021, align 4
  %1023 = add i32 %1022, ptrtoint (ptr @runqueues to i32)
  %1024 = inttoptr i32 %1023 to ptr
  store ptr %1024, ptr %22, align 4
  store i32 %1020, ptr %21, align 4
  %1025 = load i32, ptr %31, align 4
  %1026 = and i32 %1025, -5
  store i32 %1026, ptr %31, align 4
  store i32 0, ptr %32, align 4
  store i32 32, ptr %33, align 4
  br label %1003

1027:                                             ; preds = %1004
  br i1 %77, label %1038, label %1028

1028:                                             ; preds = %1027
  %1029 = and i32 %998, 8
  %1030 = icmp ne i32 %1029, 0
  %1031 = select i1 %1030, i1 %1008, i1 false
  br i1 %1031, label %1032, label %1038

1032:                                             ; preds = %1028
  %1033 = load ptr, ptr %78, align 8
  %1034 = getelementptr inbounds %struct.sched_group, ptr %1033, i32 0, i32 3
  %1035 = load ptr, ptr %1034, align 4
  %1036 = getelementptr inbounds %struct.sched_group_capacity, ptr %1035, i32 0, i32 5
  store i32 1, ptr %1036, align 4
  %1037 = load i32, ptr %31, align 4
  br label %1038

1038:                                             ; preds = %1032, %1028, %1027
  %1039 = phi i32 [ %998, %1028 ], [ %1037, %1032 ], [ %998, %1027 ]
  %1040 = and i32 %1039, 1
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1071, label %1042, !prof !11

1042:                                             ; preds = %1038
  %1043 = load i32, ptr %804, align 4
  %1044 = and i32 %1043, 31
  %1045 = shl nuw i32 1, %1044
  %1046 = lshr i32 %1043, 5
  %1047 = getelementptr i32, ptr %18, i32 %1046
  %1048 = xor i32 %1045, -1
  %1049 = load i32, ptr %1047, align 4
  %1050 = and i32 %1049, %1048
  store i32 %1050, ptr %1047, align 4
  %1051 = load ptr, ptr %23, align 4
  %1052 = load i32, ptr %18, align 4
  %1053 = load i32, ptr %1051, align 4
  %1054 = xor i32 %1053, -1
  %1055 = and i32 %1052, 65535
  %1056 = and i32 %1055, %1054
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1132, label %1058

1058:                                             ; preds = %1042
  store i32 0, ptr %32, align 4
  store i32 32, ptr %33, align 4
  %1059 = load ptr, ptr %12, align 4
  %1060 = getelementptr inbounds %struct.sched_domain, ptr %1059, i32 0, i32 2
  %1061 = load ptr, ptr %1060, align 8
  %1062 = load i32, ptr %21, align 4
  %1063 = load ptr, ptr %30, align 4
  %1064 = lshr i32 %1062, 5
  %1065 = getelementptr i32, ptr %1063, i32 %1064
  %1066 = load volatile i32, ptr %1065, align 4
  %1067 = and i32 %1062, 31
  %1068 = shl nuw i32 1, %1067
  %1069 = and i32 %1066, %1068
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %112, label %79

1071:                                             ; preds = %1038
  %1072 = icmp eq i32 %997, 0
  br i1 %1072, label %1073, label %1109

1073:                                             ; preds = %1071, %803
  %1074 = icmp eq i32 %3, 2
  br i1 %1074, label %1079, label %1075

1075:                                             ; preds = %1073
  %1076 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 13
  %1077 = load i32, ptr %1076, align 4
  %1078 = add i32 %1077, 1
  store i32 %1078, ptr %1076, align 4
  br label %1079

1079:                                             ; preds = %1075, %1073
  %1080 = call fastcc i32 @need_active_balance(ptr noundef nonnull %12)
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1112, label %1082

1082:                                             ; preds = %1079
  %1083 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #21, !srcloc !27
  call void @raw_spin_rq_lock_nested(ptr noundef nonnull %792, i32 noundef 0) #21
  %1084 = getelementptr inbounds %struct.rq, ptr %792, i32 0, i32 14
  %1085 = load ptr, ptr %1084, align 4
  %1086 = getelementptr inbounds %struct.task_struct, ptr %1085, i32 0, i32 27
  %1087 = load ptr, ptr %1086, align 8
  %1088 = lshr i32 %0, 5
  %1089 = getelementptr i32, ptr %1087, i32 %1088
  %1090 = load volatile i32, ptr %1089, align 4
  %1091 = and i32 %0, 31
  %1092 = shl nuw i32 1, %1091
  %1093 = and i32 %1090, %1092
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1108, label %1095

1095:                                             ; preds = %1082
  %1096 = load i32, ptr %31, align 4
  %1097 = and i32 %1096, -2
  store i32 %1097, ptr %31, align 4
  %1098 = getelementptr inbounds %struct.rq, ptr %792, i32 0, i32 37
  %1099 = load i32, ptr %1098, align 4
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1101, label %1111

1101:                                             ; preds = %1095
  store i32 1, ptr %1098, align 4
  %1102 = getelementptr inbounds %struct.rq, ptr %792, i32 0, i32 38
  store i32 %0, ptr %1102, align 8
  call void @raw_spin_rq_unlock(ptr noundef nonnull %792) #21
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1083) #21, !srcloc !28
  %1103 = load i32, ptr %804, align 4
  %1104 = getelementptr inbounds %struct.rq, ptr %792, i32 0, i32 39
  %1105 = call zeroext i1 @stop_one_cpu_nowait(i32 noundef %1103, ptr noundef nonnull @active_load_balance_cpu_stop, ptr noundef nonnull %792, ptr noundef %1104) #21
  %1106 = call fastcc i32 @need_active_balance(ptr noundef nonnull %12)
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1152, label %1112

1108:                                             ; preds = %1082
  call void @raw_spin_rq_unlock(ptr noundef nonnull %792) #21
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1083) #21, !srcloc !28
  br label %1134

1109:                                             ; preds = %1071
  %1110 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 13
  store i32 0, ptr %1110, align 4
  br label %1112

1111:                                             ; preds = %1095
  call void @raw_spin_rq_unlock(ptr noundef nonnull %792) #21
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1083) #21, !srcloc !28
  br label %1112

1112:                                             ; preds = %1111, %1109, %1101, %1079
  %1113 = phi i32 [ 0, %1101 ], [ 0, %1079 ], [ %997, %1109 ], [ 0, %1111 ]
  %1114 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 3
  %1115 = load i32, ptr %1114, align 4
  %1116 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 12
  store i32 %1115, ptr %1116, align 8
  br label %1152

1117:                                             ; preds = %797, %679, %676, %112
  %1118 = icmp eq ptr %13, null
  br i1 %1118, label %1132, label %1119

1119:                                             ; preds = %1117
  %1120 = load i32, ptr %31, align 4
  %1121 = and i32 %1120, 1
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1123, label %1132

1123:                                             ; preds = %1119
  %1124 = getelementptr inbounds %struct.sched_domain, ptr %13, i32 0, i32 2
  %1125 = load ptr, ptr %1124, align 8
  %1126 = getelementptr inbounds %struct.sched_group, ptr %1125, i32 0, i32 3
  %1127 = load ptr, ptr %1126, align 4
  %1128 = getelementptr inbounds %struct.sched_group_capacity, ptr %1127, i32 0, i32 5
  %1129 = load i32, ptr %1128, align 4
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1132, label %1131

1131:                                             ; preds = %1123
  store i32 0, ptr %1128, align 4
  br label %1132

1132:                                             ; preds = %1131, %1123, %1119, %1117, %1042
  %1133 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 13
  store i32 0, ptr %1133, align 4
  br label %1134

1134:                                             ; preds = %1132, %1108
  %1135 = load i32, ptr %28, align 4
  %1136 = icmp eq i32 %1135, 2
  br i1 %1136, label %1152, label %1137

1137:                                             ; preds = %1134
  %1138 = load i32, ptr %31, align 4
  %1139 = and i32 %1138, 1
  %1140 = icmp ne i32 %1139, 0
  %1141 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 12
  %1142 = load i32, ptr %1141, align 8
  %1143 = icmp ult i32 %1142, 512
  %1144 = select i1 %1140, i1 %1143, i1 false
  br i1 %1144, label %1149, label %1145

1145:                                             ; preds = %1137
  %1146 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 4
  %1147 = load i32, ptr %1146, align 8
  %1148 = icmp ult i32 %1142, %1147
  br i1 %1148, label %1149, label %1152

1149:                                             ; preds = %1145, %1137
  %1150 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 12
  %1151 = shl i32 %1142, 1
  store i32 %1151, ptr %1150, align 8
  br label %1152

1152:                                             ; preds = %1149, %1145, %1134, %1112, %1101
  %1153 = phi i32 [ 0, %1134 ], [ 0, %1149 ], [ 0, %1145 ], [ %1113, %1112 ], [ 0, %1101 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #21
  ret i32 %1153
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @need_active_balance(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.lb_env, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.lb_env, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.lb_env, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @arch_asym_cpu_priority(i32 noundef %13) #21
  %17 = tail call i32 @arch_asym_cpu_priority(i32 noundef %15) #21
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %73, label %19

19:                                               ; preds = %11, %6, %1
  %20 = getelementptr inbounds %struct.lb_env, ptr %0, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.sched_domain, ptr %24, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sched_domain, ptr %24, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 2
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %73, label %31

31:                                               ; preds = %23, %19
  %32 = load i32, ptr %3, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %70, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.lb_env, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.rq, ptr %36, i32 0, i32 10, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %70

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rq, ptr %36, i32 0, i32 31
  %42 = load i32, ptr %41, align 16
  %43 = getelementptr inbounds %struct.sched_domain, ptr %2, i32 0, i32 6
  %44 = load i32, ptr %43, align 8
  %45 = mul i32 %44, %42
  %46 = getelementptr inbounds %struct.rq, ptr %36, i32 0, i32 32
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, 100
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.lb_env, ptr %0, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, ptrtoint (ptr @runqueues to i32)
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr inbounds %struct.rq, ptr %56, i32 0, i32 31
  %58 = load i32, ptr %57, align 16
  %59 = mul i32 %58, %44
  %60 = getelementptr inbounds %struct.lb_env, ptr %0, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, ptrtoint (ptr @runqueues to i32)
  %65 = inttoptr i32 %64 to ptr
  %66 = getelementptr inbounds %struct.rq, ptr %65, i32 0, i32 31
  %67 = load i32, ptr %66, align 16
  %68 = mul i32 %67, 100
  %69 = icmp ult i32 %59, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %50, %40, %34, %31
  %71 = icmp eq i32 %21, 3
  %72 = zext i1 %71 to i32
  br label %73

73:                                               ; preds = %70, %50, %23, %11
  %74 = phi i32 [ 1, %11 ], [ 1, %50 ], [ %72, %70 ], [ 1, %23 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stop_one_cpu_nowait(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_load_balance_cpu_stop(ptr noundef %0) #1 {
  %2 = alloca %struct.lb_env, align 4
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 38
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #21, !srcloc !55
  tail call void @raw_spin_rq_lock_nested(ptr noundef %0, i32 noundef 0) #21
  %11 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %12 = load i32, ptr %11, align 32
  %13 = and i32 %12, 3
  store i32 %13, ptr %11, align 32
  %14 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  %17 = icmp ne ptr %15, @balance_push_callback
  %18 = and i1 %16, %17
  %19 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !10

22:                                               ; preds = %1
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.10) #21
  br label %23

23:                                               ; preds = %22, %1
  %24 = lshr i32 %4, 5
  %25 = getelementptr i32, ptr @__cpu_active_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %4, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %104, label %31

31:                                               ; preds = %23
  %32 = lshr i32 %6, 5
  %33 = getelementptr i32, ptr @__cpu_active_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %6, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %104, label %39

39:                                               ; preds = %31
  %40 = tail call ptr @llvm.thread.pointer() #21
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %4, %42
  br i1 %43, label %44, label %104, !prof !11

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 37
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %104, label %48, !prof !10

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %104, label %52

52:                                               ; preds = %48
  %53 = icmp eq ptr %10, %0
  br i1 %53, label %54, label %55, !prof !10

54:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/fair.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 10175, 0\0A.popsection", ""() #21, !srcloc !56
  unreachable

55:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %56 = load i32, ptr %7, align 4
  %57 = add i32 %56, ptrtoint (ptr @runqueues to i32)
  %58 = inttoptr i32 %57 to ptr
  %59 = getelementptr inbounds %struct.rq, ptr %58, i32 0, i32 30
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %106, label %62

62:                                               ; preds = %69, %55
  %63 = phi ptr [ %70, %69 ], [ %60, %55 ]
  %64 = getelementptr inbounds %struct.sched_domain, ptr %63, i32 0, i32 21
  %65 = getelementptr i32, ptr %64, i32 %24
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, %28
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load ptr, ptr %63, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %106, label %62

72:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #21
  store ptr %63, ptr %2, align 4
  %73 = getelementptr inbounds %struct.lb_env, ptr %2, i32 0, i32 1
  store ptr %0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.lb_env, ptr %2, i32 0, i32 2
  %75 = load i32, ptr %3, align 4
  store i32 %75, ptr %74, align 4
  %76 = getelementptr inbounds %struct.lb_env, ptr %2, i32 0, i32 3
  store i32 %6, ptr %76, align 4
  %77 = getelementptr inbounds %struct.lb_env, ptr %2, i32 0, i32 4
  store ptr %10, ptr %77, align 4
  %78 = getelementptr inbounds %struct.lb_env, ptr %2, i32 0, i32 5
  %79 = getelementptr inbounds %struct.lb_env, ptr %2, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %78, i8 0, i64 20, i1 false)
  store i32 16, ptr %79, align 4
  %80 = getelementptr inbounds %struct.lb_env, ptr %2, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %80, i8 0, i64 28, i1 false)
  tail call void @update_rq_clock(ptr noundef %0) #21
  %81 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 42, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 42
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %102, label %91

85:                                               ; preds = %91
  %86 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %73, align 4
  %89 = getelementptr inbounds %struct.rq, ptr %88, i32 0, i32 42
  %90 = icmp eq ptr %87, %89
  br i1 %90, label %102, label %91

91:                                               ; preds = %85, %72
  %92 = phi ptr [ %87, %85 ], [ %82, %72 ]
  %93 = getelementptr i8, ptr %92, i32 -660
  %94 = call fastcc i32 @can_migrate_task(ptr noundef %93, ptr noundef nonnull %2) #21
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %85, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %73, align 4
  tail call void @deactivate_task(ptr noundef %97, ptr noundef %93, i32 noundef 8) #21
  %98 = load i32, ptr %76, align 4
  tail call void @set_task_cpu(ptr noundef %93, i32 noundef %98) #21
  %99 = icmp eq ptr %93, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.sched_domain, ptr %63, i32 0, i32 13
  store i32 0, ptr %101, align 4
  br label %102

102:                                              ; preds = %100, %96, %85, %72
  %103 = phi ptr [ null, %96 ], [ %93, %100 ], [ null, %72 ], [ null, %85 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #21
  br label %106

104:                                              ; preds = %48, %44, %39, %31, %23
  %105 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 37
  store i32 0, ptr %105, align 4
  br label %133

106:                                              ; preds = %102, %69, %55
  %107 = phi ptr [ %103, %102 ], [ null, %55 ], [ null, %69 ]
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  %108 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 37
  store i32 0, ptr %108, align 4
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #21
  %109 = icmp eq ptr %107, null
  br i1 %109, label %135, label %110

110:                                              ; preds = %106
  tail call void @raw_spin_rq_lock_nested(ptr noundef %10, i32 noundef 0) #21
  %111 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 19
  %112 = load i32, ptr %111, align 32
  %113 = and i32 %112, 3
  store i32 %113, ptr %111, align 32
  %114 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 33
  %115 = load ptr, ptr %114, align 8
  %116 = icmp ne ptr %115, null
  %117 = icmp ne ptr %115, @balance_push_callback
  %118 = and i1 %116, %117
  %119 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %120 = xor i1 %119, true
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %122, label %123, !prof !10

122:                                              ; preds = %110
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.10) #21
  br label %123

123:                                              ; preds = %122, %110
  tail call void @update_rq_clock(ptr noundef %10) #21
  %124 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %125 = load volatile i32, ptr %124, align 8
  %126 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %125
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, ptrtoint (ptr @runqueues to i32)
  %129 = inttoptr i32 %128 to ptr
  %130 = icmp eq ptr %129, %10
  br i1 %130, label %132, label %131, !prof !11

131:                                              ; preds = %123
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/fair.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 8014, 0\0A.popsection", ""() #21, !srcloc !54
  unreachable

132:                                              ; preds = %123
  tail call void @activate_task(ptr noundef %10, ptr noundef nonnull %107, i32 noundef 8) #21
  tail call void @check_preempt_curr(ptr noundef %10, ptr noundef nonnull %107, i32 noundef 0) #21
  br label %133

133:                                              ; preds = %132, %104
  %134 = phi ptr [ %0, %104 ], [ %10, %132 ]
  tail call void @raw_spin_rq_unlock(ptr noundef %134) #21
  br label %135

135:                                              ; preds = %133, %106
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !57
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @group_balance_cpu(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_overutilized_tp(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @can_migrate_task(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = tail call zeroext i1 @kthread_is_per_cpu(ptr noundef %0) #21
  br i1 %3, label %139, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.lb_env, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 8
  %9 = lshr i32 %6, 5
  %10 = getelementptr i32, ptr %8, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %6, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.lb_env, ptr %1, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  br i1 %15, label %18, label %48

18:                                               ; preds = %4
  %19 = or i32 %17, 8
  store i32 %19, ptr %16, align 4
  %20 = getelementptr inbounds %struct.lb_env, ptr %1, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 2
  %23 = and i32 %17, 20
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %139

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.lb_env, ptr %1, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.lb_env, ptr %1, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr @nr_cpu_ids, align 4
  br label %32

32:                                               ; preds = %36, %26
  %33 = phi i32 [ %34, %36 ], [ -1, %26 ]
  %34 = tail call i32 @cpumask_next_and(i32 noundef %33, ptr noundef %28, ptr noundef %30) #24
  %35 = icmp ult i32 %34, %31
  br i1 %35, label %36, label %139

36:                                               ; preds = %32
  %37 = load ptr, ptr %7, align 8
  %38 = lshr i32 %34, 5
  %39 = getelementptr i32, ptr %37, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %34, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %32, label %45

45:                                               ; preds = %36
  %46 = or i32 %17, 12
  store i32 %46, ptr %16, align 4
  %47 = getelementptr inbounds %struct.lb_env, ptr %1, i32 0, i32 6
  store i32 %34, ptr %47, align 4
  br label %139

48:                                               ; preds = %4
  %49 = and i32 %17, -2
  store i32 %49, ptr %16, align 4
  %50 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %139

53:                                               ; preds = %48
  %54 = and i32 %17, 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.lb_env, ptr %1, i32 0, i32 1
  %58 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, @fair_sched_class
  br i1 %60, label %61, label %139

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %63 = load i32, ptr %62, align 64
  %64 = icmp eq i32 %63, 5
  br i1 %64, label %139, label %65, !prof !10

65:                                               ; preds = %61
  %66 = load ptr, ptr %1, align 4
  %67 = getelementptr inbounds %struct.sched_domain, ptr %66, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 128
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %139

71:                                               ; preds = %65
  %72 = load i32, ptr @sysctl_sched_features, align 4
  %73 = and i32 %72, 16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %104, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.lb_env, ptr %1, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.rq, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %104, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %83 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 0, i32 2
  %84 = load volatile i32, ptr %83, align 8
  %85 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, ptrtoint (ptr @runqueues to i32)
  %88 = inttoptr i32 %87 to ptr
  %89 = getelementptr inbounds %struct.rq, ptr %88, i32 0, i32 10, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %82, %90
  br i1 %91, label %131, label %92

92:                                               ; preds = %81
  %93 = load volatile i32, ptr %83, align 8
  %94 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, ptrtoint (ptr @runqueues to i32)
  %97 = inttoptr i32 %96 to ptr
  %98 = getelementptr inbounds %struct.rq, ptr %97, i32 0, i32 10, i32 11
  %99 = load ptr, ptr %98, align 64
  %100 = icmp eq ptr %82, %99
  %101 = load i32, ptr @sysctl_sched_migration_cost, align 4
  %102 = icmp eq i32 %101, -1
  %103 = select i1 %100, i1 true, i1 %102
  br i1 %103, label %131, label %107

104:                                              ; preds = %75, %71
  %105 = load i32, ptr @sysctl_sched_migration_cost, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %131, label %107

107:                                              ; preds = %104, %92
  %108 = phi i32 [ %101, %92 ], [ %105, %104 ]
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %139, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %57, align 4
  %112 = getelementptr inbounds %struct.rq, ptr %111, i32 0, i32 19
  %113 = load i32, ptr %112, align 32
  %114 = icmp ult i32 %113, 2
  %115 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %116 = xor i1 %115, true
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %120, !prof !10

118:                                              ; preds = %110
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  %119 = load i32, ptr @sysctl_sched_migration_cost, align 4
  br label %120

120:                                              ; preds = %118, %110
  %121 = phi i32 [ %108, %110 ], [ %119, %118 ]
  %122 = getelementptr inbounds %struct.rq, ptr %111, i32 0, i32 22
  %123 = load i64, ptr %122, align 64
  %124 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 4
  %125 = load i64, ptr %124, align 32
  %126 = sub i64 %123, %125
  %127 = zext i32 %121 to i64
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %120
  %130 = load ptr, ptr %1, align 4
  br label %131

131:                                              ; preds = %129, %104, %92, %81
  %132 = phi ptr [ %130, %129 ], [ %66, %104 ], [ %66, %81 ], [ %66, %92 ]
  %133 = getelementptr inbounds %struct.sched_domain, ptr %132, i32 0, i32 13
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.sched_domain, ptr %132, i32 0, i32 7
  %136 = load i32, ptr %135, align 4
  %137 = icmp ugt i32 %134, %136
  %138 = zext i1 %137 to i32
  br label %139

139:                                              ; preds = %131, %120, %107, %65, %61, %56, %53, %48, %45, %32, %18, %2
  %140 = phi i32 [ 0, %2 ], [ 0, %45 ], [ 0, %18 ], [ 0, %48 ], [ 1, %53 ], [ 1, %120 ], [ %138, %131 ], [ 1, %56 ], [ 1, %61 ], [ 1, %65 ], [ 1, %107 ], [ 0, %32 ]
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_is_per_cpu(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @activate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_preempt_curr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock_cpu(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single_async(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_util_est_cfs_tp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_trace_sched_update_nr_running(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_util_est_se_tp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_idlest_cpu(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #18 {
  %6 = alloca i32, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sg_lb_stats, align 4
  %11 = alloca %struct.sg_lb_stats, align 4
  %12 = getelementptr inbounds %struct.sched_domain, ptr %0, i32 0, i32 21
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 27
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %12, align 4
  %16 = load i32, ptr %14, align 4
  %17 = and i32 %15, 65535
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %517, label %20

20:                                               ; preds = %5
  %21 = and i32 %4, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %25 = load volatile i32, ptr %24, align 8
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, ptrtoint (ptr @runqueues to i32)
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 10, i32 16
  %31 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 10, i32 15
  br label %32

32:                                               ; preds = %32, %23
  %33 = load i64, ptr %30, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !41
  %34 = load i64, ptr %31, align 64
  %35 = icmp eq i64 %34, %33
  br i1 %35, label %36, label %32

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %38 = tail call i32 @__update_load_avg_blocked_se(i64 noundef %33, ptr noundef %37) #21
  br label %39

39:                                               ; preds = %36, %20
  %40 = icmp eq ptr %0, null
  br i1 %40, label %517, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %43 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10
  %44 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 5
  %45 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 1
  %46 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 1
  %47 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 7
  %48 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %49 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9
  %50 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 9, i32 1
  %51 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 3
  %52 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 3
  %53 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 10, i32 6
  %54 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 4
  %55 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 4
  %56 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 6
  %57 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 6
  %58 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 5
  %59 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 5
  %60 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 7
  %61 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 7
  %62 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 11
  %63 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 11
  %64 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 2
  %65 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 2
  %66 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 8
  %67 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 8
  %68 = getelementptr inbounds %struct.sg_lb_stats, ptr %11, i32 0, i32 9
  %69 = getelementptr inbounds %struct.sg_lb_stats, ptr %10, i32 0, i32 9
  br label %70

70:                                               ; preds = %512, %41
  %71 = phi ptr [ %0, %41 ], [ %515, %512 ]
  %72 = phi i32 [ %2, %41 ], [ %514, %512 ]
  %73 = phi i32 [ %2, %41 ], [ %513, %512 ]
  %74 = getelementptr inbounds %struct.sched_domain, ptr %71, i32 0, i32 9
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, %4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %508, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.sched_domain, ptr %71, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %10, i8 0, i32 48, i1 false) #21, !annotation !52
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %11, i8 0, i32 48, i1 false) #21, !annotation !52
  %81 = load ptr, ptr %13, align 8
  %82 = lshr i32 %72, 5
  %83 = and i32 %72, 31
  %84 = shl nuw i32 1, %83
  %85 = load i32, ptr @nr_cpu_ids, align 4
  %86 = load i32, ptr @sysctl_sched_features, align 4
  %87 = and i32 %86, 1048576
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr inbounds %struct.sched_domain, ptr %71, i32 0, i32 6
  br label %90

90:                                               ; preds = %338, %78
  %91 = phi i32 [ -1, %78 ], [ %339, %338 ]
  %92 = phi i32 [ 0, %78 ], [ %340, %338 ]
  %93 = phi i32 [ 0, %78 ], [ %341, %338 ]
  %94 = phi i32 [ 5, %78 ], [ %342, %338 ]
  %95 = phi ptr [ %80, %78 ], [ %345, %338 ]
  %96 = phi ptr [ null, %78 ], [ %343, %338 ]
  %97 = phi ptr [ null, %78 ], [ %344, %338 ]
  %98 = getelementptr inbounds %struct.sched_group, ptr %95, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = load i32, ptr %81, align 4
  %101 = and i32 %99, 65535
  %102 = and i32 %101, %100
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %338, label %104

104:                                              ; preds = %90
  %105 = getelementptr i32, ptr %98, i32 %82
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %106, %84
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, ptr %11, ptr %10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %109, i8 0, i32 48, i1 false) #21
  %110 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %98) #24
  %111 = icmp ult i32 %110, %85
  br i1 %111, label %112, label %246

112:                                              ; preds = %104
  %113 = select i1 %108, ptr %45, ptr %46
  %114 = select i1 %108, ptr %51, ptr %52
  %115 = select i1 %108, ptr %54, ptr %55
  %116 = select i1 %108, ptr %56, ptr %57
  %117 = select i1 %108, ptr %58, ptr %59
  %118 = select i1 %108, ptr %60, ptr %61
  br label %119

119:                                              ; preds = %239, %112
  %120 = phi i32 [ 0, %112 ], [ %240, %239 ]
  %121 = phi i32 [ 0, %112 ], [ %223, %239 ]
  %122 = phi i32 [ 0, %112 ], [ %219, %239 ]
  %123 = phi i32 [ 0, %112 ], [ %204, %239 ]
  %124 = phi i32 [ 0, %112 ], [ %188, %239 ]
  %125 = phi i32 [ 0, %112 ], [ %148, %239 ]
  %126 = phi i32 [ %110, %112 ], [ %241, %239 ]
  %127 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %126
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, ptrtoint (ptr @runqueues to i32)
  %130 = inttoptr i32 %129 to ptr
  %131 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 40
  %132 = load i32, ptr %131, align 4
  %133 = load volatile i32, ptr %42, align 8
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %119
  %136 = load volatile i64, ptr %43, align 64
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %119
  %139 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 10, i32 15, i32 5
  %140 = load i32, ptr %139, align 32
  br label %146

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 10, i32 15, i32 5
  %143 = load volatile i32, ptr %142, align 32
  %144 = load i32, ptr %44, align 32
  %145 = tail call i32 @llvm.usub.sat.i32(i32 %143, i32 %144) #21
  br label %146

146:                                              ; preds = %141, %138
  %147 = phi i32 [ %140, %138 ], [ %145, %141 ]
  %148 = add i32 %147, %125
  store i32 %148, ptr %113, align 4
  %149 = load volatile i32, ptr %42, align 8
  %150 = icmp eq i32 %149, %126
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load volatile i64, ptr %43, align 64
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151, %146
  %155 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 10, i32 15, i32 7
  %156 = load volatile i32, ptr %155, align 8
  br i1 %88, label %183, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 10, i32 15, i32 9
  %159 = load volatile i32, ptr %158, align 16
  %160 = tail call i32 @llvm.umax.i32(i32 %156, i32 %159) #21
  br label %183

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 10, i32 15, i32 7
  %163 = load volatile i32, ptr %162, align 8
  %164 = load volatile i32, ptr %47, align 8
  %165 = tail call i32 @llvm.usub.sat.i32(i32 %163, i32 %164) #21
  br i1 %88, label %183, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 10, i32 15, i32 9
  %168 = load volatile i32, ptr %167, align 16
  %169 = load i32, ptr %48, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %174, label %171, !prof !10

171:                                              ; preds = %166
  %172 = tail call ptr @llvm.thread.pointer() #21
  %173 = icmp eq ptr %172, %1
  br i1 %173, label %174, label %180, !prof !10

174:                                              ; preds = %171, %166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %175 = load volatile i32, ptr %49, align 16
  store volatile i32 %175, ptr %8, align 8
  %176 = load volatile i32, ptr %50, align 4
  store volatile i32 %176, ptr %9, align 4
  %177 = and i32 %175, 2147483647
  %178 = tail call i32 @llvm.umax.i32(i32 %176, i32 %177) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  %179 = tail call i32 @llvm.usub.sat.i32(i32 %168, i32 %178) #21
  br label %180

180:                                              ; preds = %174, %171
  %181 = phi i32 [ %179, %174 ], [ %168, %171 ]
  %182 = tail call i32 @llvm.umax.i32(i32 %165, i32 %181) #21
  br label %183

183:                                              ; preds = %180, %161, %157, %154
  %184 = phi i32 [ %160, %157 ], [ %156, %154 ], [ %182, %180 ], [ %165, %161 ]
  %185 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 32
  %186 = load i32, ptr %185, align 4
  %187 = tail call i32 @llvm.umin.i32(i32 %184, i32 %186) #21
  %188 = add i32 %187, %124
  store i32 %188, ptr %114, align 4
  %189 = load volatile i32, ptr %42, align 8
  %190 = icmp eq i32 %132, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %183
  %192 = load volatile i64, ptr %43, align 64
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191, %183
  %195 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 10, i32 15, i32 6
  %196 = load i32, ptr %195, align 4
  br label %202

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 10, i32 15, i32 6
  %199 = load volatile i32, ptr %198, align 4
  %200 = load i32, ptr %53, align 4
  %201 = tail call i32 @llvm.usub.sat.i32(i32 %199, i32 %200) #21
  br label %202

202:                                              ; preds = %197, %194
  %203 = phi i32 [ %196, %194 ], [ %201, %197 ]
  %204 = add i32 %203, %123
  store i32 %204, ptr %115, align 4
  %205 = load volatile i32, ptr %42, align 8
  %206 = icmp eq i32 %205, %126
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load volatile i64, ptr %43, align 64
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %207
  %211 = load i32, ptr %48, align 4
  %212 = icmp eq i32 %211, 1
  %213 = zext i1 %212 to i32
  br label %214

214:                                              ; preds = %210, %207, %202
  %215 = phi i32 [ 0, %207 ], [ 0, %202 ], [ %213, %210 ]
  %216 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 10, i32 2
  %217 = load i32, ptr %216, align 4
  %218 = sub i32 %217, %215
  %219 = add i32 %218, %122
  store i32 %219, ptr %116, align 4
  %220 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = sub i32 %221, %215
  %223 = add i32 %222, %121
  store i32 %223, ptr %117, align 4
  %224 = icmp eq i32 %221, %215
  br i1 %224, label %225, label %239

225:                                              ; preds = %214
  %226 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 14
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 15
  %229 = load ptr, ptr %228, align 16
  %230 = icmp eq ptr %227, %229
  %231 = icmp eq ptr %227, %1
  %232 = or i1 %231, %230
  br i1 %232, label %233, label %239

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.rq, ptr %130, i32 0, i32 7
  %235 = load i32, ptr %234, align 8
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = add i32 %120, 1
  store i32 %238, ptr %118, align 4
  br label %239

239:                                              ; preds = %237, %233, %225, %214
  %240 = phi i32 [ %120, %225 ], [ %238, %237 ], [ %120, %233 ], [ %120, %214 ]
  %241 = tail call i32 @cpumask_next(i32 noundef %126, ptr noundef %98) #24
  %242 = icmp ult i32 %241, %85
  br i1 %242, label %119, label %243

243:                                              ; preds = %239
  %244 = mul i32 %204, 100
  %245 = shl i32 %148, 10
  br label %246

246:                                              ; preds = %243, %104
  %247 = phi i32 [ %245, %243 ], [ 0, %104 ]
  %248 = phi i32 [ %244, %243 ], [ 0, %104 ]
  %249 = phi i32 [ %188, %243 ], [ 0, %104 ]
  %250 = phi i32 [ %223, %243 ], [ 0, %104 ]
  %251 = load i32, ptr %74, align 4
  %252 = and i32 %251, 32
  %253 = icmp eq i32 %252, 0
  %254 = getelementptr inbounds %struct.sched_group, ptr %95, i32 0, i32 3
  %255 = load ptr, ptr %254, align 4
  br i1 %253, label %270, label %256

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.sched_group_capacity, ptr %255, i32 0, i32 3
  %258 = load i32, ptr %257, align 4
  %259 = load volatile i32, ptr %47, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %260 = load volatile i32, ptr %49, align 16
  store volatile i32 %260, ptr %6, align 8
  %261 = load volatile i32, ptr %50, align 4
  store volatile i32 %261, ptr %7, align 4
  %262 = and i32 %260, 2147483647
  %263 = tail call i32 @llvm.umax.i32(i32 %261, i32 %262) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  %264 = tail call i32 @llvm.umax.i32(i32 %259, i32 %263) #21
  %265 = mul i32 %264, 1280
  %266 = shl i32 %258, 10
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %270, label %268

268:                                              ; preds = %256
  %269 = select i1 %108, ptr %62, ptr %63
  store i32 1, ptr %269, align 4
  br label %270

270:                                              ; preds = %268, %256, %246
  %271 = phi i1 [ true, %268 ], [ false, %256 ], [ false, %246 ]
  %272 = getelementptr inbounds %struct.sched_group_capacity, ptr %255, i32 0, i32 1
  %273 = load i32, ptr %272, align 4
  %274 = select i1 %108, ptr %64, ptr %65
  store i32 %273, ptr %274, align 4
  %275 = getelementptr inbounds %struct.sched_group, ptr %95, i32 0, i32 2
  %276 = load i32, ptr %275, align 4
  %277 = select i1 %108, ptr %66, ptr %67
  store i32 %276, ptr %277, align 4
  %278 = load i32, ptr %89, align 8
  %279 = icmp ugt i32 %250, %276
  br i1 %279, label %280, label %287

280:                                              ; preds = %270
  %281 = mul i32 %273, 100
  %282 = mul i32 %278, %249
  %283 = icmp ult i32 %281, %282
  %284 = mul i32 %278, %273
  %285 = icmp ult i32 %284, %248
  %286 = select i1 %283, i1 true, i1 %285
  br i1 %286, label %305, label %287

287:                                              ; preds = %280, %270
  %288 = getelementptr inbounds %struct.sched_group_capacity, ptr %255, i32 0, i32 5
  %289 = load i32, ptr %288, align 4
  %290 = icmp ne i32 %289, 0
  %291 = or i1 %271, %290
  %292 = select i1 %290, i32 4, i32 2
  br i1 %291, label %302, label %293

293:                                              ; preds = %287
  %294 = icmp ult i32 %250, %276
  br i1 %294, label %302, label %295

295:                                              ; preds = %293
  %296 = mul i32 %278, %273
  %297 = icmp ult i32 %296, %248
  br i1 %297, label %305, label %298

298:                                              ; preds = %295
  %299 = mul i32 %273, 100
  %300 = mul i32 %278, %249
  %301 = icmp ugt i32 %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %298, %293, %287
  %303 = phi i32 [ %292, %287 ], [ 0, %298 ], [ 0, %293 ]
  %304 = select i1 %108, ptr %68, ptr %69
  store i32 %303, ptr %304, align 4
  br label %309

305:                                              ; preds = %298, %295, %280
  %306 = phi i32 [ 1, %298 ], [ 5, %280 ], [ 1, %295 ]
  %307 = select i1 %108, ptr %68, ptr %69
  store i32 %306, ptr %307, align 4
  %308 = udiv i32 %247, %273
  store i32 %308, ptr %109, align 4
  br label %309

309:                                              ; preds = %305, %302
  %310 = phi i32 [ 0, %302 ], [ %308, %305 ]
  br i1 %108, label %311, label %338

311:                                              ; preds = %309
  %312 = load i32, ptr %68, align 4
  %313 = icmp ult i32 %312, %94
  br i1 %313, label %335, label %314

314:                                              ; preds = %311
  %315 = icmp ugt i32 %312, %94
  br i1 %315, label %338, label %316

316:                                              ; preds = %314
  switch i32 %312, label %335 [
    i32 5, label %317
    i32 1, label %317
    i32 4, label %338
    i32 3, label %338
    i32 2, label %319
    i32 0, label %327
  ]

317:                                              ; preds = %316, %316
  %318 = icmp ugt i32 %91, %310
  br i1 %318, label %335, label %338

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.sched_group, ptr %97, i32 0, i32 3
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.sched_group_capacity, ptr %321, i32 0, i32 3
  %323 = load i32, ptr %322, align 4
  %324 = getelementptr inbounds %struct.sched_group_capacity, ptr %255, i32 0, i32 3
  %325 = load i32, ptr %324, align 4
  %326 = icmp ult i32 %323, %325
  br i1 %326, label %335, label %338

327:                                              ; preds = %316
  %328 = load i32, ptr %60, align 4
  %329 = icmp ugt i32 %93, %328
  br i1 %329, label %338, label %330

330:                                              ; preds = %327
  %331 = icmp ne i32 %93, %328
  %332 = load i32, ptr %51, align 4
  %333 = icmp ugt i32 %92, %332
  %334 = select i1 %331, i1 true, i1 %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %330, %319, %317, %316, %311
  %336 = load i32, ptr %51, align 4
  %337 = load i32, ptr %60, align 4
  br label %338

338:                                              ; preds = %335, %330, %327, %319, %317, %316, %316, %314, %309, %90
  %339 = phi i32 [ %310, %335 ], [ %91, %309 ], [ %91, %90 ], [ %91, %314 ], [ %91, %317 ], [ %91, %316 ], [ %91, %316 ], [ %91, %319 ], [ %91, %327 ], [ %91, %330 ]
  %340 = phi i32 [ %336, %335 ], [ %92, %309 ], [ %92, %90 ], [ %92, %314 ], [ %92, %317 ], [ %92, %316 ], [ %92, %316 ], [ %92, %319 ], [ %92, %327 ], [ %92, %330 ]
  %341 = phi i32 [ %337, %335 ], [ %93, %309 ], [ %93, %90 ], [ %93, %314 ], [ %93, %317 ], [ %93, %316 ], [ %93, %316 ], [ %93, %319 ], [ %93, %327 ], [ %93, %330 ]
  %342 = phi i32 [ %312, %335 ], [ %94, %309 ], [ %94, %90 ], [ %94, %314 ], [ %94, %317 ], [ %94, %316 ], [ %94, %316 ], [ %94, %319 ], [ %94, %327 ], [ %94, %330 ]
  %343 = phi ptr [ %96, %335 ], [ %95, %309 ], [ %96, %90 ], [ %96, %314 ], [ %96, %317 ], [ %96, %316 ], [ %96, %316 ], [ %96, %319 ], [ %96, %327 ], [ %96, %330 ]
  %344 = phi ptr [ %95, %335 ], [ %97, %309 ], [ %97, %90 ], [ %97, %314 ], [ %97, %317 ], [ %97, %316 ], [ %97, %316 ], [ %97, %319 ], [ %97, %327 ], [ %97, %330 ]
  %345 = load ptr, ptr %95, align 4
  %346 = icmp eq ptr %345, %80
  br i1 %346, label %347, label %90

347:                                              ; preds = %338
  %348 = icmp eq ptr %344, null
  br i1 %348, label %405, label %349

349:                                              ; preds = %347
  %350 = icmp eq ptr %343, null
  br i1 %350, label %406, label %351

351:                                              ; preds = %349
  %352 = load i32, ptr %69, align 4
  %353 = icmp ult i32 %352, %342
  br i1 %353, label %405, label %354

354:                                              ; preds = %351
  %355 = icmp ugt i32 %352, %342
  br i1 %355, label %406, label %356

356:                                              ; preds = %354
  switch i32 %352, label %406 [
    i32 5, label %357
    i32 1, label %357
    i32 4, label %405
    i32 3, label %405
    i32 2, label %379
    i32 0, label %389
  ]

357:                                              ; preds = %356, %356
  %358 = load i32, ptr %89, align 8
  %359 = shl i32 %358, 10
  %360 = add i32 %359, -102400
  %361 = udiv i32 %360, 100
  %362 = load i32, ptr %74, align 4
  %363 = and i32 %362, 8192
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %357
  %366 = load i32, ptr %10, align 4
  br label %371

367:                                              ; preds = %357
  %368 = add i32 %361, %339
  %369 = load i32, ptr %10, align 4
  %370 = icmp ult i32 %368, %369
  br i1 %370, label %371, label %405

371:                                              ; preds = %367, %365
  %372 = phi i32 [ %366, %365 ], [ %369, %367 ]
  %373 = add i32 %372, %361
  %374 = icmp ult i32 %339, %373
  br i1 %374, label %375, label %405

375:                                              ; preds = %371
  %376 = mul i32 %372, 100
  %377 = mul i32 %358, %339
  %378 = icmp ugt i32 %376, %377
  br i1 %378, label %406, label %405

379:                                              ; preds = %356
  %380 = getelementptr inbounds %struct.sched_group, ptr %343, i32 0, i32 3
  %381 = load ptr, ptr %380, align 4
  %382 = getelementptr inbounds %struct.sched_group_capacity, ptr %381, i32 0, i32 3
  %383 = load i32, ptr %382, align 4
  %384 = getelementptr inbounds %struct.sched_group, ptr %344, i32 0, i32 3
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.sched_group_capacity, ptr %385, i32 0, i32 3
  %387 = load i32, ptr %386, align 4
  %388 = icmp ult i32 %383, %387
  br i1 %388, label %406, label %405

389:                                              ; preds = %356
  %390 = load i32, ptr %74, align 4
  %391 = and i32 %390, 8192
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %402, label %393

393:                                              ; preds = %389
  %394 = load i32, ptr %59, align 4
  %395 = getelementptr inbounds %struct.sched_domain, ptr %71, i32 0, i32 20
  %396 = load i32, ptr %395, align 8
  %397 = ashr i32 %396, 2
  %398 = icmp sle i32 %397, %394
  %399 = load i32, ptr %61, align 4
  %400 = icmp ult i32 %399, %341
  %401 = select i1 %398, i1 %400, i1 false
  br i1 %401, label %406, label %405

402:                                              ; preds = %389
  %403 = load i32, ptr %61, align 4
  %404 = icmp ult i32 %403, %341
  br i1 %404, label %406, label %405

405:                                              ; preds = %402, %393, %379, %375, %371, %367, %356, %356, %351, %347
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #21
  br label %508

406:                                              ; preds = %402, %393, %379, %375, %356, %354, %349
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #21
  %407 = getelementptr inbounds %struct.sched_group, ptr %344, i32 0, i32 2
  %408 = load i32, ptr %407, align 4
  %409 = icmp eq i32 %408, 1
  %410 = getelementptr inbounds %struct.sched_group, ptr %344, i32 0, i32 6
  br i1 %409, label %414, label %411

411:                                              ; preds = %406
  %412 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %410, ptr noundef %81) #24
  %413 = icmp ult i32 %412, %85
  br i1 %413, label %416, label %479

414:                                              ; preds = %406
  %415 = tail call i32 @_find_first_bit_le(ptr noundef %410, i32 noundef 16) #21
  br label %481

416:                                              ; preds = %467, %411
  %417 = phi i32 [ %474, %467 ], [ %412, %411 ]
  %418 = phi i32 [ %472, %467 ], [ -1, %411 ]
  %419 = phi i32 [ %471, %467 ], [ -1, %411 ]
  %420 = phi i64 [ %470, %467 ], [ 0, %411 ]
  %421 = phi i32 [ %469, %467 ], [ %72, %411 ]
  %422 = phi i32 [ %468, %467 ], [ -1, %411 ]
  %423 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %417
  %424 = load i32, ptr %423, align 4
  %425 = add i32 %424, ptrtoint (ptr @runqueues to i32)
  %426 = inttoptr i32 %425 to ptr
  %427 = getelementptr inbounds %struct.rq, ptr %426, i32 0, i32 1
  %428 = load i32, ptr %427, align 4
  %429 = getelementptr inbounds %struct.rq, ptr %426, i32 0, i32 10, i32 4
  %430 = load i32, ptr %429, align 4
  %431 = icmp ne i32 %428, %430
  %432 = icmp eq i32 %428, 0
  %433 = or i1 %432, %431
  br i1 %433, label %434, label %481

434:                                              ; preds = %416
  %435 = tail call i32 @available_idle_cpu(i32 noundef %417) #21
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %456, label %437

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.rq, ptr %426, i32 0, i32 59
  %439 = load ptr, ptr %438, align 8
  %440 = icmp eq ptr %439, null
  br i1 %440, label %450, label %441

441:                                              ; preds = %437
  %442 = getelementptr inbounds %struct.cpuidle_state, ptr %439, i32 0, i32 5
  %443 = load i32, ptr %442, align 4
  %444 = icmp ult i32 %443, %419
  br i1 %444, label %445, label %448

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.rq, ptr %426, i32 0, i32 47
  %447 = load i64, ptr %446, align 64
  br label %467

448:                                              ; preds = %441
  %449 = icmp eq i32 %443, %419
  br i1 %449, label %450, label %467

450:                                              ; preds = %448, %437
  %451 = getelementptr inbounds %struct.rq, ptr %426, i32 0, i32 47
  %452 = load i64, ptr %451, align 64
  %453 = icmp ugt i64 %452, %420
  %454 = select i1 %453, i32 %417, i32 %422
  %455 = tail call i64 @llvm.umax.i64(i64 %452, i64 %420) #21
  br label %467

456:                                              ; preds = %434
  %457 = icmp eq i32 %422, -1
  br i1 %457, label %458, label %467

458:                                              ; preds = %456
  %459 = load i32, ptr %423, align 4
  %460 = add i32 %459, ptrtoint (ptr @runqueues to i32)
  %461 = inttoptr i32 %460 to ptr
  %462 = getelementptr inbounds %struct.rq, ptr %461, i32 0, i32 10, i32 15, i32 5
  %463 = load i32, ptr %462, align 32
  %464 = icmp ult i32 %463, %418
  %465 = select i1 %464, i32 %417, i32 %421
  %466 = tail call i32 @llvm.umin.i32(i32 %463, i32 %418) #21
  br label %467

467:                                              ; preds = %458, %456, %450, %448, %445
  %468 = phi i32 [ %422, %456 ], [ %417, %445 ], [ %422, %448 ], [ %454, %450 ], [ -1, %458 ]
  %469 = phi i32 [ %421, %456 ], [ %421, %445 ], [ %421, %448 ], [ %421, %450 ], [ %465, %458 ]
  %470 = phi i64 [ %420, %456 ], [ %447, %445 ], [ %420, %448 ], [ %455, %450 ], [ %420, %458 ]
  %471 = phi i32 [ %419, %456 ], [ %443, %445 ], [ %419, %448 ], [ %419, %450 ], [ %419, %458 ]
  %472 = phi i32 [ %418, %456 ], [ %418, %445 ], [ %418, %448 ], [ %418, %450 ], [ %466, %458 ]
  %473 = load ptr, ptr %13, align 8
  %474 = tail call i32 @cpumask_next_and(i32 noundef %417, ptr noundef %410, ptr noundef %473) #24
  %475 = load i32, ptr @nr_cpu_ids, align 4
  %476 = icmp ult i32 %474, %475
  br i1 %476, label %416, label %477

477:                                              ; preds = %467
  %478 = icmp eq i32 %468, -1
  br i1 %478, label %479, label %481

479:                                              ; preds = %477, %411
  %480 = phi i32 [ %469, %477 ], [ %72, %411 ]
  br label %481

481:                                              ; preds = %479, %477, %416, %414
  %482 = phi i32 [ %415, %414 ], [ %480, %479 ], [ %468, %477 ], [ %417, %416 ]
  %483 = icmp eq i32 %482, %72
  br i1 %483, label %508, label %484

484:                                              ; preds = %481
  %485 = getelementptr inbounds %struct.sched_domain, ptr %71, i32 0, i32 20
  %486 = load i32, ptr %485, align 8
  %487 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %482
  %488 = load i32, ptr %487, align 4
  %489 = add i32 %488, ptrtoint (ptr @runqueues to i32)
  %490 = inttoptr i32 %489 to ptr
  %491 = getelementptr inbounds %struct.rq, ptr %490, i32 0, i32 30
  %492 = load volatile ptr, ptr %491, align 4
  %493 = icmp eq ptr %492, null
  br i1 %493, label %517, label %494

494:                                              ; preds = %500, %484
  %495 = phi ptr [ %505, %500 ], [ null, %484 ]
  %496 = phi ptr [ %506, %500 ], [ %492, %484 ]
  %497 = getelementptr inbounds %struct.sched_domain, ptr %496, i32 0, i32 20
  %498 = load i32, ptr %497, align 8
  %499 = icmp ugt i32 %486, %498
  br i1 %499, label %500, label %512

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.sched_domain, ptr %496, i32 0, i32 9
  %502 = load i32, ptr %501, align 4
  %503 = and i32 %502, %4
  %504 = icmp eq i32 %503, 0
  %505 = select i1 %504, ptr %495, ptr %496
  %506 = load ptr, ptr %496, align 8
  %507 = icmp eq ptr %506, null
  br i1 %507, label %512, label %494

508:                                              ; preds = %481, %405, %70
  %509 = phi i32 [ %73, %405 ], [ %73, %70 ], [ %72, %481 ]
  %510 = getelementptr inbounds %struct.sched_domain, ptr %71, i32 0, i32 1
  %511 = load ptr, ptr %510, align 4
  br label %512

512:                                              ; preds = %508, %500, %494
  %513 = phi i32 [ %509, %508 ], [ %482, %500 ], [ %482, %494 ]
  %514 = phi i32 [ %72, %508 ], [ %482, %500 ], [ %482, %494 ]
  %515 = phi ptr [ %511, %508 ], [ %495, %494 ], [ %505, %500 ]
  %516 = icmp eq ptr %515, null
  br i1 %516, label %517, label %70

517:                                              ; preds = %512, %484, %39, %5
  %518 = phi i32 [ %3, %5 ], [ %2, %39 ], [ %482, %484 ], [ %513, %512 ]
  ret i32 %518
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sync_entity_load_avg(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 -632
  %3 = load volatile i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 10, i32 16
  %9 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 10, i32 15
  br label %10

10:                                               ; preds = %10, %1
  %11 = load i64, ptr %8, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !41
  %12 = load i64, ptr %9, align 64
  %13 = icmp eq i64 %12, %11
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = tail call i32 @__update_load_avg_blocked_se(i64 noundef %11, ptr noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__update_load_avg_blocked_se(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @available_idle_cpu(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpus_share_cache(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @select_idle_capacity(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 8
  %5 = alloca i32, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #19, !srcloc !19
  %9 = add i32 %8, ptrtoint (ptr @select_idle_mask to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.sched_domain, ptr %1, i32 0, i32 21
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %13 = load ptr, ptr %12, align 8
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %14, 65535
  %17 = and i32 %16, %15
  store i32 %17, ptr %10, align 4
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 7
  %19 = load volatile i32, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %20 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 9
  %21 = load volatile i32, ptr %20, align 16
  store volatile i32 %21, ptr %4, align 8
  %22 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 10, i32 9, i32 1
  %23 = load volatile i32, ptr %22, align 4
  store volatile i32 %23, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %24 = add i32 %2, -1
  %25 = tail call i32 @cpumask_next_wrap(i32 noundef %24, ptr noundef %10, i32 noundef %2, i1 noundef zeroext false) #21
  %26 = icmp ult i32 %25, 16
  br i1 %26, label %27, label %67

27:                                               ; preds = %3
  %28 = and i32 %21, 2147483647
  %29 = tail call i32 @llvm.umax.i32(i32 %23, i32 %28) #21
  %30 = tail call i32 @llvm.umax.i32(i32 %19, i32 %29) #21
  %31 = mul i32 %30, 1280
  br label %32

32:                                               ; preds = %62, %27
  %33 = phi i32 [ 0, %27 ], [ %64, %62 ]
  %34 = phi i32 [ %25, %27 ], [ %65, %62 ]
  %35 = phi i32 [ -1, %27 ], [ %63, %62 ]
  %36 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, ptrtoint (ptr @runqueues to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.rq, ptr %39, i32 0, i32 31
  %41 = load i32, ptr %40, align 16
  %42 = tail call i32 @available_idle_cpu(i32 noundef %34) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %32
  %45 = load i32, ptr %36, align 4
  %46 = add i32 %45, ptrtoint (ptr @runqueues to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.rq, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.rq, ptr %47, i32 0, i32 10, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ne i32 %49, %51
  %53 = icmp eq i32 %49, 0
  %54 = or i1 %53, %52
  br i1 %54, label %62, label %55

55:                                               ; preds = %44, %32
  %56 = shl i32 %41, 10
  %57 = icmp ult i32 %31, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = icmp ugt i32 %41, %33
  %60 = select i1 %59, i32 %34, i32 %35
  %61 = tail call i32 @llvm.umax.i32(i32 %41, i32 %33)
  br label %62

62:                                               ; preds = %58, %44
  %63 = phi i32 [ %35, %44 ], [ %60, %58 ]
  %64 = phi i32 [ %33, %44 ], [ %61, %58 ]
  %65 = tail call i32 @cpumask_next_wrap(i32 noundef %34, ptr noundef %10, i32 noundef %2, i1 noundef zeroext true) #21
  %66 = icmp ult i32 %65, 16
  br i1 %66, label %32, label %67

67:                                               ; preds = %62, %55, %3
  %68 = phi i32 [ -1, %3 ], [ %34, %55 ], [ %63, %62 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @detach_entity_cfs_rq(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 -632
  %3 = load volatile i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 10
  tail call fastcc void @update_load_avg(ptr noundef %8, ptr noundef %0, i32 noundef 0)
  %9 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 10, i32 15, i32 5
  %10 = getelementptr inbounds %struct.sched_entity, ptr %0, i32 0, i32 10, i32 5
  %11 = load i32, ptr %10, align 32
  %12 = load volatile i32, ptr %9, align 4
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %12, i32 %11) #21
  store volatile i32 %13, ptr %9, align 4
  %14 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 10, i32 15, i32 1
  %15 = load i32, ptr %0, align 64
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.sched_entity, ptr %0, i32 0, i32 10, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = mul i64 %18, %16
  %20 = load volatile i64, ptr %14, align 8
  %21 = tail call i64 @llvm.usub.sat.i64(i64 %20, i64 %19) #21
  store volatile i64 %21, ptr %14, align 8
  %22 = trunc i64 %21 to i32
  %23 = mul i32 %13, 46718
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %22) #21
  %25 = zext i32 %24 to i64
  store i64 %25, ptr %14, align 8
  %26 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 10, i32 15, i32 7
  %27 = getelementptr inbounds %struct.sched_entity, ptr %0, i32 0, i32 10, i32 7
  %28 = load i32, ptr %27, align 8
  %29 = load volatile i32, ptr %26, align 4
  %30 = tail call i32 @llvm.usub.sat.i32(i32 %29, i32 %28) #21
  store volatile i32 %30, ptr %26, align 4
  %31 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 10, i32 15, i32 3
  %32 = getelementptr inbounds %struct.sched_entity, ptr %0, i32 0, i32 10, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = load volatile i32, ptr %31, align 4
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 %33) #21
  store volatile i32 %35, ptr %31, align 4
  %36 = mul i32 %30, 46718
  %37 = tail call i32 @llvm.umax.i32(i32 %35, i32 %36) #21
  store i32 %37, ptr %31, align 8
  %38 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 10, i32 15, i32 6
  %39 = getelementptr inbounds %struct.sched_entity, ptr %0, i32 0, i32 10, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = load volatile i32, ptr %38, align 4
  %42 = tail call i32 @llvm.usub.sat.i32(i32 %41, i32 %40) #21
  store volatile i32 %42, ptr %38, align 4
  %43 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 10, i32 15, i32 2
  %44 = getelementptr inbounds %struct.sched_entity, ptr %0, i32 0, i32 10, i32 2
  %45 = load i64, ptr %44, align 16
  %46 = load volatile i64, ptr %43, align 8
  %47 = tail call i64 @llvm.usub.sat.i64(i64 %46, i64 %45) #21
  store volatile i64 %47, ptr %43, align 8
  %48 = trunc i64 %47 to i32
  %49 = mul i32 %42, 46718
  %50 = tail call i32 @llvm.umax.i32(i32 %49, i32 %48) #21
  %51 = zext i32 %50 to i64
  store i64 %51, ptr %43, align 16
  %52 = getelementptr %struct.rq, ptr %7, i32 0, i32 40
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %57 = inttoptr i32 %56 to ptr
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %1
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr %struct.rq, ptr %7, i32 0, i32 19
  %63 = load i32, ptr %62, align 32
  %64 = icmp ult i32 %63, 2
  %65 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !10

68:                                               ; preds = %60
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %69

69:                                               ; preds = %68, %60
  %70 = getelementptr %struct.rq, ptr %7, i32 0, i32 20
  %71 = load i64, ptr %70, align 8
  tail call void %61(ptr noundef nonnull %58, i64 noundef %71, i32 noundef 0) #21
  br label %72

72:                                               ; preds = %69, %1
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_cfs_tp, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = tail call ptr @llvm.thread.pointer() #21
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !50
  %87 = tail call i32 @__traceiter_pelt_cfs_tp(ptr noundef null, ptr noundef %8) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !51
  br label %88

88:                                               ; preds = %86, %75, %72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nounwind readonly }
attributes #20 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind readnone }
attributes #24 = { nounwind readonly willreturn }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148972072, i64 2148972352, i64 2148972686, i64 2148973020}
!13 = !{i64 2149337763}
!14 = !{i64 2149337980}
!15 = !{i64 915749, i64 2148417315, i64 2148417341, i64 2148417388, i64 2148417410, i64 2148417438, i64 2148417458}
!16 = !{i64 2148488355, i64 2148488381, i64 2148488410, i64 2148488444, i64 2148488475, i64 2148488498}
!17 = !{i64 2156380054}
!18 = !{i64 2156380212}
!19 = !{i64 951601}
!20 = !{i64 2148482934, i64 2148482960, i64 2148482989, i64 2148483023, i64 2148483054, i64 2148483077}
!21 = !{i64 2148480577, i64 2148480603, i64 2148480632, i64 2148480666, i64 2148480697, i64 2148480720}
!22 = !{i64 2157300948}
!23 = !{i64 2148589762}
!24 = !{i64 2148487498, i64 2148487530, i64 2148487559, i64 2148487593, i64 2148487624, i64 2148487647}
!25 = !{i64 2148589967}
!26 = !{i64 2157319336}
!27 = !{i64 944496, i64 944557}
!28 = !{i64 947513}
!29 = !{i64 2148591178}
!30 = !{i64 2148489039, i64 2148489071, i64 2148489100, i64 2148489134, i64 2148489165, i64 2148489188}
!31 = !{i64 2148591379}
!32 = !{i64 2156412976}
!33 = !{i64 2156413142}
!34 = !{i64 2156396586}
!35 = !{i64 2156396772}
!36 = !{i64 2156653432}
!37 = !{i64 2156429205}
!38 = !{i64 2156429361}
!39 = !{i64 2157016529, i64 2157017014, i64 2157016566, i64 2157016622, i64 2157016656, i64 2157016680, i64 2157016721, i64 2157016742, i64 2157016770, i64 2157016804}
!40 = !{i64 2157012650}
!41 = !{i64 2156754548}
!42 = !{i64 2156175571}
!43 = !{i64 2156175763}
!44 = !{i64 2148491809, i64 2148491837, i64 2148491871, i64 2148491905, i64 2148491939, i64 2148491975, i64 2148491998}
!45 = !{i64 2149563962}
!46 = !{i64 2149559786}
!47 = !{i64 2149559861, i64 2149559888, i64 2149559935, i64 2149559957, i64 2149559985, i64 2149560005}
!48 = !{i64 2149586965}
!49 = !{i64 2156730293}
!50 = !{i64 2156280155}
!51 = !{i64 2156280301}
!52 = !{!"auto-init"}
!53 = !{i64 2157109065, i64 2157109550, i64 2157109102, i64 2157109158, i64 2157109192, i64 2157109216, i64 2157109257, i64 2157109278, i64 2157109306, i64 2157109340}
!54 = !{i64 2157035929, i64 2157036414, i64 2157035966, i64 2157036022, i64 2157036056, i64 2157036080, i64 2157036121, i64 2157036142, i64 2157036170, i64 2157036204}
!55 = !{i64 944931}
!56 = !{i64 2157125138, i64 2157125624, i64 2157125175, i64 2157125231, i64 2157125265, i64 2157125289, i64 2157125330, i64 2157125351, i64 2157125379, i64 2157125413}
!57 = !{i64 944741}
