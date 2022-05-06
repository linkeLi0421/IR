; ModuleID = '/llk/IR/kernel/sched/deadline.c_pt.bc'
source_filename = "../kernel/sched/deadline.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dl_bandwidth = type { %struct.raw_spinlock, i64, i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sched_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon.1 }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.1 = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.2, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.2 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon = type { i64, i64 }
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
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
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i32, ptr }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i32, i16, i16, i32, i64, ptr, i64, ptr, [8 x %struct.hrtimer_clock_base] }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.css_set = type { [0 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [0 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.sched_attr = type { i32, i32, i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, ptr, %union.anon.85, ptr, i32, [0 x i32] }
%union.anon.85 = type { %struct.callback_head }

@def_dl_bandwidth = dso_local global %struct.dl_bandwidth zeroinitializer, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@local_cpu_mask_dl = internal global [1 x %struct.cpumask] zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@dl_sched_class = dso_local constant %struct.sched_class { ptr @enqueue_task_dl, ptr @dequeue_task_dl, ptr @yield_task_dl, ptr null, ptr @check_preempt_curr_dl, ptr @pick_next_task_dl, ptr @put_prev_task_dl, ptr @set_next_task_dl, ptr @balance_dl, ptr @select_task_rq_dl, ptr @pick_task_dl, ptr @migrate_task_rq_dl, ptr @task_woken_dl, ptr @set_cpus_allowed_dl, ptr @rq_online_dl, ptr @rq_offline_dl, ptr @find_lock_later_rq, ptr @task_tick_dl, ptr @task_fork_dl, ptr null, ptr @switched_from_dl, ptr @switched_to_dl, ptr @prio_changed_dl, ptr null, ptr @update_curr_dl }, section "__dl_sched_class", align 4
@dl_generation = internal unnamed_addr global i64 0, align 8
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@sysctl_sched_dl_period_max = dso_local global i32 4194304, align 4
@sysctl_sched_dl_period_min = dso_local global i32 100, align 4
@__cpu_active_mask = external dso_local global %struct.cpumask, align 4
@sysctl_sched_rt_runtime = external dso_local local_unnamed_addr global i32, align 4
@sysctl_sched_rt_period = external dso_local local_unnamed_addr global i32, align 4
@replenish_dl_entity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [37 x i8] c"sched: DL replenish lagged too much\0A\00", align 1
@assert_clock_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"kernel/sched/sched.h\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"rq->clock_update_flags < RQCF_ACT_SKIP\00", align 1
@__sub_running_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"kernel/sched/deadline.c\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"dl_rq->running_bw > old\00", align 1
@cpufreq_update_util_data = external dso_local global ptr, section ".data..percpu", align 4
@__sub_rq_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"dl_rq->this_bw > old\00", align 1
@__sub_rq_bw.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"dl_rq->running_bw > dl_rq->this_bw\00", align 1
@__add_rq_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"dl_rq->this_bw < old\00", align 1
@__add_running_bw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"dl_rq->running_bw < old\00", align 1
@__add_running_bw.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_sched_update_nr_running_tp = external dso_local global %struct.tracepoint, align 4
@sysctl_sched_features = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@dl_push_head = internal global %struct.callback_head zeroinitializer, section ".data..percpu", align 4
@balance_push_callback = external dso_local global %struct.callback_head, align 4
@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@dl_pull_head = internal global %struct.callback_head zeroinitializer, section ".data..percpu", align 4
@__tracepoint_sched_stat_runtime = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@arch_freq_scale = external dso_local global i32, section ".data..percpu", align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_dl_bandwidth(ptr nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  store i32 0, ptr %0, align 8
  %4 = getelementptr inbounds %struct.dl_bandwidth, ptr %0, i32 0, i32 2
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.dl_bandwidth, ptr %0, i32 0, i32 1
  store i64 %2, ptr %5, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_dl_bw(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store i32 0, ptr %0, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @def_dl_bandwidth) #16
  %2 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  %6 = mul nuw nsw i64 %5, 1000
  %7 = load i32, ptr @sysctl_sched_rt_period, align 4
  %8 = zext i32 %7 to i64
  %9 = mul nuw nsw i64 %8, 1000
  %10 = tail call i32 @to_ratio(i64 noundef %9, i64 noundef %6) #16
  %11 = zext i32 %10 to i64
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi i64 [ %11, %4 ], [ -1, %1 ]
  %14 = getelementptr inbounds %struct.dl_bw, ptr %0, i32 0, i32 1
  store i64 %13, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %15 = load i16, ptr @def_dl_bandwidth, align 8
  %16 = add i16 %15, 1
  store i16 %16, ptr @def_dl_bandwidth, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %17 = getelementptr inbounds %struct.dl_bw, ptr %0, i32 0, i32 2
  store i64 0, ptr %17, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @to_ratio(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_dl_rq(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  store ptr null, ptr %0, align 8
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dl_rq, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %4 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dl_rq, ptr %0, i32 0, i32 9
  store i64 256, ptr %7, align 8
  br label %28

8:                                                ; preds = %1
  %9 = zext i32 %4 to i64
  %10 = mul nuw nsw i64 %9, 1000
  %11 = load i32, ptr @sysctl_sched_rt_period, align 4
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %12, 1000
  %14 = tail call i32 @to_ratio(i64 noundef %10, i64 noundef %13) #16
  %15 = lshr i32 %14, 12
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dl_rq, ptr %0, i32 0, i32 9
  store i64 %16, ptr %17, align 8
  %18 = load i32, ptr @sysctl_sched_rt_period, align 4
  %19 = zext i32 %18 to i64
  %20 = mul nuw nsw i64 %19, 1000
  %21 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %22 = icmp slt i32 %21, 0
  %23 = sext i32 %21 to i64
  %24 = mul nsw i64 %23, 1000
  %25 = select i1 %22, i64 -1, i64 %24
  %26 = tail call i32 @to_ratio(i64 noundef %20, i64 noundef %25) #16
  %27 = zext i32 %26 to i64
  br label %28

28:                                               ; preds = %8, %6
  %29 = phi i64 [ 1048576, %6 ], [ %27, %8 ]
  %30 = getelementptr inbounds %struct.dl_rq, ptr %0, i32 0, i32 8
  store i64 %29, ptr %30, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_dl_task_timer(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 10
  tail call void @hrtimer_init(ptr noundef %2, i32 noundef 1, i32 noundef 9) #16
  %3 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 10, i32 2
  store ptr @dl_task_timer, ptr %3, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dl_task_timer(ptr noundef %0) #1 {
  %2 = alloca %struct.rq_flags, align 8
  %3 = getelementptr i8, ptr %0, i32 -80
  %4 = getelementptr i8, ptr %0, i32 -944
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 0, ptr %2, align 8, !annotation !13
  %5 = call ptr @task_rq_lock(ptr noundef %4, ptr noundef nonnull %2) #16
  %6 = getelementptr i8, ptr %0, i32 -352
  %7 = load i32, ptr %6, align 16
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %90, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 96
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %90

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %90, label %18

18:                                               ; preds = %13
  call void @update_rq_clock(ptr noundef %5) #16
  %19 = getelementptr i8, ptr %0, i32 -356
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call fastcc void @replenish_dl_entity(ptr noundef %3)
  br label %90

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 41
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !14

27:                                               ; preds = %23
  %28 = call fastcc ptr @dl_task_offline_migration(ptr noundef %5, ptr noundef %4)
  call void @update_rq_clock(ptr noundef %28) #16
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %5, %23 ]
  call void @enqueue_task_dl(ptr noundef %30, ptr noundef %4, i32 noundef 32)
  %31 = getelementptr inbounds %struct.rq, ptr %30, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 14
  %34 = load i32, ptr %33, align 16
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %73, label %36

36:                                               ; preds = %29
  %37 = getelementptr i8, ptr %0, i32 -8
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 268435456
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %0, i32 -16
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 21, i32 7
  %45 = load i64, ptr %44, align 8
  %46 = sub i64 %43, %45
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %41
  %49 = icmp eq i64 %43, %45
  br i1 %49, label %50, label %74

50:                                               ; preds = %48
  %51 = load volatile i32, ptr %32, align 4
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 26
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rq, ptr %30, i32 0, i32 29
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.root_domain, ptr %60, i32 0, i32 10
  %62 = call i32 @cpudl_find(ptr noundef %61, ptr noundef %32, ptr noundef null) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %58
  %65 = getelementptr i8, ptr %0, i32 148
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %59, align 8
  %70 = getelementptr inbounds %struct.root_domain, ptr %69, i32 0, i32 10
  %71 = call i32 @cpudl_find(ptr noundef %70, ptr noundef %4, ptr noundef null) #16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %64, %41, %36, %29
  call void @resched_curr(ptr noundef %30) #16
  br label %74

74:                                               ; preds = %73, %68, %58, %54, %50, %48
  %75 = getelementptr inbounds %struct.rq, ptr %30, i32 0, i32 12, i32 5
  %76 = load volatile ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rq, ptr %30, i32 0, i32 19
  %80 = load i32, ptr %79, align 32
  %81 = icmp ugt i32 %80, 2
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  store i32 4, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = call fastcc i32 @push_dl_task(ptr noundef %30)
  %86 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %79, align 32
  %89 = or i32 %88, %87
  store i32 %89, ptr %79, align 32
  br label %90

90:                                               ; preds = %84, %74, %22, %13, %9, %1
  %91 = phi ptr [ %5, %9 ], [ %30, %84 ], [ %30, %74 ], [ %5, %22 ], [ %5, %13 ], [ %5, %1 ]
  %92 = getelementptr inbounds %struct.rq, ptr %91, i32 0, i32 19
  %93 = load i32, ptr %92, align 32
  %94 = icmp ugt i32 %93, 2
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  store i32 4, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %90
  call void @raw_spin_rq_unlock(ptr noundef %91) #16
  %98 = getelementptr i8, ptr %0, i32 772
  %99 = load i32, ptr %2, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %98, i32 noundef %99) #16
  %100 = getelementptr i8, ptr %0, i32 -400
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %100) #16, !srcloc !16
  %101 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 1, ptr elementtype(i32) %100) #16, !srcloc !17
  %102 = extractvalue { i32, i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %108, label %106, !prof !18

106:                                              ; preds = %104
  call void @refcount_warn_saturate(ptr noundef %100, i32 noundef 3) #16
  br label %108

107:                                              ; preds = %97
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  call void @__put_task_struct(ptr noundef %4) #16
  br label %108

108:                                              ; preds = %107, %106, %104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_dl_inactive_task_timer(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 11
  tail call void @hrtimer_init(ptr noundef %2, i32 noundef 1, i32 noundef 9) #16
  %3 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 11, i32 2
  store ptr @inactive_task_timer, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inactive_task_timer(ptr noundef %0) #1 {
  %2 = alloca %struct.rq_flags, align 8
  %3 = getelementptr i8, ptr %0, i32 -992
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 0, ptr %2, align 8, !annotation !13
  %4 = call ptr @task_rq_lock(ptr noundef %3, ptr noundef nonnull %2) #16
  call void @update_rq_clock(ptr noundef %4) #16
  %5 = getelementptr i8, ptr %0, i32 -400
  %6 = load i32, ptr %5, align 16
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -456
  %10 = load volatile i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %12, label %174

12:                                               ; preds = %8, %1
  %13 = getelementptr i8, ptr %0, i32 -984
  %14 = load volatile i32, ptr %13, align 8
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, ptrtoint (ptr @runqueues to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 29
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 9
  %22 = getelementptr i8, ptr %0, i32 -456
  %23 = load volatile i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %114

25:                                               ; preds = %12
  %26 = getelementptr i8, ptr %0, i32 -52
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %114, label %30

30:                                               ; preds = %25
  %31 = load volatile i32, ptr %13, align 8
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, ptrtoint (ptr @runqueues to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr i8, ptr %0, i32 -56
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %30
  %41 = getelementptr i8, ptr %0, i32 -88
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.rq, ptr %35, i32 0, i32 12, i32 6
  %44 = load i64, ptr %43, align 8
  %45 = sub i64 %44, %42
  store i64 %45, ptr %43, align 8
  %46 = icmp ult i64 %44, %42
  %47 = load i1, ptr @__sub_running_bw.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %52, !prof !14

50:                                               ; preds = %40
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.4) #16
  %51 = load i64, ptr %43, align 8
  br label %52

52:                                               ; preds = %50, %40
  %53 = phi i64 [ %51, %50 ], [ %45, %40 ]
  %54 = icmp ugt i64 %53, %44
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 0, ptr %43, align 8
  br label %56

56:                                               ; preds = %55, %52
  %57 = getelementptr %struct.rq, ptr %35, i32 0, i32 40
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %62 = inttoptr i32 %61 to ptr
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %56
  %66 = load ptr, ptr %63, align 4
  %67 = getelementptr %struct.rq, ptr %35, i32 0, i32 19
  %68 = load i32, ptr %67, align 32
  %69 = icmp ult i32 %68, 2
  %70 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %71 = xor i1 %70, true
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %74, !prof !14

73:                                               ; preds = %65
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %74

74:                                               ; preds = %73, %65
  %75 = getelementptr %struct.rq, ptr %35, i32 0, i32 20
  %76 = load i64, ptr %75, align 8
  call void %66(ptr noundef nonnull %63, i64 noundef %76, i32 noundef 0) #16
  br label %77

77:                                               ; preds = %74, %56, %30
  %78 = load volatile i32, ptr %13, align 8
  %79 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, ptrtoint (ptr @runqueues to i32)
  %82 = inttoptr i32 %81 to ptr
  %83 = load i32, ptr %36, align 8
  %84 = and i32 %83, 268435456
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %77
  %87 = getelementptr i8, ptr %0, i32 -88
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds %struct.rq, ptr %82, i32 0, i32 12, i32 7
  %90 = load i64, ptr %89, align 8
  %91 = sub i64 %90, %88
  store i64 %91, ptr %89, align 8
  %92 = icmp ult i64 %90, %88
  %93 = load i1, ptr @__sub_rq_bw.__already_done, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %98, !prof !14

96:                                               ; preds = %86
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  %97 = load i64, ptr %89, align 8
  br label %98

98:                                               ; preds = %96, %86
  %99 = phi i64 [ %97, %96 ], [ %91, %86 ]
  %100 = icmp ugt i64 %99, %90
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i64 0, ptr %89, align 8
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i64 [ 0, %101 ], [ %99, %98 ]
  %104 = getelementptr inbounds %struct.rq, ptr %82, i32 0, i32 12, i32 6
  %105 = load i64, ptr %104, align 8
  %106 = icmp ugt i64 %105, %103
  %107 = load i1, ptr @__sub_rq_bw.__already_done.6, align 1
  %108 = xor i1 %107, true
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %111, !prof !14

110:                                              ; preds = %102
  store i1 true, ptr @__sub_rq_bw.__already_done.6, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %111

111:                                              ; preds = %110, %102, %77
  %112 = load i8, ptr %26, align 4
  %113 = and i8 %112, -5
  store i8 %113, ptr %26, align 4
  br label %114

114:                                              ; preds = %111, %25, %12
  call void @_raw_spin_lock(ptr noundef %21) #16
  %115 = getelementptr i8, ptr %0, i32 -88
  %116 = load i64, ptr %115, align 8
  %117 = load volatile i32, ptr %13, align 8
  %118 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %117
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, ptrtoint (ptr @runqueues to i32)
  %121 = inttoptr i32 %120 to ptr
  %122 = getelementptr inbounds %struct.rq, ptr %121, i32 0, i32 29
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.root_domain, ptr %123, i32 0, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr @__cpu_active_mask, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, 65535
  %129 = and i32 %128, %127
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %114
  %132 = load i32, ptr @nr_cpu_ids, align 4
  br label %135

133:                                              ; preds = %114
  %134 = call i32 @__sw_hweight32(i32 noundef %128) #16
  br label %141

135:                                              ; preds = %135, %131
  %136 = phi i32 [ %138, %135 ], [ -1, %131 ]
  %137 = phi i32 [ %140, %135 ], [ 0, %131 ]
  %138 = call i32 @cpumask_next_and(i32 noundef %136, ptr noundef %124, ptr noundef nonnull @__cpu_active_mask) #17
  %139 = icmp ult i32 %138, %132
  %140 = add i32 %137, 1
  br i1 %139, label %135, label %141

141:                                              ; preds = %135, %133
  %142 = phi i32 [ %134, %133 ], [ %137, %135 ]
  %143 = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 9, i32 2
  %144 = load i64, ptr %143, align 8
  %145 = sub i64 %144, %116
  store i64 %145, ptr %143, align 8
  %146 = trunc i64 %116 to i32
  %147 = sdiv i32 %146, %142
  %148 = sext i32 %147 to i64
  %149 = getelementptr %struct.root_domain, ptr %20, i32 0, i32 3
  %150 = load i32, ptr @nr_cpu_ids, align 4
  %151 = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %149, ptr noundef nonnull @__cpu_active_mask) #17
  %152 = icmp ult i32 %151, %150
  br i1 %152, label %153, label %164

153:                                              ; preds = %153, %141
  %154 = phi i32 [ %162, %153 ], [ %151, %141 ]
  %155 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %154
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, ptrtoint (ptr @runqueues to i32)
  %158 = inttoptr i32 %157 to ptr
  %159 = getelementptr inbounds %struct.rq, ptr %158, i32 0, i32 12, i32 8
  %160 = load i64, ptr %159, align 8
  %161 = add i64 %160, %148
  store i64 %161, ptr %159, align 8
  %162 = call i32 @cpumask_next_and(i32 noundef %154, ptr noundef %149, ptr noundef nonnull @__cpu_active_mask) #17
  %163 = icmp ult i32 %162, %150
  br i1 %163, label %153, label %164

164:                                              ; preds = %153, %141
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %165 = load i16, ptr %21, align 4
  %166 = add i16 %165, 1
  store i16 %166, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %167 = getelementptr i8, ptr %0, i32 -128
  %168 = getelementptr i8, ptr %0, i32 -112
  %169 = getelementptr i8, ptr %0, i32 -56
  store i32 0, ptr %169, align 8
  %170 = getelementptr i8, ptr %0, i32 -52
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %168, i8 0, i64 40, i1 false) #16
  %171 = load i8, ptr %170, align 4
  %172 = and i8 %171, -16
  store i8 %172, ptr %170, align 4
  %173 = getelementptr i8, ptr %0, i32 48
  store ptr %167, ptr %173, align 8
  br label %224

174:                                              ; preds = %8
  %175 = getelementptr i8, ptr %0, i32 -52
  %176 = load i8, ptr %175, align 4
  %177 = and i8 %176, 4
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %224, label %179

179:                                              ; preds = %174
  %180 = getelementptr i8, ptr %0, i32 -56
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 268435456
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %221

184:                                              ; preds = %179
  %185 = getelementptr i8, ptr %0, i32 -88
  %186 = load i64, ptr %185, align 8
  %187 = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 12, i32 6
  %188 = load i64, ptr %187, align 8
  %189 = sub i64 %188, %186
  store i64 %189, ptr %187, align 8
  %190 = icmp ult i64 %188, %186
  %191 = load i1, ptr @__sub_running_bw.__already_done, align 1
  %192 = xor i1 %191, true
  %193 = select i1 %190, i1 %192, i1 false
  br i1 %193, label %194, label %196, !prof !14

194:                                              ; preds = %184
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.4) #16
  %195 = load i64, ptr %187, align 8
  br label %196

196:                                              ; preds = %194, %184
  %197 = phi i64 [ %195, %194 ], [ %189, %184 ]
  %198 = icmp ugt i64 %197, %188
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i64 0, ptr %187, align 8
  br label %200

200:                                              ; preds = %199, %196
  %201 = getelementptr %struct.rq, ptr %4, i32 0, i32 40
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %202
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %206 = inttoptr i32 %205 to ptr
  %207 = load volatile ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %221, label %209

209:                                              ; preds = %200
  %210 = load ptr, ptr %207, align 4
  %211 = getelementptr %struct.rq, ptr %4, i32 0, i32 19
  %212 = load i32, ptr %211, align 32
  %213 = icmp ult i32 %212, 2
  %214 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %215 = xor i1 %214, true
  %216 = select i1 %213, i1 %215, i1 false
  br i1 %216, label %217, label %218, !prof !14

217:                                              ; preds = %209
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %218

218:                                              ; preds = %217, %209
  %219 = getelementptr %struct.rq, ptr %4, i32 0, i32 20
  %220 = load i64, ptr %219, align 8
  call void %210(ptr noundef nonnull %207, i64 noundef %220, i32 noundef 0) #16
  br label %221

221:                                              ; preds = %218, %200, %179
  %222 = load i8, ptr %175, align 4
  %223 = and i8 %222, -5
  store i8 %223, ptr %175, align 4
  br label %224

224:                                              ; preds = %221, %174, %164
  %225 = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 19
  %226 = load i32, ptr %225, align 32
  %227 = icmp ugt i32 %226, 2
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  store i32 4, ptr %229, align 4
  br label %230

230:                                              ; preds = %228, %224
  call void @raw_spin_rq_unlock(ptr noundef %4) #16
  %231 = getelementptr i8, ptr %0, i32 724
  %232 = load i32, ptr %2, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %231, i32 noundef %232) #16
  %233 = getelementptr i8, ptr %0, i32 -448
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %233) #16, !srcloc !16
  %234 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %233, ptr %233, i32 1, ptr elementtype(i32) %233) #16, !srcloc !17
  %235 = extractvalue { i32, i32, i32 } %234, 0
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %240, label %237

237:                                              ; preds = %230
  %238 = icmp sgt i32 %235, 0
  br i1 %238, label %241, label %239, !prof !18

239:                                              ; preds = %237
  call void @refcount_warn_saturate(ptr noundef %233, i32 noundef 3) #16
  br label %241

240:                                              ; preds = %230
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  call void @__put_task_struct(ptr noundef %3) #16
  br label %241

241:                                              ; preds = %240, %239, %237
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i32 0
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_sched_dl_class() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %10, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @local_cpu_mask_dl to i32)
  %9 = inttoptr i32 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #17
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %4, label %13

13:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dl_add_task_root_domain(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.rq_flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 0, ptr %2, align 8, !annotation !13
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  store i32 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 16
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  br label %53

9:                                                ; preds = %1
  %10 = call ptr @__task_rq_lock(ptr noundef %0, ptr noundef nonnull %2) #16
  %11 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 29
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.root_domain, ptr %12, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %13) #16
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  %15 = load i64, ptr %14, align 8
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr inbounds %struct.root_domain, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 65535
  %20 = call i32 @__sw_hweight32(i32 noundef %19) #16
  %21 = getelementptr inbounds %struct.root_domain, ptr %12, i32 0, i32 9, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %22, %15
  store i64 %23, ptr %21, align 8
  %24 = trunc i64 %15 to i32
  %25 = sdiv i32 %24, %20
  %26 = sub i32 0, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr %struct.root_domain, ptr %12, i32 0, i32 3
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %28, ptr noundef nonnull @__cpu_active_mask) #17
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %32, label %43

32:                                               ; preds = %32, %9
  %33 = phi i32 [ %41, %32 ], [ %30, %9 ]
  %34 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, ptrtoint (ptr @runqueues to i32)
  %37 = inttoptr i32 %36 to ptr
  %38 = getelementptr inbounds %struct.rq, ptr %37, i32 0, i32 12, i32 8
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %39, %27
  store i64 %40, ptr %38, align 8
  %41 = call i32 @cpumask_next_and(i32 noundef %33, ptr noundef %28, ptr noundef nonnull @__cpu_active_mask) #17
  %42 = icmp ult i32 %41, %29
  br i1 %42, label %32, label %43

43:                                               ; preds = %32, %9
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %44 = load i16, ptr %13, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %13, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %46 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 19
  %47 = load i32, ptr %46, align 32
  %48 = icmp ugt i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  store i32 4, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %43
  call void @raw_spin_rq_unlock(ptr noundef %10) #16
  %52 = load i32, ptr %2, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %52) #16
  br label %53

53:                                               ; preds = %51, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__task_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dl_clear_root_domain(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.root_domain, ptr %0, i32 0, i32 9
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #16
  %4 = getelementptr inbounds %struct.root_domain, ptr %0, i32 0, i32 9, i32 2
  store i64 0, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @enqueue_task_dl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 9
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 10
  %15 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %14) #16
  %16 = load i8, ptr %9, align 4
  %17 = and i8 %16, -2
  store i8 %17, ptr %9, align 4
  br label %26

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 16
  %20 = load i32, ptr %19, align 8
  %21 = icmp sgt i32 %20, -1
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 9
  %23 = load i8, ptr %22, align 4
  br i1 %21, label %24, label %26

24:                                               ; preds = %18
  %25 = and i8 %23, -2
  store i8 %25, ptr %22, align 4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1644, 0\0A.popsection", ""() #16, !srcloc !20
  unreachable

26:                                               ; preds = %18, %13, %8
  %27 = phi i8 [ %10, %8 ], [ %17, %13 ], [ %23, %18 ]
  %28 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 9
  %29 = and i8 %27, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %88, label %37

37:                                               ; preds = %31
  %38 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %39 = load volatile i32, ptr %38, align 8
  %40 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, ptrtoint (ptr @runqueues to i32)
  %43 = inttoptr i32 %42 to ptr
  %44 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.rq, ptr %43, i32 0, i32 19
  %47 = load i32, ptr %46, align 32
  %48 = icmp ult i32 %47, 2
  %49 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !14

52:                                               ; preds = %37
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %53

53:                                               ; preds = %52, %37
  %54 = getelementptr inbounds %struct.rq, ptr %43, i32 0, i32 20
  %55 = load i64, ptr %54, align 8
  %56 = sub i64 %45, %55
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %53
  %59 = load i32, ptr %46, align 32
  %60 = icmp ult i32 %59, 2
  %61 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %62 = xor i1 %61, true
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %66, !prof !14

64:                                               ; preds = %58
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  %65 = load i64, ptr %54, align 8
  br label %66

66:                                               ; preds = %64, %58
  %67 = phi i64 [ %55, %58 ], [ %65, %64 ]
  %68 = load i64, ptr %44, align 8
  %69 = load i64, ptr %32, align 8
  %70 = load i64, ptr %34, align 8
  %71 = add i64 %67, %69
  %72 = add i64 %68, %70
  %73 = sub i64 %71, %72
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %66
  %76 = load ptr, ptr %5, align 8
  %77 = icmp eq ptr %76, %4
  br i1 %77, label %78, label %88, !prof !18

78:                                               ; preds = %75
  %79 = tail call fastcc i32 @start_dl_timer(ptr noundef %1) #16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %88, label %81, !prof !14

81:                                               ; preds = %78
  %82 = load i8, ptr %28, align 4
  %83 = or i8 %82, 1
  store i8 %83, ptr %28, align 4
  %84 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 6
  %85 = load i64, ptr %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i64 0, ptr %84, align 8
  br label %88

88:                                               ; preds = %87, %81, %78, %75, %66, %53, %31, %26
  %89 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %90 = load i32, ptr %89, align 4
  %91 = icmp ne i32 %90, 2
  %92 = and i32 %2, 2
  %93 = icmp eq i32 %92, 0
  %94 = and i1 %93, %91
  br i1 %94, label %157, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 268435456
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 7
  %104 = load i64, ptr %103, align 8
  %105 = add i64 %104, %102
  store i64 %105, ptr %103, align 8
  %106 = icmp ult i64 %105, %104
  %107 = load i1, ptr @__add_rq_bw.__already_done, align 1
  %108 = xor i1 %107, true
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %111, !prof !14

110:                                              ; preds = %100
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.8) #16
  br label %111

111:                                              ; preds = %110, %100, %95
  %112 = load i32, ptr %96, align 8
  %113 = and i32 %112, 268435456
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %157

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %117 = load i64, ptr %116, align 8
  %118 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 6
  %119 = load i64, ptr %118, align 8
  %120 = add i64 %119, %117
  store i64 %120, ptr %118, align 8
  %121 = icmp ult i64 %120, %119
  %122 = load i1, ptr @__add_running_bw.__already_done, align 1
  %123 = xor i1 %122, true
  %124 = select i1 %121, i1 %123, i1 false
  br i1 %124, label %125, label %127, !prof !14

125:                                              ; preds = %115
  store i1 true, ptr @__add_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.9) #16
  %126 = load i64, ptr %118, align 8
  br label %127

127:                                              ; preds = %125, %115
  %128 = phi i64 [ %126, %125 ], [ %120, %115 ]
  %129 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 7
  %130 = load i64, ptr %129, align 8
  %131 = icmp ugt i64 %128, %130
  %132 = load i1, ptr @__add_running_bw.__already_done.10, align 1
  %133 = xor i1 %132, true
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %136, !prof !14

135:                                              ; preds = %127
  store i1 true, ptr @__add_running_bw.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %136

136:                                              ; preds = %135, %127
  %137 = getelementptr %struct.rq, ptr %0, i32 0, i32 40
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %138
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %142 = inttoptr i32 %141 to ptr
  %143 = load volatile ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %157, label %145

145:                                              ; preds = %136
  %146 = load ptr, ptr %143, align 4
  %147 = getelementptr %struct.rq, ptr %0, i32 0, i32 19
  %148 = load i32, ptr %147, align 32
  %149 = icmp ult i32 %148, 2
  %150 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %151 = xor i1 %150, true
  %152 = select i1 %149, i1 %151, i1 false
  br i1 %152, label %153, label %154, !prof !14

153:                                              ; preds = %145
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %154

154:                                              ; preds = %153, %145
  %155 = getelementptr %struct.rq, ptr %0, i32 0, i32 20
  %156 = load i64, ptr %155, align 8
  tail call void %146(ptr noundef nonnull %143, i64 noundef %156, i32 noundef 0) #16
  br label %157

157:                                              ; preds = %154, %136, %111, %88
  %158 = load i8, ptr %28, align 4
  %159 = and i8 %158, 1
  %160 = icmp ne i8 %159, 0
  %161 = and i32 %2, 32
  %162 = icmp eq i32 %161, 0
  %163 = and i1 %162, %160
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = and i32 %2, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %436, label %167

167:                                              ; preds = %164
  tail call fastcc void @task_contending(ptr noundef %4, i32 noundef %2)
  br label %436

168:                                              ; preds = %157
  %169 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %170 = load volatile i32, ptr %169, align 8
  %171 = load i32, ptr %4, align 8
  %172 = ptrtoint ptr %4 to i32
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %175, label %174, !prof !18

174:                                              ; preds = %168
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1581, 0\0A.popsection", ""() #16, !srcloc !21
  unreachable

175:                                              ; preds = %168
  %176 = load volatile i32, ptr %169, align 8
  %177 = and i32 %2, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %268, label %179

179:                                              ; preds = %175
  tail call fastcc void @task_contending(ptr noundef %4, i32 noundef %2) #16
  %180 = load volatile i32, ptr %169, align 8
  %181 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %180
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %182, ptrtoint (ptr @runqueues to i32)
  %184 = inttoptr i32 %183 to ptr
  %185 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %186 = load i64, ptr %185, align 8
  %187 = getelementptr inbounds %struct.rq, ptr %184, i32 0, i32 19
  %188 = load i32, ptr %187, align 32
  %189 = icmp ult i32 %188, 2
  %190 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %191 = xor i1 %190, true
  %192 = select i1 %189, i1 %191, i1 false
  br i1 %192, label %193, label %194, !prof !14

193:                                              ; preds = %179
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %194

194:                                              ; preds = %193, %179
  %195 = getelementptr inbounds %struct.rq, ptr %184, i32 0, i32 20
  %196 = load i64, ptr %195, align 8
  %197 = sub i64 %186, %196
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %226, label %199

199:                                              ; preds = %194
  %200 = load i32, ptr %187, align 32
  %201 = icmp ult i32 %200, 2
  %202 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %203 = xor i1 %202, true
  %204 = select i1 %201, i1 %203, i1 false
  br i1 %204, label %205, label %207, !prof !14

205:                                              ; preds = %199
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  %206 = load i64, ptr %195, align 8
  br label %207

207:                                              ; preds = %205, %199
  %208 = phi i64 [ %196, %199 ], [ %206, %205 ]
  %209 = load ptr, ptr %5, align 8
  %210 = getelementptr inbounds %struct.sched_dl_entity, ptr %209, i32 0, i32 2
  %211 = load i64, ptr %210, align 8
  %212 = lshr i64 %211, 10
  %213 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 6
  %214 = load i64, ptr %213, align 8
  %215 = ashr i64 %214, 10
  %216 = mul i64 %215, %212
  %217 = load i64, ptr %185, align 8
  %218 = sub i64 %217, %208
  %219 = lshr i64 %218, 10
  %220 = getelementptr inbounds %struct.sched_dl_entity, ptr %209, i32 0, i32 1
  %221 = load i64, ptr %220, align 8
  %222 = lshr i64 %221, 10
  %223 = mul i64 %219, %222
  %224 = sub i64 %223, %216
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %334

226:                                              ; preds = %207, %194
  %227 = phi i64 [ %208, %207 ], [ %196, %194 ]
  %228 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 2
  %229 = load i64, ptr %228, align 8
  %230 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 3
  %231 = load i64, ptr %230, align 8
  %232 = icmp eq i64 %229, %231
  br i1 %232, label %250, label %233

233:                                              ; preds = %226
  %234 = load i64, ptr %185, align 8
  %235 = load i32, ptr %187, align 32
  %236 = icmp ult i32 %235, 2
  %237 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %238 = xor i1 %237, true
  %239 = select i1 %236, i1 %238, i1 false
  br i1 %239, label %240, label %242, !prof !14

240:                                              ; preds = %233
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  %241 = load i64, ptr %195, align 8
  br label %242

242:                                              ; preds = %240, %233
  %243 = phi i64 [ %227, %233 ], [ %241, %240 ]
  %244 = sub i64 %234, %243
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = load ptr, ptr %5, align 8
  %248 = icmp eq ptr %247, %4
  br i1 %248, label %249, label %250, !prof !14

249:                                              ; preds = %246
  tail call fastcc void @update_dl_revised_wakeup(ptr noundef %4, ptr noundef %184) #16
  br label %334

250:                                              ; preds = %246, %242, %226
  %251 = phi i64 [ %227, %226 ], [ %243, %242 ], [ %243, %246 ]
  %252 = load i32, ptr %187, align 32
  %253 = icmp ult i32 %252, 2
  %254 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %255 = xor i1 %254, true
  %256 = select i1 %253, i1 %255, i1 false
  br i1 %256, label %257, label %259, !prof !14

257:                                              ; preds = %250
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  %258 = load i64, ptr %195, align 8
  br label %259

259:                                              ; preds = %257, %250
  %260 = phi i64 [ %251, %250 ], [ %258, %257 ]
  %261 = load ptr, ptr %5, align 8
  %262 = getelementptr inbounds %struct.sched_dl_entity, ptr %261, i32 0, i32 2
  %263 = load i64, ptr %262, align 8
  %264 = add i64 %263, %260
  store i64 %264, ptr %185, align 8
  %265 = getelementptr inbounds %struct.sched_dl_entity, ptr %261, i32 0, i32 1
  %266 = load i64, ptr %265, align 8
  %267 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 6
  store i64 %266, ptr %267, align 8
  br label %334

268:                                              ; preds = %175
  br i1 %162, label %270, label %269

269:                                              ; preds = %268
  tail call fastcc void @replenish_dl_entity(ptr noundef %4) #16
  br label %334

270:                                              ; preds = %268
  br i1 %93, label %334, label %271

271:                                              ; preds = %270
  %272 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %273 = load i64, ptr %272, align 8
  %274 = load volatile i32, ptr %169, align 8
  %275 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %274
  %276 = load i32, ptr %275, align 4
  %277 = add i32 %276, ptrtoint (ptr @runqueues to i32)
  %278 = inttoptr i32 %277 to ptr
  %279 = getelementptr inbounds %struct.rq, ptr %278, i32 0, i32 19
  %280 = load i32, ptr %279, align 32
  %281 = icmp ult i32 %280, 2
  %282 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %283 = xor i1 %282, true
  %284 = select i1 %281, i1 %283, i1 false
  br i1 %284, label %285, label %286, !prof !14

285:                                              ; preds = %271
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %286

286:                                              ; preds = %285, %271
  %287 = getelementptr inbounds %struct.rq, ptr %278, i32 0, i32 20
  %288 = load i64, ptr %287, align 8
  %289 = sub i64 %273, %288
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %291, label %334

291:                                              ; preds = %286
  %292 = load volatile i32, ptr %169, align 8
  %293 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %292
  %294 = load i32, ptr %293, align 4
  %295 = add i32 %294, ptrtoint (ptr @runqueues to i32)
  %296 = inttoptr i32 %295 to ptr
  %297 = load ptr, ptr %5, align 8
  %298 = icmp eq ptr %297, %4
  br i1 %298, label %300, label %299, !prof !18

299:                                              ; preds = %291
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 725, i32 noundef 9, ptr noundef null) #16
  br label %300

300:                                              ; preds = %299, %291
  %301 = getelementptr inbounds %struct.rq, ptr %296, i32 0, i32 19
  %302 = load i32, ptr %301, align 32
  %303 = icmp ult i32 %302, 2
  %304 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %305 = xor i1 %304, true
  %306 = select i1 %303, i1 %305, i1 false
  br i1 %306, label %307, label %308, !prof !14

307:                                              ; preds = %300
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %308

308:                                              ; preds = %307, %300
  %309 = getelementptr inbounds %struct.rq, ptr %296, i32 0, i32 20
  %310 = load i64, ptr %309, align 8
  %311 = load i64, ptr %272, align 8
  %312 = sub i64 %310, %311
  %313 = icmp slt i64 %312, 0
  br i1 %313, label %314, label %315, !prof !14

314:                                              ; preds = %308
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 726, i32 noundef 9, ptr noundef null) #16
  br label %315

315:                                              ; preds = %314, %308
  %316 = load i8, ptr %28, align 4
  %317 = and i8 %316, 1
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %334

319:                                              ; preds = %315
  %320 = load i32, ptr %301, align 32
  %321 = icmp ult i32 %320, 2
  %322 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %323 = xor i1 %322, true
  %324 = select i1 %321, i1 %323, i1 false
  br i1 %324, label %325, label %326, !prof !14

325:                                              ; preds = %319
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %326

326:                                              ; preds = %325, %319
  %327 = load i64, ptr %309, align 8
  %328 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 2
  %329 = load i64, ptr %328, align 8
  %330 = add i64 %329, %327
  store i64 %330, ptr %272, align 8
  %331 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 1
  %332 = load i64, ptr %331, align 8
  %333 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 6
  store i64 %332, ptr %333, align 8
  br label %334

334:                                              ; preds = %326, %315, %286, %270, %269, %259, %249, %207
  %335 = load volatile i32, ptr %169, align 8
  %336 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %335
  %337 = load i32, ptr %336, align 4
  %338 = add i32 %337, ptrtoint (ptr @runqueues to i32)
  %339 = inttoptr i32 %338 to ptr
  %340 = getelementptr inbounds %struct.rq, ptr %339, i32 0, i32 12
  %341 = load i32, ptr %4, align 8
  %342 = icmp eq i32 %341, %171
  br i1 %342, label %344, label %343, !prof !18

343:                                              ; preds = %334
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1557, 0\0A.popsection", ""() #16, !srcloc !22
  unreachable

344:                                              ; preds = %334
  %345 = load ptr, ptr %340, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %367, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %349 = load i64, ptr %348, align 8
  br label %350

350:                                              ; preds = %350, %347
  %351 = phi ptr [ %361, %350 ], [ %345, %347 ]
  %352 = phi i1 [ %360, %350 ], [ true, %347 ]
  %353 = getelementptr inbounds %struct.sched_dl_entity, ptr %351, i32 0, i32 7
  %354 = load i64, ptr %353, align 8
  %355 = sub i64 %349, %354
  %356 = icmp slt i64 %355, 0
  %357 = getelementptr inbounds %struct.rb_node, ptr %351, i32 0, i32 2
  %358 = getelementptr inbounds %struct.rb_node, ptr %351, i32 0, i32 1
  %359 = select i1 %356, ptr %357, ptr %358
  %360 = select i1 %356, i1 %352, i1 false
  %361 = load ptr, ptr %359, align 4
  %362 = icmp eq ptr %361, null
  br i1 %362, label %363, label %350

363:                                              ; preds = %350
  %364 = ptrtoint ptr %351 to i32
  store i32 %364, ptr %4, align 4
  %365 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 0, i32 1
  store ptr null, ptr %365, align 4
  %366 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 0, i32 2
  store ptr null, ptr %366, align 4
  store ptr %4, ptr %359, align 4
  br i1 %360, label %370, label %372

367:                                              ; preds = %344
  store i32 0, ptr %4, align 4
  %368 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 0, i32 1
  store ptr null, ptr %368, align 4
  %369 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 0, i32 2
  store ptr null, ptr %369, align 4
  store ptr %4, ptr %340, align 4
  br label %370

370:                                              ; preds = %367, %363
  %371 = getelementptr inbounds %struct.rq, ptr %339, i32 0, i32 12, i32 0, i32 1
  store ptr %4, ptr %371, align 4
  br label %372

372:                                              ; preds = %370, %363
  tail call void @rb_insert_color(ptr noundef %4, ptr noundef %340) #16
  %373 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 14
  %374 = load i32, ptr %373, align 16
  %375 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %376 = load i64, ptr %375, align 8
  %377 = icmp sgt i32 %374, -1
  br i1 %377, label %378, label %379, !prof !14

378:                                              ; preds = %372
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1447, i32 noundef 9, ptr noundef null) #16
  br label %379

379:                                              ; preds = %378, %372
  %380 = getelementptr inbounds %struct.rq, ptr %339, i32 0, i32 12, i32 1
  %381 = load i32, ptr %380, align 8
  %382 = add i32 %381, 1
  store i32 %382, ptr %380, align 8
  %383 = getelementptr %struct.rq, ptr %339, i32 0, i32 1
  %384 = load i32, ptr %383, align 4
  %385 = add i32 %384, 1
  store i32 %385, ptr %383, align 4
  %386 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), align 4
  %387 = icmp sgt i32 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %379
  tail call void @call_trace_sched_update_nr_running(ptr noundef %339, i32 noundef 1) #16
  br label %389

389:                                              ; preds = %388, %379
  %390 = icmp ult i32 %384, 2
  br i1 %390, label %391, label %401

391:                                              ; preds = %389
  %392 = load i32, ptr %383, align 4
  %393 = icmp ugt i32 %392, 1
  br i1 %393, label %394, label %401

394:                                              ; preds = %391
  %395 = getelementptr %struct.rq, ptr %339, i32 0, i32 29
  %396 = load ptr, ptr %395, align 8
  %397 = getelementptr inbounds %struct.root_domain, ptr %396, i32 0, i32 5
  %398 = load volatile i32, ptr %397, align 8
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %394
  store volatile i32 1, ptr %397, align 8
  br label %401

401:                                              ; preds = %400, %394, %391, %389
  %402 = getelementptr inbounds %struct.rq, ptr %339, i32 0, i32 12, i32 2
  %403 = load i64, ptr %402, align 8
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %401
  %406 = sub i64 %376, %403
  %407 = icmp slt i64 %406, 0
  br i1 %407, label %414, label %420

408:                                              ; preds = %401
  %409 = getelementptr %struct.rq, ptr %339, i32 0, i32 29
  %410 = load ptr, ptr %409, align 8
  %411 = getelementptr inbounds %struct.root_domain, ptr %410, i32 0, i32 19
  %412 = getelementptr %struct.rq, ptr %339, i32 0, i32 40
  %413 = load i32, ptr %412, align 4
  tail call void @cpupri_set(ptr noundef %411, i32 noundef %413, i32 noundef 100) #16
  br label %414

414:                                              ; preds = %408, %405
  store i64 %376, ptr %402, align 8
  %415 = getelementptr %struct.rq, ptr %339, i32 0, i32 29
  %416 = load ptr, ptr %415, align 8
  %417 = getelementptr inbounds %struct.root_domain, ptr %416, i32 0, i32 10
  %418 = getelementptr %struct.rq, ptr %339, i32 0, i32 40
  %419 = load i32, ptr %418, align 4
  tail call void @cpudl_set(ptr noundef %417, i32 noundef %419, i64 noundef %376) #16
  br label %420

420:                                              ; preds = %414, %405
  %421 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 26
  %422 = load i32, ptr %421, align 4
  %423 = icmp sgt i32 %422, 1
  br i1 %423, label %424, label %428

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.rq, ptr %339, i32 0, i32 12, i32 3
  %426 = load i32, ptr %425, align 8
  %427 = add i32 %426, 1
  store i32 %427, ptr %425, align 8
  br label %428

428:                                              ; preds = %424, %420
  tail call fastcc void @update_dl_migration(ptr noundef %340) #16
  %429 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %430 = load ptr, ptr %429, align 4
  %431 = icmp eq ptr %430, %1
  br i1 %431, label %436, label %432

432:                                              ; preds = %428
  %433 = load i32, ptr %421, align 4
  %434 = icmp sgt i32 %433, 1
  br i1 %434, label %435, label %436

435:                                              ; preds = %432
  tail call fastcc void @enqueue_pushable_dl_task(ptr noundef %0, ptr noundef %1)
  br label %436

436:                                              ; preds = %435, %432, %428, %167, %164
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dequeue_task_dl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  tail call void @update_curr_dl(ptr noundef %0)
  tail call fastcc void @__dequeue_task_dl(ptr noundef %0, ptr noundef %1)
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 2
  %7 = and i32 %2, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i1 %8, %6
  br i1 %9, label %81, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 268435456
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 6
  %19 = load i64, ptr %18, align 8
  %20 = sub i64 %19, %17
  store i64 %20, ptr %18, align 8
  %21 = icmp ult i64 %19, %17
  %22 = load i1, ptr @__sub_running_bw.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27, !prof !14

25:                                               ; preds = %15
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.4) #16
  %26 = load i64, ptr %18, align 8
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi i64 [ %26, %25 ], [ %20, %15 ]
  %29 = icmp ugt i64 %28, %19
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 0, ptr %18, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = getelementptr %struct.rq, ptr %0, i32 0, i32 40
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %37 = inttoptr i32 %36 to ptr
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr %struct.rq, ptr %0, i32 0, i32 19
  %43 = load i32, ptr %42, align 32
  %44 = icmp ult i32 %43, 2
  %45 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !14

48:                                               ; preds = %40
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %49

49:                                               ; preds = %48, %40
  %50 = getelementptr %struct.rq, ptr %0, i32 0, i32 20
  %51 = load i64, ptr %50, align 8
  tail call void %41(ptr noundef nonnull %38, i64 noundef %51, i32 noundef 0) #16
  br label %52

52:                                               ; preds = %49, %31, %10
  %53 = load i32, ptr %11, align 8
  %54 = and i32 %53, 268435456
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 7
  %60 = load i64, ptr %59, align 8
  %61 = sub i64 %60, %58
  store i64 %61, ptr %59, align 8
  %62 = icmp ult i64 %60, %58
  %63 = load i1, ptr @__sub_rq_bw.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %68, !prof !14

66:                                               ; preds = %56
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  %67 = load i64, ptr %59, align 8
  br label %68

68:                                               ; preds = %66, %56
  %69 = phi i64 [ %67, %66 ], [ %61, %56 ]
  %70 = icmp ugt i64 %69, %60
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i64 0, ptr %59, align 8
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i64 [ 0, %71 ], [ %69, %68 ]
  %74 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 6
  %75 = load i64, ptr %74, align 8
  %76 = icmp ugt i64 %75, %73
  %77 = load i1, ptr @__sub_rq_bw.__already_done.6, align 1
  %78 = xor i1 %77, true
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %81, !prof !14

80:                                               ; preds = %72
  store i1 true, ptr @__sub_rq_bw.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %81

81:                                               ; preds = %80, %72, %52, %3
  %82 = and i32 %2, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call fastcc void @task_non_contending(ptr noundef %1)
  br label %85

85:                                               ; preds = %84, %81
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @yield_task_dl(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21, i32 9
  %5 = load i8, ptr %4, align 4
  %6 = or i8 %5, 2
  store i8 %6, ptr %4, align 4
  tail call void @update_rq_clock(ptr noundef %0) #16
  tail call void @update_curr_dl(ptr noundef %0)
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %8 = load i32, ptr %7, align 32
  %9 = or i32 %8, 1
  store i32 %9, ptr %7, align 32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @check_preempt_curr_dl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 268435456
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 21, i32 7
  %14 = load i64, ptr %13, align 8
  %15 = sub i64 %12, %14
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %10
  %18 = icmp eq i64 %12, %14
  br i1 %18, label %19, label %43

19:                                               ; preds = %17
  %20 = load volatile i32, ptr %5, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 26
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.root_domain, ptr %29, i32 0, i32 10
  %31 = tail call i32 @cpudl_find(ptr noundef %30, ptr noundef %5, ptr noundef null) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %28, align 8
  %39 = getelementptr inbounds %struct.root_domain, ptr %38, i32 0, i32 10
  %40 = tail call i32 @cpudl_find(ptr noundef %39, ptr noundef %1, ptr noundef null) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %33, %10, %3
  tail call void @resched_curr(ptr noundef %0) #16
  br label %43

43:                                               ; preds = %42, %37, %27, %23, %19, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pick_next_task_dl(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !14

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1955, 0\0A.popsection", ""() #16, !srcloc !23
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %7, i32 -864
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @set_next_task_dl(ptr noundef %0, ptr noundef nonnull %11, i1 noundef zeroext true)
  br label %14

14:                                               ; preds = %13, %10, %1
  %15 = phi ptr [ %11, %13 ], [ null, %10 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @put_prev_task_dl(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %3 to i32
  tail call void @update_curr_dl(ptr noundef %0)
  %5 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %6 = load i32, ptr %5, align 32
  %7 = icmp ult i32 %6, 2
  %8 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !14

11:                                               ; preds = %2
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 24
  %16 = load i32, ptr %15, align 16
  %17 = zext i32 %16 to i64
  %18 = sub i64 %14, %17
  %19 = tail call i32 @update_dl_rq_load_avg(i64 noundef %18, ptr noundef %0, i32 noundef 1) #16
  %20 = load i32, ptr %3, align 8
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %27, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call fastcc void @enqueue_pushable_dl_task(ptr noundef %0, ptr noundef %1)
  br label %27

27:                                               ; preds = %26, %22, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_next_task_dl(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 32
  %6 = icmp ult i32 %5, 2
  %7 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !14

10:                                               ; preds = %3
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 22
  %13 = load i64, ptr %12, align 64
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 4
  store i64 %13, ptr %14, align 32
  %15 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36
  %16 = load i32, ptr %15, align 8
  %17 = ptrtoint ptr %15 to i32
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5
  %21 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @rb_erase(ptr noundef %15, ptr noundef %20) #16
  br label %32

25:                                               ; preds = %19
  %26 = tail call ptr @rb_next(ptr noundef %15) #16
  store ptr %26, ptr %21, align 4
  tail call void @rb_erase(ptr noundef %15, ptr noundef %20) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %26, i32 -216
  %30 = load i64, ptr %29, align 32
  %31 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 2, i32 1
  store i64 %30, ptr %31, align 8
  br label %32

32:                                               ; preds = %28, %25, %24
  store i32 %17, ptr %15, align 8
  br label %33

33:                                               ; preds = %32, %11
  br i1 %2, label %34, label %100

34:                                               ; preds = %33
  %35 = load i32, ptr @sysctl_sched_features, align 4
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_active_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 57, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %51, i32 0, i32 4
  %53 = load i8, ptr %52, align 16
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 6
  %58 = load i64, ptr %57, align 8
  tail call void @hrtick_start(ptr noundef %0, i64 noundef %58) #16
  br label %59

59:                                               ; preds = %56, %48, %38, %34
  %60 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 22
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, @dl_sched_class
  br i1 %64, label %80, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %4, align 32
  %67 = icmp ult i32 %66, 2
  %68 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %69 = xor i1 %68, true
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %72, !prof !14

71:                                               ; preds = %65
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %72

72:                                               ; preds = %71, %65
  %73 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 24
  %76 = load i32, ptr %75, align 16
  %77 = zext i32 %76 to i64
  %78 = sub i64 %74, %77
  %79 = tail call i32 @update_dl_rq_load_avg(i64 noundef %78, ptr noundef %0, i32 noundef 0) #16
  br label %80

80:                                               ; preds = %72, %59
  %81 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5
  %82 = load volatile ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %100, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, ptrtoint (ptr @dl_push_head to i32)
  %90 = inttoptr i32 %89 to ptr
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %100, !prof !18

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, @balance_push_callback
  br i1 %96, label %100, label %97, !prof !14

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.callback_head, ptr %90, i32 0, i32 1
  store ptr @push_dl_tasks, ptr %98, align 4
  %99 = load ptr, ptr %94, align 8
  store ptr %99, ptr %90, align 4
  store ptr %90, ptr %94, align 8
  br label %100

100:                                              ; preds = %97, %93, %84, %80, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @balance_dl(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21
  %5 = load i32, ptr %4, align 8
  %6 = ptrtoint ptr %4 to i32
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 41
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %14 = load i32, ptr %13, align 16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %18 = load i32, ptr %17, align 32
  %19 = icmp ugt i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  store i32 4, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  tail call void @pull_dl_task(ptr noundef %0)
  %23 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %17, align 32
  %26 = or i32 %25, %24
  store i32 %26, ptr %17, align 32
  br label %27

27:                                               ; preds = %22, %12, %8, %3
  %28 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 16
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i32 [ 1, %31 ], [ %39, %35 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @select_task_rq_dl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = and i32 %2, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %76, label %6

6:                                                ; preds = %3
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %11 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 14
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 14
  %14 = load i32, ptr %13, align 16
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %36, label %16, !prof !18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 26
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 268435456
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 7
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 21, i32 7
  %29 = load i64, ptr %28, align 8
  %30 = sub i64 %27, %29
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25, %16
  %33 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 26
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 1
  br label %36

36:                                               ; preds = %32, %25, %20, %6
  %37 = phi i1 [ false, %25 ], [ false, %6 ], [ %35, %32 ], [ false, %20 ]
  %38 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %54, !prof !14

40:                                               ; preds = %36
  %41 = load i32, ptr %7, align 4
  %42 = add i32 %41, ptrtoint (ptr @cpu_scale to i32)
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = zext i32 %44 to i64
  %48 = mul i64 %46, %47
  %49 = lshr i64 %48, 10
  %50 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 1
  %51 = load i64, ptr %50, align 16
  %52 = icmp ult i64 %49, %51
  %53 = or i1 %37, %52
  br i1 %53, label %55, label %74

54:                                               ; preds = %36
  br i1 %37, label %55, label %74

55:                                               ; preds = %54, %40
  %56 = tail call fastcc i32 @find_later_rq(ptr noundef %0)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %74, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 7
  %60 = load i64, ptr %59, align 32
  %61 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, ptrtoint (ptr @runqueues to i32)
  %64 = inttoptr i32 %63 to ptr
  %65 = getelementptr inbounds %struct.rq, ptr %64, i32 0, i32 12, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = sub i64 %60, %66
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.rq, ptr %64, i32 0, i32 12, i32 1
  %71 = load i32, ptr %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %58
  br label %74

74:                                               ; preds = %73, %69, %55, %54, %40
  %75 = phi i32 [ %1, %54 ], [ %56, %73 ], [ %1, %69 ], [ %1, %55 ], [ %1, %40 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %76

76:                                               ; preds = %74, %3
  %77 = phi i32 [ %75, %74 ], [ %1, %3 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pick_task_dl(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !14

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1955, 0\0A.popsection", ""() #16, !srcloc !23
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %7, i32 -864
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @migrate_task_rq_dl(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 512
  br i1 %5, label %6, label %105

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %8 = load volatile i32, ptr %7, align 8
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @runqueues to i32)
  %12 = inttoptr i32 %11 to ptr
  tail call void @raw_spin_rq_lock_nested(ptr noundef %12, i32 noundef 0) #16
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 9
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %74, label %17

17:                                               ; preds = %6
  tail call void @update_rq_clock(ptr noundef %12) #16
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 268435456
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 12, i32 6
  %26 = load i64, ptr %25, align 8
  %27 = sub i64 %26, %24
  store i64 %27, ptr %25, align 8
  %28 = icmp ult i64 %26, %24
  %29 = load i1, ptr @__sub_running_bw.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34, !prof !14

32:                                               ; preds = %22
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.4) #16
  %33 = load i64, ptr %25, align 8
  br label %34

34:                                               ; preds = %32, %22
  %35 = phi i64 [ %33, %32 ], [ %27, %22 ]
  %36 = icmp ugt i64 %35, %26
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i64 0, ptr %25, align 8
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr %struct.rq, ptr %12, i32 0, i32 40
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %38
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr %struct.rq, ptr %12, i32 0, i32 19
  %50 = load i32, ptr %49, align 32
  %51 = icmp ult i32 %50, 2
  %52 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !14

55:                                               ; preds = %47
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %56

56:                                               ; preds = %55, %47
  %57 = getelementptr %struct.rq, ptr %12, i32 0, i32 20
  %58 = load i64, ptr %57, align 8
  tail call void %48(ptr noundef nonnull %45, i64 noundef %58, i32 noundef 0) #16
  br label %59

59:                                               ; preds = %56, %38, %17
  %60 = load i8, ptr %13, align 4
  %61 = and i8 %60, -5
  store i8 %61, ptr %13, align 4
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 11
  %63 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %62) #16
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #16, !srcloc !16
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #16, !srcloc !17
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = icmp sgt i32 %68, 0
  br i1 %71, label %74, label %72, !prof !18

72:                                               ; preds = %70
  tail call void @refcount_warn_saturate(ptr noundef %66, i32 noundef 3) #16
  br label %74

73:                                               ; preds = %65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void @__put_task_struct(ptr noundef %0) #16
  br label %74

74:                                               ; preds = %73, %72, %70, %59, %6
  %75 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 8
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 268435456
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 12, i32 7
  %83 = load i64, ptr %82, align 8
  %84 = sub i64 %83, %81
  store i64 %84, ptr %82, align 8
  %85 = icmp ult i64 %83, %81
  %86 = load i1, ptr @__sub_rq_bw.__already_done, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %91, !prof !14

89:                                               ; preds = %79
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  %90 = load i64, ptr %82, align 8
  br label %91

91:                                               ; preds = %89, %79
  %92 = phi i64 [ %90, %89 ], [ %84, %79 ]
  %93 = icmp ugt i64 %92, %83
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i64 0, ptr %82, align 8
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i64 [ 0, %94 ], [ %92, %91 ]
  %97 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 12, i32 6
  %98 = load i64, ptr %97, align 8
  %99 = icmp ugt i64 %98, %96
  %100 = load i1, ptr @__sub_rq_bw.__already_done.6, align 1
  %101 = xor i1 %100, true
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %104, !prof !14

103:                                              ; preds = %95
  store i1 true, ptr @__sub_rq_bw.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %104

104:                                              ; preds = %103, %95, %74
  tail call void @raw_spin_rq_unlock(ptr noundef %12) #16
  br label %105

105:                                              ; preds = %104, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @task_woken_dl(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 14
  %18 = load i32, ptr %17, align 16
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 26
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 268435456
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 21, i32 7
  %33 = load i64, ptr %32, align 8
  %34 = sub i64 %31, %33
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29, %20
  br label %37

37:                                               ; preds = %37, %36
  %38 = tail call fastcc i32 @push_dl_task(ptr noundef %0) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %37

40:                                               ; preds = %37, %29, %24, %16, %12, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_cpus_allowed_dl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 16
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %8, !prof !14

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2435, 0\0A.popsection", ""() #16, !srcloc !26
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %10 = load volatile i32, ptr %9, align 8
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @runqueues to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.rq, ptr %14, i32 0, i32 29
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.root_domain, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %1, align 4
  %20 = and i32 %18, 65535
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %85

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.rq, ptr %14, i32 0, i32 40
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, ptrtoint (ptr @runqueues to i32)
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 29
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.root_domain, ptr %31, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %32) #16
  %33 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  %34 = load i64, ptr %33, align 8
  %35 = load volatile i32, ptr %9, align 8
  %36 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, ptrtoint (ptr @runqueues to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.rq, ptr %39, i32 0, i32 29
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.root_domain, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr @__cpu_active_mask, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, 65535
  %47 = and i32 %46, %45
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %23
  %50 = load i32, ptr @nr_cpu_ids, align 4
  br label %53

51:                                               ; preds = %23
  %52 = tail call i32 @__sw_hweight32(i32 noundef %46) #16
  br label %59

53:                                               ; preds = %53, %49
  %54 = phi i32 [ %56, %53 ], [ -1, %49 ]
  %55 = phi i32 [ %58, %53 ], [ 0, %49 ]
  %56 = tail call i32 @cpumask_next_and(i32 noundef %54, ptr noundef %42, ptr noundef nonnull @__cpu_active_mask) #17
  %57 = icmp ult i32 %56, %50
  %58 = add i32 %55, 1
  br i1 %57, label %53, label %59

59:                                               ; preds = %53, %51
  %60 = phi i32 [ %52, %51 ], [ %55, %53 ]
  %61 = getelementptr inbounds %struct.root_domain, ptr %31, i32 0, i32 9, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = sub i64 %62, %34
  store i64 %63, ptr %61, align 8
  %64 = trunc i64 %34 to i32
  %65 = sdiv i32 %64, %60
  %66 = sext i32 %65 to i64
  %67 = getelementptr %struct.root_domain, ptr %31, i32 0, i32 3
  %68 = load i32, ptr @nr_cpu_ids, align 4
  %69 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %67, ptr noundef nonnull @__cpu_active_mask) #17
  %70 = icmp ult i32 %69, %68
  br i1 %70, label %71, label %82

71:                                               ; preds = %71, %59
  %72 = phi i32 [ %80, %71 ], [ %69, %59 ]
  %73 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, ptrtoint (ptr @runqueues to i32)
  %76 = inttoptr i32 %75 to ptr
  %77 = getelementptr inbounds %struct.rq, ptr %76, i32 0, i32 12, i32 8
  %78 = load i64, ptr %77, align 8
  %79 = add i64 %78, %66
  store i64 %79, ptr %77, align 8
  %80 = tail call i32 @cpumask_next_and(i32 noundef %72, ptr noundef %67, ptr noundef nonnull @__cpu_active_mask) #17
  %81 = icmp ult i32 %80, %68
  br i1 %81, label %71, label %82

82:                                               ; preds = %71, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %83 = load i16, ptr %32, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %85

85:                                               ; preds = %82, %8
  tail call void @set_cpus_allowed_common(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rq_online_dl(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 41
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.root_domain, ptr %13, i32 0, i32 7
  tail call void @_set_bit(i32 noundef %11, ptr noundef %14) #16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !27
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #16, !srcloc !16
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #16, !srcloc !28
  br label %18

18:                                               ; preds = %9, %5, %1
  %19 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %23 = load i32, ptr %22, align 4
  tail call void @cpudl_set_freecpu(ptr noundef %21, i32 noundef %23) #16
  %24 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 1
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr %19, align 8
  %29 = getelementptr inbounds %struct.root_domain, ptr %28, i32 0, i32 10
  %30 = load i32, ptr %22, align 4
  %31 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 2
  %32 = load i64, ptr %31, align 8
  tail call void @cpudl_set(ptr noundef %29, i32 noundef %30, i64 noundef %32) #16
  br label %33

33:                                               ; preds = %27, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rq_offline_dl(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 41
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.root_domain, ptr %11, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #16, !srcloc !29
  %14 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr inbounds %struct.root_domain, ptr %16, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef %15, ptr noundef %17) #16
  br label %18

18:                                               ; preds = %9, %5, %1
  %19 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.root_domain, ptr %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %23 = load i32, ptr %22, align 4
  tail call void @cpudl_clear(ptr noundef %21, i32 noundef %23) #16
  %24 = load ptr, ptr %19, align 8
  %25 = getelementptr inbounds %struct.root_domain, ptr %24, i32 0, i32 10
  %26 = load i32, ptr %22, align 4
  tail call void @cpudl_clear_freecpu(ptr noundef %25, i32 noundef %26) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @find_lock_later_rq(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 40
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 7
  %5 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 29
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  br label %10

10:                                               ; preds = %79, %2
  %11 = phi i32 [ 0, %2 ], [ %80, %79 ]
  %12 = tail call fastcc i32 @find_later_rq(ptr noundef %0)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %86, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %3, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %86, label %17

17:                                               ; preds = %14
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, ptrtoint (ptr @runqueues to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 12, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load i64, ptr %4, align 32
  %27 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 12, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = sub i64 %26, %28
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %25, %17
  %32 = icmp eq ptr %21, %1
  br i1 %32, label %68, label %33

33:                                               ; preds = %31
  %34 = tail call zeroext i1 @raw_spin_rq_trylock(ptr noundef %21) #16
  br i1 %34, label %68, label %35, !prof !18

35:                                               ; preds = %33
  %36 = load i32, ptr %3, align 4
  %37 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 40
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @raw_spin_rq_lock_nested(ptr noundef %21, i32 noundef 1) #16
  br label %68

41:                                               ; preds = %35
  tail call void @raw_spin_rq_unlock(ptr noundef %1) #16
  tail call void @double_rq_lock(ptr noundef %1, ptr noundef %21) #16
  %42 = load volatile i32, ptr %5, align 8
  %43 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, ptrtoint (ptr @runqueues to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %66, !prof !18

48:                                               ; preds = %41
  %49 = load i32, ptr %37, align 4
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr %6, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57, !prof !14

57:                                               ; preds = %48
  %58 = load i32, ptr %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66, !prof !18

60:                                               ; preds = %57
  %61 = load i32, ptr %8, align 16
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %66, label %63, !prof !14

63:                                               ; preds = %60
  %64 = load i32, ptr %9, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %68, label %66, !prof !18

66:                                               ; preds = %63, %60, %57, %48, %41
  %67 = inttoptr i32 %20 to ptr
  tail call void @raw_spin_rq_unlock(ptr noundef %67) #16
  br label %86

68:                                               ; preds = %63, %40, %33, %31
  %69 = load i32, ptr %22, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %68
  %72 = load i64, ptr %4, align 32
  %73 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 12, i32 2
  %74 = load i64, ptr %73, align 8
  %75 = sub i64 %72, %74
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  br i1 %32, label %79, label %78

78:                                               ; preds = %77
  tail call void @raw_spin_rq_unlock(ptr noundef %21) #16
  br label %79

79:                                               ; preds = %78, %77
  %80 = add nuw nsw i32 %11, 1
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %86, label %10

82:                                               ; preds = %71
  %83 = inttoptr i32 %20 to ptr
  br label %86

84:                                               ; preds = %68
  %85 = inttoptr i32 %20 to ptr
  br label %86

86:                                               ; preds = %84, %82, %79, %66, %25, %14, %10
  %87 = phi ptr [ null, %66 ], [ %83, %82 ], [ %85, %84 ], [ null, %79 ], [ null, %14 ], [ null, %10 ], [ null, %25 ]
  ret ptr %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @task_tick_dl(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #1 {
  tail call void @update_curr_dl(ptr noundef %0)
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 32
  %6 = icmp ult i32 %5, 2
  %7 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !14

10:                                               ; preds = %3
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 24
  %15 = load i32, ptr %14, align 16
  %16 = zext i32 %15 to i64
  %17 = sub i64 %13, %16
  %18 = tail call i32 @update_dl_rq_load_avg(i64 noundef %17, ptr noundef %0, i32 noundef 1) #16
  %19 = load i32, ptr @sysctl_sched_features, align 4
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_active_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 57, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %35, i32 0, i32 4
  %37 = load i8, ptr %36, align 16
  %38 = and i8 %37, 1
  %39 = icmp ne i8 %38, 0
  %40 = icmp ne i32 %2, 0
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 6
  %44 = load i64, ptr %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21
  %48 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %47
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @hrtick_start(ptr noundef %0, i64 noundef %44) #16
  br label %52

52:                                               ; preds = %51, %46, %42, %32, %22, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @task_fork_dl(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switched_from_dl(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 1
  %8 = load i64, ptr %7, align 16
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %90, label %10

10:                                               ; preds = %6
  tail call fastcc void @task_non_contending(ptr noundef %1)
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %90, label %13

13:                                               ; preds = %10, %2
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 9
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %60, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 268435456
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 6
  %27 = load i64, ptr %26, align 8
  %28 = sub i64 %27, %25
  store i64 %28, ptr %26, align 8
  %29 = icmp ult i64 %27, %25
  %30 = load i1, ptr @__sub_running_bw.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %35, !prof !14

33:                                               ; preds = %23
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.4) #16
  %34 = load i64, ptr %26, align 8
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi i64 [ %34, %33 ], [ %28, %23 ]
  %37 = icmp ugt i64 %36, %27
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i64 0, ptr %26, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = getelementptr %struct.rq, ptr %0, i32 0, i32 40
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %45 = inttoptr i32 %44 to ptr
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %39
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr %struct.rq, ptr %0, i32 0, i32 19
  %51 = load i32, ptr %50, align 32
  %52 = icmp ult i32 %51, 2
  %53 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !14

56:                                               ; preds = %48
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %57

57:                                               ; preds = %56, %48
  %58 = getelementptr %struct.rq, ptr %0, i32 0, i32 20
  %59 = load i64, ptr %58, align 8
  tail call void %49(ptr noundef nonnull %46, i64 noundef %59, i32 noundef 0) #16
  br label %60

60:                                               ; preds = %57, %39, %18, %13
  %61 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 268435456
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 7
  %69 = load i64, ptr %68, align 8
  %70 = sub i64 %69, %67
  store i64 %70, ptr %68, align 8
  %71 = icmp ult i64 %69, %67
  %72 = load i1, ptr @__sub_rq_bw.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %77, !prof !14

75:                                               ; preds = %65
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  %76 = load i64, ptr %68, align 8
  br label %77

77:                                               ; preds = %75, %65
  %78 = phi i64 [ %76, %75 ], [ %70, %65 ]
  %79 = icmp ugt i64 %78, %69
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i64 0, ptr %68, align 8
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i64 [ 0, %80 ], [ %78, %77 ]
  %83 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 6
  %84 = load i64, ptr %83, align 8
  %85 = icmp ugt i64 %84, %82
  %86 = load i1, ptr @__sub_rq_bw.__already_done.6, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %90, !prof !14

89:                                               ; preds = %81
  store i1 true, ptr @__sub_rq_bw.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %90

90:                                               ; preds = %89, %81, %60, %10, %6
  %91 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 9
  %92 = load i8, ptr %91, align 4
  %93 = and i8 %92, 4
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = and i8 %92, -5
  store i8 %96, ptr %91, align 4
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, ptr %3, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 1
  %102 = load i32, ptr %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %106
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, ptrtoint (ptr @dl_pull_head to i32)
  %110 = inttoptr i32 %109 to ptr
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %120, !prof !18

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %115, @balance_push_callback
  br i1 %116, label %120, label %117, !prof !14

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.callback_head, ptr %110, i32 0, i32 1
  store ptr @pull_dl_task, ptr %118, align 4
  %119 = load ptr, ptr %114, align 8
  store ptr %119, ptr %110, align 4
  store ptr %110, ptr %114, align 8
  br label %120

120:                                              ; preds = %117, %113, %104, %100, %97
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switched_to_dl(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 11
  %4 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #16, !srcloc !17
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %15, label %13, !prof !18

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #16
  br label %15

14:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void @__put_task_struct(ptr noundef %1) #16
  br label %15

15:                                               ; preds = %14, %13, %11, %2
  %16 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 268435456
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %127

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 7
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %28, %26
  store i64 %29, ptr %27, align 8
  %30 = icmp ult i64 %29, %28
  %31 = load i1, ptr @__add_rq_bw.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %127, !prof !14

34:                                               ; preds = %24
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.8) #16
  br label %127

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %111, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %68

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5
  %49 = load volatile ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, ptrtoint (ptr @dl_push_head to i32)
  %57 = inttoptr i32 %56 to ptr
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %68, !prof !18

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, @balance_push_callback
  br i1 %63, label %68, label %64, !prof !14

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.callback_head, ptr %57, i32 0, i32 1
  store ptr @push_dl_tasks, ptr %65, align 4
  %66 = load ptr, ptr %61, align 8
  store ptr %66, ptr %57, align 4
  store ptr %57, ptr %61, align 8
  %67 = load ptr, ptr %36, align 4
  br label %68

68:                                               ; preds = %64, %60, %51, %47, %43, %39
  %69 = phi ptr [ %67, %64 ], [ %37, %60 ], [ %37, %51 ], [ %37, %47 ], [ %37, %43 ], [ %37, %39 ]
  %70 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 14
  %71 = load i32, ptr %70, align 16
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %110, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 268435456
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 21, i32 7
  %82 = load i64, ptr %81, align 8
  %83 = sub i64 %80, %82
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %78
  %86 = icmp eq i64 %80, %82
  br i1 %86, label %87, label %127

87:                                               ; preds = %85
  %88 = load volatile i32, ptr %69, align 4
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 26
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %127, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.root_domain, ptr %97, i32 0, i32 10
  %99 = tail call i32 @cpudl_find(ptr noundef %98, ptr noundef %69, ptr noundef null) #16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %95
  %102 = load i32, ptr %40, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %96, align 8
  %106 = getelementptr inbounds %struct.root_domain, ptr %105, i32 0, i32 10
  %107 = tail call i32 @cpudl_find(ptr noundef %106, ptr noundef %1, ptr noundef null) #16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %104, %101, %78, %73
  tail call void @resched_curr(ptr noundef %0) #16
  br label %127

110:                                              ; preds = %68
  tail call void @resched_curr(ptr noundef %0) #16
  br label %127

111:                                              ; preds = %35
  %112 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %113 = load i32, ptr %112, align 32
  %114 = icmp ult i32 %113, 2
  %115 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %116 = xor i1 %115, true
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %119, !prof !14

118:                                              ; preds = %111
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %119

119:                                              ; preds = %118, %111
  %120 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %121 = load i64, ptr %120, align 8
  %122 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 24
  %123 = load i32, ptr %122, align 16
  %124 = zext i32 %123 to i64
  %125 = sub i64 %121, %124
  %126 = tail call i32 @update_dl_rq_load_avg(i64 noundef %125, ptr noundef %0, i32 noundef 0) #16
  br label %127

127:                                              ; preds = %119, %110, %109, %104, %95, %91, %87, %85, %34, %24, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prio_changed_dl(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %39

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, ptrtoint (ptr @dl_pull_head to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %31, !prof !18

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, @balance_push_callback
  br i1 %27, label %31, label %28, !prof !14

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.callback_head, ptr %21, i32 0, i32 1
  store ptr @pull_dl_task, ptr %29, align 4
  %30 = load ptr, ptr %25, align 8
  store ptr %30, ptr %21, align 4
  store ptr %21, ptr %25, align 8
  br label %31

31:                                               ; preds = %28, %24, %15, %11
  %32 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %35 = load i64, ptr %34, align 32
  %36 = sub i64 %33, %35
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @resched_curr(ptr noundef %0) #16
  br label %39

39:                                               ; preds = %38, %31, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @update_curr_dl(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21
  %5 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 14
  %8 = load i32, ptr %7, align 16
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %171, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 8
  %12 = ptrtoint ptr %4 to i32
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %171, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %16 = load i32, ptr %15, align 32
  %17 = icmp ult i32 %16, 2
  %18 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !14

21:                                               ; preds = %14
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %22

22:                                               ; preds = %21, %14
  %23 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 22
  %24 = load i64, ptr %23, align 64
  %25 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 19, i32 4
  %26 = load i64, ptr %25, align 32
  %27 = sub i64 %24, %26
  %28 = icmp slt i64 %27, 1
  br i1 %28, label %29, label %37, !prof !14

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21, i32 9
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %171, label %34, !prof !18

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21, i32 6
  %36 = load i64, ptr %35, align 8
  br label %127

37:                                               ; preds = %22
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = tail call ptr @llvm.thread.pointer() #16
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %52 = tail call i32 @__traceiter_sched_stat_runtime(ptr noundef null, ptr noundef %3, i64 noundef %27, i64 noundef 0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  br label %53

53:                                               ; preds = %51, %40, %37
  %54 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 19, i32 5
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %55, %27
  store i64 %56, ptr %54, align 8
  %57 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %58 = load ptr, ptr %57, align 16
  %59 = getelementptr inbounds %struct.signal_struct, ptr %58, i32 0, i32 21, i32 1
  %60 = load volatile i32, ptr %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.signal_struct, ptr %58, i32 0, i32 20, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #16, !srcloc !16
  %68 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %67, ptr %67, i64 %27, ptr elementtype(i64) %67) #16, !srcloc !32
  br label %69

69:                                               ; preds = %66, %62, %53
  store i64 %24, ptr %25, align 32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %70 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 123
  %71 = load volatile ptr, ptr %70, align 16
  %72 = getelementptr inbounds %struct.css_set, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %73, i32 0, i32 12
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  tail call void @__cgroup_account_cputime(ptr noundef %73, i64 noundef %27) #16
  br label %78

78:                                               ; preds = %77, %69
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %79 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21, i32 8
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 268435456
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %171

83:                                               ; preds = %78
  %84 = and i32 %80, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %107, label %86, !prof !18

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 7
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 6
  %90 = load i64, ptr %89, align 8
  %91 = sub i64 %88, %90
  %92 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21, i32 4
  %93 = load i64, ptr %92, align 8
  %94 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 9
  %95 = load i64, ptr %94, align 8
  %96 = mul i64 %95, %93
  %97 = lshr i64 %96, 8
  %98 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 8
  %99 = load i64, ptr %98, align 8
  %100 = add i64 %99, %91
  %101 = sub nsw i64 1048576, %97
  %102 = icmp ugt i64 %100, %101
  %103 = sub i64 1048576, %100
  %104 = select i1 %102, i64 %97, i64 %103
  %105 = mul i64 %104, %27
  %106 = lshr i64 %105, 20
  br label %122

107:                                              ; preds = %83
  %108 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, ptrtoint (ptr @arch_freq_scale to i32)
  %111 = inttoptr i32 %110 to ptr
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %109, ptrtoint (ptr @cpu_scale to i32)
  %114 = inttoptr i32 %113 to ptr
  %115 = load i32, ptr %114, align 4
  %116 = zext i32 %112 to i64
  %117 = mul i64 %27, %116
  %118 = lshr i64 %117, 10
  %119 = zext i32 %115 to i64
  %120 = mul i64 %118, %119
  %121 = lshr i64 %120, 10
  br label %122

122:                                              ; preds = %107, %86
  %123 = phi i64 [ %106, %86 ], [ %121, %107 ]
  %124 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21, i32 6
  %125 = load i64, ptr %124, align 8
  %126 = sub i64 %125, %123
  store i64 %126, ptr %124, align 8
  br label %127

127:                                              ; preds = %122, %34
  %128 = phi i64 [ %36, %34 ], [ %126, %122 ]
  %129 = icmp sgt i64 %128, 0
  %130 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21, i32 9
  %131 = load i8, ptr %130, align 4
  br i1 %129, label %132, label %135

132:                                              ; preds = %127
  %133 = and i8 %131, 2
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %157, label %141

135:                                              ; preds = %127
  %136 = or i8 %131, 1
  store i8 %136, ptr %130, align 4
  %137 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21, i32 8
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %135, %132
  %142 = phi i8 [ 1, %132 ], [ 9, %135 ]
  %143 = or i8 %131, %142
  store i8 %143, ptr %130, align 4
  br label %144

144:                                              ; preds = %141, %135
  tail call fastcc void @__dequeue_task_dl(ptr noundef %0, ptr noundef %3)
  %145 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 21, i32 12
  %146 = load ptr, ptr %145, align 8
  %147 = icmp eq ptr %146, %4
  br i1 %147, label %148, label %151, !prof !18

148:                                              ; preds = %144
  %149 = tail call fastcc i32 @start_dl_timer(ptr noundef %3)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152, !prof !14

151:                                              ; preds = %148, %144
  tail call void @enqueue_task_dl(ptr noundef %0, ptr noundef %3, i32 noundef 32)
  br label %152

152:                                              ; preds = %151, %148
  %153 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %4
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  tail call void @resched_curr(ptr noundef %0) #16
  br label %157

157:                                              ; preds = %156, %152, %132
  %158 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11
  %162 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock(ptr noundef %162) #16
  %163 = tail call zeroext i1 @sched_rt_bandwidth_account(ptr noundef %161) #16
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 10
  %166 = load i64, ptr %165, align 8
  %167 = add i64 %166, %27
  store i64 %167, ptr %165, align 8
  br label %168

168:                                              ; preds = %164, %160
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %169 = load i16, ptr %162, align 4
  %170 = add i16 %169, 1
  store i16 %170, ptr %162, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %171

171:                                              ; preds = %168, %157, %78, %29, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_dl_global_validate() local_unnamed_addr #1 {
  %1 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %2 = icmp slt i32 %1, 0
  %3 = sext i32 %1 to i64
  %4 = mul nsw i64 %3, 1000
  %5 = select i1 %2, i64 -1, i64 %4
  %6 = load i32, ptr @sysctl_sched_rt_period, align 4
  %7 = zext i32 %6 to i64
  %8 = mul nuw nsw i64 %7, 1000
  %9 = tail call i32 @to_ratio(i64 noundef %8, i64 noundef %5) #16
  %10 = zext i32 %9 to i64
  %11 = load i64, ptr @dl_generation, align 8
  %12 = add i64 %11, 1
  store i64 %12, ptr @dl_generation, align 8
  %13 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %60, %0
  %17 = phi i32 [ %61, %60 ], [ %13, %0 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, ptrtoint (ptr @runqueues to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 29
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.root_domain, ptr %23, i32 0, i32 11
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, %12
  br i1 %26, label %60, label %27

27:                                               ; preds = %16
  store i64 %12, ptr %24, align 8
  %28 = load i32, ptr %18, align 4
  %29 = add i32 %28, ptrtoint (ptr @runqueues to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.rq, ptr %30, i32 0, i32 29
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.root_domain, ptr %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.root_domain, ptr %32, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr @__cpu_active_mask, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, 65535
  %39 = and i32 %38, %37
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %27
  %42 = load i32, ptr @nr_cpu_ids, align 4
  br label %45

43:                                               ; preds = %27
  %44 = tail call i32 @__sw_hweight32(i32 noundef %38) #16
  br label %51

45:                                               ; preds = %45, %41
  %46 = phi i32 [ %48, %45 ], [ -1, %41 ]
  %47 = phi i32 [ %50, %45 ], [ 0, %41 ]
  %48 = tail call i32 @cpumask_next_and(i32 noundef %46, ptr noundef %34, ptr noundef nonnull @__cpu_active_mask) #17
  %49 = icmp ult i32 %48, %42
  %50 = add i32 %47, 1
  br i1 %49, label %45, label %51

51:                                               ; preds = %45, %43
  %52 = phi i32 [ %44, %43 ], [ %47, %45 ]
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #16
  %54 = sext i32 %52 to i64
  %55 = mul nsw i64 %54, %10
  %56 = getelementptr inbounds %struct.root_domain, ptr %32, i32 0, i32 9, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = icmp ult i64 %55, %57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %53) #16
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %64

60:                                               ; preds = %51, %16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %61 = tail call i32 @cpumask_next(i32 noundef %17, ptr noundef nonnull @__cpu_possible_mask) #17
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %16, label %64

64:                                               ; preds = %60, %59, %0
  %65 = phi i32 [ -16, %59 ], [ 0, %0 ], [ 0, %60 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_dl_do_global() local_unnamed_addr #1 {
  %1 = load i64, ptr @dl_generation, align 8
  %2 = add i64 %1, 1
  store i64 %2, ptr @dl_generation, align 8
  %3 = load i32, ptr @sysctl_sched_rt_period, align 4
  %4 = zext i32 %3 to i64
  %5 = mul nuw nsw i64 %4, 1000
  store i64 %5, ptr getelementptr inbounds (%struct.dl_bandwidth, ptr @def_dl_bandwidth, i32 0, i32 2), align 8
  %6 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %7 = icmp slt i32 %6, 0
  %8 = sext i32 %6 to i64
  %9 = mul nsw i64 %8, 1000
  %10 = select i1 %7, i64 -1, i64 %9
  store i64 %10, ptr getelementptr inbounds (%struct.dl_bandwidth, ptr @def_dl_bandwidth, i32 0, i32 1), align 8
  br i1 %7, label %14, label %11

11:                                               ; preds = %0
  %12 = tail call i32 @to_ratio(i64 noundef %5, i64 noundef %9) #16
  %13 = zext i32 %12 to i64
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i64 [ %13, %11 ], [ -1, %0 ]
  %16 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %31, %14
  %20 = phi i32 [ %32, %31 ], [ %16, %14 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, ptrtoint (ptr @runqueues to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr inbounds %struct.rq, ptr %24, i32 0, i32 29
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.root_domain, ptr %26, i32 0, i32 11
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, %2
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %31

31:                                               ; preds = %71, %30
  %32 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @__cpu_possible_mask) #17
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %19, label %74

35:                                               ; preds = %19
  store i64 %2, ptr %27, align 8
  %36 = load i32, ptr %21, align 4
  %37 = add i32 %36, ptrtoint (ptr @runqueues to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = getelementptr inbounds %struct.rq, ptr %38, i32 0, i32 29
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.root_domain, ptr %40, i32 0, i32 9
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %43 = getelementptr inbounds %struct.root_domain, ptr %40, i32 0, i32 9, i32 1
  store i64 %15, ptr %43, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %42) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %44 = load i32, ptr %21, align 4
  %45 = add i32 %44, ptrtoint (ptr @runqueues to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 12, i32 9
  store i64 256, ptr %50, align 8
  br label %71

51:                                               ; preds = %35
  %52 = zext i32 %47 to i64
  %53 = mul nuw nsw i64 %52, 1000
  %54 = load i32, ptr @sysctl_sched_rt_period, align 4
  %55 = zext i32 %54 to i64
  %56 = mul nuw nsw i64 %55, 1000
  %57 = tail call i32 @to_ratio(i64 noundef %53, i64 noundef %56) #16
  %58 = lshr i32 %57, 12
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 12, i32 9
  store i64 %59, ptr %60, align 8
  %61 = load i32, ptr @sysctl_sched_rt_period, align 4
  %62 = zext i32 %61 to i64
  %63 = mul nuw nsw i64 %62, 1000
  %64 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %65 = icmp slt i32 %64, 0
  %66 = sext i32 %64 to i64
  %67 = mul nsw i64 %66, 1000
  %68 = select i1 %65, i64 -1, i64 %67
  %69 = tail call i32 @to_ratio(i64 noundef %63, i64 noundef %68) #16
  %70 = zext i32 %69 to i64
  br label %71

71:                                               ; preds = %51, %49
  %72 = phi i64 [ 1048576, %49 ], [ %70, %51 ]
  %73 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 12, i32 8
  store i64 %72, ptr %73, align 8
  br label %31

74:                                               ; preds = %31, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_dl_overflow(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 7
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 6
  %9 = load i64, ptr %8, align 8
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i64 [ %9, %7 ], [ %5, %3 ]
  %12 = icmp eq i32 %1, 6
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 5
  %15 = load i64, ptr %14, align 8
  %16 = tail call i32 @to_ratio(i64 noundef %11, i64 noundef %15) #16
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ %16, %13 ], [ 0, %10 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %21 = load volatile i32, ptr %20, align 8
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, ptrtoint (ptr @runqueues to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.rq, ptr %25, i32 0, i32 29
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 268435456
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %357

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %35, %19
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %39 = load i32, ptr %38, align 64
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %357, label %41

41:                                               ; preds = %37, %33
  tail call void @_raw_spin_lock(ptr noundef %28) #16
  %42 = load i32, ptr %22, align 4
  %43 = add i32 %42, ptrtoint (ptr @runqueues to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.rq, ptr %44, i32 0, i32 29
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.root_domain, ptr %46, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr @__cpu_active_mask, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, 65535
  %52 = and i32 %51, %50
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %41
  %55 = load i32, ptr @nr_cpu_ids, align 4
  br label %61

56:                                               ; preds = %41
  %57 = tail call i32 @__sw_hweight32(i32 noundef %51) #16
  %58 = load i32, ptr %22, align 4
  %59 = add i32 %58, ptrtoint (ptr @runqueues to i32)
  %60 = inttoptr i32 %59 to ptr
  br label %67

61:                                               ; preds = %61, %54
  %62 = phi i32 [ %64, %61 ], [ -1, %54 ]
  %63 = phi i32 [ %66, %61 ], [ 0, %54 ]
  %64 = tail call i32 @cpumask_next_and(i32 noundef %62, ptr noundef %47, ptr noundef nonnull @__cpu_active_mask) #17
  %65 = icmp ult i32 %64, %55
  %66 = add i32 %63, 1
  br i1 %65, label %61, label %67

67:                                               ; preds = %61, %56
  %68 = phi ptr [ %60, %56 ], [ %44, %61 ]
  %69 = phi i32 [ %57, %56 ], [ %63, %61 ]
  %70 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %99, label %72, !prof !14

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.rq, ptr %68, i32 0, i32 32
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 1024
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.rq, ptr %68, i32 0, i32 29
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.root_domain, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr @__cpu_active_mask, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, 65535
  %84 = and i32 %83, %82
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %76
  %87 = load i32, ptr @nr_cpu_ids, align 4
  br label %90

88:                                               ; preds = %76
  %89 = tail call i32 @__sw_hweight32(i32 noundef %83) #16
  br label %96

90:                                               ; preds = %90, %86
  %91 = phi i32 [ %93, %90 ], [ -1, %86 ]
  %92 = phi i32 [ %95, %90 ], [ 0, %86 ]
  %93 = tail call i32 @cpumask_next_and(i32 noundef %91, ptr noundef %79, ptr noundef nonnull @__cpu_active_mask) #17
  %94 = icmp ult i32 %93, %87
  %95 = add i32 %92, 1
  br i1 %94, label %90, label %96

96:                                               ; preds = %90, %88
  %97 = phi i32 [ %89, %88 ], [ %92, %90 ]
  %98 = shl i32 %97, 10
  br label %118

99:                                               ; preds = %72, %67
  %100 = getelementptr inbounds %struct.rq, ptr %68, i32 0, i32 29
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.root_domain, ptr %101, i32 0, i32 3
  %103 = load i32, ptr @nr_cpu_ids, align 4
  %104 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %102, ptr noundef nonnull @__cpu_active_mask) #17
  %105 = icmp ult i32 %104, %103
  br i1 %105, label %106, label %118

106:                                              ; preds = %106, %99
  %107 = phi i32 [ %116, %106 ], [ %104, %99 ]
  %108 = phi i32 [ %115, %106 ], [ 0, %99 ]
  %109 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %107
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, ptrtoint (ptr @runqueues to i32)
  %112 = inttoptr i32 %111 to ptr
  %113 = getelementptr inbounds %struct.rq, ptr %112, i32 0, i32 32
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, %108
  %116 = tail call i32 @cpumask_next_and(i32 noundef %107, ptr noundef %102, ptr noundef nonnull @__cpu_active_mask) #17
  %117 = icmp ult i32 %116, %103
  br i1 %117, label %106, label %118

118:                                              ; preds = %106, %99, %96
  %119 = phi i32 [ %98, %96 ], [ 0, %99 ], [ %115, %106 ]
  %120 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %121 = load i32, ptr %120, align 64
  br i1 %12, label %122, label %350

122:                                              ; preds = %118
  %123 = icmp eq i32 %121, 6
  br i1 %123, label %186, label %124

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 9, i32 1
  %126 = load i64, ptr %125, align 8
  %127 = icmp eq i64 %126, -1
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = zext i32 %119 to i64
  %130 = mul i64 %126, %129
  %131 = lshr i64 %130, 10
  %132 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 9, i32 2
  %133 = load i64, ptr %132, align 8
  %134 = add i64 %133, %19
  %135 = icmp ult i64 %131, %134
  br i1 %135, label %353, label %136

136:                                              ; preds = %128, %124
  %137 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 11
  %138 = tail call zeroext i1 @hrtimer_active(ptr noundef %137) #16
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = load i32, ptr @nr_cpu_ids, align 4
  br label %164

141:                                              ; preds = %136
  %142 = load i64, ptr %34, align 8
  %143 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 9, i32 2
  %144 = load i64, ptr %143, align 8
  %145 = sub i64 %144, %142
  store i64 %145, ptr %143, align 8
  %146 = trunc i64 %142 to i32
  %147 = sdiv i32 %146, %69
  %148 = sext i32 %147 to i64
  %149 = getelementptr %struct.root_domain, ptr %27, i32 0, i32 3
  %150 = load i32, ptr @nr_cpu_ids, align 4
  %151 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %149, ptr noundef nonnull @__cpu_active_mask) #17
  %152 = icmp ult i32 %151, %150
  br i1 %152, label %153, label %164

153:                                              ; preds = %153, %141
  %154 = phi i32 [ %162, %153 ], [ %151, %141 ]
  %155 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %154
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, ptrtoint (ptr @runqueues to i32)
  %158 = inttoptr i32 %157 to ptr
  %159 = getelementptr inbounds %struct.rq, ptr %158, i32 0, i32 12, i32 8
  %160 = load i64, ptr %159, align 8
  %161 = add i64 %160, %148
  store i64 %161, ptr %159, align 8
  %162 = tail call i32 @cpumask_next_and(i32 noundef %154, ptr noundef %149, ptr noundef nonnull @__cpu_active_mask) #17
  %163 = icmp ult i32 %162, %150
  br i1 %163, label %153, label %164

164:                                              ; preds = %153, %141, %139
  %165 = phi i32 [ %140, %139 ], [ %150, %141 ], [ %150, %153 ]
  %166 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 9, i32 2
  %167 = load i64, ptr %166, align 8
  %168 = add i64 %167, %19
  store i64 %168, ptr %166, align 8
  %169 = sdiv i32 %18, %69
  %170 = sub i32 0, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr %struct.root_domain, ptr %27, i32 0, i32 3
  %173 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %172, ptr noundef nonnull @__cpu_active_mask) #17
  %174 = icmp ult i32 %173, %165
  br i1 %174, label %175, label %353

175:                                              ; preds = %175, %164
  %176 = phi i32 [ %184, %175 ], [ %173, %164 ]
  %177 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %176
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, ptrtoint (ptr @runqueues to i32)
  %180 = inttoptr i32 %179 to ptr
  %181 = getelementptr inbounds %struct.rq, ptr %180, i32 0, i32 12, i32 8
  %182 = load i64, ptr %181, align 8
  %183 = add i64 %182, %171
  store i64 %183, ptr %181, align 8
  %184 = tail call i32 @cpumask_next_and(i32 noundef %176, ptr noundef %172, ptr noundef nonnull @__cpu_active_mask) #17
  %185 = icmp ult i32 %184, %165
  br i1 %185, label %175, label %353

186:                                              ; preds = %122
  %187 = load i64, ptr %34, align 8
  %188 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 9, i32 1
  %189 = load i64, ptr %188, align 8
  %190 = icmp eq i64 %189, -1
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 9, i32 2
  %193 = load i64, ptr %192, align 8
  br label %203

194:                                              ; preds = %186
  %195 = zext i32 %119 to i64
  %196 = mul i64 %189, %195
  %197 = lshr i64 %196, 10
  %198 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 9, i32 2
  %199 = load i64, ptr %198, align 8
  %200 = sub i64 %19, %187
  %201 = add i64 %200, %199
  %202 = icmp ult i64 %197, %201
  br i1 %202, label %353, label %203

203:                                              ; preds = %194, %191
  %204 = phi i64 [ %193, %191 ], [ %199, %194 ]
  %205 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 9, i32 2
  %206 = sub i64 %204, %187
  store i64 %206, ptr %205, align 8
  %207 = trunc i64 %187 to i32
  %208 = sdiv i32 %207, %69
  %209 = sext i32 %208 to i64
  %210 = getelementptr %struct.root_domain, ptr %27, i32 0, i32 3
  %211 = load i32, ptr @nr_cpu_ids, align 4
  %212 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %210, ptr noundef nonnull @__cpu_active_mask) #17
  %213 = icmp ult i32 %212, %211
  br i1 %213, label %214, label %227

214:                                              ; preds = %214, %203
  %215 = phi i32 [ %223, %214 ], [ %212, %203 ]
  %216 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %215
  %217 = load i32, ptr %216, align 4
  %218 = add i32 %217, ptrtoint (ptr @runqueues to i32)
  %219 = inttoptr i32 %218 to ptr
  %220 = getelementptr inbounds %struct.rq, ptr %219, i32 0, i32 12, i32 8
  %221 = load i64, ptr %220, align 8
  %222 = add i64 %221, %209
  store i64 %222, ptr %220, align 8
  %223 = tail call i32 @cpumask_next_and(i32 noundef %215, ptr noundef %210, ptr noundef nonnull @__cpu_active_mask) #17
  %224 = icmp ult i32 %223, %211
  br i1 %224, label %214, label %225

225:                                              ; preds = %214
  %226 = load i64, ptr %205, align 8
  br label %227

227:                                              ; preds = %225, %203
  %228 = phi i64 [ %226, %225 ], [ %206, %203 ]
  %229 = add i64 %228, %19
  store i64 %229, ptr %205, align 8
  %230 = sdiv i32 %18, %69
  %231 = sub i32 0, %230
  %232 = sext i32 %231 to i64
  %233 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %210, ptr noundef nonnull @__cpu_active_mask) #17
  %234 = icmp ult i32 %233, %211
  br i1 %234, label %235, label %246

235:                                              ; preds = %235, %227
  %236 = phi i32 [ %244, %235 ], [ %233, %227 ]
  %237 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %236
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, ptrtoint (ptr @runqueues to i32)
  %240 = inttoptr i32 %239 to ptr
  %241 = getelementptr inbounds %struct.rq, ptr %240, i32 0, i32 12, i32 8
  %242 = load i64, ptr %241, align 8
  %243 = add i64 %242, %232
  store i64 %243, ptr %241, align 8
  %244 = tail call i32 @cpumask_next_and(i32 noundef %236, ptr noundef %210, ptr noundef nonnull @__cpu_active_mask) #17
  %245 = icmp ult i32 %244, %211
  br i1 %245, label %235, label %246

246:                                              ; preds = %235, %227
  %247 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 8
  %248 = load i32, ptr %247, align 8
  %249 = and i32 %248, 268435456
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %252, label %251, !prof !18

251:                                              ; preds = %246
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 237, 0\0A.popsection", ""() #16, !srcloc !35
  unreachable

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %353, label %256

256:                                              ; preds = %252
  %257 = load volatile i32, ptr %20, align 8
  %258 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %257
  %259 = load i32, ptr %258, align 4
  %260 = add i32 %259, ptrtoint (ptr @runqueues to i32)
  %261 = inttoptr i32 %260 to ptr
  %262 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 9
  %263 = load i8, ptr %262, align 4
  %264 = and i8 %263, 4
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %317, label %266

266:                                              ; preds = %256
  %267 = load i64, ptr %34, align 8
  %268 = getelementptr inbounds %struct.rq, ptr %261, i32 0, i32 12, i32 6
  %269 = load i64, ptr %268, align 8
  %270 = sub i64 %269, %267
  store i64 %270, ptr %268, align 8
  %271 = icmp ult i64 %269, %267
  %272 = load i1, ptr @__sub_running_bw.__already_done, align 1
  %273 = xor i1 %272, true
  %274 = select i1 %271, i1 %273, i1 false
  br i1 %274, label %275, label %277, !prof !14

275:                                              ; preds = %266
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.4) #16
  %276 = load i64, ptr %268, align 8
  br label %277

277:                                              ; preds = %275, %266
  %278 = phi i64 [ %276, %275 ], [ %270, %266 ]
  %279 = icmp ugt i64 %278, %269
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i64 0, ptr %268, align 8
  br label %281

281:                                              ; preds = %280, %277
  %282 = getelementptr %struct.rq, ptr %261, i32 0, i32 40
  %283 = load i32, ptr %282, align 4
  %284 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %283
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %287 = inttoptr i32 %286 to ptr
  %288 = load volatile ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %302, label %290

290:                                              ; preds = %281
  %291 = load ptr, ptr %288, align 4
  %292 = getelementptr %struct.rq, ptr %261, i32 0, i32 19
  %293 = load i32, ptr %292, align 32
  %294 = icmp ult i32 %293, 2
  %295 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %296 = xor i1 %295, true
  %297 = select i1 %294, i1 %296, i1 false
  br i1 %297, label %298, label %299, !prof !14

298:                                              ; preds = %290
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %299

299:                                              ; preds = %298, %290
  %300 = getelementptr %struct.rq, ptr %261, i32 0, i32 20
  %301 = load i64, ptr %300, align 8
  tail call void %291(ptr noundef nonnull %288, i64 noundef %301, i32 noundef 0) #16
  br label %302

302:                                              ; preds = %299, %281
  %303 = load i8, ptr %262, align 4
  %304 = and i8 %303, -5
  store i8 %304, ptr %262, align 4
  %305 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 11
  %306 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %305) #16
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %317

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %309) #16, !srcloc !16
  %310 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %309, ptr %309, i32 1, ptr elementtype(i32) %309) #16, !srcloc !17
  %311 = extractvalue { i32, i32, i32 } %310, 0
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %316, label %313

313:                                              ; preds = %308
  %314 = icmp sgt i32 %311, 0
  br i1 %314, label %317, label %315, !prof !18

315:                                              ; preds = %313
  tail call void @refcount_warn_saturate(ptr noundef %309, i32 noundef 3) #16
  br label %317

316:                                              ; preds = %308
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void @__put_task_struct(ptr noundef %0) #16
  br label %317

317:                                              ; preds = %316, %315, %313, %302, %256
  %318 = load i64, ptr %34, align 8
  %319 = getelementptr inbounds %struct.rq, ptr %261, i32 0, i32 12, i32 7
  %320 = load i64, ptr %319, align 8
  %321 = sub i64 %320, %318
  store i64 %321, ptr %319, align 8
  %322 = icmp ult i64 %320, %318
  %323 = load i1, ptr @__sub_rq_bw.__already_done, align 1
  %324 = xor i1 %323, true
  %325 = select i1 %322, i1 %324, i1 false
  br i1 %325, label %326, label %328, !prof !14

326:                                              ; preds = %317
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  %327 = load i64, ptr %319, align 8
  br label %328

328:                                              ; preds = %326, %317
  %329 = phi i64 [ %327, %326 ], [ %321, %317 ]
  %330 = icmp ugt i64 %329, %320
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  store i64 0, ptr %319, align 8
  br label %332

332:                                              ; preds = %331, %328
  %333 = phi i64 [ 0, %331 ], [ %329, %328 ]
  %334 = getelementptr inbounds %struct.rq, ptr %261, i32 0, i32 12, i32 6
  %335 = load i64, ptr %334, align 8
  %336 = icmp ugt i64 %335, %333
  %337 = load i1, ptr @__sub_rq_bw.__already_done.6, align 1
  %338 = xor i1 %337, true
  %339 = select i1 %336, i1 %338, i1 false
  br i1 %339, label %340, label %342, !prof !14

340:                                              ; preds = %332
  store i1 true, ptr @__sub_rq_bw.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  %341 = load i64, ptr %319, align 8
  br label %342

342:                                              ; preds = %340, %332
  %343 = phi i64 [ %333, %332 ], [ %341, %340 ]
  %344 = add i64 %343, %19
  store i64 %344, ptr %319, align 8
  %345 = icmp ult i64 %344, %343
  %346 = load i1, ptr @__add_rq_bw.__already_done, align 1
  %347 = xor i1 %346, true
  %348 = select i1 %345, i1 %347, i1 false
  br i1 %348, label %349, label %353, !prof !14

349:                                              ; preds = %342
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.8) #16
  br label %353

350:                                              ; preds = %118
  %351 = icmp ne i32 %121, 6
  %352 = sext i1 %351 to i32
  br label %353

353:                                              ; preds = %350, %349, %342, %252, %194, %175, %164, %128
  %354 = phi i32 [ %352, %350 ], [ 0, %164 ], [ 0, %252 ], [ 0, %342 ], [ 0, %349 ], [ -1, %194 ], [ -1, %128 ], [ 0, %175 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %355 = load i16, ptr %28, align 4
  %356 = add i16 %355, 1
  store i16 %356, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %357

357:                                              ; preds = %353, %37, %17
  %358 = phi i32 [ %354, %353 ], [ 0, %17 ], [ 0, %37 ]
  ret i32 %358
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__setparam_dl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 5
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 1
  store i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 6
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 2
  store i64 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 7
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i64 %7, i64 %10
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 3
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 268435462
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 8
  store i32 %17, ptr %18, align 8
  %19 = tail call i32 @to_ratio(i64 noundef %12, i64 noundef %4) #16
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  store i64 %20, ptr %21, align 8
  %22 = load i64, ptr %8, align 8
  %23 = load i64, ptr %5, align 8
  %24 = tail call i32 @to_ratio(i64 noundef %22, i64 noundef %23) #16
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 5
  store i64 %25, ptr %26, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__getparam_dl(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 17
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 4
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 5
  store i64 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 6
  store i64 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 7
  store i64 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, -268435463
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  %21 = or i64 %17, %20
  store i64 %21, ptr %15, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @__checkparam_dl(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.sched_attr, ptr %0, i32 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 268435456
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sched_attr, ptr %0, i32 0, i32 6
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sched_attr, ptr %0, i32 0, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = icmp ugt i64 %12, 1023
  %14 = icmp sgt i64 %8, -1
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sched_attr, ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 8
  %19 = icmp sgt i64 %18, -1
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = icmp eq i64 %18, 0
  %22 = select i1 %21, i64 %8, i64 %18
  %23 = icmp ult i64 %22, %8
  %24 = icmp ult i64 %8, %12
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %20
  %27 = load volatile i32, ptr @sysctl_sched_dl_period_max, align 4
  %28 = load volatile i32, ptr @sysctl_sched_dl_period_min, align 4
  %29 = zext i32 %28 to i64
  %30 = mul nuw nsw i64 %29, 1000
  %31 = icmp ult i64 %22, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = zext i32 %27 to i64
  %34 = mul nuw nsw i64 %33, 1000
  %35 = icmp ule i64 %22, %34
  br label %36

36:                                               ; preds = %32, %26, %20, %16, %10, %6, %1
  %37 = phi i1 [ true, %1 ], [ false, %6 ], [ false, %10 ], [ false, %16 ], [ false, %20 ], [ false, %26 ], [ %35, %32 ]
  ret i1 %37
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__dl_clear_params(ptr noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 1
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 8
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, -16
  store i8 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 12
  store ptr %2, ptr %8, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dl_param_changed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 6
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 3
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 7
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 268435462
  %27 = icmp ne i64 %26, %23
  br label %28

28:                                               ; preds = %20, %14, %8, %2
  %29 = phi i1 [ true, %14 ], [ true, %8 ], [ true, %2 ], [ %27, %20 ]
  ret i1 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dl_task_can_attach(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @__cpu_active_mask, align 4
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %3, 65535
  %6 = and i32 %5, %4
  %7 = icmp eq i32 %6, 0
  %8 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true) #16, !range !36
  %9 = select i1 %7, i32 16, i32 %8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @runqueues to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 29
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 9
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #16
  %18 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = load i32, ptr %10, align 4
  %21 = add i32 %20, ptrtoint (ptr @runqueues to i32)
  %22 = inttoptr i32 %21 to ptr
  br i1 %19, label %50, label %23, !prof !14

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.rq, ptr %22, i32 0, i32 32
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rq, ptr %22, i32 0, i32 29
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.root_domain, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr @__cpu_active_mask, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, 65535
  %35 = and i32 %34, %33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = load i32, ptr @nr_cpu_ids, align 4
  br label %41

39:                                               ; preds = %27
  %40 = tail call i32 @__sw_hweight32(i32 noundef %34) #16
  br label %47

41:                                               ; preds = %41, %37
  %42 = phi i32 [ %44, %41 ], [ -1, %37 ]
  %43 = phi i32 [ %46, %41 ], [ 0, %37 ]
  %44 = tail call i32 @cpumask_next_and(i32 noundef %42, ptr noundef %30, ptr noundef nonnull @__cpu_active_mask) #17
  %45 = icmp ult i32 %44, %38
  %46 = add i32 %43, 1
  br i1 %45, label %41, label %47

47:                                               ; preds = %41, %39
  %48 = phi i32 [ %40, %39 ], [ %43, %41 ]
  %49 = shl i32 %48, 10
  br label %69

50:                                               ; preds = %23, %2
  %51 = getelementptr inbounds %struct.rq, ptr %22, i32 0, i32 29
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.root_domain, ptr %52, i32 0, i32 3
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %53, ptr noundef nonnull @__cpu_active_mask) #17
  %56 = icmp ult i32 %55, %54
  br i1 %56, label %57, label %69

57:                                               ; preds = %57, %50
  %58 = phi i32 [ %67, %57 ], [ %55, %50 ]
  %59 = phi i32 [ %66, %57 ], [ 0, %50 ]
  %60 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, ptrtoint (ptr @runqueues to i32)
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.rq, ptr %63, i32 0, i32 32
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %59
  %67 = tail call i32 @cpumask_next_and(i32 noundef %58, ptr noundef %53, ptr noundef nonnull @__cpu_active_mask) #17
  %68 = icmp ult i32 %67, %54
  br i1 %68, label %57, label %69

69:                                               ; preds = %57, %50, %47
  %70 = phi i32 [ %49, %47 ], [ 0, %50 ], [ %66, %57 ]
  %71 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  %72 = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 9, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = icmp eq i64 %73, -1
  br i1 %74, label %84, label %75

75:                                               ; preds = %69
  %76 = load i64, ptr %71, align 8
  %77 = zext i32 %70 to i64
  %78 = mul i64 %73, %77
  %79 = lshr i64 %78, 10
  %80 = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 9, i32 2
  %81 = load i64, ptr %80, align 8
  %82 = add i64 %81, %76
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %132, label %84

84:                                               ; preds = %75, %69
  %85 = load i32, ptr %10, align 4
  %86 = add i32 %85, ptrtoint (ptr @runqueues to i32)
  %87 = inttoptr i32 %86 to ptr
  %88 = getelementptr inbounds %struct.rq, ptr %87, i32 0, i32 29
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.root_domain, ptr %89, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr @__cpu_active_mask, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, 65535
  %95 = and i32 %94, %93
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %84
  %98 = load i32, ptr @nr_cpu_ids, align 4
  br label %101

99:                                               ; preds = %84
  %100 = tail call i32 @__sw_hweight32(i32 noundef %94) #16
  br label %107

101:                                              ; preds = %101, %97
  %102 = phi i32 [ %104, %101 ], [ -1, %97 ]
  %103 = phi i32 [ %106, %101 ], [ 0, %97 ]
  %104 = tail call i32 @cpumask_next_and(i32 noundef %102, ptr noundef %90, ptr noundef nonnull @__cpu_active_mask) #17
  %105 = icmp ult i32 %104, %98
  %106 = add i32 %103, 1
  br i1 %105, label %101, label %107

107:                                              ; preds = %101, %99
  %108 = phi i32 [ %100, %99 ], [ %103, %101 ]
  %109 = load i64, ptr %71, align 8
  %110 = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 9, i32 2
  %111 = load i64, ptr %110, align 8
  %112 = add i64 %111, %109
  store i64 %112, ptr %110, align 8
  %113 = trunc i64 %109 to i32
  %114 = sdiv i32 %113, %108
  %115 = sub i32 0, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr %struct.root_domain, ptr %15, i32 0, i32 3
  %118 = load i32, ptr @nr_cpu_ids, align 4
  %119 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %117, ptr noundef nonnull @__cpu_active_mask) #17
  %120 = icmp ult i32 %119, %118
  br i1 %120, label %121, label %132

121:                                              ; preds = %121, %107
  %122 = phi i32 [ %130, %121 ], [ %119, %107 ]
  %123 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %122
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, ptrtoint (ptr @runqueues to i32)
  %126 = inttoptr i32 %125 to ptr
  %127 = getelementptr inbounds %struct.rq, ptr %126, i32 0, i32 12, i32 8
  %128 = load i64, ptr %127, align 8
  %129 = add i64 %128, %116
  store i64 %129, ptr %127, align 8
  %130 = tail call i32 @cpumask_next_and(i32 noundef %122, ptr noundef %117, ptr noundef nonnull @__cpu_active_mask) #17
  %131 = icmp ult i32 %130, %118
  br i1 %131, label %121, label %132

132:                                              ; preds = %121, %107, %75
  %133 = phi i32 [ -16, %75 ], [ 0, %107 ], [ 0, %121 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dl_cpuset_cpumask_can_shrink(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %3 = tail call i32 @_find_first_bit_le(ptr noundef %0, i32 noundef 16) #16
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 29
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9
  %11 = load i32, ptr %1, align 4
  %12 = and i32 %11, 65535
  %13 = tail call i32 @__sw_hweight32(i32 noundef %12) #16
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #16
  %15 = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = sext i32 %13 to i64
  %20 = mul i64 %16, %19
  %21 = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 9, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = icmp uge i64 %20, %22
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %18, %2
  %26 = phi i32 [ 1, %2 ], [ %24, %18 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %14) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dl_cpu_busy(i32 noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.root_domain, ptr %7, i32 0, i32 9
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #16
  %10 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = load i32, ptr %2, align 4
  %13 = add i32 %12, ptrtoint (ptr @runqueues to i32)
  %14 = inttoptr i32 %13 to ptr
  br i1 %11, label %42, label %15, !prof !14

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.rq, ptr %14, i32 0, i32 32
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1024
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rq, ptr %14, i32 0, i32 29
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.root_domain, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr @__cpu_active_mask, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, 65535
  %27 = and i32 %26, %25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = load i32, ptr @nr_cpu_ids, align 4
  br label %33

31:                                               ; preds = %19
  %32 = tail call i32 @__sw_hweight32(i32 noundef %26) #16
  br label %39

33:                                               ; preds = %33, %29
  %34 = phi i32 [ %36, %33 ], [ -1, %29 ]
  %35 = phi i32 [ %38, %33 ], [ 0, %29 ]
  %36 = tail call i32 @cpumask_next_and(i32 noundef %34, ptr noundef %22, ptr noundef nonnull @__cpu_active_mask) #17
  %37 = icmp ult i32 %36, %30
  %38 = add i32 %35, 1
  br i1 %37, label %33, label %39

39:                                               ; preds = %33, %31
  %40 = phi i32 [ %32, %31 ], [ %35, %33 ]
  %41 = shl i32 %40, 10
  br label %61

42:                                               ; preds = %15, %1
  %43 = getelementptr inbounds %struct.rq, ptr %14, i32 0, i32 29
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.root_domain, ptr %44, i32 0, i32 3
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %47 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %45, ptr noundef nonnull @__cpu_active_mask) #17
  %48 = icmp ult i32 %47, %46
  br i1 %48, label %49, label %61

49:                                               ; preds = %49, %42
  %50 = phi i32 [ %59, %49 ], [ %47, %42 ]
  %51 = phi i32 [ %58, %49 ], [ 0, %42 ]
  %52 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, ptrtoint (ptr @runqueues to i32)
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.rq, ptr %55, i32 0, i32 32
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %51
  %59 = tail call i32 @cpumask_next_and(i32 noundef %50, ptr noundef %45, ptr noundef nonnull @__cpu_active_mask) #17
  %60 = icmp ult i32 %59, %46
  br i1 %60, label %49, label %61

61:                                               ; preds = %49, %42, %39
  %62 = phi i32 [ %41, %39 ], [ 0, %42 ], [ %58, %49 ]
  %63 = getelementptr inbounds %struct.root_domain, ptr %7, i32 0, i32 9, i32 1
  %64 = load i64, ptr %63, align 8
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = zext i32 %62 to i64
  %68 = mul i64 %64, %67
  %69 = lshr i64 %68, 10
  %70 = getelementptr inbounds %struct.root_domain, ptr %7, i32 0, i32 9, i32 2
  %71 = load i64, ptr %70, align 8
  %72 = icmp ult i64 %69, %71
  br label %73

73:                                               ; preds = %66, %61
  %74 = phi i1 [ false, %61 ], [ %72, %66 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  ret i1 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_dl_stats(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 12
  tail call void @print_dl_rq(ptr noundef %0, i32 noundef %1, ptr noundef %7) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_dl_rq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rq_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @replenish_dl_entity(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 -856
  %3 = load volatile i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sched_dl_entity, ptr %9, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14, !prof !14

13:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 768, 0\0A.popsection", ""() #16, !srcloc !37
  unreachable

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 19
  %20 = load i32, ptr %19, align 32
  %21 = icmp ult i32 %20, 2
  %22 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27, !prof !14

25:                                               ; preds = %18
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  %26 = load ptr, ptr %8, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %9, %18 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 20
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sched_dl_entity, ptr %28, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, %30
  %34 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 7
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.sched_dl_entity, ptr %28, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 6
  store i64 %36, ptr %37, align 8
  br label %38

38:                                               ; preds = %27, %14
  %39 = phi ptr [ %28, %27 ], [ %9, %14 ]
  %40 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 9
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 6
  %45 = load i64, ptr %44, align 8
  br i1 %43, label %52, label %46

46:                                               ; preds = %38
  %47 = icmp sgt i64 %45, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  store i64 0, ptr %44, align 8
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i64 [ %45, %46 ], [ 0, %48 ]
  %51 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 6
  br label %58

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 6
  %54 = icmp slt i64 %45, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 7
  %57 = load i64, ptr %56, align 8
  br label %73

58:                                               ; preds = %52, %49
  %59 = phi ptr [ %51, %49 ], [ %53, %52 ]
  %60 = phi i64 [ %50, %49 ], [ %45, %52 ]
  %61 = getelementptr inbounds %struct.sched_dl_entity, ptr %39, i32 0, i32 3
  %62 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 7
  %63 = getelementptr inbounds %struct.sched_dl_entity, ptr %39, i32 0, i32 1
  %64 = load i64, ptr %62, align 8
  br label %65

65:                                               ; preds = %65, %58
  %66 = phi i64 [ %64, %58 ], [ %69, %65 ]
  %67 = phi i64 [ %60, %58 ], [ %71, %65 ]
  %68 = load i64, ptr %61, align 8
  %69 = add i64 %66, %68
  store i64 %69, ptr %62, align 8
  %70 = load i64, ptr %63, align 8
  %71 = add i64 %70, %67
  store i64 %71, ptr %59, align 8
  %72 = icmp slt i64 %71, 1
  br i1 %72, label %65, label %73

73:                                               ; preds = %65, %55
  %74 = phi ptr [ %53, %55 ], [ %59, %65 ]
  %75 = phi i64 [ %57, %55 ], [ %69, %65 ]
  %76 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 7
  %77 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 19
  %78 = load i32, ptr %77, align 32
  %79 = icmp ult i32 %78, 2
  %80 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !14

83:                                               ; preds = %73
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %84

84:                                               ; preds = %83, %73
  %85 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 20
  %86 = load i64, ptr %85, align 8
  %87 = sub i64 %75, %86
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = load i1, ptr @replenish_dl_entity.__already_done, align 1
  br i1 %90, label %93, label %91, !prof !18

91:                                               ; preds = %89
  store i1 true, ptr @replenish_dl_entity.__already_done, align 1
  %92 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str) #18
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i32, ptr %77, align 32
  %95 = icmp ult i32 %94, 2
  %96 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %97 = xor i1 %96, true
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %100, !prof !14

99:                                               ; preds = %93
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %100

100:                                              ; preds = %99, %93
  %101 = load i64, ptr %85, align 8
  %102 = load ptr, ptr %8, align 8
  %103 = getelementptr inbounds %struct.sched_dl_entity, ptr %102, i32 0, i32 2
  %104 = load i64, ptr %103, align 8
  %105 = add i64 %104, %101
  store i64 %105, ptr %76, align 8
  %106 = getelementptr inbounds %struct.sched_dl_entity, ptr %102, i32 0, i32 1
  %107 = load i64, ptr %106, align 8
  store i64 %107, ptr %74, align 8
  br label %108

108:                                              ; preds = %100, %84
  %109 = load i8, ptr %40, align 4
  %110 = and i8 %109, 3
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = and i8 %109, 1
  %114 = xor i8 %113, -3
  %115 = and i8 %109, %114
  store i8 %115, ptr %40, align 4
  br label %116

116:                                              ; preds = %112, %108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dl_task_offline_migration(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @find_lock_later_rq(ptr noundef %1, ptr noundef %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 27
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr @__cpu_active_mask, align 4
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %8, 65535
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  %13 = tail call i32 @llvm.cttz.i32(i32 %11, i1 true) #16, !range !36
  %14 = select i1 %12, i32 16, i32 %13
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %21, label %20, !prof !18

20:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 613, 0\0A.popsection", ""() #16, !srcloc !38
  unreachable

21:                                               ; preds = %17
  %22 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_active_mask, i32 noundef 16) #16
  br label %23

23:                                               ; preds = %21, %5
  %24 = phi i32 [ %22, %21 ], [ %14, %5 ]
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, ptrtoint (ptr @runqueues to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = tail call zeroext i1 @raw_spin_rq_trylock(ptr noundef %28) #16
  br i1 %31, label %40, label %32, !prof !18

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.rq, ptr %28, i32 0, i32 40
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @raw_spin_rq_lock_nested(ptr noundef %28, i32 noundef 1) #16
  br label %40

39:                                               ; preds = %32
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #16
  tail call void @double_rq_lock(ptr noundef %0, ptr noundef %28) #16
  br label %40

40:                                               ; preds = %39, %38, %30, %23, %2
  %41 = phi ptr [ %3, %2 ], [ %0, %23 ], [ %28, %30 ], [ %28, %38 ], [ %28, %39 ]
  %42 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 9
  %43 = load i8, ptr %42, align 4
  %44 = and i8 %43, 5
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 268435456
  %49 = icmp eq i32 %48, 0
  br i1 %45, label %178, label %50

50:                                               ; preds = %40
  br i1 %49, label %51, label %88

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 6
  %55 = load i64, ptr %54, align 8
  %56 = sub i64 %55, %53
  store i64 %56, ptr %54, align 8
  %57 = icmp ult i64 %55, %53
  %58 = load i1, ptr @__sub_running_bw.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %63, !prof !14

61:                                               ; preds = %51
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.4) #16
  %62 = load i64, ptr %54, align 8
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi i64 [ %62, %61 ], [ %56, %51 ]
  %65 = icmp ugt i64 %64, %55
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i64 0, ptr %54, align 8
  br label %67

67:                                               ; preds = %66, %63
  %68 = getelementptr %struct.rq, ptr %0, i32 0, i32 40
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %73 = inttoptr i32 %72 to ptr
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %67
  %77 = load ptr, ptr %74, align 4
  %78 = getelementptr %struct.rq, ptr %0, i32 0, i32 19
  %79 = load i32, ptr %78, align 32
  %80 = icmp ult i32 %79, 2
  %81 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %82 = xor i1 %81, true
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %85, !prof !14

84:                                               ; preds = %76
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %85

85:                                               ; preds = %84, %76
  %86 = getelementptr %struct.rq, ptr %0, i32 0, i32 20
  %87 = load i64, ptr %86, align 8
  tail call void %77(ptr noundef nonnull %74, i64 noundef %87, i32 noundef 0) #16
  br label %88

88:                                               ; preds = %85, %67, %50
  %89 = load i32, ptr %46, align 8
  %90 = and i32 %89, 268435456
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %94 = load i64, ptr %93, align 8
  %95 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 7
  %96 = load i64, ptr %95, align 8
  %97 = sub i64 %96, %94
  store i64 %97, ptr %95, align 8
  %98 = icmp ult i64 %96, %94
  %99 = load i1, ptr @__sub_rq_bw.__already_done, align 1
  %100 = xor i1 %99, true
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %104, !prof !14

102:                                              ; preds = %92
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  %103 = load i64, ptr %95, align 8
  br label %104

104:                                              ; preds = %102, %92
  %105 = phi i64 [ %103, %102 ], [ %97, %92 ]
  %106 = icmp ugt i64 %105, %96
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i64 0, ptr %95, align 8
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi i64 [ 0, %107 ], [ %105, %104 ]
  %110 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 6
  %111 = load i64, ptr %110, align 8
  %112 = icmp ugt i64 %111, %109
  %113 = load i1, ptr @__sub_rq_bw.__already_done.6, align 1
  %114 = xor i1 %113, true
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %116, label %117, !prof !14

116:                                              ; preds = %108
  store i1 true, ptr @__sub_rq_bw.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %117

117:                                              ; preds = %116, %108, %88
  %118 = load i32, ptr %46, align 8
  %119 = and i32 %118, 268435456
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %123 = load i64, ptr %122, align 8
  %124 = getelementptr inbounds %struct.rq, ptr %41, i32 0, i32 12, i32 7
  %125 = load i64, ptr %124, align 8
  %126 = add i64 %125, %123
  store i64 %126, ptr %124, align 8
  %127 = icmp ult i64 %126, %125
  %128 = load i1, ptr @__add_rq_bw.__already_done, align 1
  %129 = xor i1 %128, true
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %132, !prof !14

131:                                              ; preds = %121
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.8) #16
  br label %132

132:                                              ; preds = %131, %121, %117
  %133 = load i32, ptr %46, align 8
  %134 = and i32 %133, 268435456
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %219

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %138 = load i64, ptr %137, align 8
  %139 = getelementptr inbounds %struct.rq, ptr %41, i32 0, i32 12, i32 6
  %140 = load i64, ptr %139, align 8
  %141 = add i64 %140, %138
  store i64 %141, ptr %139, align 8
  %142 = icmp ult i64 %141, %140
  %143 = load i1, ptr @__add_running_bw.__already_done, align 1
  %144 = xor i1 %143, true
  %145 = select i1 %142, i1 %144, i1 false
  br i1 %145, label %146, label %148, !prof !14

146:                                              ; preds = %136
  store i1 true, ptr @__add_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.9) #16
  %147 = load i64, ptr %139, align 8
  br label %148

148:                                              ; preds = %146, %136
  %149 = phi i64 [ %147, %146 ], [ %141, %136 ]
  %150 = getelementptr inbounds %struct.rq, ptr %41, i32 0, i32 12, i32 7
  %151 = load i64, ptr %150, align 8
  %152 = icmp ugt i64 %149, %151
  %153 = load i1, ptr @__add_running_bw.__already_done.10, align 1
  %154 = xor i1 %153, true
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %157, !prof !14

156:                                              ; preds = %148
  store i1 true, ptr @__add_running_bw.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %157

157:                                              ; preds = %156, %148
  %158 = getelementptr %struct.rq, ptr %41, i32 0, i32 40
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %159
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %163 = inttoptr i32 %162 to ptr
  %164 = load volatile ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %219, label %166

166:                                              ; preds = %157
  %167 = load ptr, ptr %164, align 4
  %168 = getelementptr %struct.rq, ptr %41, i32 0, i32 19
  %169 = load i32, ptr %168, align 32
  %170 = icmp ult i32 %169, 2
  %171 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %172 = xor i1 %171, true
  %173 = select i1 %170, i1 %172, i1 false
  br i1 %173, label %174, label %175, !prof !14

174:                                              ; preds = %166
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %175

175:                                              ; preds = %174, %166
  %176 = getelementptr %struct.rq, ptr %41, i32 0, i32 20
  %177 = load i64, ptr %176, align 8
  tail call void %167(ptr noundef nonnull %164, i64 noundef %177, i32 noundef 0) #16
  br label %219

178:                                              ; preds = %40
  br i1 %49, label %179, label %204

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %181 = load i64, ptr %180, align 8
  %182 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 7
  %183 = load i64, ptr %182, align 8
  %184 = sub i64 %183, %181
  store i64 %184, ptr %182, align 8
  %185 = icmp ult i64 %183, %181
  %186 = load i1, ptr @__sub_rq_bw.__already_done, align 1
  %187 = xor i1 %186, true
  %188 = select i1 %185, i1 %187, i1 false
  br i1 %188, label %189, label %191, !prof !14

189:                                              ; preds = %179
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  %190 = load i64, ptr %182, align 8
  br label %191

191:                                              ; preds = %189, %179
  %192 = phi i64 [ %190, %189 ], [ %184, %179 ]
  %193 = icmp ugt i64 %192, %183
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i64 0, ptr %182, align 8
  br label %195

195:                                              ; preds = %194, %191
  %196 = phi i64 [ 0, %194 ], [ %192, %191 ]
  %197 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 6
  %198 = load i64, ptr %197, align 8
  %199 = icmp ugt i64 %198, %196
  %200 = load i1, ptr @__sub_rq_bw.__already_done.6, align 1
  %201 = xor i1 %200, true
  %202 = select i1 %199, i1 %201, i1 false
  br i1 %202, label %203, label %204, !prof !14

203:                                              ; preds = %195
  store i1 true, ptr @__sub_rq_bw.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %204

204:                                              ; preds = %203, %195, %178
  %205 = load i32, ptr %46, align 8
  %206 = and i32 %205, 268435456
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %210 = load i64, ptr %209, align 8
  %211 = getelementptr inbounds %struct.rq, ptr %41, i32 0, i32 12, i32 7
  %212 = load i64, ptr %211, align 8
  %213 = add i64 %212, %210
  store i64 %213, ptr %211, align 8
  %214 = icmp ult i64 %213, %212
  %215 = load i1, ptr @__add_rq_bw.__already_done, align 1
  %216 = xor i1 %215, true
  %217 = select i1 %214, i1 %216, i1 false
  br i1 %217, label %218, label %219, !prof !14

218:                                              ; preds = %208
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.8) #16
  br label %219

219:                                              ; preds = %218, %208, %204, %175, %157, %132
  %220 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds %struct.root_domain, ptr %221, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %222) #16
  %223 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 4
  %224 = load i64, ptr %223, align 8
  %225 = load ptr, ptr %220, align 8
  %226 = getelementptr inbounds %struct.root_domain, ptr %225, i32 0, i32 3
  %227 = load i32, ptr %226, align 4
  %228 = and i32 %227, 65535
  %229 = tail call i32 @__sw_hweight32(i32 noundef %228) #16
  %230 = getelementptr inbounds %struct.root_domain, ptr %221, i32 0, i32 9, i32 2
  %231 = load i64, ptr %230, align 8
  %232 = sub i64 %231, %224
  store i64 %232, ptr %230, align 8
  %233 = trunc i64 %224 to i32
  %234 = sdiv i32 %233, %229
  %235 = sext i32 %234 to i64
  %236 = getelementptr %struct.root_domain, ptr %221, i32 0, i32 3
  %237 = load i32, ptr @nr_cpu_ids, align 4
  %238 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %236, ptr noundef nonnull @__cpu_active_mask) #17
  %239 = icmp ult i32 %238, %237
  br i1 %239, label %240, label %251

240:                                              ; preds = %240, %219
  %241 = phi i32 [ %249, %240 ], [ %238, %219 ]
  %242 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %241
  %243 = load i32, ptr %242, align 4
  %244 = add i32 %243, ptrtoint (ptr @runqueues to i32)
  %245 = inttoptr i32 %244 to ptr
  %246 = getelementptr inbounds %struct.rq, ptr %245, i32 0, i32 12, i32 8
  %247 = load i64, ptr %246, align 8
  %248 = add i64 %247, %235
  store i64 %248, ptr %246, align 8
  %249 = tail call i32 @cpumask_next_and(i32 noundef %241, ptr noundef %236, ptr noundef nonnull @__cpu_active_mask) #17
  %250 = icmp ult i32 %249, %237
  br i1 %250, label %240, label %251

251:                                              ; preds = %240, %219
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %252 = load i16, ptr %222, align 4
  %253 = add i16 %252, 1
  store i16 %253, ptr %222, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %254 = getelementptr inbounds %struct.rq, ptr %41, i32 0, i32 29
  %255 = load ptr, ptr %254, align 8
  %256 = getelementptr inbounds %struct.root_domain, ptr %255, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %256) #16
  %257 = load i64, ptr %223, align 8
  %258 = load ptr, ptr %254, align 8
  %259 = getelementptr inbounds %struct.root_domain, ptr %258, i32 0, i32 3
  %260 = load i32, ptr %259, align 4
  %261 = and i32 %260, 65535
  %262 = tail call i32 @__sw_hweight32(i32 noundef %261) #16
  %263 = getelementptr inbounds %struct.root_domain, ptr %255, i32 0, i32 9, i32 2
  %264 = load i64, ptr %263, align 8
  %265 = add i64 %264, %257
  store i64 %265, ptr %263, align 8
  %266 = trunc i64 %257 to i32
  %267 = sdiv i32 %266, %262
  %268 = sub i32 0, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr %struct.root_domain, ptr %255, i32 0, i32 3
  %271 = load i32, ptr @nr_cpu_ids, align 4
  %272 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %270, ptr noundef nonnull @__cpu_active_mask) #17
  %273 = icmp ult i32 %272, %271
  br i1 %273, label %274, label %285

274:                                              ; preds = %274, %251
  %275 = phi i32 [ %283, %274 ], [ %272, %251 ]
  %276 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %275
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, ptrtoint (ptr @runqueues to i32)
  %279 = inttoptr i32 %278 to ptr
  %280 = getelementptr inbounds %struct.rq, ptr %279, i32 0, i32 12, i32 8
  %281 = load i64, ptr %280, align 8
  %282 = add i64 %281, %269
  store i64 %282, ptr %280, align 8
  %283 = tail call i32 @cpumask_next_and(i32 noundef %275, ptr noundef %270, ptr noundef nonnull @__cpu_active_mask) #17
  %284 = icmp ult i32 %283, %271
  br i1 %284, label %274, label %285

285:                                              ; preds = %274, %251
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %286 = load i16, ptr %256, align 4
  %287 = add i16 %286, 1
  store i16 %287, ptr %256, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %288 = getelementptr inbounds %struct.rq, ptr %41, i32 0, i32 40
  %289 = load i32, ptr %288, align 4
  tail call void @set_task_cpu(ptr noundef %1, i32 noundef %289) #16
  %290 = icmp eq ptr %41, %0
  br i1 %290, label %292, label %291

291:                                              ; preds = %285
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #16
  br label %292

292:                                              ; preds = %291, %285
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @push_dl_task(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %143, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5
  %7 = load volatile ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %143, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -1144
  %13 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %11, i32 -1136
  %16 = load volatile i32, ptr %15, align 8
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %19, label %18, !prof !18

18:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2214, 0\0A.popsection", ""() #16, !srcloc !39
  unreachable

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %12
  br i1 %22, label %23, label %24, !prof !14

23:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2215, 0\0A.popsection", ""() #16, !srcloc !40
  unreachable

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %11, i32 -52
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %29, !prof !14

28:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2216, 0\0A.popsection", ""() #16, !srcloc !41
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %11, i32 -556
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %34, label %33, !prof !18

33:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2218, 0\0A.popsection", ""() #16, !srcloc !42
  unreachable

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %11, i32 -552
  %36 = load i32, ptr %35, align 16
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %39, !prof !14

38:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2219, 0\0A.popsection", ""() #16, !srcloc !43
  unreachable

39:                                               ; preds = %34
  %40 = icmp eq ptr %12, null
  br i1 %40, label %143, label %41

41:                                               ; preds = %39
  %42 = getelementptr i8, ptr %11, i32 -32
  %43 = load i16, ptr %42, align 8
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %143

45:                                               ; preds = %41
  %46 = icmp eq ptr %12, %21
  br i1 %46, label %47, label %48, !prof !14

47:                                               ; preds = %126, %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2246, i32 noundef 9, ptr noundef null) #16
  br label %143

48:                                               ; preds = %126, %45
  %49 = phi ptr [ %85, %126 ], [ %12, %45 ]
  %50 = phi ptr [ %127, %126 ], [ %21, %45 ]
  %51 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 14
  %52 = load i32, ptr %51, align 16
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 21, i32 7
  %56 = load i64, ptr %55, align 32
  %57 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 21, i32 7
  %58 = load i64, ptr %57, align 32
  %59 = sub i64 %56, %58
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 26
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @resched_curr(ptr noundef %0) #16
  br label %143

66:                                               ; preds = %61, %54, %48
  %67 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #16, !srcloc !16
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #16, !srcloc !44
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71, !prof !14

71:                                               ; preds = %66
  %72 = add i32 %69, 1
  %73 = or i32 %72, %69
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %77, label %75, !prof !18

75:                                               ; preds = %71, %66
  %76 = phi i32 [ 2, %66 ], [ 1, %71 ]
  tail call void @refcount_warn_saturate(ptr noundef %67, i32 noundef %76) #16
  br label %77

77:                                               ; preds = %75, %71
  %78 = tail call ptr @find_lock_later_rq(ptr noundef nonnull %49, ptr noundef %0)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %129

80:                                               ; preds = %77
  %81 = load volatile ptr, ptr %6, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %134, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %10, align 4
  %85 = getelementptr i8, ptr %84, i32 -1144
  %86 = load i32, ptr %13, align 4
  %87 = getelementptr i8, ptr %84, i32 -1136
  %88 = load volatile i32, ptr %87, align 8
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %91, label %90, !prof !18

90:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2214, 0\0A.popsection", ""() #16, !srcloc !39
  unreachable

91:                                               ; preds = %83
  %92 = load ptr, ptr %20, align 4
  %93 = icmp eq ptr %92, %85
  br i1 %93, label %94, label %95, !prof !14

94:                                               ; preds = %91
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2215, 0\0A.popsection", ""() #16, !srcloc !40
  unreachable

95:                                               ; preds = %91
  %96 = getelementptr i8, ptr %84, i32 -52
  %97 = load i32, ptr %96, align 4
  %98 = icmp slt i32 %97, 2
  br i1 %98, label %99, label %100, !prof !14

99:                                               ; preds = %95
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2216, 0\0A.popsection", ""() #16, !srcloc !41
  unreachable

100:                                              ; preds = %95
  %101 = getelementptr i8, ptr %84, i32 -556
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %105, label %104, !prof !18

104:                                              ; preds = %100
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2218, 0\0A.popsection", ""() #16, !srcloc !42
  unreachable

105:                                              ; preds = %100
  %106 = getelementptr i8, ptr %84, i32 -552
  %107 = load i32, ptr %106, align 16
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %109, label %110, !prof !14

109:                                              ; preds = %105
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2219, 0\0A.popsection", ""() #16, !srcloc !43
  unreachable

110:                                              ; preds = %105
  %111 = icmp eq ptr %85, %49
  %112 = icmp eq ptr %85, null
  %113 = or i1 %111, %112
  br i1 %113, label %134, label %114

114:                                              ; preds = %110
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #16, !srcloc !16
  %115 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #16, !srcloc !17
  %116 = extractvalue { i32, i32, i32 } %115, 0
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = icmp sgt i32 %116, 0
  br i1 %119, label %122, label %120, !prof !18

120:                                              ; preds = %118
  tail call void @refcount_warn_saturate(ptr noundef %67, i32 noundef 3) #16
  br label %122

121:                                              ; preds = %114
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void @__put_task_struct(ptr noundef nonnull %49) #16
  br label %122

122:                                              ; preds = %121, %120, %118
  %123 = getelementptr i8, ptr %84, i32 -32
  %124 = load i16, ptr %123, align 8
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load ptr, ptr %20, align 4
  %128 = icmp eq ptr %85, %127
  br i1 %128, label %47, label %48, !prof !14

129:                                              ; preds = %77
  tail call void @deactivate_task(ptr noundef %0, ptr noundef nonnull %49, i32 noundef 0) #16
  %130 = getelementptr inbounds %struct.rq, ptr %78, i32 0, i32 40
  %131 = load i32, ptr %130, align 4
  tail call void @set_task_cpu(ptr noundef nonnull %49, i32 noundef %131) #16
  tail call void @update_rq_clock(ptr noundef nonnull %78) #16
  tail call void @activate_task(ptr noundef nonnull %78, ptr noundef nonnull %49, i32 noundef 8) #16
  tail call void @resched_curr(ptr noundef nonnull %78) #16
  %132 = icmp eq ptr %78, %0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call void @raw_spin_rq_unlock(ptr noundef nonnull %78) #16
  br label %134

134:                                              ; preds = %133, %129, %110, %80
  %135 = phi i32 [ 1, %129 ], [ 1, %133 ], [ 0, %110 ], [ 0, %80 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #16, !srcloc !16
  %136 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #16, !srcloc !17
  %137 = extractvalue { i32, i32, i32 } %136, 0
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = icmp sgt i32 %137, 0
  br i1 %140, label %143, label %141, !prof !18

141:                                              ; preds = %139
  tail call void @refcount_warn_saturate(ptr noundef %67, i32 noundef 3) #16
  br label %143

142:                                              ; preds = %134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void @__put_task_struct(ptr noundef nonnull %49) #16
  br label %143

143:                                              ; preds = %142, %141, %139, %122, %65, %47, %41, %39, %5, %1
  %144 = phi i32 [ 0, %47 ], [ 0, %65 ], [ 0, %1 ], [ 0, %39 ], [ %135, %139 ], [ %135, %141 ], [ %135, %142 ], [ 0, %5 ], [ 0, %41 ], [ 0, %122 ]
  ret i32 %144
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @double_lock_balance(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i1 @raw_spin_rq_trylock(ptr noundef %1) #16
  br i1 %5, label %14, label %6, !prof !18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 40
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @raw_spin_rq_lock_nested(ptr noundef %1, i32 noundef 1) #16
  br label %14

13:                                               ; preds = %6
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #16
  tail call void @double_rq_lock(ptr noundef %0, ptr noundef %1) #16
  br label %14

14:                                               ; preds = %13, %12, %4, %2
  %15 = phi i32 [ 0, %12 ], [ 1, %13 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_cpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @raw_spin_rq_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @double_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @activate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @task_contending(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr i8, ptr %0, i32 -856
  %4 = load volatile i32, ptr %3, align 8
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @runqueues to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %98, label %12

12:                                               ; preds = %2
  %13 = and i32 %1, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 268435456
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 4
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 12, i32 7
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8
  %26 = icmp ult i64 %25, %24
  %27 = load i1, ptr @__add_rq_bw.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !14

30:                                               ; preds = %20
  store i1 true, ptr @__add_rq_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.8) #16
  br label %31

31:                                               ; preds = %30, %20, %15, %12
  %32 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 9
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %31
  %37 = and i8 %33, -5
  store i8 %37, ptr %32, align 4
  %38 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 11
  %39 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %38) #16
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %98

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %0, i32 -320
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #16, !srcloc !16
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #16, !srcloc !17
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = icmp sgt i32 %44, 0
  br i1 %47, label %98, label %48, !prof !18

48:                                               ; preds = %46
  tail call void @refcount_warn_saturate(ptr noundef %42, i32 noundef 3) #16
  br label %98

49:                                               ; preds = %41
  %50 = getelementptr i8, ptr %0, i32 -864
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void @__put_task_struct(ptr noundef %50) #16
  br label %98

51:                                               ; preds = %31
  %52 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 8
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 268435456
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 4
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 12, i32 6
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %60, %58
  store i64 %61, ptr %59, align 8
  %62 = icmp ult i64 %61, %60
  %63 = load i1, ptr @__add_running_bw.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %68, !prof !14

66:                                               ; preds = %56
  store i1 true, ptr @__add_running_bw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.9) #16
  %67 = load i64, ptr %59, align 8
  br label %68

68:                                               ; preds = %66, %56
  %69 = phi i64 [ %67, %66 ], [ %61, %56 ]
  %70 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 12, i32 7
  %71 = load i64, ptr %70, align 8
  %72 = icmp ugt i64 %69, %71
  %73 = load i1, ptr @__add_running_bw.__already_done.10, align 1
  %74 = xor i1 %73, true
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %77, !prof !14

76:                                               ; preds = %68
  store i1 true, ptr @__add_running_bw.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 163, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %77

77:                                               ; preds = %76, %68
  %78 = getelementptr %struct.rq, ptr %8, i32 0, i32 40
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %83 = inttoptr i32 %82 to ptr
  %84 = load volatile ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %77
  %87 = load ptr, ptr %84, align 4
  %88 = getelementptr %struct.rq, ptr %8, i32 0, i32 19
  %89 = load i32, ptr %88, align 32
  %90 = icmp ult i32 %89, 2
  %91 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %92 = xor i1 %91, true
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %95, !prof !14

94:                                               ; preds = %86
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %95

95:                                               ; preds = %94, %86
  %96 = getelementptr %struct.rq, ptr %8, i32 0, i32 20
  %97 = load i64, ptr %96, align 8
  tail call void %87(ptr noundef nonnull %84, i64 noundef %97, i32 noundef 0) #16
  br label %98

98:                                               ; preds = %95, %77, %51, %49, %48, %46, %36, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @enqueue_pushable_dl_task(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36
  %4 = load i32, ptr %3, align 8
  %5 = ptrtoint ptr %3 to i32
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %8, label %7, !prof !18

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 536, 0\0A.popsection", ""() #16, !srcloc !45
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 268435456
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  br label %18

18:                                               ; preds = %33, %12
  %19 = phi ptr [ %35, %33 ], [ %10, %12 ]
  %20 = phi i1 [ false, %33 ], [ true, %12 ]
  br label %21

21:                                               ; preds = %29, %18
  %22 = phi ptr [ %31, %29 ], [ %19, %18 ]
  br i1 %16, label %23, label %29

23:                                               ; preds = %21
  %24 = load i64, ptr %17, align 8
  %25 = getelementptr i8, ptr %22, i32 -216
  %26 = load i64, ptr %25, align 8
  %27 = sub i64 %24, %26
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %21
  %30 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %21

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %18

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  %39 = ptrtoint ptr %22 to i32
  store i32 %39, ptr %3, align 4
  %40 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36, i32 1
  store ptr null, ptr %40, align 4
  %41 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36, i32 2
  store ptr null, ptr %41, align 4
  store ptr %3, ptr %38, align 4
  br label %47

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 2
  %44 = ptrtoint ptr %22 to i32
  store i32 %44, ptr %3, align 4
  %45 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36, i32 1
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36, i32 2
  store ptr null, ptr %46, align 4
  store ptr %3, ptr %43, align 4
  br i1 %20, label %51, label %47

47:                                               ; preds = %42, %37
  tail call void @rb_insert_color(ptr noundef %3, ptr noundef %9) #16
  br label %58

48:                                               ; preds = %8
  store i32 0, ptr %3, align 4
  %49 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36, i32 1
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36, i32 2
  store ptr null, ptr %50, align 4
  store ptr %3, ptr %9, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5, i32 1
  store ptr %3, ptr %52, align 4
  tail call void @rb_insert_color(ptr noundef %3, ptr noundef %9) #16
  %53 = icmp eq ptr %3, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %56 = load i64, ptr %55, align 32
  %57 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 2, i32 1
  store i64 %56, ptr %57, align 8
  br label %58

58:                                               ; preds = %54, %51, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @start_dl_timer(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 10
  %3 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %4 = load volatile i32, ptr %3, align 8
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @runqueues to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 7
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = sub i64 %10, %12
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %13, %15
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 10, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i64 %20() #16
  %22 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 19
  %23 = load i32, ptr %22, align 32
  %24 = icmp ult i32 %23, 2
  %25 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !14

28:                                               ; preds = %1
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %29

29:                                               ; preds = %28, %1
  %30 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 20
  %31 = load i64, ptr %30, align 8
  %32 = sub i64 %21, %31
  %33 = add i64 %16, %32
  %34 = sub i64 %33, %21
  %35 = tail call i64 @llvm.abs.i64(i64 %34, i1 false) #16
  %36 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %35, i32 0) #19, !srcloc !46
  %37 = extractvalue { i64, i32 } %36, 0
  %38 = extractvalue { i64, i32 } %36, 1
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %35, i64 %37, i32 %38) #19, !srcloc !47
  %40 = extractvalue { i64, i32 } %39, 0
  %41 = icmp slt i64 %34, 0
  %42 = icmp ugt i64 %40, 511
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %61, label %44

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 10, i32 4
  %46 = load volatile i8, ptr %45, align 8
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #16, !srcloc !16
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #16, !srcloc !44
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !14

54:                                               ; preds = %49
  %55 = add i32 %52, 1
  %56 = or i32 %55, %52
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %60, label %58, !prof !18

58:                                               ; preds = %54, %49
  %59 = phi i32 [ 2, %49 ], [ 1, %54 ]
  tail call void @refcount_warn_saturate(ptr noundef %50, i32 noundef %59) #16
  br label %60

60:                                               ; preds = %58, %54
  tail call void @hrtimer_start_range_ns(ptr noundef %2, i64 noundef %33, i64 noundef 0, i32 noundef 8) #16
  br label %61

61:                                               ; preds = %60, %44, %29
  %62 = phi i32 [ 0, %29 ], [ 1, %60 ], [ 1, %44 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_dl_revised_wakeup(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 7
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 19
  %6 = load i32, ptr %5, align 32
  %7 = icmp ult i32 %6, 2
  %8 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %15, !prof !14

11:                                               ; preds = %2
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  %12 = load i64, ptr %3, align 8
  %13 = load i32, ptr %5, align 32
  %14 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ %8, %2 ], [ %14, %11 ]
  %17 = phi i32 [ %6, %2 ], [ %13, %11 ]
  %18 = phi i64 [ %4, %2 ], [ %12, %11 ]
  %19 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 20
  %20 = load i64, ptr %19, align 8
  %21 = icmp ult i32 %17, 2
  %22 = xor i1 %16, true
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %26, !prof !14

24:                                               ; preds = %15
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  %25 = load i64, ptr %19, align 8
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi i64 [ %20, %15 ], [ %25, %24 ]
  %28 = sub i64 %18, %27
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31, !prof !14

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 896, i32 noundef 9, ptr noundef null) #16
  br label %31

31:                                               ; preds = %30, %26
  %32 = sub i64 %4, %20
  %33 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 5
  %34 = load i64, ptr %33, align 8
  %35 = mul i64 %34, %32
  %36 = lshr i64 %35, 20
  %37 = getelementptr inbounds %struct.sched_dl_entity, ptr %0, i32 0, i32 6
  store i64 %36, ptr %37, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_trace_sched_update_nr_running(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpupri_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_set(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_dl_migration(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dl_rq, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dl_rq, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dl_rq, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 240
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 236
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 176
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.root_domain, ptr %21, i32 0, i32 7
  tail call void @_set_bit(i32 noundef %19, ptr noundef %22) #16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !27
  %23 = load ptr, ptr %20, align 8
  %24 = getelementptr inbounds %struct.root_domain, ptr %23, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #16, !srcloc !16
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #16, !srcloc !28
  br label %26

26:                                               ; preds = %17, %13
  store i32 1, ptr %10, align 4
  br label %45

27:                                               ; preds = %5, %1
  %28 = getelementptr inbounds %struct.dl_rq, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %0, i32 240
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %0, i32 176
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.root_domain, ptr %37, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #16, !srcloc !16
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #16, !srcloc !29
  %40 = getelementptr i8, ptr %0, i32 236
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %36, align 8
  %43 = getelementptr inbounds %struct.root_domain, ptr %42, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef %41, ptr noundef %43) #16
  br label %44

44:                                               ; preds = %35, %31
  store i32 0, ptr %28, align 4
  br label %45

45:                                               ; preds = %44, %27, %26, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dequeue_task_dl(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21
  %4 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 12
  %11 = load i32, ptr %3, align 8
  %12 = ptrtoint ptr %3 to i32
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %76, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call ptr @rb_next(ptr noundef %3) #16
  store ptr %19, ptr %15, align 4
  br label %20

20:                                               ; preds = %18, %14
  tail call void @rb_erase(ptr noundef %3, ptr noundef %10) #16
  store i32 %12, ptr %3, align 8
  %21 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 14
  %22 = load i32, ptr %21, align 16
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %25, !prof !14

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1460, i32 noundef 9, ptr noundef null) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 12, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31, !prof !14

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1461, i32 noundef 9, ptr noundef null) #16
  %30 = load i32, ptr %26, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %30, %29 ], [ %27, %25 ]
  %33 = add i32 %32, -1
  store i32 %33, ptr %26, align 8
  %34 = getelementptr %struct.rq, ptr %9, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  tail call void @call_trace_sched_update_nr_running(ptr noundef %9, i32 noundef -1) #16
  %40 = load i32, ptr %26, align 8
  br label %41

41:                                               ; preds = %39, %31
  %42 = phi i32 [ %33, %31 ], [ %40, %39 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 12, i32 2
  %46 = getelementptr %struct.rq, ptr %9, i32 0, i32 29
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false) #16
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.root_domain, ptr %47, i32 0, i32 10
  %49 = getelementptr %struct.rq, ptr %9, i32 0, i32 40
  %50 = load i32, ptr %49, align 4
  tail call void @cpudl_clear(ptr noundef %48, i32 noundef %50) #16
  %51 = load ptr, ptr %46, align 8
  %52 = getelementptr inbounds %struct.root_domain, ptr %51, i32 0, i32 19
  %53 = load i32, ptr %49, align 4
  %54 = getelementptr %struct.rq, ptr %9, i32 0, i32 11, i32 3
  %55 = load i32, ptr %54, align 8
  tail call void @cpupri_set(ptr noundef %52, i32 noundef %53, i32 noundef %55) #16
  br label %67

56:                                               ; preds = %41
  %57 = load ptr, ptr %15, align 4
  %58 = getelementptr inbounds %struct.sched_dl_entity, ptr %57, i32 0, i32 7
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 12, i32 2
  store i64 %59, ptr %60, align 8
  %61 = getelementptr %struct.rq, ptr %9, i32 0, i32 29
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.root_domain, ptr %62, i32 0, i32 10
  %64 = getelementptr %struct.rq, ptr %9, i32 0, i32 40
  %65 = load i32, ptr %64, align 4
  %66 = load i64, ptr %58, align 8
  tail call void @cpudl_set(ptr noundef %63, i32 noundef %65, i64 noundef %66) #16
  br label %67

67:                                               ; preds = %56, %44
  %68 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 26
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 12, i32 3
  %73 = load i32, ptr %72, align 8
  %74 = add i32 %73, -1
  store i32 %74, ptr %72, align 8
  br label %75

75:                                               ; preds = %71, %67
  tail call fastcc void @update_dl_migration(ptr noundef %10) #16
  br label %76

76:                                               ; preds = %75, %2
  %77 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36
  %78 = load i32, ptr %77, align 8
  %79 = ptrtoint ptr %77 to i32
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %95, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5
  %83 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %77
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  tail call void @rb_erase(ptr noundef %77, ptr noundef %82) #16
  br label %94

87:                                               ; preds = %81
  %88 = tail call ptr @rb_next(ptr noundef %77) #16
  store ptr %88, ptr %83, align 4
  tail call void @rb_erase(ptr noundef %77, ptr noundef %82) #16
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr i8, ptr %88, i32 -216
  %92 = load i64, ptr %91, align 32
  %93 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 2, i32 1
  store i64 %92, ptr %93, align 8
  br label %94

94:                                               ; preds = %90, %87, %86
  store i32 %79, ptr %77, align 8
  br label %95

95:                                               ; preds = %94, %76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @task_non_contending(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 11
  %5 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 0, i32 2
  %6 = load volatile i32, ptr %5, align 8
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %214, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %214

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 9
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  %24 = trunc i64 %12 to i32
  br i1 %23, label %28, label %25, !prof !18

25:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 332, i32 noundef 9, ptr noundef null) #16
  %26 = load i64, ptr %11, align 8
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ %24, %19 ]
  %30 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 7
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 6
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = mul i64 %35, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !13
  %37 = call i64 @div_s64_rem(i64 noundef %36, i32 noundef %29, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %38 = getelementptr %struct.rq, ptr %10, i32 0, i32 19
  %39 = load i32, ptr %38, align 32
  %40 = icmp ult i32 %39, 2
  %41 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !14

44:                                               ; preds = %28
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %45

45:                                               ; preds = %44, %28
  %46 = getelementptr %struct.rq, ptr %10, i32 0, i32 20
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %37, %47
  %49 = sub i64 %31, %48
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = call zeroext i1 @hrtimer_active(ptr noundef %4) #16
  br i1 %52, label %53, label %200

53:                                               ; preds = %51, %45
  %54 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %55 = load i32, ptr %54, align 16
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %103, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %15, align 8
  %59 = and i32 %58, 268435456
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 12, i32 6
  %65 = load i64, ptr %64, align 8
  %66 = sub i64 %65, %63
  store i64 %66, ptr %64, align 8
  %67 = icmp ult i64 %65, %63
  %68 = load i1, ptr @__sub_running_bw.__already_done, align 1
  %69 = xor i1 %68, true
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %73, !prof !14

71:                                               ; preds = %61
  store i1 true, ptr @__sub_running_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.4) #16
  %72 = load i64, ptr %64, align 8
  br label %73

73:                                               ; preds = %71, %61
  %74 = phi i64 [ %72, %71 ], [ %66, %61 ]
  %75 = icmp ugt i64 %74, %65
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i64 0, ptr %64, align 8
  br label %77

77:                                               ; preds = %76, %73
  %78 = getelementptr %struct.rq, ptr %10, i32 0, i32 40
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %83 = inttoptr i32 %82 to ptr
  %84 = load volatile ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %77
  %87 = load ptr, ptr %84, align 4
  %88 = load i32, ptr %38, align 32
  %89 = icmp ult i32 %88, 2
  %90 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %91 = xor i1 %90, true
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %93, label %94, !prof !14

93:                                               ; preds = %86
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.2) #16
  br label %94

94:                                               ; preds = %93, %86
  %95 = load i64, ptr %46, align 8
  call void %87(ptr noundef nonnull %84, i64 noundef %95, i32 noundef 0) #16
  br label %96

96:                                               ; preds = %94, %77, %57
  %97 = load i32, ptr %54, align 16
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %101 = load volatile i32, ptr %100, align 8
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %214

103:                                              ; preds = %99, %96, %53
  %104 = load volatile i32, ptr %5, align 8
  %105 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, ptrtoint (ptr @runqueues to i32)
  %108 = inttoptr i32 %107 to ptr
  %109 = getelementptr inbounds %struct.rq, ptr %108, i32 0, i32 29
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.root_domain, ptr %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %113 = load volatile i32, ptr %112, align 8
  %114 = icmp eq i32 %113, 128
  br i1 %114, label %115, label %144

115:                                              ; preds = %103
  %116 = load i32, ptr %15, align 8
  %117 = and i32 %116, 268435456
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %144

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  %121 = load i64, ptr %120, align 8
  %122 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 12, i32 7
  %123 = load i64, ptr %122, align 8
  %124 = sub i64 %123, %121
  store i64 %124, ptr %122, align 8
  %125 = icmp ult i64 %123, %121
  %126 = load i1, ptr @__sub_rq_bw.__already_done, align 1
  %127 = xor i1 %126, true
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %131, !prof !14

129:                                              ; preds = %119
  store i1 true, ptr @__sub_rq_bw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5) #16
  %130 = load i64, ptr %122, align 8
  br label %131

131:                                              ; preds = %129, %119
  %132 = phi i64 [ %130, %129 ], [ %124, %119 ]
  %133 = icmp ugt i64 %132, %123
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i64 0, ptr %122, align 8
  br label %135

135:                                              ; preds = %134, %131
  %136 = phi i64 [ 0, %134 ], [ %132, %131 ]
  %137 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 12, i32 6
  %138 = load i64, ptr %137, align 8
  %139 = icmp ugt i64 %138, %136
  %140 = load i1, ptr @__sub_rq_bw.__already_done.6, align 1
  %141 = xor i1 %140, true
  %142 = select i1 %139, i1 %141, i1 false
  br i1 %142, label %143, label %144, !prof !14

143:                                              ; preds = %135
  store i1 true, ptr @__sub_rq_bw.__already_done.6, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.7) #16
  br label %144

144:                                              ; preds = %143, %135, %115, %103
  call void @_raw_spin_lock(ptr noundef %111) #16
  %145 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 4
  %146 = load i64, ptr %145, align 8
  %147 = load volatile i32, ptr %5, align 8
  %148 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %147
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, ptrtoint (ptr @runqueues to i32)
  %151 = inttoptr i32 %150 to ptr
  %152 = getelementptr inbounds %struct.rq, ptr %151, i32 0, i32 29
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.root_domain, ptr %153, i32 0, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = load i32, ptr @__cpu_active_mask, align 4
  %157 = xor i32 %156, -1
  %158 = and i32 %155, 65535
  %159 = and i32 %158, %157
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %144
  %162 = load i32, ptr @nr_cpu_ids, align 4
  br label %165

163:                                              ; preds = %144
  %164 = call i32 @__sw_hweight32(i32 noundef %158) #16
  br label %171

165:                                              ; preds = %165, %161
  %166 = phi i32 [ %168, %165 ], [ -1, %161 ]
  %167 = phi i32 [ %170, %165 ], [ 0, %161 ]
  %168 = call i32 @cpumask_next_and(i32 noundef %166, ptr noundef %154, ptr noundef nonnull @__cpu_active_mask) #17
  %169 = icmp ult i32 %168, %162
  %170 = add i32 %167, 1
  br i1 %169, label %165, label %171

171:                                              ; preds = %165, %163
  %172 = phi i32 [ %164, %163 ], [ %167, %165 ]
  %173 = getelementptr inbounds %struct.root_domain, ptr %110, i32 0, i32 9, i32 2
  %174 = load i64, ptr %173, align 8
  %175 = sub i64 %174, %146
  store i64 %175, ptr %173, align 8
  %176 = trunc i64 %146 to i32
  %177 = sdiv i32 %176, %172
  %178 = sext i32 %177 to i64
  %179 = getelementptr %struct.root_domain, ptr %110, i32 0, i32 3
  %180 = load i32, ptr @nr_cpu_ids, align 4
  %181 = call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %179, ptr noundef nonnull @__cpu_active_mask) #17
  %182 = icmp ult i32 %181, %180
  br i1 %182, label %183, label %194

183:                                              ; preds = %183, %171
  %184 = phi i32 [ %192, %183 ], [ %181, %171 ]
  %185 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %184
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, ptrtoint (ptr @runqueues to i32)
  %188 = inttoptr i32 %187 to ptr
  %189 = getelementptr inbounds %struct.rq, ptr %188, i32 0, i32 12, i32 8
  %190 = load i64, ptr %189, align 8
  %191 = add i64 %190, %178
  store i64 %191, ptr %189, align 8
  %192 = call i32 @cpumask_next_and(i32 noundef %184, ptr noundef %179, ptr noundef nonnull @__cpu_active_mask) #17
  %193 = icmp ult i32 %192, %180
  br i1 %193, label %183, label %194

194:                                              ; preds = %183, %171
  store i32 0, ptr %15, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false) #16
  %195 = load i8, ptr %20, align 4
  %196 = and i8 %195, -16
  store i8 %196, ptr %20, align 4
  %197 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 12
  store ptr %3, ptr %197, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %198 = load i16, ptr %111, align 4
  %199 = add i16 %198, 1
  store i16 %199, ptr %111, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %214

200:                                              ; preds = %51
  %201 = load i8, ptr %20, align 4
  %202 = or i8 %201, 4
  store i8 %202, ptr %20, align 4
  %203 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %203) #16, !srcloc !16
  %204 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %203, ptr %203, i32 1, ptr elementtype(i32) %203) #16, !srcloc !44
  %205 = extractvalue { i32, i32, i32 } %204, 0
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %211, label %207, !prof !14

207:                                              ; preds = %200
  %208 = add i32 %205, 1
  %209 = or i32 %208, %205
  %210 = icmp sgt i32 %209, -1
  br i1 %210, label %213, label %211, !prof !18

211:                                              ; preds = %207, %200
  %212 = phi i32 [ 2, %200 ], [ 1, %207 ]
  call void @refcount_warn_saturate(ptr noundef %203, i32 noundef %212) #16
  br label %213

213:                                              ; preds = %211, %207
  call void @hrtimer_start_range_ns(ptr noundef %4, i64 noundef %49, i64 noundef 0, i32 noundef 9) #16
  br label %214

214:                                              ; preds = %213, %194, %99, %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpudl_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_dl_rq_load_avg(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtick_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @push_dl_tasks(ptr noundef %0) #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call fastcc i32 @push_dl_task(ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %2

5:                                                ; preds = %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pull_dl_task(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.root_domain, ptr %5, i32 0, i32 8
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %111, label %9, !prof !18

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !48
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.root_domain, ptr %10, i32 0, i32 7
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %11) #17
  %14 = icmp ult i32 %13, %12
  br i1 %14, label %15, label %111

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 1
  %17 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 2
  br label %18

18:                                               ; preds = %102, %15
  %19 = phi i32 [ %13, %15 ], [ %106, %102 ]
  %20 = phi i32 [ %12, %15 ], [ %105, %102 ]
  %21 = phi ptr [ %11, %15 ], [ %104, %102 ]
  %22 = phi i1 [ false, %15 ], [ %91, %102 ]
  %23 = phi i64 [ 2147483647, %15 ], [ %90, %102 ]
  br label %24

24:                                               ; preds = %27, %18
  %25 = phi i32 [ %19, %18 ], [ %28, %27 ]
  %26 = icmp eq i32 %3, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %36, %24
  %28 = tail call i32 @cpumask_next(i32 noundef %25, ptr noundef %21) #17
  %29 = icmp ult i32 %28, %20
  br i1 %29, label %24, label %108

30:                                               ; preds = %24
  %31 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, ptrtoint (ptr @runqueues to i32)
  %34 = load i32, ptr %16, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = inttoptr i32 %33 to ptr
  %38 = load i64, ptr %17, align 8
  %39 = getelementptr inbounds %struct.rq, ptr %37, i32 0, i32 12, i32 2, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = sub i64 %38, %40
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %27, label %43

43:                                               ; preds = %36, %30
  %44 = inttoptr i32 %33 to ptr
  %45 = tail call fastcc i32 @double_lock_balance(ptr noundef %0, ptr noundef %44)
  %46 = getelementptr inbounds %struct.rq, ptr %44, i32 0, i32 12, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %89, label %49

49:                                               ; preds = %43
  %50 = tail call fastcc ptr @pick_earliest_pushable_dl_task(ptr noundef %44, i32 noundef %3)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %89, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 21, i32 7
  %54 = load i64, ptr %53, align 32
  %55 = sub i64 %54, %23
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %52
  %58 = load i32, ptr %16, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i64, ptr %17, align 8
  %62 = sub i64 %54, %61
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %60, %57
  %65 = getelementptr inbounds %struct.rq, ptr %44, i32 0, i32 14
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %50, %66
  br i1 %67, label %68, label %69, !prof !14

68:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2374, i32 noundef 9, ptr noundef null) #16
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 13
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %74, label %73, !prof !18

73:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2375, i32 noundef 9, ptr noundef null) #16
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i64, ptr %53, align 32
  %76 = load ptr, ptr %65, align 4
  %77 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 21, i32 7
  %78 = load i64, ptr %77, align 32
  %79 = sub i64 %75, %78
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 31
  %83 = load i16, ptr %82, align 8
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = tail call fastcc ptr @get_push_task(ptr noundef %44)
  br label %89

87:                                               ; preds = %81
  tail call void @deactivate_task(ptr noundef %44, ptr noundef nonnull %50, i32 noundef 0) #16
  tail call void @set_task_cpu(ptr noundef nonnull %50, i32 noundef %3) #16
  tail call void @activate_task(ptr noundef %0, ptr noundef nonnull %50, i32 noundef 0) #16
  %88 = load i64, ptr %53, align 32
  br label %89

89:                                               ; preds = %87, %85, %74, %60, %52, %49, %43
  %90 = phi i64 [ %23, %43 ], [ %23, %74 ], [ %23, %85 ], [ %88, %87 ], [ %23, %60 ], [ %23, %52 ], [ %23, %49 ]
  %91 = phi i1 [ %22, %43 ], [ %22, %74 ], [ %22, %85 ], [ true, %87 ], [ %22, %60 ], [ %22, %52 ], [ %22, %49 ]
  %92 = phi ptr [ null, %43 ], [ null, %74 ], [ %86, %85 ], [ null, %87 ], [ null, %60 ], [ null, %52 ], [ null, %49 ]
  %93 = icmp eq ptr %44, %0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  tail call void @raw_spin_rq_unlock(ptr noundef %44) #16
  br label %95

95:                                               ; preds = %94, %89
  %96 = icmp eq ptr %92, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %95
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #16
  %98 = getelementptr inbounds %struct.rq, ptr %44, i32 0, i32 40
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.rq, ptr %44, i32 0, i32 62
  %101 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %99, ptr noundef nonnull @push_cpu_stop, ptr noundef nonnull %92, ptr noundef %100) #16
  tail call void @raw_spin_rq_lock_nested(ptr noundef %0, i32 noundef 0) #16
  br label %102

102:                                              ; preds = %97, %95
  %103 = load ptr, ptr %4, align 8
  %104 = getelementptr inbounds %struct.root_domain, ptr %103, i32 0, i32 7
  %105 = load i32, ptr @nr_cpu_ids, align 4
  %106 = tail call i32 @cpumask_next(i32 noundef %25, ptr noundef %104) #17
  %107 = icmp ult i32 %106, %105
  br i1 %107, label %18, label %108

108:                                              ; preds = %102, %27
  %109 = phi i1 [ %22, %27 ], [ %91, %102 ]
  br i1 %109, label %110, label %111

110:                                              ; preds = %108
  tail call void @resched_curr(ptr noundef %0) #16
  br label %111

111:                                              ; preds = %110, %108, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pick_earliest_pushable_dl_task(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 5
  %6 = load volatile ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %4, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = lshr i32 %1, 5
  %12 = and i32 %1, 31
  %13 = shl nuw i32 1, %12
  br label %14

14:                                               ; preds = %25, %10
  %15 = phi ptr [ %4, %10 ], [ %26, %25 ]
  %16 = getelementptr i8, ptr %15, i32 -588
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %15, i32 -40
  %21 = getelementptr i32, ptr %20, i32 %11
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, %13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %14
  %26 = tail call ptr @rb_next(ptr noundef nonnull %15) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %14

28:                                               ; preds = %19
  %29 = getelementptr i8, ptr %15, i32 -1144
  br label %30

30:                                               ; preds = %28, %25, %2
  %31 = phi ptr [ null, %2 ], [ %29, %28 ], [ null, %25 ]
  ret ptr %31
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_push_task(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 61
  %5 = load i32, ptr %4, align 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 26
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 31
  %13 = load i16, ptr %12, align 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  store i32 1, ptr %4, align 16
  %16 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #16, !srcloc !16
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #16, !srcloc !44
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !14

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !18

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #16
  br label %26

26:                                               ; preds = %24, %20, %11, %7, %1
  %27 = phi ptr [ null, %1 ], [ null, %7 ], [ null, %11 ], [ %3, %20 ], [ %3, %24 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stop_one_cpu_nowait(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @push_cpu_stop(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_later_rq(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #12, !srcloc !49
  %5 = add i32 %4, ptrtoint (ptr @local_cpu_mask_dl to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %11 = load volatile i32, ptr %10, align 8
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %87, label %13, !prof !14

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 26
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %87, label %17

17:                                               ; preds = %13
  %18 = load volatile i32, ptr %10, align 8
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, ptrtoint (ptr @runqueues to i32)
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.rq, ptr %22, i32 0, i32 29
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.root_domain, ptr %24, i32 0, i32 10
  %26 = tail call i32 @cpudl_find(ptr noundef %25, ptr noundef %0, ptr noundef nonnull %6) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %87, label %28

28:                                               ; preds = %17
  %29 = lshr i32 %11, 5
  %30 = getelementptr i32, ptr %6, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %11, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %28
  %37 = lshr i32 %9, 5
  %38 = getelementptr i32, ptr %6, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %9, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 -1, i32 %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %45 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, ptrtoint (ptr @runqueues to i32)
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 30
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %80, label %52

52:                                               ; preds = %36
  %53 = icmp eq i32 %44, -1
  %54 = lshr i32 %44, 5
  %55 = and i32 %44, 31
  %56 = shl nuw i32 1, %55
  br label %57

57:                                               ; preds = %77, %52
  %58 = phi ptr [ %50, %52 ], [ %78, %77 ]
  %59 = getelementptr inbounds %struct.sched_domain, ptr %58, i32 0, i32 9
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %57
  br i1 %53, label %71, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.sched_domain, ptr %58, i32 0, i32 21
  %66 = getelementptr i32, ptr %65, i32 %54
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, %56
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %87

71:                                               ; preds = %64, %63
  %72 = getelementptr inbounds %struct.sched_domain, ptr %58, i32 0, i32 21
  %73 = tail call i32 @cpumask_any_and_distribute(ptr noundef nonnull %6, ptr noundef %72) #16
  %74 = load i32, ptr @nr_cpu_ids, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %87

77:                                               ; preds = %71, %57
  %78 = load ptr, ptr %58, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %57

80:                                               ; preds = %77, %36
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %81 = icmp eq i32 %44, -1
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = tail call i32 @cpumask_any_distribute(ptr noundef nonnull %6) #16
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %85 = icmp ult i32 %83, %84
  %86 = select i1 %85, i32 %83, i32 -1
  br label %87

87:                                               ; preds = %82, %80, %76, %70, %28, %17, %13, %1
  %88 = phi i32 [ -1, %1 ], [ -1, %13 ], [ -1, %17 ], [ %11, %28 ], [ %9, %80 ], [ %86, %82 ], [ %9, %70 ], [ %73, %76 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_and_distribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_distribute(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_set_freecpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpudl_clear_freecpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sched_rt_bandwidth_account(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_stat_runtime(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cgroup_account_cputime(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

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
!9 = !{i64 2149329080}
!10 = !{i64 2149324904}
!11 = !{i64 2149324979, i64 2149325006, i64 2149325053, i64 2149325075, i64 2149325103, i64 2149325123}
!12 = !{i64 2149352083}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148347375}
!16 = !{i64 680867, i64 2148182433, i64 2148182459, i64 2148182506, i64 2148182528, i64 2148182556, i64 2148182576}
!17 = !{i64 2148249510, i64 2148249542, i64 2148249571, i64 2148249605, i64 2148249636, i64 2148249659}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2149402995}
!20 = !{i64 2156485234, i64 2156485723, i64 2156485271, i64 2156485327, i64 2156485361, i64 2156485385, i64 2156485426, i64 2156485447, i64 2156485475, i64 2156485509}
!21 = !{i64 2156484129, i64 2156484618, i64 2156484166, i64 2156484222, i64 2156484256, i64 2156484280, i64 2156484321, i64 2156484342, i64 2156484370, i64 2156484404}
!22 = !{i64 2156482923, i64 2156483412, i64 2156482960, i64 2156483016, i64 2156483050, i64 2156483074, i64 2156483115, i64 2156483136, i64 2156483164, i64 2156483198}
!23 = !{i64 2156498196, i64 2156498685, i64 2156498233, i64 2156498289, i64 2156498323, i64 2156498347, i64 2156498388, i64 2156498409, i64 2156498437, i64 2156498471}
!24 = !{i64 2149102881}
!25 = !{i64 2149103098}
!26 = !{i64 2156535402, i64 2156539952, i64 2156535439, i64 2156535495, i64 2156535529, i64 2156535553, i64 2156535594, i64 2156535615, i64 2156535643, i64 2156535677}
!27 = !{i64 2156442644}
!28 = !{i64 2148245695, i64 2148245721, i64 2148245750, i64 2148245784, i64 2148245815, i64 2148245838}
!29 = !{i64 2148248052, i64 2148248078, i64 2148248107, i64 2148248141, i64 2148248172, i64 2148248195}
!30 = !{i64 2155940689}
!31 = !{i64 2155940881}
!32 = !{i64 2148256927, i64 2148256955, i64 2148256989, i64 2148257023, i64 2148257057, i64 2148257093, i64 2148257116}
!33 = !{i64 2149111457}
!34 = !{i64 2149112079}
!35 = !{i64 2156433161, i64 2156433649, i64 2156433198, i64 2156433254, i64 2156433288, i64 2156433312, i64 2156433353, i64 2156433374, i64 2156433402, i64 2156433436}
!36 = !{i32 0, i32 33}
!37 = !{i64 2156459502, i64 2156459990, i64 2156459539, i64 2156459595, i64 2156459629, i64 2156459653, i64 2156459694, i64 2156459715, i64 2156459743, i64 2156459777}
!38 = !{i64 2156456078, i64 2156456566, i64 2156456115, i64 2156456171, i64 2156456205, i64 2156456229, i64 2156456270, i64 2156456291, i64 2156456319, i64 2156456353}
!39 = !{i64 2156527487, i64 2156527976, i64 2156527524, i64 2156527580, i64 2156527614, i64 2156527638, i64 2156527679, i64 2156527700, i64 2156527728, i64 2156527762}
!40 = !{i64 2156528532, i64 2156529021, i64 2156528569, i64 2156528625, i64 2156528659, i64 2156528683, i64 2156528724, i64 2156528745, i64 2156528773, i64 2156528807}
!41 = !{i64 2156529585, i64 2156530074, i64 2156529622, i64 2156529678, i64 2156529712, i64 2156529736, i64 2156529777, i64 2156529798, i64 2156529826, i64 2156529860}
!42 = !{i64 2156530634, i64 2156531123, i64 2156530671, i64 2156530727, i64 2156530761, i64 2156530785, i64 2156530826, i64 2156530847, i64 2156530875, i64 2156530909}
!43 = !{i64 2156531663, i64 2156532152, i64 2156531700, i64 2156531756, i64 2156531790, i64 2156531814, i64 2156531855, i64 2156531876, i64 2156531904, i64 2156531938}
!44 = !{i64 2148247153, i64 2148247185, i64 2148247214, i64 2148247248, i64 2148247279, i64 2148247302}
!45 = !{i64 2156446379, i64 2156446867, i64 2156446416, i64 2156446472, i64 2156446506, i64 2156446530, i64 2156446571, i64 2156446592, i64 2156446620, i64 2156446654}
!46 = !{i64 1251646, i64 1251673, i64 1251695, i64 1251723}
!47 = !{i64 1252054, i64 1252081, i64 1252114, i64 1252135, i64 1252162, i64 1252188}
!48 = !{i64 2156533098}
!49 = !{i64 716719}
