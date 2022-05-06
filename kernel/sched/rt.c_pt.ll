; ModuleID = '/llk/IR/kernel/sched/rt.c_pt.bc'
source_filename = "../kernel/sched/rt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon.123 }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.123 = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.124, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.124 = type { i64, i64 }
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
%struct.cpumask = type { [1 x i32] }
%struct.sched_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rt_bandwidth = type { %struct.raw_spinlock, i64, i64, %struct.hrtimer, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.static_key_false = type { %struct.static_key }
%struct.callback_head = type { ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.93, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.93 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i32, ptr }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type {}
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
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, ptr, %union.anon.125, ptr, i32, [0 x i32] }
%union.anon.125 = type { %struct.callback_head }

@sched_rr_timeslice = dso_local local_unnamed_addr global i32 10, align 4
@sysctl_sched_rr_timeslice = dso_local local_unnamed_addr global i32 100, align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@local_cpu_mask = internal global [1 x %struct.cpumask] zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@rt_sched_class = dso_local constant %struct.sched_class { ptr @enqueue_task_rt, ptr @dequeue_task_rt, ptr @yield_task_rt, ptr null, ptr @check_preempt_curr_rt, ptr @pick_next_task_rt, ptr @put_prev_task_rt, ptr @set_next_task_rt, ptr @balance_rt, ptr @select_task_rq_rt, ptr @pick_task_rt, ptr null, ptr @task_woken_rt, ptr @set_cpus_allowed_common, ptr @rq_online_rt, ptr @rq_offline_rt, ptr @find_lock_lowest_rq, ptr @task_tick_rt, ptr null, ptr null, ptr @switched_from_rt, ptr @switched_to_rt, ptr @prio_changed_rt, ptr @get_rr_interval_rt, ptr @update_curr_rt }, section "__rt_sched_class", align 4
@sched_rt_handler.mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sched_rt_handler.mutex, i64 12), ptr getelementptr (i8, ptr @sched_rt_handler.mutex, i64 12) } }, align 4
@sysctl_sched_rt_period = external dso_local local_unnamed_addr global i32, align 4
@sysctl_sched_rt_runtime = external dso_local local_unnamed_addr global i32, align 4
@sched_rr_handler.mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sched_rr_handler.mutex, i64 12), ptr getelementptr (i8, ptr @sched_rr_handler.mutex, i64 12) } }, align 4
@def_rt_bandwidth = dso_local global %struct.rt_bandwidth zeroinitializer, align 8
@sysctl_sched_features = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_sched_update_nr_running_tp = external dso_local global %struct.tracepoint, align 4
@cpufreq_update_util_data = external dso_local global ptr, section ".data..percpu", align 4
@assert_clock_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"kernel/sched/sched.h\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"rq->clock_update_flags < RQCF_ACT_SKIP\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"kernel/sched/rt.c\00", align 1
@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@__dequeue_rt_entity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__enqueue_rt_entity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rt_push_head = internal global %struct.callback_head zeroinitializer, section ".data..percpu", align 4
@balance_push_callback = external dso_local global %struct.callback_head, align 4
@scheduler_running = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@rt_pull_head = internal global %struct.callback_head zeroinitializer, section ".data..percpu", align 4
@__tracepoint_sched_stat_runtime = external dso_local global %struct.tracepoint, align 4
@sched_rt_runtime_exceeded.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"sched: RT throttling activated\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_rt_bandwidth(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rt_bandwidth, ptr %0, i32 0, i32 1
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.rt_bandwidth, ptr %0, i32 0, i32 2
  store i64 %2, ptr %5, align 8
  store i32 0, ptr %0, align 8
  %6 = getelementptr inbounds %struct.rt_bandwidth, ptr %0, i32 0, i32 3
  tail call void @hrtimer_init(ptr noundef %6, i32 noundef 1, i32 noundef 9) #16
  %7 = getelementptr inbounds %struct.rt_bandwidth, ptr %0, i32 0, i32 3, i32 2
  store ptr @sched_rt_period_timer, ptr %7, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_rt_period_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %5 = load i64, ptr %3, align 8
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i64 %8() #16
  %10 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %9, i64 noundef %5) #16
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %156, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -8
  br label %15

15:                                               ; preds = %142, %13
  %16 = phi i32 [ %11, %13 ], [ %150, %142 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %17 = load i16, ptr %2, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %19 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %133

22:                                               ; preds = %15
  %23 = sext i32 %16 to i64
  br label %24

24:                                               ; preds = %125, %22
  %25 = phi i32 [ %19, %22 ], [ %128, %125 ]
  %26 = phi i32 [ 1, %22 ], [ %127, %125 ]
  %27 = phi i32 [ 0, %22 ], [ %126, %125 ]
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, ptrtoint (ptr @runqueues to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock(ptr noundef %33) #16
  %34 = load i32, ptr @sysctl_sched_features, align 4
  %35 = and i32 %34, 16384
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 11
  %39 = load i64, ptr %38, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i64, ptr %14, align 8
  store i64 %42, ptr %38, align 8
  br label %43

43:                                               ; preds = %41, %37, %24
  %44 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 10
  %45 = load i64, ptr %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 1
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %51 = load i16, ptr %33, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br i1 %50, label %125, label %56

53:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %54 = load i16, ptr %33, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %56

56:                                               ; preds = %53, %47
  tail call void @raw_spin_rq_lock_nested(ptr noundef %31, i32 noundef 0) #16
  tail call void @update_rq_clock(ptr noundef %31) #16
  %57 = load i64, ptr %44, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %96, label %59

59:                                               ; preds = %56
  tail call void @_raw_spin_lock(ptr noundef %33) #16
  %60 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 9
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  tail call fastcc void @balance_runtime(ptr noundef %32) #16
  %64 = load i32, ptr %60, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %64, %63 ], [ 0, %59 ]
  %67 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 11
  %68 = load i64, ptr %67, align 8
  %69 = load i64, ptr %44, align 8
  %70 = mul i64 %68, %23
  %71 = tail call i64 @llvm.usub.sat.i64(i64 %69, i64 %70) #16
  store i64 %71, ptr %44, align 8
  %72 = icmp ne i32 %66, 0
  %73 = icmp ult i64 %71, %68
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %89

75:                                               ; preds = %65
  store i32 0, ptr %60, align 8
  %76 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 1
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 14
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 15
  %83 = load ptr, ptr %82, align 16
  %84 = icmp eq ptr %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 19
  %87 = load i32, ptr %86, align 32
  %88 = and i32 %87, -2
  store i32 %88, ptr %86, align 32
  br label %89

89:                                               ; preds = %85, %79, %75, %65
  %90 = icmp ugt i64 %69, %70
  br i1 %90, label %95, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 1
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %91, %89
  br label %108

96:                                               ; preds = %56
  %97 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 1
  %98 = load i32, ptr %97, align 8
  %99 = icmp eq i32 %98, 0
  %100 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 9
  %101 = load i32, ptr %100, align 8
  br i1 %99, label %104, label %102

102:                                              ; preds = %96
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %102, %96
  %105 = phi i32 [ 0, %102 ], [ %26, %96 ]
  %106 = icmp eq i32 %101, 0
  %107 = select i1 %106, i32 %27, i32 1
  br label %122

108:                                              ; preds = %95, %91
  %109 = phi i32 [ 0, %95 ], [ %26, %91 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %110 = load i16, ptr %33, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %112 = load i32, ptr %60, align 8
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 %27, i32 1
  br i1 %74, label %115, label %122

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 1
  %117 = load i32, ptr %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115, %102
  %120 = phi i32 [ %109, %115 ], [ 0, %102 ]
  %121 = phi i32 [ %114, %115 ], [ %27, %102 ]
  tail call fastcc void @enqueue_top_rt_rq(ptr noundef %32) #16
  tail call void @resched_curr(ptr noundef %31) #16
  br label %122

122:                                              ; preds = %119, %115, %108, %104
  %123 = phi i32 [ %107, %104 ], [ %114, %108 ], [ %114, %115 ], [ %121, %119 ]
  %124 = phi i32 [ %105, %104 ], [ %109, %108 ], [ %109, %115 ], [ %120, %119 ]
  tail call void @raw_spin_rq_unlock(ptr noundef %31) #16
  br label %125

125:                                              ; preds = %122, %47
  %126 = phi i32 [ %123, %122 ], [ %27, %47 ]
  %127 = phi i32 [ %124, %122 ], [ %26, %47 ]
  %128 = tail call i32 @cpumask_next(i32 noundef %25, ptr noundef nonnull @__cpu_online_mask) #17
  %129 = load i32, ptr @nr_cpu_ids, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %24, label %131

131:                                              ; preds = %125
  %132 = icmp eq i32 %126, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %131, %15
  %134 = phi i32 [ %127, %131 ], [ 1, %15 ]
  %135 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = load i64, ptr %14, align 8
  %139 = icmp eq i64 %138, -1
  br i1 %139, label %142, label %140

140:                                              ; preds = %137, %131
  %141 = phi i32 [ %134, %137 ], [ %127, %131 ]
  br label %142

142:                                              ; preds = %140, %137, %133
  %143 = phi i32 [ %141, %140 ], [ 1, %137 ], [ 1, %133 ]
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %144 = load i64, ptr %3, align 8
  %145 = load ptr, ptr %4, align 4
  %146 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %145, i32 0, i32 6
  %147 = load ptr, ptr %146, align 4
  %148 = tail call i64 %147() #16
  %149 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %148, i64 noundef %144) #16
  %150 = trunc i64 %149 to i32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %15

152:                                              ; preds = %142
  %153 = icmp eq i32 %143, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %152
  %155 = getelementptr i8, ptr %0, i32 48
  store i32 0, ptr %155, align 8
  br label %156

156:                                              ; preds = %154, %152, %1
  %157 = phi i32 [ 0, %154 ], [ 1, %152 ], [ 1, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %158 = load i16, ptr %2, align 4
  %159 = add i16 %158, 1
  store i16 %159, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  ret i32 %157
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_rt_rq(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rt_prio_array, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ 0, %1 ], [ %14, %3 ]
  %5 = getelementptr %struct.list_head, ptr %2, i32 %4
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr %struct.list_head, ptr %2, i32 %4, i32 1
  store ptr %5, ptr %6, align 4
  %7 = and i32 %4, 31
  %8 = shl nuw i32 1, %7
  %9 = lshr i32 %4, 5
  %10 = getelementptr i32, ptr %0, i32 %9
  %11 = xor i32 %8, -1
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, %11
  store i32 %13, ptr %10, align 4
  %14 = add nuw nsw i32 %4, 1
  %15 = icmp eq i32 %14, 100
  br i1 %15, label %16, label %3

16:                                               ; preds = %3
  %17 = getelementptr i32, ptr %0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 16
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 3
  store i32 99, ptr %20, align 8
  %21 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 3, i32 1
  store i32 99, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 4
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 6
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 7
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 7, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 8
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 10
  %28 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 9
  store i32 0, ptr %28, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %27, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @unregister_rt_sched_group(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @free_rt_sched_group(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @alloc_rt_sched_group(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sched_rt_bandwidth_account(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @hrtimer_active(ptr noundef getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3)) #16
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 10
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 2), align 8
  %7 = icmp ult i64 %5, %6
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i1 [ true, %1 ], [ %7, %3 ]
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rto_push_irq_work_func(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -88
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #10, !srcloc !13
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 11, i32 7
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  tail call void @raw_spin_rq_lock_nested(ptr noundef %7, i32 noundef 0) #16
  br label %12

12:                                               ; preds = %12, %11
  %13 = tail call fastcc i32 @push_rt_task(ptr noundef %7, i1 noundef zeroext true)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %12

15:                                               ; preds = %12
  tail call void @raw_spin_rq_unlock(ptr noundef %7) #16
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr i8, ptr %0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %17) #16
  %18 = getelementptr i8, ptr %0, i32 24
  %19 = getelementptr i8, ptr %0, i32 36
  %20 = load i32, ptr %18, align 8
  %21 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef %19) #17
  store i32 %21, ptr %18, align 8
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %16
  %25 = getelementptr i8, ptr %0, i32 28
  %26 = getelementptr i8, ptr %0, i32 20
  br label %27

27:                                               ; preds = %31, %24
  store i32 -1, ptr %18, align 8
  %28 = load volatile i32, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  %29 = load i32, ptr %26, align 4
  %30 = icmp eq i32 %29, %28
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  store i32 %28, ptr %26, align 4
  %32 = load i32, ptr %18, align 8
  %33 = tail call i32 @cpumask_next(i32 noundef %32, ptr noundef %19) #17
  store i32 %33, ptr %18, align 8
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %27

36:                                               ; preds = %31, %27, %16
  %37 = phi i32 [ %21, %16 ], [ %33, %31 ], [ -1, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %38 = load i16, ptr %17, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %40 = icmp slt i32 %37, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call void @sched_put_rd(ptr noundef %2) #16
  br label %44

42:                                               ; preds = %36
  %43 = tail call zeroext i1 @irq_work_queue_on(ptr noundef %0, i32 noundef %37) #16
  br label %44

44:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @push_rt_task(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %151, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 7
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %151, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -1136
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %8, i32 -1128
  %15 = load volatile i32, ptr %14, align 8
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %18, label %17, !prof !15

17:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2000, 0\0A.popsection", ""() #16, !srcloc !16
  unreachable

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %11
  br i1 %21, label %22, label %23, !prof !17

22:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2001, 0\0A.popsection", ""() #16, !srcloc !18
  unreachable

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %8, i32 -44
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %28, !prof !17

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2002, 0\0A.popsection", ""() #16, !srcloc !19
  unreachable

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %8, i32 -548
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %33, label %32, !prof !15

32:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2004, 0\0A.popsection", ""() #16, !srcloc !20
  unreachable

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %8, i32 -544
  %35 = load i32, ptr %34, align 16
  %36 = icmp sgt i32 %35, 99
  br i1 %36, label %37, label %38, !prof !17

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2005, 0\0A.popsection", ""() #16, !srcloc !21
  unreachable

38:                                               ; preds = %33
  %39 = icmp eq ptr %11, null
  br i1 %39, label %151, label %40

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %8, i32 -24
  %42 = load i16, ptr %41, align 8
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = icmp eq ptr %11, %20
  br i1 %45, label %65, label %66, !prof !17

46:                                               ; preds = %130, %40
  br i1 %1, label %47, label %151

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 61
  %49 = load i32, ptr %48, align 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %151

51:                                               ; preds = %47
  %52 = load ptr, ptr %19, align 4
  %53 = tail call fastcc i32 @find_lowest_rq(ptr noundef %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %151, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %12, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %151, label %58

58:                                               ; preds = %55
  %59 = tail call fastcc ptr @get_push_task(ptr noundef %0)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %151, label %61

61:                                               ; preds = %58
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #16
  %62 = load i32, ptr %12, align 4
  %63 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 62
  %64 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %62, ptr noundef nonnull @push_cpu_stop, ptr noundef nonnull %59, ptr noundef %63) #16
  tail call void @raw_spin_rq_lock_nested(ptr noundef %0, i32 noundef 0) #16
  br label %151

65:                                               ; preds = %134, %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2057, i32 noundef 9, ptr noundef null) #16
  br label %151

66:                                               ; preds = %134, %44
  %67 = phi ptr [ %93, %134 ], [ %11, %44 ]
  %68 = phi ptr [ %135, %134 ], [ %20, %44 ]
  %69 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 14
  %70 = load i32, ptr %69, align 16
  %71 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 14
  %72 = load i32, ptr %71, align 16
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %75, !prof !17

74:                                               ; preds = %66
  tail call void @resched_curr(ptr noundef %0) #16
  br label %151

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #16, !srcloc !22
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #16, !srcloc !23
  %78 = extractvalue { i32, i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80, !prof !17

80:                                               ; preds = %75
  %81 = add i32 %78, 1
  %82 = or i32 %81, %78
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %86, label %84, !prof !15

84:                                               ; preds = %80, %75
  %85 = phi i32 [ 2, %75 ], [ 1, %80 ]
  tail call void @refcount_warn_saturate(ptr noundef %76, i32 noundef %85) #16
  br label %86

86:                                               ; preds = %84, %80
  %87 = tail call ptr @find_lock_lowest_rq(ptr noundef nonnull %67, ptr noundef %0)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %137

89:                                               ; preds = %86
  %90 = load volatile ptr, ptr %7, align 4
  %91 = icmp eq ptr %90, %7
  br i1 %91, label %142, label %92

92:                                               ; preds = %89
  %93 = getelementptr i8, ptr %90, i32 -1136
  %94 = load i32, ptr %12, align 4
  %95 = getelementptr i8, ptr %90, i32 -1128
  %96 = load volatile i32, ptr %95, align 8
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %99, label %98, !prof !15

98:                                               ; preds = %92
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2000, 0\0A.popsection", ""() #16, !srcloc !16
  unreachable

99:                                               ; preds = %92
  %100 = load ptr, ptr %19, align 4
  %101 = icmp eq ptr %100, %93
  br i1 %101, label %102, label %103, !prof !17

102:                                              ; preds = %99
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2001, 0\0A.popsection", ""() #16, !srcloc !18
  unreachable

103:                                              ; preds = %99
  %104 = getelementptr i8, ptr %90, i32 -44
  %105 = load i32, ptr %104, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %108, !prof !17

107:                                              ; preds = %103
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2002, 0\0A.popsection", ""() #16, !srcloc !19
  unreachable

108:                                              ; preds = %103
  %109 = getelementptr i8, ptr %90, i32 -548
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %113, label %112, !prof !15

112:                                              ; preds = %108
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2004, 0\0A.popsection", ""() #16, !srcloc !20
  unreachable

113:                                              ; preds = %108
  %114 = getelementptr i8, ptr %90, i32 -544
  %115 = load i32, ptr %114, align 16
  %116 = icmp sgt i32 %115, 99
  br i1 %116, label %117, label %118, !prof !17

117:                                              ; preds = %113
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2005, 0\0A.popsection", ""() #16, !srcloc !21
  unreachable

118:                                              ; preds = %113
  %119 = icmp eq ptr %93, %67
  %120 = icmp eq ptr %93, null
  %121 = or i1 %119, %120
  br i1 %121, label %142, label %122

122:                                              ; preds = %118
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #16, !srcloc !22
  %123 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #16, !srcloc !25
  %124 = extractvalue { i32, i32, i32 } %123, 0
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = icmp sgt i32 %124, 0
  br i1 %127, label %130, label %128, !prof !15

128:                                              ; preds = %126
  tail call void @refcount_warn_saturate(ptr noundef %76, i32 noundef 3) #16
  br label %130

129:                                              ; preds = %122
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void @__put_task_struct(ptr noundef nonnull %67) #16
  br label %130

130:                                              ; preds = %129, %128, %126
  %131 = getelementptr i8, ptr %90, i32 -24
  %132 = load i16, ptr %131, align 8
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %46

134:                                              ; preds = %130
  %135 = load ptr, ptr %19, align 4
  %136 = icmp eq ptr %93, %135
  br i1 %136, label %65, label %66, !prof !17

137:                                              ; preds = %86
  tail call void @deactivate_task(ptr noundef %0, ptr noundef nonnull %67, i32 noundef 0) #16
  %138 = getelementptr inbounds %struct.rq, ptr %87, i32 0, i32 40
  %139 = load i32, ptr %138, align 4
  tail call void @set_task_cpu(ptr noundef nonnull %67, i32 noundef %139) #16
  tail call void @activate_task(ptr noundef nonnull %87, ptr noundef nonnull %67, i32 noundef 0) #16
  tail call void @resched_curr(ptr noundef nonnull %87) #16
  %140 = icmp eq ptr %87, %0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  tail call void @raw_spin_rq_unlock(ptr noundef nonnull %87) #16
  br label %142

142:                                              ; preds = %141, %137, %118, %89
  %143 = phi i32 [ 1, %137 ], [ 1, %141 ], [ 0, %118 ], [ 0, %89 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #16, !srcloc !22
  %144 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #16, !srcloc !25
  %145 = extractvalue { i32, i32, i32 } %144, 0
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = icmp sgt i32 %145, 0
  br i1 %148, label %151, label %149, !prof !15

149:                                              ; preds = %147
  tail call void @refcount_warn_saturate(ptr noundef %76, i32 noundef 3) #16
  br label %151

150:                                              ; preds = %142
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void @__put_task_struct(ptr noundef nonnull %67) #16
  br label %151

151:                                              ; preds = %150, %149, %147, %74, %65, %61, %58, %55, %51, %47, %46, %38, %6, %2
  %152 = phi i32 [ 0, %65 ], [ 0, %74 ], [ 0, %2 ], [ 0, %38 ], [ 0, %58 ], [ 0, %61 ], [ 0, %51 ], [ 0, %55 ], [ 0, %46 ], [ 0, %47 ], [ %143, %147 ], [ %143, %149 ], [ %143, %150 ], [ 0, %6 ]
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_put_rd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_sched_rt_class() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %10, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @local_cpu_mask to i32)
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
define internal void @enqueue_task_rt(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 1
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %11 = load volatile i32, ptr %10, align 8
  %12 = load volatile i32, ptr %10, align 8
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = load volatile i32, ptr %10, align 8
  tail call fastcc void @dequeue_rt_stack(ptr noundef %4, i32 noundef %2) #16
  %16 = icmp eq ptr %4, null
  br i1 %16, label %121, label %17

17:                                               ; preds = %9
  %18 = and i32 %2, 6
  %19 = icmp eq i32 %18, 2
  %20 = and i32 %2, 16
  %21 = icmp eq i32 %20, 0
  %22 = load volatile i32, ptr %10, align 8
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, ptrtoint (ptr @runqueues to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.rq, ptr %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.rq, ptr %26, i32 0, i32 11, i32 0, i32 1
  %29 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 14
  %30 = load i32, ptr %29, align 16
  %31 = getelementptr %struct.list_head, ptr %28, i32 %30
  br i1 %19, label %60, label %32

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 5
  %34 = load i16, ptr %33, align 2
  %35 = icmp ne i16 %34, 0
  %36 = load i1, ptr @__enqueue_rt_entity.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !17

39:                                               ; preds = %32
  store i1 true, ptr @__enqueue_rt_entity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1417, i32 noundef 9, ptr noundef null) #16
  br label %40

40:                                               ; preds = %39, %32
  br i1 %21, label %44, label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %31, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  br label %47

44:                                               ; preds = %40
  %45 = getelementptr %struct.list_head, ptr %28, i32 %30, i32 1
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi ptr [ %45, %44 ], [ %43, %41 ]
  %49 = phi ptr [ %31, %44 ], [ %42, %41 ]
  %50 = phi ptr [ %46, %44 ], [ %31, %41 ]
  store ptr %4, ptr %48, align 4
  store ptr %49, ptr %4, align 4
  %51 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  store volatile ptr %4, ptr %50, align 4
  %52 = load i32, ptr %29, align 16
  %53 = and i32 %52, 31
  %54 = shl nuw i32 1, %53
  %55 = lshr i32 %52, 5
  %56 = getelementptr i32, ptr %27, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %54, %57
  store i32 %58, ptr %56, align 4
  store i16 1, ptr %33, align 2
  %59 = load i32, ptr %29, align 16
  br label %60

60:                                               ; preds = %47, %17
  %61 = phi i32 [ %59, %47 ], [ %30, %17 ]
  %62 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 4
  store i16 1, ptr %62, align 4
  %63 = icmp sgt i32 %61, 99
  br i1 %63, label %64, label %65, !prof !17

64:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1246, i32 noundef 9, ptr noundef null) #16
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %struct.rq, ptr %26, i32 0, i32 11, i32 1
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 8
  %69 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 25
  %70 = load i32, ptr %69, align 64
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.rq, ptr %26, i32 0, i32 11, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %72
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.rq, ptr %26, i32 0, i32 11, i32 3
  %77 = load i32, ptr %76, align 8
  %78 = icmp sgt i32 %77, %61
  br i1 %78, label %79, label %89

79:                                               ; preds = %65
  store i32 %61, ptr %76, align 8
  %80 = getelementptr %struct.rq, ptr %26, i32 0, i32 41
  %81 = load i32, ptr %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = getelementptr %struct.rq, ptr %26, i32 0, i32 29
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.root_domain, ptr %85, i32 0, i32 19
  %87 = getelementptr %struct.rq, ptr %26, i32 0, i32 40
  %88 = load i32, ptr %87, align 4
  tail call void @cpupri_set(ptr noundef %86, i32 noundef %88, i32 noundef %61) #16
  br label %89

89:                                               ; preds = %83, %79, %65
  %90 = getelementptr %struct.rq, ptr %26, i32 0, i32 11, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  %93 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 26
  %94 = load i32, ptr %93, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = getelementptr %struct.rq, ptr %26, i32 0, i32 11, i32 4
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 8
  br label %100

100:                                              ; preds = %96, %89
  tail call fastcc void @update_rt_migration(ptr noundef %27) #16
  %101 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %102 = icmp slt i32 %101, 0
  %103 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 2), align 8
  %104 = icmp eq i64 %103, -1
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %121, label %106

106:                                              ; preds = %100
  tail call void @_raw_spin_lock(ptr noundef nonnull @def_rt_bandwidth) #16
  %107 = load i32, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 4), align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  store i32 1, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 4), align 8
  %110 = load ptr, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3, i32 3), align 4
  %111 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %110, i32 0, i32 6
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i64 %112() #16
  %114 = tail call i64 @hrtimer_forward(ptr noundef getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3), i64 noundef %113, i64 noundef 0) #16
  %115 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3, i32 1), align 8
  %116 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3, i32 0, i32 1), align 8
  %117 = sub i64 %116, %115
  tail call void @hrtimer_start_range_ns(ptr noundef getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3), i64 noundef %115, i64 noundef %117, i32 noundef 10) #16
  br label %118

118:                                              ; preds = %109, %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %119 = load i16, ptr @def_rt_bandwidth, align 8
  %120 = add i16 %119, 1
  store i16 %120, ptr @def_rt_bandwidth, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %121

121:                                              ; preds = %118, %100, %9
  %122 = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %123 = inttoptr i32 %122 to ptr
  %124 = getelementptr inbounds %struct.rq, ptr %123, i32 0, i32 11
  tail call fastcc void @enqueue_top_rt_rq(ptr noundef %124) #16
  %125 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %1
  br i1 %127, label %146, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %130 = load i32, ptr %129, align 4
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35
  %134 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 7
  tail call void @plist_del(ptr noundef %133, ptr noundef %134) #16
  %135 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %136 = load i32, ptr %135, align 16
  store i32 %136, ptr %133, align 4
  %137 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 1
  store volatile ptr %137, ptr %137, align 4
  %138 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 1, i32 1
  store ptr %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 2
  store volatile ptr %139, ptr %139, align 4
  %140 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 2, i32 1
  store ptr %139, ptr %140, align 4
  tail call void @plist_add(ptr noundef %133, ptr noundef %134) #16
  %141 = load i32, ptr %135, align 16
  %142 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 3, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  store i32 %141, ptr %142, align 4
  br label %146

146:                                              ; preds = %145, %132, %128, %121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dequeue_task_rt(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20
  tail call void @update_curr_rt(ptr noundef %0)
  %5 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %6 = load volatile i32, ptr %5, align 8
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load volatile i32, ptr %5, align 8
  tail call fastcc void @dequeue_rt_stack(ptr noundef %4, i32 noundef %2) #16
  %12 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 11
  tail call fastcc void @enqueue_top_rt_rq(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35
  %14 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 7
  tail call void @plist_del(ptr noundef %13, ptr noundef %14) #16
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr i8, ptr %15, i32 -544
  %19 = load i32, ptr %18, align 16
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i32 [ %19, %17 ], [ 99, %3 ]
  %22 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 3, i32 1
  store i32 %21, ptr %22, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @yield_task_rt(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 20, i32 4
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 20
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @runqueues to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.rq, ptr %14, i32 0, i32 11, i32 0, i32 1
  %16 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 14
  %17 = load i32, ptr %16, align 16
  %18 = getelementptr %struct.list_head, ptr %15, i32 %17
  %19 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 20, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  %23 = getelementptr %struct.list_head, ptr %15, i32 %17, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %10, ptr %23, align 4
  store ptr %18, ptr %10, align 4
  store ptr %24, ptr %19, align 4
  store volatile ptr %10, ptr %24, align 4
  br label %25

25:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @check_preempt_curr_rt(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %5 = load i32, ptr %4, align 16
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 16
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %57, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %5, %9
  br i1 %12, label %13, label %58

13:                                               ; preds = %11
  %14 = load volatile i32, ptr %7, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 26
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.root_domain, ptr %23, i32 0, i32 19
  %25 = tail call i32 @cpupri_find(ptr noundef %24, ptr noundef %7, ptr noundef null) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %22, align 8
  %33 = getelementptr inbounds %struct.root_domain, ptr %32, i32 0, i32 19
  %34 = tail call i32 @cpupri_find(ptr noundef %33, ptr noundef %1, ptr noundef null) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %31, %27
  %37 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %38 = load volatile i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 4
  %40 = load i16, ptr %39, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20
  %44 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, ptrtoint (ptr @runqueues to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.rq, ptr %47, i32 0, i32 11, i32 0, i32 1
  %49 = load i32, ptr %4, align 16
  %50 = getelementptr %struct.list_head, ptr %48, i32 %49
  %51 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %43, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  %55 = load ptr, ptr %50, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %43, ptr %56, align 4
  store ptr %55, ptr %43, align 4
  store ptr %50, ptr %51, align 4
  store volatile ptr %43, ptr %50, align 4
  br label %57

57:                                               ; preds = %42, %36, %3
  tail call void @resched_curr(ptr noundef %0) #16
  br label %58

58:                                               ; preds = %57, %31, %21, %17, %13, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pick_next_task_rt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %45

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @llvm.cttz.i32(i32 %7, i1 true) #16, !range !27
  br label %34

11:                                               ; preds = %5
  %12 = getelementptr %struct.rq, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true) #16, !range !27
  %17 = or i32 %16, 32
  br label %30

18:                                               ; preds = %11
  %19 = getelementptr %struct.rq, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true) #16, !range !27
  %24 = or i32 %23, 64
  br label %30

25:                                               ; preds = %18
  %26 = getelementptr %struct.rq, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.cttz.i32(i32 %27, i1 false) #16, !range !27
  %29 = add nuw nsw i32 %28, 96
  br label %30

30:                                               ; preds = %25, %22, %15
  %31 = phi i32 [ %17, %15 ], [ %24, %22 ], [ %29, %25 ]
  %32 = icmp sgt i32 %31, 99
  br i1 %32, label %33, label %34, !prof !17

33:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1742, 0\0A.popsection", ""() #16, !srcloc !28
  unreachable

34:                                               ; preds = %30, %9
  %35 = phi i32 [ %10, %9 ], [ %31, %30 ]
  %36 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 0, i32 1
  %37 = getelementptr %struct.list_head, ptr %36, i32 %35
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !17

40:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1757, 0\0A.popsection", ""() #16, !srcloc !29
  unreachable

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %38, i32 -832
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @set_next_task_rt(ptr noundef %0, ptr noundef nonnull %42, i1 noundef zeroext true)
  br label %45

45:                                               ; preds = %44, %41, %1
  %46 = phi ptr [ %42, %44 ], [ null, %41 ], [ null, %1 ]
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @put_prev_task_rt(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 4
  tail call void @update_curr_rt(ptr noundef %0)
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 32
  %6 = icmp ult i32 %5, 2
  %7 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !17

10:                                               ; preds = %2
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 24
  %15 = load i32, ptr %14, align 16
  %16 = zext i32 %15 to i64
  %17 = sub i64 %13, %16
  %18 = tail call i32 @update_rt_rq_load_avg(i64 noundef %17, ptr noundef %0, i32 noundef 1) #16
  %19 = load i16, ptr %3, align 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35
  %27 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 7
  tail call void @plist_del(ptr noundef %26, ptr noundef %27) #16
  %28 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %29 = load i32, ptr %28, align 16
  store i32 %29, ptr %26, align 4
  %30 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 1
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 1, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 2
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 2, i32 1
  store ptr %32, ptr %33, align 4
  tail call void @plist_add(ptr noundef %26, ptr noundef %27) #16
  %34 = load i32, ptr %28, align 16
  %35 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 3, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 %34, ptr %35, align 4
  br label %39

39:                                               ; preds = %38, %25, %21, %11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_next_task_rt(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #7 {
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 32
  %6 = icmp ult i32 %5, 2
  %7 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !17

10:                                               ; preds = %3
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 22
  %13 = load i64, ptr %12, align 64
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 4
  store i64 %13, ptr %14, align 32
  %15 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35
  %16 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 7
  tail call void @plist_del(ptr noundef %15, ptr noundef %16) #16
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %17, i32 -544
  %21 = load i32, ptr %20, align 16
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi i32 [ %21, %19 ], [ 99, %11 ]
  %24 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 3, i32 1
  store i32 %23, ptr %24, align 4
  br i1 %2, label %25, label %65

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 22
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, @rt_sched_class
  br i1 %30, label %46, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %4, align 32
  %33 = icmp ult i32 %32, 2
  %34 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !17

37:                                               ; preds = %31
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %38

38:                                               ; preds = %37, %31
  %39 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 24
  %42 = load i32, ptr %41, align 16
  %43 = zext i32 %42 to i64
  %44 = sub i64 %40, %43
  %45 = tail call i32 @update_rt_rq_load_avg(i64 noundef %44, ptr noundef %0, i32 noundef 0) #16
  br label %46

46:                                               ; preds = %38, %25
  %47 = load volatile ptr, ptr %16, align 4
  %48 = icmp eq ptr %47, %16
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, ptrtoint (ptr @rt_push_head to i32)
  %55 = inttoptr i32 %54 to ptr
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %65, !prof !15

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, @balance_push_callback
  br i1 %61, label %65, label %62, !prof !17

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.callback_head, ptr %55, i32 0, i32 1
  store ptr @push_rt_tasks, ptr %63, align 4
  %64 = load ptr, ptr %59, align 8
  store ptr %64, ptr %55, align 4
  store ptr %55, ptr %59, align 8
  br label %65

65:                                               ; preds = %62, %58, %49, %46, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @balance_rt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 4
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 41
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %15 = load i32, ptr %14, align 16
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %19 = load i32, ptr %18, align 32
  %20 = icmp ugt i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  store i32 4, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %17
  tail call void @pull_rt_task(ptr noundef %0)
  %24 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %18, align 32
  %27 = or i32 %26, %25
  store i32 %27, ptr %18, align 32
  br label %28

28:                                               ; preds = %23, %11, %7, %3
  %29 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %45, label %36

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 12, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %40, %36, %32
  %46 = phi i32 [ 1, %36 ], [ 1, %32 ], [ %44, %40 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @select_task_rq_rt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %11 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 14
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 14
  %16 = load i32, ptr %15, align 16
  %17 = icmp sgt i32 %16, 99
  br i1 %17, label %40, label %18, !prof !15

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 26
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %24 = load i32, ptr %23, align 16
  %25 = icmp sgt i32 %16, %24
  br i1 %25, label %40, label %26

26:                                               ; preds = %22, %18
  %27 = tail call fastcc i32 @find_lowest_rq(ptr noundef %0)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %31 = load i32, ptr %30, align 16
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, ptrtoint (ptr @runqueues to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.rq, ptr %35, i32 0, i32 11, i32 3
  %37 = load i32, ptr %36, align 8
  %38 = icmp slt i32 %31, %37
  %39 = select i1 %38, i32 %27, i32 %1
  br label %40

40:                                               ; preds = %29, %26, %22, %14, %6
  %41 = phi i32 [ %1, %26 ], [ %39, %29 ], [ %1, %22 ], [ %1, %14 ], [ %1, %6 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  br label %42

42:                                               ; preds = %40, %3
  %43 = phi i32 [ %41, %40 ], [ %1, %3 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pick_task_rt(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @llvm.cttz.i32(i32 %7, i1 true) #16, !range !27
  br label %34

11:                                               ; preds = %5
  %12 = getelementptr %struct.rq, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true) #16, !range !27
  %17 = or i32 %16, 32
  br label %30

18:                                               ; preds = %11
  %19 = getelementptr %struct.rq, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true) #16, !range !27
  %24 = or i32 %23, 64
  br label %30

25:                                               ; preds = %18
  %26 = getelementptr %struct.rq, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.cttz.i32(i32 %27, i1 false) #16, !range !27
  %29 = add nuw nsw i32 %28, 96
  br label %30

30:                                               ; preds = %25, %22, %15
  %31 = phi i32 [ %17, %15 ], [ %24, %22 ], [ %29, %25 ]
  %32 = icmp sgt i32 %31, 99
  br i1 %32, label %33, label %34, !prof !17

33:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1742, 0\0A.popsection", ""() #16, !srcloc !28
  unreachable

34:                                               ; preds = %30, %9
  %35 = phi i32 [ %10, %9 ], [ %31, %30 ]
  %36 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 0, i32 1
  %37 = getelementptr %struct.list_head, ptr %36, i32 %35
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !17

40:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1757, 0\0A.popsection", ""() #16, !srcloc !29
  unreachable

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %38, i32 -832
  br label %43

43:                                               ; preds = %41, %1
  %44 = phi ptr [ %42, %41 ], [ null, %1 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @task_woken_rt(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 14
  %18 = load i32, ptr %17, align 16
  %19 = icmp sgt i32 %18, 99
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 26
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %26 = load i32, ptr %25, align 16
  %27 = icmp sgt i32 %18, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %29, %28
  %30 = tail call fastcc i32 @push_rt_task(ptr noundef %0, i1 noundef zeroext false) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %29

32:                                               ; preds = %29, %24, %16, %12, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rq_online_rt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 6
  %3 = load i32, ptr %2, align 8
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
  %14 = getelementptr inbounds %struct.root_domain, ptr %13, i32 0, i32 18
  tail call void @_set_bit(i32 noundef %11, ptr noundef %14) #16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !32
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds %struct.root_domain, ptr %15, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #16, !srcloc !22
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #16, !srcloc !33
  br label %18

18:                                               ; preds = %9, %5, %1
  %19 = load i32, ptr @scheduler_running, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21, !prof !34

21:                                               ; preds = %18
  tail call void @_raw_spin_lock(ptr noundef nonnull @def_rt_bandwidth) #16
  %22 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock(ptr noundef %22) #16
  %23 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 2), align 8
  %24 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 11
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 10
  store i64 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 9
  store i32 0, ptr %26, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %27 = load i16, ptr %22, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %29 = load i16, ptr @def_rt_bandwidth, align 8
  %30 = add i16 %29, 1
  store i16 %30, ptr @def_rt_bandwidth, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %31

31:                                               ; preds = %21, %18
  %32 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.root_domain, ptr %33, i32 0, i32 19
  %35 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 3
  %38 = load i32, ptr %37, align 8
  tail call void @cpupri_set(ptr noundef %34, i32 noundef %36, i32 noundef %38) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rq_offline_rt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 6
  %3 = load i32, ptr %2, align 8
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
  %12 = getelementptr inbounds %struct.root_domain, ptr %11, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !22
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #16, !srcloc !35
  %14 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr inbounds %struct.root_domain, ptr %16, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef %15, ptr noundef %17) #16
  br label %18

18:                                               ; preds = %9, %5, %1
  %19 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %20 = load i32, ptr @scheduler_running, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %92, label %22, !prof !17

22:                                               ; preds = %18
  %23 = load ptr, ptr %19, align 8
  %24 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11
  %25 = getelementptr inbounds %struct.root_domain, ptr %23, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef nonnull @def_rt_bandwidth) #16
  %26 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock(ptr noundef %26) #16
  %27 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 11
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, -1
  %30 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 2), align 8
  %31 = icmp eq i64 %28, %30
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %82, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %34 = load i16, ptr %26, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %36 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 2), align 8
  %37 = load i64, ptr %27, align 8
  %38 = sub i64 %36, %37
  %39 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %25) #17
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %73, %33
  %43 = phi i32 [ %74, %73 ], [ %40, %33 ]
  %44 = phi i32 [ %76, %73 ], [ %39, %33 ]
  %45 = phi i64 [ %75, %73 ], [ %38, %33 ]
  %46 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, ptrtoint (ptr @runqueues to i32)
  %49 = inttoptr i32 %48 to ptr
  %50 = icmp eq ptr %49, %0
  br i1 %50, label %73, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.rq, ptr %49, i32 0, i32 11, i32 11
  %53 = load i64, ptr %52, align 8
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rq, ptr %49, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock(ptr noundef %56) #16
  %57 = icmp sgt i64 %45, 0
  %58 = load i64, ptr %52, align 8
  br i1 %57, label %59, label %63

59:                                               ; preds = %55
  %60 = tail call i64 @llvm.smin.i64(i64 %58, i64 %45) #16
  %61 = sub i64 %58, %60
  store i64 %61, ptr %52, align 8
  %62 = sub i64 %45, %60
  br label %65

63:                                               ; preds = %55
  %64 = sub i64 %58, %45
  store i64 %64, ptr %52, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i64 [ %62, %59 ], [ 0, %63 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %67 = load i16, ptr %56, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %56, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %69 = icmp eq i64 %66, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, ptr @nr_cpu_ids, align 4
  br label %73

72:                                               ; preds = %65
  tail call void @_raw_spin_lock(ptr noundef %26) #16
  br label %82

73:                                               ; preds = %70, %51, %42
  %74 = phi i32 [ %43, %51 ], [ %43, %42 ], [ %71, %70 ]
  %75 = phi i64 [ %45, %51 ], [ %45, %42 ], [ %66, %70 ]
  %76 = tail call i32 @cpumask_next(i32 noundef %44, ptr noundef %25) #17
  %77 = icmp ult i32 %76, %74
  br i1 %77, label %42, label %78

78:                                               ; preds = %73, %33
  %79 = phi i64 [ %38, %33 ], [ %75, %73 ]
  tail call void @_raw_spin_lock(ptr noundef %26) #16
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %82, label %81, !prof !15

81:                                               ; preds = %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 810, 0\0A.popsection", ""() #16, !srcloc !36
  unreachable

82:                                               ; preds = %78, %72, %22
  store i64 -1, ptr %27, align 8
  %83 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 9
  store i32 0, ptr %83, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %84 = load i16, ptr %26, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %86 = load i16, ptr @def_rt_bandwidth, align 8
  %87 = add i16 %86, 1
  store i16 %87, ptr @def_rt_bandwidth, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %88 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 1
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  tail call fastcc void @enqueue_top_rt_rq(ptr noundef nonnull %24) #16
  tail call void @resched_curr(ptr noundef %0) #16
  br label %92

92:                                               ; preds = %91, %82, %18
  %93 = load ptr, ptr %19, align 8
  %94 = getelementptr inbounds %struct.root_domain, ptr %93, i32 0, i32 19
  %95 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %96 = load i32, ptr %95, align 4
  tail call void @cpupri_set(ptr noundef %94, i32 noundef %96, i32 noundef -1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @find_lock_lowest_rq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 40
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %5 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 29
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  br label %9

9:                                                ; preds = %69, %2
  %10 = phi i32 [ 0, %2 ], [ %70, %69 ]
  %11 = tail call fastcc i32 @find_lowest_rq(ptr noundef %0)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %76, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %76, label %16

16:                                               ; preds = %13
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, ptrtoint (ptr @runqueues to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.rq, ptr %20, i32 0, i32 11, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = load i32, ptr %4, align 16
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %16
  %26 = icmp eq ptr %20, %1
  br i1 %26, label %76, label %27

27:                                               ; preds = %25
  %28 = tail call zeroext i1 @raw_spin_rq_trylock(ptr noundef %20) #16
  br i1 %28, label %62, label %29, !prof !15

29:                                               ; preds = %27
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr inbounds %struct.rq, ptr %20, i32 0, i32 40
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @raw_spin_rq_lock_nested(ptr noundef %20, i32 noundef 1) #16
  br label %62

35:                                               ; preds = %29
  tail call void @raw_spin_rq_unlock(ptr noundef %1) #16
  tail call void @double_rq_lock(ptr noundef %1, ptr noundef %20) #16
  %36 = load volatile i32, ptr %5, align 8
  %37 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, ptrtoint (ptr @runqueues to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %42, label %60, !prof !15

42:                                               ; preds = %35
  %43 = load i32, ptr %31, align 4
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr %6, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51, !prof !17

51:                                               ; preds = %42
  %52 = load i32, ptr %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60, !prof !15

54:                                               ; preds = %51
  %55 = load i32, ptr %4, align 16
  %56 = icmp sgt i32 %55, 99
  br i1 %56, label %60, label %57, !prof !17

57:                                               ; preds = %54
  %58 = load i32, ptr %8, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %66, label %60, !prof !15

60:                                               ; preds = %57, %54, %51, %42, %35
  %61 = inttoptr i32 %19 to ptr
  tail call void @raw_spin_rq_unlock(ptr noundef %61) #16
  br label %76

62:                                               ; preds = %34, %27
  %63 = load i32, ptr %21, align 8
  %64 = load i32, ptr %4, align 16
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %72, label %69

66:                                               ; preds = %57
  %67 = load i32, ptr %21, align 8
  %68 = icmp sgt i32 %67, %55
  br i1 %68, label %74, label %69

69:                                               ; preds = %66, %62
  tail call void @raw_spin_rq_unlock(ptr noundef %20) #16
  %70 = add nuw nsw i32 %10, 1
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %76, label %9

72:                                               ; preds = %62
  %73 = inttoptr i32 %19 to ptr
  br label %76

74:                                               ; preds = %66
  %75 = inttoptr i32 %19 to ptr
  br label %76

76:                                               ; preds = %74, %72, %69, %60, %25, %16, %13, %9
  %77 = phi ptr [ null, %60 ], [ %73, %72 ], [ %75, %74 ], [ %1, %25 ], [ null, %16 ], [ null, %9 ], [ null, %13 ], [ null, %69 ]
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @task_tick_rt(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20
  tail call void @update_curr_rt(ptr noundef %0)
  %5 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %6 = load i32, ptr %5, align 32
  %7 = icmp ult i32 %6, 2
  %8 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !17

11:                                               ; preds = %3
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 24
  %16 = load i32, ptr %15, align 16
  %17 = zext i32 %16 to i64
  %18 = sub i64 %14, %17
  %19 = tail call i32 @update_rt_rq_load_avg(i64 noundef %18, ptr noundef %0, i32 noundef 1) #16
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 50, i32 15
  %23 = load volatile i32, ptr %22, align 8
  %24 = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 50, i32 15, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %23, -1
  br i1 %26, label %47, label %27

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = icmp eq i32 %29, %30
  %32 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 1
  %33 = load i32, ptr %32, align 8
  br i1 %31, label %37, label %34

34:                                               ; preds = %27
  %35 = add i32 %33, 1
  store i32 %35, ptr %32, align 8
  %36 = load volatile i32, ptr @jiffies, align 64
  store i32 %36, ptr %28, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi i32 [ %35, %34 ], [ %33, %27 ]
  %39 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25) #16
  %40 = add i32 %39, 9999
  %41 = udiv i32 %40, 10000
  %42 = icmp ugt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 5
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 80, i32 0, i32 2
  store i64 %45, ptr %46, align 8
  br label %47

47:                                               ; preds = %43, %37, %12
  %48 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 25
  %49 = load i32, ptr %48, align 64
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %88

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 3
  %53 = load i32, ptr %52, align 16
  %54 = add i32 %53, -1
  store i32 %54, ptr %52, align 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %51
  %57 = load i32, ptr @sched_rr_timeslice, align 4
  store i32 %57, ptr %52, align 16
  br label %58

58:                                               ; preds = %61, %56
  %59 = phi ptr [ %4, %56 ], [ null, %61 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %88, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %59, align 4
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %58, label %66

66:                                               ; preds = %61
  %67 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 0, i32 2
  %68 = load volatile i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 4
  %70 = load i16, ptr %69, align 4
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %66
  %73 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, ptrtoint (ptr @runqueues to i32)
  %76 = inttoptr i32 %75 to ptr
  %77 = getelementptr inbounds %struct.rq, ptr %76, i32 0, i32 11, i32 0, i32 1
  %78 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 14
  %79 = load i32, ptr %78, align 16
  %80 = getelementptr %struct.list_head, ptr %77, i32 %79
  %81 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  store volatile ptr %83, ptr %82, align 4
  %85 = getelementptr %struct.list_head, ptr %77, i32 %79, i32 1
  %86 = load ptr, ptr %85, align 4
  store ptr %4, ptr %85, align 4
  store ptr %80, ptr %4, align 4
  store ptr %86, ptr %81, align 4
  store volatile ptr %4, ptr %86, align 4
  br label %87

87:                                               ; preds = %72, %66
  tail call void @resched_curr(ptr noundef %0) #16
  br label %88

88:                                               ; preds = %87, %58, %51, %47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @switched_from_rt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 1
  %8 = load i32, ptr %7, align 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, ptrtoint (ptr @rt_pull_head to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26, !prof !15

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, @balance_push_callback
  br i1 %22, label %26, label %23, !prof !17

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.callback_head, ptr %16, i32 0, i32 1
  store ptr @pull_rt_task, ptr %24, align 4
  %25 = load ptr, ptr %20, align 8
  store ptr %25, ptr %16, align 4
  store ptr %16, ptr %20, align 8
  br label %26

26:                                               ; preds = %23, %19, %10, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switched_to_rt(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %8 = load i32, ptr %7, align 32
  %9 = icmp ult i32 %8, 2
  %10 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !17

13:                                               ; preds = %6
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %14

14:                                               ; preds = %13, %6
  %15 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 24
  %18 = load i32, ptr %17, align 16
  %19 = zext i32 %18 to i64
  %20 = sub i64 %16, %19
  %21 = tail call i32 @update_rt_rq_load_avg(i64 noundef %20, ptr noundef %0, i32 noundef 0) #16
  br label %73

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 26
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 7
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, ptrtoint (ptr @rt_push_head to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %55, !prof !15

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, @balance_push_callback
  br i1 %50, label %55, label %51, !prof !17

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.callback_head, ptr %44, i32 0, i32 1
  store ptr @push_rt_tasks, ptr %52, align 4
  %53 = load ptr, ptr %48, align 8
  store ptr %53, ptr %44, align 4
  store ptr %44, ptr %48, align 8
  %54 = load ptr, ptr %3, align 4
  br label %55

55:                                               ; preds = %51, %47, %38, %34, %30, %26
  %56 = phi ptr [ %54, %51 ], [ %4, %47 ], [ %4, %38 ], [ %4, %34 ], [ %4, %30 ], [ %4, %26 ]
  %57 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %58 = load i32, ptr %57, align 16
  %59 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 14
  %60 = load i32, ptr %59, align 16
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  tail call void @resched_curr(ptr noundef %0) #16
  br label %73

73:                                               ; preds = %72, %62, %55, %22, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prio_changed_rt(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  %11 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %12 = load i32, ptr %11, align 16
  br i1 %10, label %13, label %37

13:                                               ; preds = %7
  %14 = icmp sgt i32 %12, %2
  br i1 %14, label %15, label %32

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, ptrtoint (ptr @rt_pull_head to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32, !prof !15

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, @balance_push_callback
  br i1 %27, label %32, label %28, !prof !17

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.callback_head, ptr %21, i32 0, i32 1
  store ptr @pull_rt_task, ptr %29, align 4
  %30 = load ptr, ptr %25, align 8
  store ptr %30, ptr %21, align 4
  store ptr %21, ptr %25, align 8
  %31 = load i32, ptr %11, align 16
  br label %32

32:                                               ; preds = %28, %24, %15, %13
  %33 = phi i32 [ %31, %28 ], [ %12, %24 ], [ %12, %15 ], [ %12, %13 ]
  %34 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 3
  %35 = load i32, ptr %34, align 8
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %41, label %42

37:                                               ; preds = %7
  %38 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 14
  %39 = load i32, ptr %38, align 16
  %40 = icmp slt i32 %12, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %32
  tail call void @resched_curr(ptr noundef %0) #16
  br label %42

42:                                               ; preds = %41, %37, %32, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @get_rr_interval_rt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 25
  %4 = load i32, ptr %3, align 64
  %5 = icmp eq i32 %4, 2
  %6 = load i32, ptr @sched_rr_timeslice, align 4
  %7 = select i1 %5, i32 %6, i32 0
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @update_curr_rt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 20
  %5 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 22
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @rt_sched_class
  br i1 %7, label %8, label %147

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %10 = load i32, ptr %9, align 32
  %11 = icmp ult i32 %10, 2
  %12 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !17

15:                                               ; preds = %8
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 22
  %18 = load i64, ptr %17, align 64
  %19 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 19, i32 4
  %20 = load i64, ptr %19, align 32
  %21 = sub i64 %18, %20
  %22 = icmp slt i64 %21, 1
  br i1 %22, label %147, label %23, !prof !17

23:                                               ; preds = %16
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = tail call ptr @llvm.thread.pointer() #16
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  %38 = tail call i32 @__traceiter_sched_stat_runtime(ptr noundef null, ptr noundef %3, i64 noundef %21, i64 noundef 0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  br label %39

39:                                               ; preds = %37, %26, %23
  %40 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 19, i32 5
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, %21
  store i64 %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr inbounds %struct.signal_struct, ptr %44, i32 0, i32 21, i32 1
  %46 = load volatile i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.signal_struct, ptr %44, i32 0, i32 20, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #16, !srcloc !22
  %54 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %53, ptr %53, i64 %21, ptr elementtype(i64) %53) #16, !srcloc !39
  br label %55

55:                                               ; preds = %52, %48, %39
  store i64 %18, ptr %19, align 32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %56 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 123
  %57 = load volatile ptr, ptr %56, align 16
  %58 = getelementptr inbounds %struct.css_set, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %59, i32 0, i32 12
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  tail call void @__cgroup_account_cputime(ptr noundef %59, i64 noundef %21) #16
  br label %64

64:                                               ; preds = %63, %55
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %65 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %66 = icmp slt i32 %65, 0
  %67 = icmp eq ptr %4, null
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %147, label %69

69:                                               ; preds = %64
  %70 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 0, i32 2
  %71 = load volatile i32, ptr %70, align 8
  %72 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, ptrtoint (ptr @runqueues to i32)
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr inbounds %struct.rq, ptr %75, i32 0, i32 11
  %77 = getelementptr inbounds %struct.rq, ptr %75, i32 0, i32 11, i32 11
  %78 = load i64, ptr %77, align 8
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %147, label %80

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.rq, ptr %75, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock(ptr noundef %81) #16
  %82 = getelementptr inbounds %struct.rq, ptr %75, i32 0, i32 11, i32 10
  %83 = load i64, ptr %82, align 8
  %84 = add i64 %83, %21
  store i64 %84, ptr %82, align 8
  %85 = getelementptr inbounds %struct.rq, ptr %75, i32 0, i32 11, i32 9
  %86 = load i32, ptr %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %80
  %89 = load i64, ptr %77, align 8
  %90 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 1), align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %144

92:                                               ; preds = %88
  tail call fastcc void @balance_runtime(ptr noundef %76) #16
  %93 = load i64, ptr %77, align 8
  %94 = icmp eq i64 %93, -1
  br i1 %94, label %144, label %95

95:                                               ; preds = %92
  %96 = load i64, ptr %82, align 8
  %97 = icmp ugt i64 %96, %93
  br i1 %97, label %98, label %144

98:                                               ; preds = %95
  %99 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 2), align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %105, label %101, !prof !17

101:                                              ; preds = %98
  store i32 1, ptr %85, align 8
  %102 = load i1, ptr @sched_rt_runtime_exceeded.__already_done, align 1
  br i1 %102, label %109, label %103, !prof !15

103:                                              ; preds = %101
  store i1 true, ptr @sched_rt_runtime_exceeded.__already_done, align 1
  %104 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.4) #18
  br label %106

105:                                              ; preds = %98
  store i64 0, ptr %82, align 8
  br label %106

106:                                              ; preds = %105, %103
  %107 = load i32, ptr %85, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %144, label %109

109:                                              ; preds = %106, %101
  %110 = getelementptr inbounds %struct.rq, ptr %75, i32 0, i32 11, i32 8
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %109
  %114 = getelementptr %struct.rq, ptr %75, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118, !prof !17

117:                                              ; preds = %113
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #16, !srcloc !40
  unreachable

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.rq, ptr %75, i32 0, i32 11, i32 1
  %120 = load i32, ptr %119, align 8
  %121 = sub i32 %115, %120
  store i32 %121, ptr %114, align 4
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = sub i32 0, %120
  tail call void @call_trace_sched_update_nr_running(ptr noundef %75, i32 noundef %125) #16
  br label %126

126:                                              ; preds = %124, %118
  store i32 0, ptr %110, align 4
  br label %127

127:                                              ; preds = %126, %109, %80
  tail call void @resched_curr(ptr noundef %0) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %128 = load i16, ptr %81, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %81, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  tail call void @_raw_spin_lock(ptr noundef nonnull @def_rt_bandwidth) #16
  %130 = load i32, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 4), align 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  store i32 1, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 4), align 8
  %133 = load ptr, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3, i32 3), align 4
  %134 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %133, i32 0, i32 6
  %135 = load ptr, ptr %134, align 4
  %136 = tail call i64 %135() #16
  %137 = tail call i64 @hrtimer_forward(ptr noundef getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3), i64 noundef %136, i64 noundef 0) #16
  %138 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3, i32 1), align 8
  %139 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3, i32 0, i32 1), align 8
  %140 = sub i64 %139, %138
  tail call void @hrtimer_start_range_ns(ptr noundef getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 3), i64 noundef %138, i64 noundef %140, i32 noundef 10) #16
  br label %141

141:                                              ; preds = %132, %127
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %142 = load i16, ptr @def_rt_bandwidth, align 8
  %143 = add i16 %142, 1
  store i16 %143, ptr @def_rt_bandwidth, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %147

144:                                              ; preds = %106, %95, %92, %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %145 = load i16, ptr %81, align 4
  %146 = add i16 %145, 1
  store i16 %146, ptr %81, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %147

147:                                              ; preds = %144, %141, %69, %64, %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_rt_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sched_rt_handler.mutex) #16
  %6 = load i32, ptr @sysctl_sched_rt_period, align 4
  %7 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %8 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %62

12:                                               ; preds = %5
  %13 = load i32, ptr @sysctl_sched_rt_period, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = icmp ugt i32 %16, %13
  %21 = mul nsw i64 %19, 1000
  %22 = icmp ugt i64 %21, 17592186044415
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %60, label %24

24:                                               ; preds = %18, %15
  %25 = tail call i32 @sched_dl_global_validate() #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @def_rt_bandwidth) #16
  %29 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %32, %27
  %33 = phi i32 [ %47, %32 ], [ %29, %27 ]
  %34 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, ptrtoint (ptr @runqueues to i32)
  %37 = inttoptr i32 %36 to ptr
  %38 = getelementptr inbounds %struct.rq, ptr %37, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock(ptr noundef %38) #16
  %39 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %40 = icmp slt i32 %39, 0
  %41 = sext i32 %39 to i64
  %42 = mul nsw i64 %41, 1000
  %43 = select i1 %40, i64 -1, i64 %42
  %44 = getelementptr inbounds %struct.rq, ptr %37, i32 0, i32 11, i32 11
  store i64 %43, ptr %44, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %45 = load i16, ptr %38, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %47 = tail call i32 @cpumask_next(i32 noundef %33, ptr noundef nonnull @__cpu_possible_mask) #17
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %32, label %50

50:                                               ; preds = %32, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @def_rt_bandwidth, i32 noundef %28) #16
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @def_rt_bandwidth) #16
  %52 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %53 = icmp slt i32 %52, 0
  %54 = sext i32 %52 to i64
  %55 = mul nsw i64 %54, 1000
  %56 = select i1 %53, i64 -1, i64 %55
  store i64 %56, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 2), align 8
  %57 = load i32, ptr @sysctl_sched_rt_period, align 4
  %58 = zext i32 %57 to i64
  %59 = mul nuw nsw i64 %58, 1000
  store i64 %59, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 1), align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @def_rt_bandwidth, i32 noundef %51) #16
  tail call void @sched_dl_do_global() #16
  br label %62

60:                                               ; preds = %24, %18, %12
  %61 = phi i32 [ %25, %24 ], [ -22, %12 ], [ -22, %18 ]
  store i32 %6, ptr @sysctl_sched_rt_period, align 4
  store i32 %7, ptr @sysctl_sched_rt_runtime, align 4
  br label %62

62:                                               ; preds = %60, %50, %5
  %63 = phi i32 [ %61, %60 ], [ 0, %50 ], [ %8, %5 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sched_rt_handler.mutex) #16
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_dl_global_validate() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_dl_do_global() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_rr_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sched_rr_handler.mutex) #16
  %6 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load i32, ptr @sysctl_sched_rr_timeslice, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #16
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ 10, %10 ], [ %14, %13 ]
  store i32 %16, ptr @sched_rr_timeslice, align 4
  br label %17

17:                                               ; preds = %15, %5
  tail call void @mutex_unlock(ptr noundef nonnull @sched_rr_handler.mutex) #16
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_rt_stats(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @print_rt_rq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7) #16
  br label %10

10:                                               ; preds = %9, %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_rt_rq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rq_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @balance_runtime(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @sysctl_sched_features, align 4
  %3 = and i32 %2, 16384
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %78, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 10
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 11
  %9 = load i64, ptr %8, align 8
  %10 = icmp ugt i64 %7, %9
  br i1 %10, label %11, label %78

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %15 = getelementptr i8, ptr %0, i32 1064
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.root_domain, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 65535
  %20 = tail call i32 @__sw_hweight32(i32 noundef %19) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @def_rt_bandwidth) #16
  %21 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 1), align 8
  %22 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %17) #17
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %71, %11
  %26 = phi i32 [ %72, %71 ], [ %23, %11 ]
  %27 = phi i32 [ %73, %71 ], [ %22, %11 ]
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, ptrtoint (ptr @runqueues to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %71, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 12
  tail call void @_raw_spin_lock(ptr noundef %35) #16
  %36 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 11
  %37 = load i64, ptr %36, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %67, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 11, i32 10
  %41 = load i64, ptr %40, align 8
  %42 = sub i64 %37, %41
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = icmp ult i64 %42, 4294967296
  br i1 %45, label %46, label %50, !prof !15

46:                                               ; preds = %44
  %47 = trunc i64 %42 to i32
  %48 = udiv i32 %47, %20
  %49 = zext i32 %48 to i64
  br label %53

50:                                               ; preds = %44
  %51 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %42) #19, !srcloc !41
  %52 = extractvalue { i64, i64 } %51, 1
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i64 [ %49, %46 ], [ %52, %50 ]
  %55 = load i64, ptr %8, align 8
  %56 = add i64 %55, %54
  %57 = icmp ugt i64 %56, %21
  %58 = sub i64 %21, %55
  %59 = select i1 %57, i64 %58, i64 %54
  %60 = sub i64 %37, %59
  store i64 %60, ptr %36, align 8
  %61 = load i64, ptr %8, align 8
  %62 = add i64 %59, %61
  store i64 %62, ptr %8, align 8
  %63 = icmp eq i64 %62, %21
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %65 = load i16, ptr %35, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %75

67:                                               ; preds = %53, %39, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %68 = load i16, ptr %35, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %70 = load i32, ptr @nr_cpu_ids, align 4
  br label %71

71:                                               ; preds = %67, %25
  %72 = phi i32 [ %26, %25 ], [ %70, %67 ]
  %73 = tail call i32 @cpumask_next(i32 noundef %27, ptr noundef %17) #17
  %74 = icmp ult i32 %73, %72
  br i1 %74, label %25, label %75

75:                                               ; preds = %71, %64, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %76 = load i16, ptr @def_rt_bandwidth, align 8
  %77 = add i16 %76, 1
  store i16 %77, ptr @def_rt_bandwidth, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  tail call void @_raw_spin_lock(ptr noundef %12) #16
  br label %78

78:                                               ; preds = %75, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @enqueue_top_rt_rq(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -384
  %3 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %55

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 -380
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %12
  store i32 %17, ptr %15, align 4
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @call_trace_sched_update_nr_running(ptr noundef %2, i32 noundef %12) #16
  br label %21

21:                                               ; preds = %20, %14
  %22 = icmp ult i32 %16, 2
  br i1 %22, label %23, label %33

23:                                               ; preds = %21
  %24 = load i32, ptr %15, align 4
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %0, i32 1064
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.root_domain, ptr %28, i32 0, i32 5
  %30 = load volatile i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store volatile i32 1, ptr %29, align 8
  br label %33

33:                                               ; preds = %32, %26, %23, %21
  store i32 1, ptr %3, align 4
  br label %34

34:                                               ; preds = %33, %10
  %35 = getelementptr i8, ptr %0, i32 1124
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, ptrtoint (ptr @cpufreq_update_util_data to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %41, align 4
  %45 = getelementptr i8, ptr %0, i32 992
  %46 = load i32, ptr %45, align 32
  %47 = icmp ult i32 %46, 2
  %48 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !17

51:                                               ; preds = %43
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %52

52:                                               ; preds = %51, %43
  %53 = getelementptr i8, ptr %0, i32 1000
  %54 = load i64, ptr %53, align 8
  tail call void %44(ptr noundef nonnull %41, i64 noundef %54, i32 noundef 0) #16
  br label %55

55:                                               ; preds = %52, %34, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_trace_sched_update_nr_running(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_lowest_rq(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #10, !srcloc !13
  %5 = add i32 %4, ptrtoint (ptr @local_cpu_mask to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %11 = load volatile i32, ptr %10, align 8
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %94, label %13, !prof !17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 26
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %94, label %17

17:                                               ; preds = %13
  %18 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = load volatile i32, ptr %10, align 8
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, ptrtoint (ptr @runqueues to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr inbounds %struct.rq, ptr %24, i32 0, i32 29
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.root_domain, ptr %26, i32 0, i32 19
  br i1 %19, label %28, label %30, !prof !17

28:                                               ; preds = %17
  %29 = tail call i32 @cpupri_find_fitness(ptr noundef %27, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @rt_task_fits_capacity) #16
  br label %32

30:                                               ; preds = %17
  %31 = tail call i32 @cpupri_find(ptr noundef %27, ptr noundef %0, ptr noundef nonnull %6) #16
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %94, label %35

35:                                               ; preds = %32
  %36 = lshr i32 %11, 5
  %37 = getelementptr i32, ptr %6, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %11, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %35
  %44 = lshr i32 %9, 5
  %45 = getelementptr i32, ptr %6, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %9, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 -1, i32 %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %52 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, ptrtoint (ptr @runqueues to i32)
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.rq, ptr %55, i32 0, i32 30
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %87, label %59

59:                                               ; preds = %43
  %60 = icmp eq i32 %51, -1
  %61 = lshr i32 %51, 5
  %62 = and i32 %51, 31
  %63 = shl nuw i32 1, %62
  br label %64

64:                                               ; preds = %84, %59
  %65 = phi ptr [ %57, %59 ], [ %85, %84 ]
  %66 = getelementptr inbounds %struct.sched_domain, ptr %65, i32 0, i32 9
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %64
  br i1 %60, label %78, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.sched_domain, ptr %65, i32 0, i32 21
  %73 = getelementptr i32, ptr %72, i32 %61
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, %63
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  br label %94

78:                                               ; preds = %71, %70
  %79 = getelementptr inbounds %struct.sched_domain, ptr %65, i32 0, i32 21
  %80 = tail call i32 @cpumask_any_and_distribute(ptr noundef nonnull %6, ptr noundef %79) #16
  %81 = load i32, ptr @nr_cpu_ids, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  br label %94

84:                                               ; preds = %78, %64
  %85 = load ptr, ptr %65, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %64

87:                                               ; preds = %84, %43
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %88 = icmp eq i32 %51, -1
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  %90 = tail call i32 @cpumask_any_distribute(ptr noundef nonnull %6) #16
  %91 = load i32, ptr @nr_cpu_ids, align 4
  %92 = icmp ult i32 %90, %91
  %93 = select i1 %92, i32 %90, i32 -1
  br label %94

94:                                               ; preds = %89, %87, %83, %77, %35, %32, %13, %1
  %95 = phi i32 [ -1, %1 ], [ -1, %13 ], [ -1, %32 ], [ %11, %35 ], [ %9, %87 ], [ %93, %89 ], [ %9, %77 ], [ %80, %83 ]
  ret i32 %95
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_push_task(ptr nocapture noundef %0) unnamed_addr #7 {
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
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #16, !srcloc !22
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #16, !srcloc !23
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !17

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !15

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #16
  br label %26

26:                                               ; preds = %24, %20, %11, %7, %1
  %27 = phi ptr [ null, %1 ], [ null, %7 ], [ null, %11 ], [ %3, %20 ], [ %3, %24 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stop_one_cpu_nowait(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @push_cpu_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_cpu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @activate_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpupri_find_fitness(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt_task_fits_capacity(ptr nocapture noundef readnone %0, i32 noundef %1) #11 {
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpupri_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_and_distribute(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_distribute(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dequeue_rt_stack(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sched_rt_entity, ptr %0, i32 0, i32 6
  store ptr null, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %2
  %7 = getelementptr i8, ptr %0, i32 -824
  %8 = load volatile i32, ptr %7, align 8
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @runqueues to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 11, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %6
  %17 = getelementptr %struct.rq, ptr %12, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !17

20:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/rt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1064, 0\0A.popsection", ""() #16, !srcloc !40
  unreachable

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 11, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = sub i32 %18, %23
  store i32 %24, ptr %17, align 4
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = sub i32 0, %23
  tail call void @call_trace_sched_update_nr_running(ptr noundef %12, i32 noundef %28) #16
  br label %29

29:                                               ; preds = %27, %21
  store i32 0, ptr %13, align 4
  br label %30

30:                                               ; preds = %29, %6
  %31 = icmp eq ptr %0, null
  br i1 %31, label %161, label %32

32:                                               ; preds = %30
  %33 = and i32 %1, 6
  %34 = icmp eq i32 %33, 2
  br label %35

35:                                               ; preds = %157, %32
  %36 = phi ptr [ %0, %32 ], [ %159, %157 ]
  %37 = getelementptr inbounds %struct.sched_rt_entity, ptr %36, i32 0, i32 4
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %157, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %36, i32 -824
  %42 = load volatile i32, ptr %41, align 8
  %43 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, ptrtoint (ptr @runqueues to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 11
  br i1 %34, label %76, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.sched_rt_entity, ptr %36, i32 0, i32 5
  %50 = load i16, ptr %49, align 2
  %51 = icmp eq i16 %50, 0
  %52 = load i1, ptr @__dequeue_rt_entity.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !17

55:                                               ; preds = %48
  store i1 true, ptr @__dequeue_rt_entity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1437, i32 noundef 9, ptr noundef null) #16
  br label %56

56:                                               ; preds = %55, %48
  %57 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %36, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %57, align 4
  %61 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 11, i32 0, i32 1
  %62 = getelementptr i8, ptr %36, i32 -240
  %63 = load i32, ptr %62, align 16
  %64 = getelementptr %struct.list_head, ptr %61, i32 %63
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = and i32 %63, 31
  %69 = shl nuw i32 1, %68
  %70 = lshr i32 %63, 5
  %71 = getelementptr i32, ptr %47, i32 %70
  %72 = xor i32 %69, -1
  %73 = load i32, ptr %71, align 4
  %74 = and i32 %73, %72
  store i32 %74, ptr %71, align 4
  br label %75

75:                                               ; preds = %67, %56
  store i16 0, ptr %49, align 2
  br label %76

76:                                               ; preds = %75, %40
  store i16 0, ptr %37, align 4
  %77 = getelementptr i8, ptr %36, i32 -240
  %78 = load i32, ptr %77, align 16
  %79 = icmp sgt i32 %78, 99
  br i1 %79, label %80, label %81, !prof !17

80:                                               ; preds = %76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1258, i32 noundef 9, ptr noundef null) #16
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 11, i32 1
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87, !prof !17

85:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1259, i32 noundef 9, ptr noundef null) #16
  %86 = load i32, ptr %82, align 8
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i32 [ %86, %85 ], [ %83, %81 ]
  %89 = add i32 %88, -1
  store i32 %89, ptr %82, align 8
  %90 = getelementptr i8, ptr %36, i32 256
  %91 = load i32, ptr %90, align 64
  %92 = icmp eq i32 %91, 2
  %93 = sext i1 %92 to i32
  %94 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 11, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, %93
  store i32 %96, ptr %94, align 4
  %97 = load i32, ptr %77, align 16
  %98 = getelementptr inbounds %struct.rq, ptr %46, i32 0, i32 11, i32 3
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %89, 0
  br i1 %100, label %130, label %101

101:                                              ; preds = %87
  %102 = icmp sgt i32 %99, %97
  br i1 %102, label %103, label %104, !prof !17

103:                                              ; preds = %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1155, i32 noundef 9, ptr noundef null) #16
  br label %104

104:                                              ; preds = %103, %101
  %105 = icmp eq i32 %99, %97
  br i1 %105, label %106, label %132

106:                                              ; preds = %104
  %107 = load i32, ptr %47, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = tail call i32 @llvm.cttz.i32(i32 %107, i1 true) #16, !range !27
  br label %130

111:                                              ; preds = %106
  %112 = getelementptr %struct.rq, ptr %46, i32 0, i32 11, i32 0, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = tail call i32 @llvm.cttz.i32(i32 %113, i1 true) #16, !range !27
  %117 = or i32 %116, 32
  br label %130

118:                                              ; preds = %111
  %119 = getelementptr %struct.rq, ptr %46, i32 0, i32 11, i32 0, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = tail call i32 @llvm.cttz.i32(i32 %120, i1 true) #16, !range !27
  %124 = or i32 %123, 64
  br label %130

125:                                              ; preds = %118
  %126 = getelementptr %struct.rq, ptr %46, i32 0, i32 11, i32 0, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = tail call i32 @llvm.cttz.i32(i32 %127, i1 false) #16, !range !27
  %129 = add nuw nsw i32 %128, 96
  br label %130

130:                                              ; preds = %125, %122, %115, %109, %87
  %131 = phi i32 [ %110, %109 ], [ %117, %115 ], [ %124, %122 ], [ %129, %125 ], [ 99, %87 ]
  store i32 %131, ptr %98, align 8
  br label %132

132:                                              ; preds = %130, %104
  %133 = getelementptr %struct.rq, ptr %46, i32 0, i32 41
  %134 = load i32, ptr %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %132
  %137 = load i32, ptr %98, align 8
  %138 = icmp eq i32 %137, %99
  br i1 %138, label %145, label %139

139:                                              ; preds = %136
  %140 = getelementptr %struct.rq, ptr %46, i32 0, i32 29
  %141 = load ptr, ptr %140, align 8
  %142 = getelementptr inbounds %struct.root_domain, ptr %141, i32 0, i32 19
  %143 = getelementptr %struct.rq, ptr %46, i32 0, i32 40
  %144 = load i32, ptr %143, align 4
  tail call void @cpupri_set(ptr noundef %142, i32 noundef %144, i32 noundef %137) #16
  br label %145

145:                                              ; preds = %139, %136, %132
  %146 = getelementptr %struct.rq, ptr %46, i32 0, i32 11, i32 5
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, -1
  store i32 %148, ptr %146, align 4
  %149 = getelementptr i8, ptr %36, i32 260
  %150 = load i32, ptr %149, align 4
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = getelementptr %struct.rq, ptr %46, i32 0, i32 11, i32 4
  %154 = load i32, ptr %153, align 8
  %155 = add i32 %154, -1
  store i32 %155, ptr %153, align 8
  br label %156

156:                                              ; preds = %152, %145
  tail call fastcc void @update_rt_migration(ptr noundef %47) #16
  br label %157

157:                                              ; preds = %156, %35
  %158 = getelementptr inbounds %struct.sched_rt_entity, ptr %36, i32 0, i32 6
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %35

161:                                              ; preds = %157, %30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpupri_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_rt_migration(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 1128
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 1124
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 1064
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.root_domain, ptr %21, i32 0, i32 18
  tail call void @_set_bit(i32 noundef %19, ptr noundef %22) #16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !32
  %23 = load ptr, ptr %20, align 8
  %24 = getelementptr inbounds %struct.root_domain, ptr %23, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #16, !srcloc !22
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #16, !srcloc !33
  br label %26

26:                                               ; preds = %17, %13
  store i32 1, ptr %10, align 8
  br label %45

27:                                               ; preds = %5, %1
  %28 = getelementptr inbounds %struct.rt_rq, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %0, i32 1128
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %0, i32 1064
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.root_domain, ptr %37, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #16, !srcloc !22
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #16, !srcloc !35
  %40 = getelementptr i8, ptr %0, i32 1124
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %36, align 8
  %43 = getelementptr inbounds %struct.root_domain, ptr %42, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef %41, ptr noundef %43) #16
  br label %44

44:                                               ; preds = %35, %31
  store i32 0, ptr %28, align 8
  br label %45

45:                                               ; preds = %44, %27, %26, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_rt_rq_load_avg(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @push_rt_tasks(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call fastcc i32 @push_rt_task(ptr noundef %0, i1 noundef zeroext false)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %2

5:                                                ; preds = %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pull_rt_task(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.root_domain, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %130, label %9, !prof !15

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !42
  %10 = icmp eq i32 %7, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = load i32, ptr %2, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.root_domain, ptr %13, i32 0, i32 18
  %15 = lshr i32 %12, 5
  %16 = getelementptr i32, ptr %14, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %12, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %130

22:                                               ; preds = %11, %9
  %23 = load i32, ptr @sysctl_sched_features, align 4
  %24 = and i32 %23, 8192
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.root_domain, ptr %27, i32 0, i32 18
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %28) #17
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %32, label %130

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 11, i32 3
  %34 = lshr i32 %3, 5
  %35 = and i32 %3, 31
  %36 = shl nuw i32 1, %35
  br label %122

37:                                               ; preds = %22
  tail call fastcc void @tell_cpu_to_push(ptr noundef %0)
  br label %130

38:                                               ; preds = %122, %41
  %39 = phi i32 [ %123, %122 ], [ %42, %41 ]
  %40 = icmp eq i32 %3, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %44, %38
  %42 = tail call i32 @cpumask_next(i32 noundef %39, ptr noundef %125) #17
  %43 = icmp ult i32 %42, %124
  br i1 %43, label %38, label %127

44:                                               ; preds = %38
  %45 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, ptrtoint (ptr @runqueues to i32)
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr inbounds %struct.rq, ptr %48, i32 0, i32 11, i32 3, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %33, align 8
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %41

53:                                               ; preds = %44
  %54 = inttoptr i32 %47 to ptr
  %55 = tail call fastcc i32 @double_lock_balance(ptr noundef %0, ptr noundef %54)
  %56 = getelementptr inbounds %struct.rq, ptr %54, i32 0, i32 11, i32 7
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %104, label %59

59:                                               ; preds = %70, %53
  %60 = phi ptr [ %71, %70 ], [ %57, %53 ]
  %61 = getelementptr i8, ptr %60, i32 -580
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = getelementptr i8, ptr %60, i32 -32
  %66 = getelementptr i32, ptr %65, i32 %34
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, %36
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %59
  %71 = load ptr, ptr %60, align 4
  %72 = icmp eq ptr %71, %56
  br i1 %72, label %104, label %59

73:                                               ; preds = %64
  %74 = getelementptr i8, ptr %60, i32 -1136
  %75 = icmp eq ptr %74, null
  br i1 %75, label %104, label %76

76:                                               ; preds = %73
  %77 = getelementptr i8, ptr %60, i32 -544
  %78 = load i32, ptr %77, align 16
  %79 = load i32, ptr %33, align 8
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.rq, ptr %54, i32 0, i32 14
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %74, %83
  br i1 %84, label %85, label %86, !prof !17

85:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2364, i32 noundef 9, ptr noundef null) #16
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr i8, ptr %60, i32 -548
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %91, label %90, !prof !15

90:                                               ; preds = %86
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2365, i32 noundef 9, ptr noundef null) #16
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i32, ptr %77, align 16
  %93 = load ptr, ptr %82, align 4
  %94 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 14
  %95 = load i32, ptr %94, align 16
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %91
  %98 = getelementptr i8, ptr %60, i32 -24
  %99 = load i16, ptr %98, align 8
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = tail call fastcc ptr @get_push_task(ptr noundef %54)
  br label %104

103:                                              ; preds = %97
  tail call void @deactivate_task(ptr noundef %54, ptr noundef nonnull %74, i32 noundef 0) #16
  tail call void @set_task_cpu(ptr noundef nonnull %74, i32 noundef %3) #16
  tail call void @activate_task(ptr noundef %0, ptr noundef nonnull %74, i32 noundef 0) #16
  br label %104

104:                                              ; preds = %103, %101, %91, %76, %73, %70, %53
  %105 = phi ptr [ null, %91 ], [ %102, %101 ], [ null, %103 ], [ null, %76 ], [ null, %73 ], [ null, %53 ], [ null, %70 ]
  %106 = phi i1 [ %126, %91 ], [ %126, %101 ], [ true, %103 ], [ %126, %76 ], [ %126, %73 ], [ %126, %53 ], [ %126, %70 ]
  %107 = icmp eq ptr %54, %0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void @raw_spin_rq_unlock(ptr noundef %54) #16
  br label %109

109:                                              ; preds = %108, %104
  %110 = icmp eq ptr %105, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %109
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #16
  %112 = getelementptr inbounds %struct.rq, ptr %54, i32 0, i32 40
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.rq, ptr %54, i32 0, i32 62
  %115 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %113, ptr noundef nonnull @push_cpu_stop, ptr noundef nonnull %105, ptr noundef %114) #16
  tail call void @raw_spin_rq_lock_nested(ptr noundef %0, i32 noundef 0) #16
  br label %116

116:                                              ; preds = %111, %109
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr inbounds %struct.root_domain, ptr %117, i32 0, i32 18
  %119 = load i32, ptr @nr_cpu_ids, align 4
  %120 = tail call i32 @cpumask_next(i32 noundef %39, ptr noundef %118) #17
  %121 = icmp ult i32 %120, %119
  br i1 %121, label %122, label %127

122:                                              ; preds = %116, %32
  %123 = phi i32 [ %30, %32 ], [ %120, %116 ]
  %124 = phi i32 [ %29, %32 ], [ %119, %116 ]
  %125 = phi ptr [ %28, %32 ], [ %118, %116 ]
  %126 = phi i1 [ false, %32 ], [ %106, %116 ]
  br label %38

127:                                              ; preds = %116, %41
  %128 = phi i1 [ %126, %41 ], [ %106, %116 ]
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  tail call void @resched_curr(ptr noundef %0) #16
  br label %130

130:                                              ; preds = %129, %127, %37, %26, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tell_cpu_to_push(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.root_domain, ptr %3, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !22
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #16, !srcloc !33
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.root_domain, ptr %6, i32 0, i32 17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !22
  br label %8

8:                                                ; preds = %8, %1
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 1, ptr elementtype(i32) %7) #16, !srcloc !43
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.root_domain, ptr %16, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %17) #16
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.root_domain, ptr %18, i32 0, i32 15
  %20 = load i32, ptr %19, align 8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.root_domain, ptr %18, i32 0, i32 18
  %24 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef %23) #17
  store i32 %24, ptr %19, align 8
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.root_domain, ptr %18, i32 0, i32 16
  %29 = getelementptr inbounds %struct.root_domain, ptr %18, i32 0, i32 14
  br label %30

30:                                               ; preds = %34, %27
  store i32 -1, ptr %19, align 8
  %31 = load volatile i32, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, %31
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  store i32 %31, ptr %29, align 4
  %35 = load i32, ptr %19, align 8
  %36 = tail call i32 @cpumask_next(i32 noundef %35, ptr noundef %23) #17
  store i32 %36, ptr %19, align 8
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %30

39:                                               ; preds = %34, %30, %22, %15
  %40 = phi i32 [ -1, %15 ], [ %24, %22 ], [ %36, %34 ], [ -1, %30 ]
  %41 = load ptr, ptr %2, align 8
  %42 = getelementptr inbounds %struct.root_domain, ptr %41, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %43 = load i16, ptr %42, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.root_domain, ptr %45, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !45
  store volatile i32 0, ptr %46, align 4
  %47 = icmp sgt i32 %40, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load ptr, ptr %2, align 8
  tail call void @sched_get_rd(ptr noundef %49) #16
  %50 = load ptr, ptr %2, align 8
  %51 = getelementptr inbounds %struct.root_domain, ptr %50, i32 0, i32 12
  %52 = tail call zeroext i1 @irq_work_queue_on(ptr noundef %51, i32 noundef %40) #16
  br label %53

53:                                               ; preds = %48, %39, %12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @double_lock_balance(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i1 @raw_spin_rq_trylock(ptr noundef %1) #16
  br i1 %5, label %14, label %6, !prof !15

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
declare dso_local void @sched_get_rd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @raw_spin_rq_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @double_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_stat_runtime(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cgroup_account_cputime(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i64 2149317229}
!10 = !{i64 2149313053}
!11 = !{i64 2149313128, i64 2149313155, i64 2149313202, i64 2149313224, i64 2149313252, i64 2149313272}
!12 = !{i64 2149340232}
!13 = !{i64 704868}
!14 = !{i64 2148326066}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2156478655, i64 2156479138, i64 2156478692, i64 2156478748, i64 2156478782, i64 2156478806, i64 2156478847, i64 2156478868, i64 2156478896, i64 2156478930}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2156479682, i64 2156480165, i64 2156479719, i64 2156479775, i64 2156479809, i64 2156479833, i64 2156479874, i64 2156479895, i64 2156479923, i64 2156479957}
!19 = !{i64 2156480717, i64 2156481200, i64 2156480754, i64 2156480810, i64 2156480844, i64 2156480868, i64 2156480909, i64 2156480930, i64 2156480958, i64 2156480992}
!20 = !{i64 2156481748, i64 2156482231, i64 2156481785, i64 2156481841, i64 2156481875, i64 2156481899, i64 2156481940, i64 2156481961, i64 2156481989, i64 2156482023}
!21 = !{i64 2156482759, i64 2156483242, i64 2156482796, i64 2156482852, i64 2156482886, i64 2156482910, i64 2156482951, i64 2156482972, i64 2156483000, i64 2156483034}
!22 = !{i64 669016, i64 2148170582, i64 2148170608, i64 2148170655, i64 2148170677, i64 2148170705, i64 2148170725}
!23 = !{i64 2148235302, i64 2148235334, i64 2148235363, i64 2148235397, i64 2148235428, i64 2148235451}
!24 = !{i64 2148335524}
!25 = !{i64 2148237659, i64 2148237691, i64 2148237720, i64 2148237754, i64 2148237785, i64 2148237808}
!26 = !{i64 2149391144}
!27 = !{i32 0, i32 33}
!28 = !{i64 2156441996, i64 2156442479, i64 2156442033, i64 2156442089, i64 2156442123, i64 2156442147, i64 2156442188, i64 2156442209, i64 2156442237, i64 2156442271}
!29 = !{i64 2156444384, i64 2156444867, i64 2156444421, i64 2156444477, i64 2156444511, i64 2156444535, i64 2156444576, i64 2156444597, i64 2156444625, i64 2156444659}
!30 = !{i64 2149091030}
!31 = !{i64 2149091247}
!32 = !{i64 2156409166}
!33 = !{i64 2148233844, i64 2148233870, i64 2148233899, i64 2148233933, i64 2148233964, i64 2148233987}
!34 = !{!"branch_weights", i32 2002, i32 2000}
!35 = !{i64 2148236201, i64 2148236227, i64 2148236256, i64 2148236290, i64 2148236321, i64 2148236344}
!36 = !{i64 2156419616, i64 2156420098, i64 2156419653, i64 2156419709, i64 2156419743, i64 2156419767, i64 2156419808, i64 2156419829, i64 2156419857, i64 2156419891}
!37 = !{i64 2155928838}
!38 = !{i64 2155929030}
!39 = !{i64 2148245076, i64 2148245104, i64 2148245138, i64 2148245172, i64 2148245206, i64 2148245242, i64 2148245265}
!40 = !{i64 2156426025, i64 2156426508, i64 2156426062, i64 2156426118, i64 2156426152, i64 2156426176, i64 2156426217, i64 2156426238, i64 2156426266, i64 2156426300}
!41 = !{i64 2148725339, i64 2148725619, i64 2148725953, i64 2148726287}
!42 = !{i64 2156486754}
!43 = !{i64 655079, i64 655103, i64 655124, i64 655141, i64 655158}
!44 = !{i64 2148346472}
!45 = !{i64 2148328318}
