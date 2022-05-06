; ModuleID = '/llk/IR/kernel/time/posix-cpu-timers.c_pt.bc'
source_filename = "../kernel/time/posix-cpu-timers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.k_clock = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.cpu_timer = type { %struct.timerqueue_node, ptr, ptr, %struct.list_head, i32 }
%struct.task_cputime = type { i64, i64, i64 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, ptr, i32, i32, i32, i64, i64, i32, i32, i64, ptr, %union.anon.65, ptr, %union.anon.66, %struct.callback_head }
%union.anon.65 = type { ptr }
%union.anon.66 = type { %struct.anon.68 }
%struct.anon.68 = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, ptr, i32, i32, ptr }

@thread_group_sample_cputime.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [31 x i8] c"kernel/time/posix-cpu-timers.c\00", align 1
@set_process_cpu_timer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clock_posix_cpu = dso_local constant %struct.k_clock { ptr @posix_cpu_clock_getres, ptr @posix_cpu_clock_set, ptr @posix_cpu_clock_get, ptr null, ptr null, ptr @posix_cpu_timer_create, ptr @posix_cpu_nsleep, ptr @posix_cpu_timer_set, ptr @posix_cpu_timer_del, ptr @posix_cpu_timer_get, ptr @posix_cpu_timer_rearm, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clock_process = dso_local local_unnamed_addr constant %struct.k_clock { ptr @process_cpu_clock_getres, ptr null, ptr @process_cpu_clock_get, ptr null, ptr null, ptr @process_cpu_timer_create, ptr @process_cpu_nsleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clock_thread = dso_local local_unnamed_addr constant %struct.k_clock { ptr @thread_cpu_clock_getres, ptr null, ptr @thread_cpu_clock_get, ptr null, ptr null, ptr @thread_cpu_timer_create, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@print_fatal_signals = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\016%s Watchdog Timeout (%s): %s[%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@__tracepoint_itimer_expire = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_clock_sample.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@do_cpu_nanosleep.zero_it = internal global %struct.itimerspec64 zeroinitializer, align 8
@posix_cpu_timer_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @posix_cputimers_group_init(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(56) %3, i8 0, i32 48, i1 false) #8
  store i64 -1, ptr %0, align 8
  %4 = getelementptr [3 x %struct.posix_cputimer_base], ptr %0, i32 0, i32 1
  store i64 -1, ptr %4, align 8
  %5 = getelementptr [3 x %struct.posix_cputimer_base], ptr %0, i32 0, i32 2
  store i64 -1, ptr %5, align 8
  %6 = icmp eq i64 %1, 4294967295
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = mul i64 %1, 1000000000
  store i64 %8, ptr %0, align 8
  %9 = getelementptr inbounds %struct.posix_cputimers, ptr %0, i32 0, i32 1
  store i32 1, ptr %9, align 8
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_rlimit_cpu(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = mul i32 %1, 1000000000
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 21
  %10 = tail call fastcc i64 @cpu_clock_sample_group(i32 noundef 0, ptr noundef %0, i1 noundef zeroext true) #8
  %11 = load i64, ptr %9, align 8
  %12 = icmp ugt i64 %11, %4
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 %4, ptr %9, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_process_cpu_timer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp ugt i32 %1, 1
  %6 = load i1, ptr @set_process_cpu_timer.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !13

9:                                                ; preds = %4
  store i1 true, ptr @set_process_cpu_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1401, i32 noundef 9, ptr noundef null) #8
  br label %10

10:                                               ; preds = %9, %4
  br i1 %5, label %37, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 21
  %15 = getelementptr [3 x %struct.posix_cputimer_base], ptr %14, i32 0, i32 %1
  %16 = tail call fastcc i64 @cpu_clock_sample_group(i32 noundef %1, ptr noundef %0, i1 noundef zeroext true)
  %17 = icmp eq ptr %3, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i64, ptr %2, align 8
  br label %32

20:                                               ; preds = %11
  %21 = load i64, ptr %3, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = icmp ugt i64 %21, %16
  %25 = sub i64 %21, %16
  %26 = select i1 %24, i64 %25, i64 10000000
  store i64 %26, ptr %3, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i64, ptr %2, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = add i64 %28, %16
  store i64 %31, ptr %2, align 8
  br label %32

32:                                               ; preds = %30, %27, %18
  %33 = phi i64 [ %19, %18 ], [ 0, %27 ], [ %31, %30 ]
  %34 = load i64, ptr %15, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i64 %33, ptr %15, align 8
  br label %37

37:                                               ; preds = %36, %32, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thread_group_sample_cputime(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 21, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @thread_group_sample_cputime.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %2
  store i1 true, ptr @thread_group_sample_cputime.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 272, i32 noundef 9, ptr noundef null) #8
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 20
  %14 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %13, ptr elementtype(i64) %13) #8, !srcloc !14
  %15 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 20, i32 0, i32 1
  %16 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %15, ptr elementtype(i64) %15) #8, !srcloc !14
  %17 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 20, i32 0, i32 2
  %18 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %17, ptr elementtype(i64) %17) #8, !srcloc !14
  %19 = add i64 %16, %14
  store i64 %19, ptr %1, align 8
  %20 = getelementptr i64, ptr %1, i32 1
  store i64 %14, ptr %20, align 8
  %21 = getelementptr i64, ptr %1, i32 2
  store i64 %18, ptr %21, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @posix_cpu_timers_exit(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 80, i32 0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 80, i32 0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %8 = tail call zeroext i1 @timerqueue_del(ptr noundef %2, ptr noundef nonnull %7) #8
  %9 = getelementptr inbounds %struct.cpu_timer, ptr %7, i32 0, i32 1
  store ptr null, ptr %9, align 8
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %1
  %13 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 80, i32 0, i32 1, i32 1
  %14 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 80, i32 0, i32 1, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %17, %12
  %18 = phi ptr [ %21, %17 ], [ %15, %12 ]
  %19 = tail call zeroext i1 @timerqueue_del(ptr noundef %13, ptr noundef nonnull %18) #8
  %20 = getelementptr inbounds %struct.cpu_timer, ptr %18, i32 0, i32 1
  store ptr null, ptr %20, align 8
  %21 = load ptr, ptr %14, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %12
  %24 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 80, i32 0, i32 2, i32 1
  %25 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 80, i32 0, i32 2, i32 1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %28, %23
  %29 = phi ptr [ %32, %28 ], [ %26, %23 ]
  %30 = tail call zeroext i1 @timerqueue_del(ptr noundef %24, ptr noundef nonnull %29) #8
  %31 = getelementptr inbounds %struct.cpu_timer, ptr %29, i32 0, i32 1
  store ptr null, ptr %31, align 8
  %32 = load ptr, ptr %25, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %28

34:                                               ; preds = %28, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @posix_cpu_timers_exit_group(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 21, i32 0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 21, i32 0, i32 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %12, %8 ], [ %6, %1 ]
  %10 = tail call zeroext i1 @timerqueue_del(ptr noundef %4, ptr noundef nonnull %9) #8
  %11 = getelementptr inbounds %struct.cpu_timer, ptr %9, i32 0, i32 1
  store ptr null, ptr %11, align 8
  %12 = load ptr, ptr %5, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8

14:                                               ; preds = %8, %1
  %15 = getelementptr %struct.signal_struct, ptr %3, i32 0, i32 21, i32 0, i32 1, i32 1
  %16 = getelementptr %struct.signal_struct, ptr %3, i32 0, i32 21, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %23, %19 ], [ %17, %14 ]
  %21 = tail call zeroext i1 @timerqueue_del(ptr noundef %15, ptr noundef nonnull %20) #8
  %22 = getelementptr inbounds %struct.cpu_timer, ptr %20, i32 0, i32 1
  store ptr null, ptr %22, align 8
  %23 = load ptr, ptr %16, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %14
  %26 = getelementptr %struct.signal_struct, ptr %3, i32 0, i32 21, i32 0, i32 2, i32 1
  %27 = getelementptr %struct.signal_struct, ptr %3, i32 0, i32 21, i32 0, i32 2, i32 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %30, %25
  %31 = phi ptr [ %34, %30 ], [ %28, %25 ]
  %32 = tail call zeroext i1 @timerqueue_del(ptr noundef %26, ptr noundef nonnull %31) #8
  %33 = getelementptr inbounds %struct.cpu_timer, ptr %31, i32 0, i32 1
  store ptr null, ptr %33, align 8
  %34 = load ptr, ptr %27, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %30

36:                                               ; preds = %30, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @run_posix_cpu_timers() local_unnamed_addr #1 {
  %1 = alloca [3 x i64], align 8
  %2 = alloca [3 x i64], align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head, align 8
  %5 = tail call ptr @llvm.thread.pointer() #8
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 80
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr %struct.task_struct, ptr %5, i32 0, i32 80, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, %7
  %11 = getelementptr %struct.task_struct, ptr %5, i32 0, i32 80, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %10, %12
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %28, label %15

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 70
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 71
  %19 = load i64, ptr %18, align 16
  %20 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 19, i32 5
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %19, %17
  %23 = icmp uge i64 %22, %7
  %24 = icmp uge i64 %17, %9
  %25 = select i1 %23, i1 true, i1 %24
  %26 = icmp uge i64 %21, %12
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %66, label %28

28:                                               ; preds = %15, %0
  %29 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 21
  %32 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 21, i32 1
  %33 = load volatile i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 21, i32 2
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 20
  %41 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %40, ptr elementtype(i64) %40) #8, !srcloc !14
  %42 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 20, i32 0, i32 1
  %43 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %42, ptr elementtype(i64) %42) #8, !srcloc !14
  %44 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 20, i32 0, i32 2
  %45 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %44, ptr elementtype(i64) %44) #8, !srcloc !14
  %46 = add i64 %43, %41
  %47 = load i64, ptr %31, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %39
  %50 = getelementptr %struct.signal_struct, ptr %30, i32 0, i32 21, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = icmp ult i64 %41, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = getelementptr %struct.signal_struct, ptr %30, i32 0, i32 21, i32 0, i32 2
  %55 = load i64, ptr %54, align 8
  %56 = icmp ult i64 %45, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53, %35, %28
  %58 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 14
  %59 = load i32, ptr %58, align 16
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %317, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 21, i32 9
  %63 = load i8, ptr %62, align 4
  %64 = and i8 %63, 8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %317, label %66

66:                                               ; preds = %61, %53, %49, %39, %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr %4, ptr %4, align 8
  %67 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %67, align 4
  %68 = call ptr @__lock_task_sighand(ptr noundef %5, ptr noundef nonnull %3) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %316, label %70

70:                                               ; preds = %66
  %71 = load volatile i32, ptr @jiffies, align 64
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %72 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 14
  %73 = load i32, ptr %72, align 16
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 21, i32 9
  %77 = load i8, ptr %76, align 4
  %78 = and i8 %77, 8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = and i8 %77, -9
  store i8 %81, ptr %76, align 4
  %82 = call i32 @__group_send_sig_info(i32 noundef 24, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %5) #8
  br label %83

83:                                               ; preds = %80, %75, %70
  %84 = load i64, ptr %6, align 8
  %85 = load i64, ptr %8, align 8
  %86 = and i64 %85, %84
  %87 = load i64, ptr %11, align 8
  %88 = and i64 %86, %87
  %89 = icmp eq i64 %88, -1
  br i1 %89, label %139, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 70
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 71
  %94 = load i64, ptr %93, align 16
  %95 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 19, i32 5
  %96 = load i64, ptr %95, align 8
  %97 = add i64 %94, %92
  store i64 %97, ptr %2, align 8
  %98 = getelementptr inbounds i64, ptr %2, i32 1
  store i64 %92, ptr %98, align 8
  %99 = getelementptr inbounds i64, ptr %2, i32 2
  store i64 %96, ptr %99, align 8
  call fastcc void @collect_posix_cputimers(ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull %4) #8
  %100 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %101 = load ptr, ptr %100, align 16
  %102 = getelementptr %struct.signal_struct, ptr %101, i32 0, i32 50, i32 15
  %103 = load volatile i32, ptr %102, align 8
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %139, label %105

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 20, i32 1
  %107 = load i32, ptr %106, align 8
  %108 = mul i32 %107, 10000
  %109 = getelementptr %struct.signal_struct, ptr %101, i32 0, i32 50, i32 15, i32 1
  %110 = load volatile i32, ptr %109, align 4
  %111 = icmp eq i32 %110, -1
  %112 = icmp ult i32 %108, %110
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %124, label %114

114:                                              ; preds = %105
  %115 = load i32, ptr @print_fatal_signals, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %119 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %120 = load i32, ptr %119, align 8
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef %118, i32 noundef %120) #9
  br label %122

122:                                              ; preds = %117, %114
  %123 = call i32 @__group_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %5) #8
  br label %139

124:                                              ; preds = %105
  %125 = icmp ult i32 %108, %103
  br i1 %125, label %139, label %126

126:                                              ; preds = %124
  %127 = load i32, ptr @print_fatal_signals, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %131 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %132 = load i32, ptr %131, align 8
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef %130, i32 noundef %132) #9
  br label %134

134:                                              ; preds = %129, %126
  %135 = call i32 @__group_send_sig_info(i32 noundef 24, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %5) #8
  %136 = add i32 %103, 1000000
  %137 = load ptr, ptr %100, align 16
  %138 = getelementptr %struct.signal_struct, ptr %137, i32 0, i32 50, i32 15
  store i32 %136, ptr %138, align 8
  br label %139

139:                                              ; preds = %134, %124, %122, %90, %83
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %140 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %141 = load ptr, ptr %140, align 16
  %142 = getelementptr inbounds %struct.signal_struct, ptr %141, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #8
  %143 = getelementptr inbounds %struct.signal_struct, ptr %141, i32 0, i32 21, i32 1
  %144 = load volatile i32, ptr %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %293, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.signal_struct, ptr %141, i32 0, i32 21, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %293

150:                                              ; preds = %146
  store i32 1, ptr %147, align 4
  %151 = getelementptr inbounds %struct.signal_struct, ptr %141, i32 0, i32 20
  %152 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %151, ptr elementtype(i64) %151) #8, !srcloc !14
  %153 = getelementptr inbounds %struct.signal_struct, ptr %141, i32 0, i32 20, i32 0, i32 1
  %154 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %153, ptr elementtype(i64) %153) #8, !srcloc !14
  %155 = getelementptr inbounds %struct.signal_struct, ptr %141, i32 0, i32 20, i32 0, i32 2
  %156 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %155, ptr elementtype(i64) %155) #8, !srcloc !14
  %157 = add i64 %154, %152
  store i64 %157, ptr %1, align 8
  %158 = getelementptr inbounds i64, ptr %1, i32 1
  store i64 %152, ptr %158, align 8
  %159 = getelementptr inbounds i64, ptr %1, i32 2
  store i64 %156, ptr %159, align 8
  call fastcc void @collect_posix_cputimers(ptr noundef %142, ptr noundef nonnull %1, ptr noundef nonnull %4) #8
  %160 = getelementptr inbounds %struct.signal_struct, ptr %141, i32 0, i32 19
  %161 = load i64, ptr %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %197, label %163

163:                                              ; preds = %150
  %164 = icmp ugt i64 %161, %157
  br i1 %164, label %192, label %165

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.signal_struct, ptr %141, i32 0, i32 19, i32 0, i32 1
  %167 = load i64, ptr %166, align 8
  %168 = icmp eq i64 %167, 0
  %169 = add i64 %167, %161
  %170 = select i1 %168, i64 0, i64 %169
  store i64 %170, ptr %160, align 8
  %171 = load ptr, ptr %140, align 16
  %172 = getelementptr %struct.signal_struct, ptr %171, i32 0, i32 22, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_expire, i32 0, i32 1), align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %165
  %177 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %178 = load i32, ptr %177, align 8
  %179 = lshr i32 %178, 5
  %180 = getelementptr i32, ptr @__cpu_online_mask, i32 %179
  %181 = load volatile i32, ptr %180, align 4
  %182 = and i32 %178, 31
  %183 = shl nuw i32 1, %182
  %184 = and i32 %183, %181
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %176
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %187 = call i32 @__traceiter_itimer_expire(ptr noundef null, i32 noundef 2, ptr noundef %173, i64 noundef %157) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %188

188:                                              ; preds = %186, %176, %165
  %189 = call i32 @__group_send_sig_info(i32 noundef 27, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %5) #8
  %190 = load i64, ptr %160, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %188, %163
  %193 = phi i64 [ %190, %188 ], [ %161, %163 ]
  %194 = load i64, ptr %142, align 8
  %195 = icmp ult i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i64 %193, ptr %142, align 8
  br label %197

197:                                              ; preds = %196, %192, %188, %150
  %198 = getelementptr %struct.signal_struct, ptr %141, i32 0, i32 19, i32 1
  %199 = getelementptr %struct.signal_struct, ptr %141, i32 0, i32 21, i32 0, i32 1
  %200 = load i64, ptr %198, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %236, label %202

202:                                              ; preds = %197
  %203 = icmp ugt i64 %200, %152
  br i1 %203, label %231, label %204

204:                                              ; preds = %202
  %205 = getelementptr %struct.signal_struct, ptr %141, i32 0, i32 19, i32 1, i32 1
  %206 = load i64, ptr %205, align 8
  %207 = icmp eq i64 %206, 0
  %208 = add i64 %206, %200
  %209 = select i1 %207, i64 0, i64 %208
  store i64 %209, ptr %198, align 8
  %210 = load ptr, ptr %140, align 16
  %211 = getelementptr %struct.signal_struct, ptr %210, i32 0, i32 22, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_expire, i32 0, i32 1), align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %204
  %216 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %217 = load i32, ptr %216, align 8
  %218 = lshr i32 %217, 5
  %219 = getelementptr i32, ptr @__cpu_online_mask, i32 %218
  %220 = load volatile i32, ptr %219, align 4
  %221 = and i32 %217, 31
  %222 = shl nuw i32 1, %221
  %223 = and i32 %222, %220
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %215
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %226 = call i32 @__traceiter_itimer_expire(ptr noundef null, i32 noundef 1, ptr noundef %212, i64 noundef %152) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %227

227:                                              ; preds = %225, %215, %204
  %228 = call i32 @__group_send_sig_info(i32 noundef 26, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %5) #8
  %229 = load i64, ptr %198, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %227, %202
  %232 = phi i64 [ %229, %227 ], [ %200, %202 ]
  %233 = load i64, ptr %199, align 8
  %234 = icmp ult i64 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store i64 %232, ptr %199, align 8
  br label %236

236:                                              ; preds = %235, %231, %227, %197
  %237 = load ptr, ptr %140, align 16
  %238 = getelementptr %struct.signal_struct, ptr %237, i32 0, i32 50, i32 0
  %239 = load volatile i32, ptr %238, align 8
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i64, ptr %142, align 8
  br label %283

243:                                              ; preds = %236
  %244 = getelementptr %struct.signal_struct, ptr %237, i32 0, i32 50, i32 0, i32 1
  %245 = load volatile i32, ptr %244, align 4
  %246 = zext i32 %239 to i64
  %247 = mul nuw nsw i64 %246, 1000000000
  %248 = icmp eq i32 %245, -1
  br i1 %248, label %263, label %249

249:                                              ; preds = %243
  %250 = zext i32 %245 to i64
  %251 = mul nuw nsw i64 %250, 1000000000
  %252 = icmp ult i64 %157, %251
  br i1 %252, label %263, label %253

253:                                              ; preds = %249
  %254 = load i32, ptr @print_fatal_signals, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %258 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %259 = load i32, ptr %258, align 8
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %257, i32 noundef %259) #9
  br label %261

261:                                              ; preds = %256, %253
  %262 = call i32 @__group_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %5) #8
  br label %293

263:                                              ; preds = %249, %243
  %264 = icmp ult i64 %157, %247
  br i1 %264, label %278, label %265

265:                                              ; preds = %263
  %266 = load i32, ptr @print_fatal_signals, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %270 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %271 = load i32, ptr %270, align 8
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef %269, i32 noundef %271) #9
  br label %273

273:                                              ; preds = %268, %265
  %274 = call i32 @__group_send_sig_info(i32 noundef 24, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %5) #8
  %275 = add nuw i32 %239, 1
  %276 = getelementptr inbounds %struct.signal_struct, ptr %141, i32 0, i32 50
  store i32 %275, ptr %276, align 8
  %277 = add nuw nsw i64 %247, 1000000000
  br label %278

278:                                              ; preds = %273, %263
  %279 = phi i64 [ %277, %273 ], [ %247, %263 ]
  %280 = load i64, ptr %142, align 8
  %281 = icmp ult i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  store i64 %279, ptr %142, align 8
  br label %283

283:                                              ; preds = %282, %278, %241
  %284 = phi i64 [ %242, %241 ], [ %279, %282 ], [ %280, %278 ]
  %285 = load i64, ptr %199, align 8
  %286 = and i64 %285, %284
  %287 = getelementptr %struct.signal_struct, ptr %141, i32 0, i32 21, i32 0, i32 2
  %288 = load i64, ptr %287, align 8
  %289 = and i64 %286, %288
  %290 = icmp eq i64 %289, -1
  br i1 %290, label %291, label %292

291:                                              ; preds = %283
  store volatile i32 0, ptr %143, align 8
  br label %292

292:                                              ; preds = %291, %283
  store i32 0, ptr %147, align 4
  br label %293

293:                                              ; preds = %292, %261, %146, %139
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #8
  %294 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 94
  %295 = load ptr, ptr %294, align 4
  %296 = load i32, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %295, i32 noundef %296) #8
  %297 = load ptr, ptr %4, align 8
  %298 = icmp eq ptr %297, %4
  br i1 %298, label %316, label %299

299:                                              ; preds = %312, %293
  %300 = phi ptr [ %301, %312 ], [ %297, %293 ]
  %301 = load ptr, ptr %300, align 8
  %302 = getelementptr i8, ptr %300, i32 -104
  call void @_raw_spin_lock(ptr noundef %302) #8
  %303 = getelementptr inbounds %struct.list_head, ptr %300, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = load ptr, ptr %300, align 4
  %306 = getelementptr inbounds %struct.list_head, ptr %305, i32 0, i32 1
  store ptr %304, ptr %306, align 4
  store volatile ptr %305, ptr %304, align 4
  store volatile ptr %300, ptr %300, align 4
  store ptr %300, ptr %303, align 4
  %307 = getelementptr i8, ptr %300, i32 8
  %308 = load i32, ptr %307, align 8
  store i32 0, ptr %307, align 8
  %309 = icmp sgt i32 %308, -1
  br i1 %309, label %310, label %312, !prof !19

310:                                              ; preds = %299
  %311 = getelementptr i8, ptr %300, i32 -120
  call fastcc void @cpu_timer_fire(ptr noundef %311) #8
  br label %312

312:                                              ; preds = %310, %299
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %313 = load i16, ptr %302, align 4
  %314 = add i16 %313, 1
  store i16 %314, ptr %302, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %315 = icmp eq ptr %301, %4
  br i1 %315, label %316, label %299

316:                                              ; preds = %312, %293, %66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %317

317:                                              ; preds = %316, %61, %57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @cpu_clock_sample_group(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca %struct.task_cputime, align 8
  %5 = alloca %struct.task_cputime, align 8
  %6 = alloca [3 x i64], align 8
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !15
  %9 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 21, i32 1
  %10 = load volatile i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %3
  br i1 %2, label %13, label %70

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 20
  %15 = load volatile i32, ptr %9, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false) #8, !annotation !15
  call void @thread_group_cputime(ptr noundef %1, ptr noundef nonnull %5) #8
  %18 = getelementptr inbounds %struct.task_cputime, ptr %5, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  br label %20

20:                                               ; preds = %28, %17
  %21 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %14, ptr elementtype(i64) %14) #8, !srcloc !14
  %22 = icmp ult i64 %21, %19
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !22
  br label %24

24:                                               ; preds = %24, %23
  %25 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %14, ptr %14, i64 %21, i64 %19, ptr elementtype(i64) %14) #8, !srcloc !23
  %26 = extractvalue { i32, i64 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24
  %29 = extractvalue { i32, i64 } %25, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %20

31:                                               ; preds = %28, %20
  %32 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 20, i32 0, i32 1
  %33 = load i64, ptr %5, align 8
  br label %34

34:                                               ; preds = %42, %31
  %35 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %32, ptr elementtype(i64) %32) #8, !srcloc !14
  %36 = icmp ult i64 %35, %33
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #8, !srcloc !22
  br label %38

38:                                               ; preds = %38, %37
  %39 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %32, ptr %32, i64 %35, i64 %33, ptr elementtype(i64) %32) #8, !srcloc !23
  %40 = extractvalue { i32, i64 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %38

42:                                               ; preds = %38
  %43 = extractvalue { i32, i64 } %39, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %44 = icmp eq i64 %43, %35
  br i1 %44, label %45, label %34

45:                                               ; preds = %42, %34
  %46 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 20, i32 0, i32 2
  %47 = getelementptr inbounds %struct.task_cputime, ptr %5, i32 0, i32 2
  %48 = load i64, ptr %47, align 8
  br label %49

49:                                               ; preds = %57, %45
  %50 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %46, ptr elementtype(i64) %46) #8, !srcloc !14
  %51 = icmp ult i64 %50, %48
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #8, !srcloc !22
  br label %53

53:                                               ; preds = %53, %52
  %54 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %46, ptr %46, i64 %50, i64 %48, ptr elementtype(i64) %46) #8, !srcloc !23
  %55 = extractvalue { i32, i64 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %53

57:                                               ; preds = %53
  %58 = extractvalue { i32, i64 } %54, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %59 = icmp eq i64 %58, %50
  br i1 %59, label %60, label %49

60:                                               ; preds = %57, %49
  store volatile i32 1, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  br label %61

61:                                               ; preds = %60, %13
  %62 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %14, ptr elementtype(i64) %14) #8, !srcloc !14
  %63 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 20, i32 0, i32 1
  %64 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %63, ptr elementtype(i64) %63) #8, !srcloc !14
  %65 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 20, i32 0, i32 2
  %66 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %65, ptr elementtype(i64) %65) #8, !srcloc !14
  %67 = add i64 %64, %62
  store i64 %67, ptr %6, align 8
  %68 = getelementptr inbounds i64, ptr %6, i32 1
  store i64 %62, ptr %68, align 8
  %69 = getelementptr inbounds i64, ptr %6, i32 2
  store i64 %66, ptr %69, align 8
  br label %89

70:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false) #8, !annotation !15
  call void @thread_group_cputime(ptr noundef %1, ptr noundef nonnull %4) #8
  %71 = load i64, ptr %4, align 8
  %72 = getelementptr inbounds %struct.task_cputime, ptr %4, i32 0, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds %struct.task_cputime, ptr %4, i32 0, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = add i64 %73, %71
  store i64 %76, ptr %6, align 8
  %77 = getelementptr inbounds i64, ptr %6, i32 1
  store i64 %73, ptr %77, align 8
  %78 = getelementptr inbounds i64, ptr %6, i32 2
  store i64 %75, ptr %78, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %89

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 20
  %81 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %80, ptr elementtype(i64) %80) #8, !srcloc !14
  %82 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 20, i32 0, i32 1
  %83 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %82, ptr elementtype(i64) %82) #8, !srcloc !14
  %84 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 20, i32 0, i32 2
  %85 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %84, ptr elementtype(i64) %84) #8, !srcloc !14
  %86 = add i64 %83, %81
  store i64 %86, ptr %6, align 8
  %87 = getelementptr inbounds i64, ptr %6, i32 1
  store i64 %81, ptr %87, align 8
  %88 = getelementptr inbounds i64, ptr %6, i32 2
  store i64 %85, ptr %88, align 8
  br label %89

89:                                               ; preds = %79, %70, %61
  %90 = getelementptr [3 x i64], ptr %6, i32 0, i32 %0
  %91 = load i64, ptr %90, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret i64 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_cpu_clock_getres(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %3 = and i32 %0, 4
  %4 = icmp eq i32 %3, 0
  %5 = ashr i32 %0, 3
  %6 = xor i32 %5, -1
  %7 = and i32 %0, 3
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %5, -1
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = tail call ptr @llvm.thread.pointer() #8
  br i1 %4, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 62
  br label %39

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 93
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 22, i32 1
  br label %39

19:                                               ; preds = %9
  %20 = tail call ptr @find_vpid(i32 noundef %6) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  br i1 %4, label %33, label %23

23:                                               ; preds = %22
  %24 = tail call ptr @pid_task(ptr noundef nonnull %20, i32 noundef 0) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @llvm.thread.pointer() #8
  %28 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 93
  %29 = load ptr, ptr %28, align 16
  %30 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 93
  %31 = load ptr, ptr %30, align 16
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %38, label %37

33:                                               ; preds = %22
  %34 = getelementptr %struct.pid, ptr %20, i32 0, i32 3, i32 1
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %26, %23, %19, %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %47

38:                                               ; preds = %33, %26
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %43

39:                                               ; preds = %15, %13
  %40 = phi ptr [ %14, %13 ], [ %18, %15 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br i1 %42, label %47, label %43

43:                                               ; preds = %39, %38
  store i64 0, ptr %1, align 8
  %44 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %45 = icmp eq i32 %7, 2
  %46 = select i1 %45, i32 1, i32 10000000
  store i32 %46, ptr %44, align 8
  br label %47

47:                                               ; preds = %43, %39, %37
  %48 = phi i32 [ 0, %43 ], [ -22, %39 ], [ -22, %37 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_cpu_clock_set(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %3 = and i32 %0, 4
  %4 = icmp eq i32 %3, 0
  %5 = ashr i32 %0, 3
  %6 = xor i32 %5, -1
  %7 = and i32 %0, 3
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %5, -1
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = tail call ptr @llvm.thread.pointer() #8
  br i1 %4, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 62
  %15 = load ptr, ptr %14, align 64
  br label %41

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 93
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr %struct.signal_struct, ptr %18, i32 0, i32 22, i32 1
  %20 = load ptr, ptr %19, align 4
  br label %41

21:                                               ; preds = %9
  %22 = tail call ptr @find_vpid(i32 noundef %6) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  br i1 %4, label %36, label %25

25:                                               ; preds = %24
  %26 = tail call ptr @pid_task(ptr noundef nonnull %22, i32 noundef 0) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @llvm.thread.pointer() #8
  %30 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 93
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 93
  %33 = load ptr, ptr %32, align 16
  %34 = icmp eq ptr %31, %33
  %35 = select i1 %34, ptr %22, ptr null
  br label %41

36:                                               ; preds = %24
  %37 = getelementptr %struct.pid, ptr %22, i32 0, i32 3, i32 1
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr null, ptr %22
  br label %41

41:                                               ; preds = %36, %28, %25, %21, %16, %13, %2
  %42 = phi ptr [ %40, %36 ], [ null, %2 ], [ %15, %13 ], [ %20, %16 ], [ null, %21 ], [ null, %25 ], [ %35, %28 ]
  %43 = icmp eq ptr %42, null
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %44 = select i1 %43, i32 -22, i32 -1
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_cpu_clock_get(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.task_cputime, align 8
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = and i32 %0, 3
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %7 = and i32 %0, 4
  %8 = icmp eq i32 %7, 0
  %9 = ashr i32 %0, 3
  %10 = xor i32 %9, -1
  %11 = icmp eq i32 %6, 3
  br i1 %11, label %54, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %9, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = tail call ptr @llvm.thread.pointer() #8
  br i1 %8, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 62
  %18 = load ptr, ptr %17, align 64
  br label %54

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 93
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 22, i32 1
  %23 = load ptr, ptr %22, align 4
  br label %54

24:                                               ; preds = %12
  %25 = tail call ptr @find_vpid(i32 noundef %10) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %24
  br i1 %8, label %39, label %28

28:                                               ; preds = %27
  %29 = tail call ptr @pid_task(ptr noundef nonnull %25, i32 noundef 0) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @llvm.thread.pointer() #8
  %33 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 93
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 93
  %36 = load ptr, ptr %35, align 16
  %37 = icmp eq ptr %34, %36
  %38 = select i1 %37, ptr %25, ptr null
  br label %54

39:                                               ; preds = %27
  %40 = tail call ptr @llvm.thread.pointer() #8
  %41 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 62
  %42 = load ptr, ptr %41, align 64
  %43 = icmp eq ptr %25, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 93
  %46 = load ptr, ptr %45, align 16
  %47 = getelementptr %struct.signal_struct, ptr %46, i32 0, i32 22, i32 1
  %48 = load ptr, ptr %47, align 4
  br label %54

49:                                               ; preds = %39
  %50 = getelementptr %struct.pid, ptr %25, i32 0, i32 3, i32 1
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr null, ptr %25
  br label %54

54:                                               ; preds = %49, %44, %31, %28, %24, %19, %16, %2
  %55 = phi ptr [ %48, %44 ], [ %53, %49 ], [ null, %2 ], [ %18, %16 ], [ %23, %19 ], [ null, %24 ], [ null, %28 ], [ %38, %31 ]
  %56 = lshr i32 %0, 2
  %57 = and i32 %56, 1
  %58 = xor i32 %57, 1
  %59 = tail call ptr @pid_task(ptr noundef %55, i32 noundef %58) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %107

62:                                               ; preds = %54
  br i1 %8, label %77, label %63

63:                                               ; preds = %62
  %64 = icmp eq i32 %6, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @task_sched_runtime(ptr noundef nonnull %59) #8
  br label %105

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 70
  %69 = load i64, ptr %68, align 8
  switch i32 %6, label %74 [
    i32 0, label %70
    i32 1, label %105
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 71
  %72 = load i64, ptr %71, align 16
  %73 = add i64 %72, %69
  br label %105

74:                                               ; preds = %67
  %75 = load i1, ptr @cpu_clock_sample.__already_done, align 1
  br i1 %75, label %105, label %76, !prof !19

76:                                               ; preds = %74
  store i1 true, ptr @cpu_clock_sample.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %105

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 93
  %79 = load ptr, ptr %78, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !15
  %80 = getelementptr inbounds %struct.signal_struct, ptr %79, i32 0, i32 21, i32 1
  %81 = load volatile i32, ptr %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false) #8, !annotation !15
  call void @thread_group_cputime(ptr noundef nonnull %59, ptr noundef nonnull %3) #8
  %84 = load i64, ptr %3, align 8
  %85 = getelementptr inbounds %struct.task_cputime, ptr %3, i32 0, i32 1
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr inbounds %struct.task_cputime, ptr %3, i32 0, i32 2
  %88 = load i64, ptr %87, align 8
  %89 = add i64 %86, %84
  store i64 %89, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %98

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.signal_struct, ptr %79, i32 0, i32 20
  %92 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %91, ptr elementtype(i64) %91) #8, !srcloc !14
  %93 = getelementptr inbounds %struct.signal_struct, ptr %79, i32 0, i32 20, i32 0, i32 1
  %94 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %93, ptr elementtype(i64) %93) #8, !srcloc !14
  %95 = getelementptr inbounds %struct.signal_struct, ptr %79, i32 0, i32 20, i32 0, i32 2
  %96 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %95, ptr elementtype(i64) %95) #8, !srcloc !14
  %97 = add i64 %94, %92
  store i64 %97, ptr %4, align 8
  br label %98

98:                                               ; preds = %90, %83
  %99 = phi i64 [ %86, %83 ], [ %92, %90 ]
  %100 = phi i64 [ %88, %83 ], [ %96, %90 ]
  %101 = getelementptr inbounds i64, ptr %4, i32 1
  store i64 %99, ptr %101, align 8
  %102 = getelementptr inbounds i64, ptr %4, i32 2
  store i64 %100, ptr %102, align 8
  %103 = getelementptr [3 x i64], ptr %4, i32 0, i32 %6
  %104 = load i64, ptr %103, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %105

105:                                              ; preds = %98, %76, %74, %70, %67, %65
  %106 = phi i64 [ %104, %98 ], [ %66, %65 ], [ %73, %70 ], [ 0, %76 ], [ 0, %74 ], [ %69, %67 ]
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %106) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  br label %107

107:                                              ; preds = %105, %61
  %108 = phi i32 [ 0, %105 ], [ -22, %61 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_cpu_timer_create(ptr noundef %0) #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = ashr i32 %3, 3
  %7 = xor i32 %6, -1
  %8 = and i32 %3, 3
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %42, label %10

10:                                               ; preds = %1
  %11 = icmp eq i32 %6, -1
  br i1 %11, label %12, label %20

12:                                               ; preds = %10
  %13 = tail call ptr @llvm.thread.pointer() #8
  br i1 %5, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 62
  br label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 93
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr %struct.signal_struct, ptr %18, i32 0, i32 22, i32 1
  br label %38

20:                                               ; preds = %10
  %21 = tail call ptr @find_vpid(i32 noundef %7) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  br i1 %5, label %34, label %24

24:                                               ; preds = %23
  %25 = tail call ptr @pid_task(ptr noundef nonnull %21, i32 noundef 0) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @llvm.thread.pointer() #8
  %29 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 93
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 93
  %32 = load ptr, ptr %31, align 16
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %43, label %42

34:                                               ; preds = %23
  %35 = getelementptr %struct.pid, ptr %21, i32 0, i32 3, i32 1
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %43

38:                                               ; preds = %16, %14
  %39 = phi ptr [ %15, %14 ], [ %19, %16 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34, %27, %24, %20, %1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %59

43:                                               ; preds = %38, %34, %27
  %44 = phi ptr [ %40, %38 ], [ %21, %34 ], [ %21, %27 ]
  %45 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 3
  store ptr @clock_posix_cpu, ptr %45, align 4
  %46 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %47 = ptrtoint ptr %46 to i32
  store i32 %47, ptr %46, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %44) #8, !srcloc !22
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %44, ptr nonnull %44, i32 1, ptr nonnull elementtype(i32) %44) #8, !srcloc !27
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !13

51:                                               ; preds = %43
  %52 = add i32 %49, 1
  %53 = or i32 %52, %49
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55, !prof !19

55:                                               ; preds = %51, %43
  %56 = phi i32 [ 2, %43 ], [ 1, %51 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %44, i32 noundef %56) #8
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %44, ptr %58, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %59

59:                                               ; preds = %57, %42
  %60 = phi i32 [ 0, %57 ], [ -22, %42 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_cpu_nsleep(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = tail call ptr @llvm.thread.pointer() #8
  %5 = and i32 %0, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = ashr i32 %0, 3
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = xor i32 %8, -1
  %12 = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef null) #8
  %13 = icmp eq i32 %12, %11
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %3
  %15 = tail call fastcc i32 @do_cpu_nanosleep(i32 noundef %0, i32 noundef %1, ptr noundef %2)
  %16 = icmp eq i32 %15, -516
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = and i32 %1, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 51, i32 2
  store i32 %0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 51, i32 1
  store ptr @posix_cpu_nsleep_restart, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %17, %14, %10, %7
  %24 = phi i32 [ -22, %10 ], [ -22, %7 ], [ -514, %17 ], [ -516, %20 ], [ %15, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_cpu_timer_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) #1 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 3
  %11 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %12 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %8, align 8
  %15 = lshr i32 %14, 2
  %16 = and i32 %15, 1
  %17 = xor i32 %16, 1
  %18 = tail call ptr @pid_task(ptr noundef %13, i32 noundef %17) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %219

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = icmp sgt i64 %23, 9223372035
  br i1 %24, label %31, label %25, !prof !13

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = mul i64 %23, 1000000000
  %29 = and i64 %27, 4294967295
  %30 = add i64 %29, %28
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i64 [ %30, %25 ], [ 9223372036854775807, %21 ]
  %33 = call ptr @__lock_task_sighand(ptr noundef nonnull %18, ptr noundef nonnull %5) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !13

35:                                               ; preds = %31
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %219

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !19

44:                                               ; preds = %36
  store i32 -1, ptr %41, align 8
  br label %51

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = call zeroext i1 @timerqueue_del(ptr noundef nonnull %47, ptr noundef %11) #8
  store ptr null, ptr %46, align 8
  br label %51

51:                                               ; preds = %49, %45, %44
  %52 = phi i32 [ 1, %44 ], [ 0, %45 ], [ 0, %49 ]
  %53 = load i32, ptr %8, align 8
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = icmp eq i32 %10, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = call i64 @task_sched_runtime(ptr noundef nonnull %18) #8
  br label %72

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 70
  %62 = load i64, ptr %61, align 8
  switch i32 %10, label %67 [
    i32 0, label %63
    i32 1, label %72
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 71
  %65 = load i64, ptr %64, align 16
  %66 = add i64 %65, %62
  br label %72

67:                                               ; preds = %60
  %68 = load i1, ptr @cpu_clock_sample.__already_done, align 1
  br i1 %68, label %72, label %69, !prof !19

69:                                               ; preds = %67
  store i1 true, ptr @cpu_clock_sample.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %72

70:                                               ; preds = %51
  %71 = call fastcc i64 @cpu_clock_sample_group(i32 noundef %10, ptr noundef nonnull %18, i1 noundef zeroext true)
  br label %72

72:                                               ; preds = %70, %69, %67, %63, %60, %58
  %73 = phi i64 [ %71, %70 ], [ %59, %58 ], [ %66, %63 ], [ 0, %69 ], [ 0, %67 ], [ %62, %60 ]
  %74 = icmp eq ptr %3, null
  br i1 %74, label %131, label %75

75:                                               ; preds = %72
  %76 = icmp eq i64 %40, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.itimerspec64, ptr %3, i32 0, i32 1
  store i64 0, ptr %78, align 8
  %79 = getelementptr inbounds %struct.itimerspec64, ptr %3, i32 0, i32 1, i32 1
  store i32 0, ptr %79, align 8
  br label %131

80:                                               ; preds = %75
  %81 = load i64, ptr %39, align 8
  %82 = load i64, ptr %37, align 8
  %83 = icmp eq i64 %82, 0
  %84 = icmp ult i64 %73, %81
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %122, label %86

86:                                               ; preds = %80
  %87 = sub i64 %73, %81
  %88 = add i64 %87, %82
  %89 = icmp ult i64 %82, %87
  br i1 %89, label %96, label %92

90:                                               ; preds = %96
  %91 = icmp sgt i32 %100, -1
  br i1 %91, label %92, label %122

92:                                               ; preds = %90, %86
  %93 = phi i32 [ %100, %90 ], [ 0, %86 ]
  %94 = phi i64 [ %99, %90 ], [ %82, %86 ]
  %95 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 7
  br label %103

96:                                               ; preds = %96, %86
  %97 = phi i32 [ %100, %96 ], [ 0, %86 ]
  %98 = phi i64 [ %99, %96 ], [ %82, %86 ]
  %99 = shl i64 %98, 1
  %100 = add i32 %97, 1
  %101 = sub i64 %88, %99
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %96, label %90

103:                                              ; preds = %116, %92
  %104 = phi i64 [ %81, %92 ], [ %117, %116 ]
  %105 = phi i32 [ %93, %92 ], [ %120, %116 ]
  %106 = phi i64 [ %94, %92 ], [ %119, %116 ]
  %107 = phi i64 [ %88, %92 ], [ %118, %116 ]
  %108 = icmp ult i64 %107, %106
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = add i64 %106, %104
  store i64 %110, ptr %39, align 8
  %111 = zext i32 %105 to i64
  %112 = shl nuw i64 1, %111
  %113 = load i64, ptr %95, align 8
  %114 = add i64 %113, %112
  store i64 %114, ptr %95, align 8
  %115 = sub i64 %107, %106
  br label %116

116:                                              ; preds = %109, %103
  %117 = phi i64 [ %104, %103 ], [ %110, %109 ]
  %118 = phi i64 [ %107, %103 ], [ %115, %109 ]
  %119 = lshr i64 %106, 1
  %120 = add nsw i32 %105, -1
  %121 = icmp sgt i32 %105, 0
  br i1 %121, label %103, label %122

122:                                              ; preds = %116, %90, %80
  %123 = phi i64 [ %81, %80 ], [ %81, %90 ], [ %117, %116 ]
  %124 = icmp ugt i64 %123, %73
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = sub i64 %123, %73
  %127 = getelementptr inbounds %struct.itimerspec64, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %126) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %127, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  br label %131

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.itimerspec64, ptr %3, i32 0, i32 1
  %130 = getelementptr inbounds %struct.itimerspec64, ptr %3, i32 0, i32 1, i32 1
  store i32 1, ptr %130, align 8
  store i64 0, ptr %129, align 8
  br label %131

131:                                              ; preds = %128, %125, %77, %72
  br i1 %43, label %136, label %132, !prof !19

132:                                              ; preds = %131
  %133 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 94
  %134 = load ptr, ptr %133, align 4
  %135 = load i32, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %134, i32 noundef %135) #8
  br label %217

136:                                              ; preds = %131
  %137 = icmp eq i64 %32, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  store i64 0, ptr %39, align 8
  br label %169

139:                                              ; preds = %136
  %140 = and i32 %1, 1
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i64 %73, i64 0
  %143 = add i64 %142, %32
  store i64 %143, ptr %39, align 8
  %144 = icmp eq i64 %143, 0
  %145 = xor i1 %144, true
  %146 = icmp ult i64 %73, %143
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %148, label %169

148:                                              ; preds = %139
  %149 = load i32, ptr %8, align 8
  %150 = and i32 %149, 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 80
  br label %158

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 93
  %156 = load ptr, ptr %155, align 16
  %157 = getelementptr inbounds %struct.signal_struct, ptr %156, i32 0, i32 21
  br label %158

158:                                              ; preds = %154, %152
  %159 = phi ptr [ %153, %152 ], [ %157, %154 ]
  %160 = and i32 %149, 3
  %161 = getelementptr %struct.posix_cputimer_base, ptr %159, i32 %160
  %162 = getelementptr %struct.posix_cputimer_base, ptr %159, i32 %160, i32 1
  %163 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  store ptr %162, ptr %163, align 8
  %164 = call zeroext i1 @timerqueue_add(ptr noundef %162, ptr noundef %11) #8
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i64, ptr %161, align 8
  %167 = icmp ult i64 %143, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i64 %143, ptr %161, align 8
  br label %169

169:                                              ; preds = %168, %165, %158, %139, %138
  %170 = phi i1 [ false, %138 ], [ %146, %139 ], [ true, %158 ], [ true, %165 ], [ true, %168 ]
  %171 = phi i1 [ true, %138 ], [ %144, %139 ], [ %144, %158 ], [ %144, %165 ], [ %144, %168 ]
  %172 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 94
  %173 = load ptr, ptr %172, align 4
  %174 = load i32, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %173, i32 noundef %174) #8
  %175 = load i64, ptr %2, align 8
  %176 = icmp sgt i64 %175, 9223372035
  br i1 %176, label %183, label %177, !prof !13

177:                                              ; preds = %169
  %178 = getelementptr inbounds [2 x i64], ptr %2, i32 0, i32 1
  %179 = load i64, ptr %178, align 8
  %180 = mul i64 %175, 1000000000
  %181 = and i64 %179, 4294967295
  %182 = add i64 %181, %180
  br label %183

183:                                              ; preds = %177, %169
  %184 = phi i64 [ %182, %177 ], [ 9223372036854775807, %169 ]
  store i64 %184, ptr %37, align 8
  %185 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 9
  %186 = load i32, ptr %185, align 8
  %187 = add i32 %186, 2
  %188 = and i32 %187, -2
  store i32 %188, ptr %185, align 8
  %189 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 8
  store i64 0, ptr %189, align 8
  %190 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 7
  store i64 -1, ptr %190, align 8
  br i1 %170, label %217, label %191

191:                                              ; preds = %183
  br i1 %171, label %193, label %192

192:                                              ; preds = %191
  call fastcc void @cpu_timer_fire(ptr noundef %0)
  br label %193

193:                                              ; preds = %192, %191
  %194 = call ptr @__lock_task_sighand(ptr noundef nonnull %18, ptr noundef nonnull %5) #8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %217, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %198 = load ptr, ptr %197, align 8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %214

200:                                              ; preds = %196
  %201 = load i32, ptr %8, align 8
  %202 = and i32 %201, 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 80
  br label %210

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 93
  %208 = load ptr, ptr %207, align 16
  %209 = getelementptr inbounds %struct.signal_struct, ptr %208, i32 0, i32 21
  br label %210

210:                                              ; preds = %206, %204
  %211 = phi ptr [ %205, %204 ], [ %209, %206 ]
  %212 = and i32 %201, 3
  %213 = getelementptr %struct.posix_cputimer_base, ptr %211, i32 %212
  store i64 0, ptr %213, align 8
  br label %214

214:                                              ; preds = %210, %196
  %215 = load ptr, ptr %172, align 4
  %216 = load i32, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %215, i32 noundef %216) #8
  br label %217

217:                                              ; preds = %214, %193, %183, %132
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br i1 %74, label %219, label %218

218:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %7, i64 noundef %38) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  br label %219

219:                                              ; preds = %218, %217, %35, %20
  %220 = phi i32 [ -3, %35 ], [ -3, %20 ], [ %52, %218 ], [ %52, %217 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %220
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_cpu_timer_del(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %4 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = tail call ptr @pid_task(ptr noundef %5, i32 noundef %10) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %1
  %14 = call ptr @__lock_task_sighand(ptr noundef nonnull %11, ptr noundef nonnull %2) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30, !prof !13

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, ptr %3, align 8
  %22 = ptrtoint ptr %3 to i32
  %23 = icmp ne i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  %26 = load i1, ptr @posix_cpu_timer_del.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %68, !prof !13

29:                                               ; preds = %24
  store i1 true, ptr @posix_cpu_timer_del.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 488, i32 noundef 9, ptr noundef null) #8
  br label %68

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %69, label %38

38:                                               ; preds = %34
  %39 = call zeroext i1 @timerqueue_del(ptr noundef nonnull %36, ptr noundef %3) #8
  store ptr null, ptr %35, align 8
  %40 = load i32, ptr %6, align 8
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 93
  %45 = load ptr, ptr %44, align 16
  %46 = getelementptr inbounds %struct.signal_struct, ptr %45, i32 0, i32 21
  %47 = and i32 %40, 3
  %48 = getelementptr %struct.posix_cputimer_base, ptr %46, i32 %47
  %49 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = load i64, ptr %48, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %73

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 80
  %55 = and i32 %40, 3
  %56 = getelementptr %struct.posix_cputimer_base, ptr %54, i32 %55
  %57 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %56, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %53, %43
  %62 = phi i32 [ %55, %53 ], [ %47, %43 ]
  %63 = phi ptr [ %54, %53 ], [ %46, %43 ]
  %64 = getelementptr %struct.posix_cputimer_base, ptr %63, i32 %62
  store i64 0, ptr %64, align 8
  %65 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 94
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %66, i32 noundef %67) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %81

68:                                               ; preds = %29, %24, %1
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %81

69:                                               ; preds = %34
  %70 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 94
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %71, i32 noundef %72) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %81

73:                                               ; preds = %43
  %74 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 94
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %76) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %81

77:                                               ; preds = %53
  %78 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 94
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %80) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %81

81:                                               ; preds = %77, %73, %69, %68, %61
  %82 = load ptr, ptr %4, align 4
  call void @put_pid(ptr noundef %82) #8
  br label %87

83:                                               ; preds = %30
  %84 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 94
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %86) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi i32 [ 0, %81 ], [ 1, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @posix_cpu_timer_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.task_cputime, align 8
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 3
  %10 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %12 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %7, align 8
  %15 = lshr i32 %14, 2
  %16 = and i32 %15, 1
  %17 = xor i32 %16, 1
  %18 = tail call ptr @pid_task(ptr noundef %13, i32 noundef %17) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %80, label %20

20:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %21 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  %22 = load i64, ptr %21, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %22) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %23 = icmp eq i64 %11, 0
  br i1 %23, label %80, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %7, align 8
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %9, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = call i64 @task_sched_runtime(ptr noundef nonnull %18) #8
  br label %70

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 70
  %34 = load i64, ptr %33, align 8
  switch i32 %9, label %39 [
    i32 0, label %35
    i32 1, label %70
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 71
  %37 = load i64, ptr %36, align 16
  %38 = add i64 %37, %34
  br label %70

39:                                               ; preds = %32
  %40 = load i1, ptr @cpu_clock_sample.__already_done, align 1
  br i1 %40, label %73, label %41, !prof !19

41:                                               ; preds = %39
  store i1 true, ptr @cpu_clock_sample.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %73

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 93
  %44 = load ptr, ptr %43, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !15
  %45 = getelementptr inbounds %struct.signal_struct, ptr %44, i32 0, i32 21, i32 1
  %46 = load volatile i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false) #8, !annotation !15
  call void @thread_group_cputime(ptr noundef nonnull %18, ptr noundef nonnull %3) #8
  %49 = load i64, ptr %3, align 8
  %50 = getelementptr inbounds %struct.task_cputime, ptr %3, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.task_cputime, ptr %3, i32 0, i32 2
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %51, %49
  store i64 %54, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %63

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.signal_struct, ptr %44, i32 0, i32 20
  %57 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %56, ptr elementtype(i64) %56) #8, !srcloc !14
  %58 = getelementptr inbounds %struct.signal_struct, ptr %44, i32 0, i32 20, i32 0, i32 1
  %59 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %58, ptr elementtype(i64) %58) #8, !srcloc !14
  %60 = getelementptr inbounds %struct.signal_struct, ptr %44, i32 0, i32 20, i32 0, i32 2
  %61 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %60, ptr elementtype(i64) %60) #8, !srcloc !14
  %62 = add i64 %59, %57
  store i64 %62, ptr %4, align 8
  br label %63

63:                                               ; preds = %55, %48
  %64 = phi i64 [ %51, %48 ], [ %57, %55 ]
  %65 = phi i64 [ %53, %48 ], [ %61, %55 ]
  %66 = getelementptr inbounds i64, ptr %4, i32 1
  store i64 %64, ptr %66, align 8
  %67 = getelementptr inbounds i64, ptr %4, i32 2
  store i64 %65, ptr %67, align 8
  %68 = getelementptr [3 x i64], ptr %4, i32 0, i32 %9
  %69 = load i64, ptr %68, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %70

70:                                               ; preds = %63, %35, %32, %30
  %71 = phi i64 [ %69, %63 ], [ %31, %30 ], [ %38, %35 ], [ %34, %32 ]
  %72 = icmp ugt i64 %11, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %41, %39
  %74 = phi i64 [ %71, %70 ], [ 0, %41 ], [ 0, %39 ]
  %75 = getelementptr inbounds %struct.itimerspec64, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %76 = sub i64 %11, %74
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %76) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  br label %80

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.itimerspec64, ptr %1, i32 0, i32 1
  %79 = getelementptr inbounds %struct.itimerspec64, ptr %1, i32 0, i32 1, i32 1
  store i32 1, ptr %79, align 8
  store i64 0, ptr %78, align 8
  br label %80

80:                                               ; preds = %77, %73, %20, %2
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @posix_cpu_timer_rearm(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %6 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %3, align 8
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 1
  %11 = xor i32 %10, 1
  %12 = tail call ptr @pid_task(ptr noundef %7, i32 noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %109, label %14

14:                                               ; preds = %1
  %15 = call ptr @__lock_task_sighand(ptr noundef nonnull %12, ptr noundef nonnull %2) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %109, label %17, !prof !13

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 8
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %5, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i64 @task_sched_runtime(ptr noundef nonnull %12) #8
  br label %37

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 70
  %27 = load i64, ptr %26, align 8
  switch i32 %5, label %32 [
    i32 0, label %28
    i32 1, label %37
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 71
  %30 = load i64, ptr %29, align 16
  %31 = add i64 %30, %27
  br label %37

32:                                               ; preds = %25
  %33 = load i1, ptr @cpu_clock_sample.__already_done, align 1
  br i1 %33, label %37, label %34, !prof !19

34:                                               ; preds = %32
  store i1 true, ptr @cpu_clock_sample.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %37

35:                                               ; preds = %17
  %36 = call fastcc i64 @cpu_clock_sample_group(i32 noundef %5, ptr noundef nonnull %12, i1 noundef zeroext true)
  br label %37

37:                                               ; preds = %35, %34, %32, %28, %25, %23
  %38 = phi i64 [ %36, %35 ], [ %24, %23 ], [ %31, %28 ], [ 0, %34 ], [ 0, %32 ], [ %27, %25 ]
  %39 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 0
  %44 = icmp ult i64 %38, %40
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %82, label %46

46:                                               ; preds = %37
  %47 = sub i64 %38, %40
  %48 = add i64 %47, %42
  %49 = icmp ult i64 %42, %47
  br i1 %49, label %56, label %52

50:                                               ; preds = %56
  %51 = icmp sgt i32 %60, -1
  br i1 %51, label %52, label %82

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %60, %50 ], [ 0, %46 ]
  %54 = phi i64 [ %59, %50 ], [ %42, %46 ]
  %55 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 7
  br label %63

56:                                               ; preds = %56, %46
  %57 = phi i32 [ %60, %56 ], [ 0, %46 ]
  %58 = phi i64 [ %59, %56 ], [ %42, %46 ]
  %59 = shl i64 %58, 1
  %60 = add i32 %57, 1
  %61 = sub i64 %48, %59
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %56, label %50

63:                                               ; preds = %76, %52
  %64 = phi i64 [ %40, %52 ], [ %77, %76 ]
  %65 = phi i32 [ %53, %52 ], [ %80, %76 ]
  %66 = phi i64 [ %54, %52 ], [ %79, %76 ]
  %67 = phi i64 [ %48, %52 ], [ %78, %76 ]
  %68 = icmp ult i64 %67, %66
  br i1 %68, label %76, label %69

69:                                               ; preds = %63
  %70 = add i64 %66, %64
  store i64 %70, ptr %39, align 8
  %71 = zext i32 %65 to i64
  %72 = shl nuw i64 1, %71
  %73 = load i64, ptr %55, align 8
  %74 = add i64 %73, %72
  store i64 %74, ptr %55, align 8
  %75 = sub i64 %67, %66
  br label %76

76:                                               ; preds = %69, %63
  %77 = phi i64 [ %64, %63 ], [ %70, %69 ]
  %78 = phi i64 [ %67, %63 ], [ %75, %69 ]
  %79 = lshr i64 %66, 1
  %80 = add nsw i32 %65, -1
  %81 = icmp sgt i32 %65, 0
  br i1 %81, label %63, label %82

82:                                               ; preds = %76, %50, %37
  %83 = phi i64 [ %40, %37 ], [ %40, %50 ], [ %77, %76 ]
  %84 = load i32, ptr %3, align 8
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 80
  br label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 93
  %91 = load ptr, ptr %90, align 16
  %92 = getelementptr inbounds %struct.signal_struct, ptr %91, i32 0, i32 21
  br label %93

93:                                               ; preds = %89, %87
  %94 = phi ptr [ %88, %87 ], [ %92, %89 ]
  %95 = and i32 %84, 3
  %96 = getelementptr %struct.posix_cputimer_base, ptr %94, i32 %95
  %97 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %98 = getelementptr %struct.posix_cputimer_base, ptr %94, i32 %95, i32 1
  %99 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  store ptr %98, ptr %99, align 8
  %100 = call zeroext i1 @timerqueue_add(ptr noundef %98, ptr noundef %97) #8
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i64, ptr %96, align 8
  %103 = icmp ult i64 %83, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i64 %83, ptr %96, align 8
  br label %105

105:                                              ; preds = %104, %101, %93
  %106 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 94
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %107, i32 noundef %108) #8
  br label %109

109:                                              ; preds = %105, %14, %1
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @process_cpu_clock_getres(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 22, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  store i64 0, ptr %1, align 8
  %10 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 1, ptr %10, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ 0, %9 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @process_cpu_clock_get(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = tail call i32 @posix_cpu_clock_get(i32 noundef -6, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @process_cpu_timer_create(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  store i32 -6, ptr %2, align 8
  %3 = tail call i32 @posix_cpu_timer_create(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @process_cpu_nsleep(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = tail call ptr @llvm.thread.pointer() #8
  %5 = tail call fastcc i32 @do_cpu_nanosleep(i32 noundef -6, i32 noundef %1, ptr noundef %2) #8
  %6 = icmp eq i32 %5, -516
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 51, i32 2
  store i32 -6, ptr %11, align 8
  %12 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 51, i32 1
  store ptr @posix_cpu_nsleep_restart, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %7, %3
  %14 = phi i32 [ -514, %7 ], [ -516, %10 ], [ %5, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @thread_cpu_clock_getres(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  store i64 0, ptr %1, align 8
  %8 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 1, ptr %8, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ 0, %7 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @thread_cpu_clock_get(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %4 = tail call ptr @llvm.thread.pointer() #8
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 62
  %6 = load ptr, ptr %5, align 64
  %7 = tail call ptr @pid_task(ptr noundef %6, i32 noundef 0) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %12

10:                                               ; preds = %2
  %11 = tail call i64 @task_sched_runtime(ptr noundef nonnull %7) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %11) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 0, %10 ], [ -22, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @thread_cpu_timer_create(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  store i32 -2, ptr %2, align 8
  %3 = tail call i32 @posix_cpu_timer_create(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpu_timer_fire(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -5
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  store i64 0, ptr %7, align 8
  br label %33

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17, !prof !13

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @wake_up_process(ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  store i64 0, ptr %16, align 8
  br label %33

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call i32 @posix_timer_event(ptr noundef %0, i32 noundef 0) #8
  %23 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  store i64 0, ptr %23, align 8
  br label %33

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8
  %28 = tail call i32 @posix_timer_event(ptr noundef %0, i32 noundef %27) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  tail call void @posix_cpu_timer_rearm(ptr noundef %0)
  %31 = load i32, ptr %25, align 8
  %32 = add i32 %31, 1
  store i32 %32, ptr %25, align 8
  br label %33

33:                                               ; preds = %30, %24, %21, %12, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @collect_posix_cputimers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = load i64, ptr %1, align 8
  %6 = getelementptr inbounds %struct.posix_cputimer_base, ptr %0, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %25, %3
  %10 = phi ptr [ %29, %25 ], [ %7, %3 ]
  %11 = phi i32 [ %14, %25 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.timerqueue_node, ptr %10, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = add nuw nsw i32 %11, 1
  %15 = icmp eq i32 %14, 20
  %16 = icmp ugt i64 %13, %5
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.cpu_timer, ptr %10, i32 0, i32 4
  store i32 1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.cpu_timer, ptr %10, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call zeroext i1 @timerqueue_del(ptr noundef nonnull %21, ptr noundef nonnull %10) #8
  store ptr null, ptr %20, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds %struct.cpu_timer, ptr %10, i32 0, i32 3
  %27 = load ptr, ptr %4, align 4
  store ptr %26, ptr %4, align 4
  store ptr %2, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cpu_timer, ptr %10, i32 0, i32 3, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %26, ptr %27, align 4
  %29 = load ptr, ptr %6, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %9

31:                                               ; preds = %25, %9, %3
  %32 = phi i64 [ -1, %3 ], [ -1, %25 ], [ %13, %9 ]
  store i64 %32, ptr %0, align 8
  %33 = getelementptr %struct.posix_cputimer_base, ptr %0, i32 1
  %34 = getelementptr i64, ptr %1, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr %struct.posix_cputimer_base, ptr %0, i32 1, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %61, label %39

39:                                               ; preds = %55, %31
  %40 = phi ptr [ %59, %55 ], [ %37, %31 ]
  %41 = phi i32 [ %44, %55 ], [ 0, %31 ]
  %42 = getelementptr inbounds %struct.timerqueue_node, ptr %40, i32 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = add nuw nsw i32 %41, 1
  %45 = icmp eq i32 %44, 20
  %46 = icmp ugt i64 %43, %35
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %61, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.cpu_timer, ptr %40, i32 0, i32 4
  store i32 1, ptr %49, align 8
  %50 = getelementptr inbounds %struct.cpu_timer, ptr %40, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call zeroext i1 @timerqueue_del(ptr noundef nonnull %51, ptr noundef nonnull %40) #8
  store ptr null, ptr %50, align 8
  br label %55

55:                                               ; preds = %53, %48
  %56 = getelementptr inbounds %struct.cpu_timer, ptr %40, i32 0, i32 3
  %57 = load ptr, ptr %4, align 4
  store ptr %56, ptr %4, align 4
  store ptr %2, ptr %56, align 4
  %58 = getelementptr inbounds %struct.cpu_timer, ptr %40, i32 0, i32 3, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %56, ptr %57, align 4
  %59 = load ptr, ptr %36, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %39

61:                                               ; preds = %55, %39, %31
  %62 = phi i64 [ -1, %31 ], [ -1, %55 ], [ %43, %39 ]
  store i64 %62, ptr %33, align 8
  %63 = getelementptr i64, ptr %1, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr %struct.posix_cputimer_base, ptr %0, i32 2, i32 1, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %90, label %68

68:                                               ; preds = %84, %61
  %69 = phi ptr [ %88, %84 ], [ %66, %61 ]
  %70 = phi i32 [ %73, %84 ], [ 0, %61 ]
  %71 = getelementptr inbounds %struct.timerqueue_node, ptr %69, i32 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = add nuw nsw i32 %70, 1
  %74 = icmp eq i32 %73, 20
  %75 = icmp ugt i64 %72, %64
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %90, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.cpu_timer, ptr %69, i32 0, i32 4
  store i32 1, ptr %78, align 8
  %79 = getelementptr inbounds %struct.cpu_timer, ptr %69, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = tail call zeroext i1 @timerqueue_del(ptr noundef nonnull %80, ptr noundef nonnull %69) #8
  store ptr null, ptr %79, align 8
  br label %84

84:                                               ; preds = %82, %77
  %85 = getelementptr inbounds %struct.cpu_timer, ptr %69, i32 0, i32 3
  %86 = load ptr, ptr %4, align 4
  store ptr %85, ptr %4, align 4
  store ptr %2, ptr %85, align 4
  %87 = getelementptr inbounds %struct.cpu_timer, ptr %69, i32 0, i32 3, i32 1
  store ptr %86, ptr %87, align 4
  store volatile ptr %85, ptr %86, align 4
  %88 = load ptr, ptr %65, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %68

90:                                               ; preds = %84, %68, %61
  %91 = phi i64 [ -1, %61 ], [ -1, %84 ], [ %72, %68 ]
  %92 = getelementptr %struct.posix_cputimer_base, ptr %0, i32 2
  store i64 %91, ptr %92, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__group_send_sig_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_itimer_expire(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_timer_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @task_sched_runtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_cpu_nanosleep(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca %struct.itimerspec64, align 8
  %5 = alloca %struct.k_itimer, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.k_itimer, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.k_itimer, ptr %5, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %5, i8 0, i64 184, i1 false)
  store i32 %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.k_itimer, ptr %5, i32 0, i32 7
  store i64 -1, ptr %8, align 8
  %9 = call i32 @posix_cpu_timer_create(ptr noundef nonnull %5)
  %10 = tail call ptr @llvm.thread.pointer() #8
  %11 = getelementptr inbounds %struct.k_itimer, ptr %5, i32 0, i32 13
  store ptr %10, ptr %11, align 4
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 16, i1 false)
  %14 = getelementptr inbounds %struct.itimerspec64, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %14, ptr noundef align 8 dereferenceable(16) %2, i32 16, i1 false)
  call void @_raw_spin_lock_irq(ptr noundef %6) #8
  %15 = call i32 @posix_cpu_timer_set(ptr noundef nonnull %5, i32 noundef %1, ptr noundef nonnull %4, ptr noundef null)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load volatile i32, ptr %10, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %44, !prof !19

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.k_itimer, ptr %5, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  br label %27

24:                                               ; preds = %13
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %25 = load i16, ptr %6, align 8
  %26 = add i16 %25, 1
  store i16 %26, ptr %6, align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  br label %75

27:                                               ; preds = %38, %21
  %28 = load volatile i32, ptr %10, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i64, ptr %22, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32 @posix_cpu_timer_del(ptr noundef nonnull %5)
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %36 = load i16, ptr %6, align 8
  %37 = add i16 %36, 1
  store i16 %37, ptr %6, align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  br label %75

38:                                               ; preds = %31
  store volatile i32 1, ptr %23, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %39 = load i16, ptr %6, align 8
  %40 = add i16 %39, 1
  store i16 %40, ptr %6, align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  call void @schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %6) #8
  %41 = load volatile i32, ptr %10, align 4
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %27, label %44, !prof !19

44:                                               ; preds = %38, %27, %17
  %45 = getelementptr inbounds %struct.k_itimer, ptr %5, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = call i32 @posix_cpu_timer_set(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull @do_cpu_nanosleep.zero_it, ptr noundef nonnull %4)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @posix_cpu_timer_del(ptr noundef nonnull %5)
  br label %51

51:                                               ; preds = %49, %44
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %52 = load i16, ptr %6, align 8
  %53 = add i16 %52, 1
  store i16 %53, ptr %6, align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %54 = icmp eq i32 %47, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %55, %51
  call void @_raw_spin_lock_irq(ptr noundef %6) #8
  %56 = call i32 @posix_cpu_timer_del(ptr noundef nonnull %5)
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %57 = load i16, ptr %6, align 8
  %58 = add i16 %57, 1
  store i16 %58, ptr %6, align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %59 = icmp eq i32 %56, 1
  br i1 %59, label %55, label %60

60:                                               ; preds = %55, %51
  %61 = load i64, ptr %14, align 8
  %62 = getelementptr inbounds %struct.itimerspec64, ptr %4, i32 0, i32 1, i32 1
  %63 = load i32, ptr %62, align 8
  %64 = sext i32 %63 to i64
  %65 = or i64 %61, %64
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 51, i32 2, i32 0, i32 4
  store i64 %46, ptr %68, align 8
  %69 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 51, i32 2, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 51
  %74 = call i32 @nanosleep_copyout(ptr noundef %73, ptr noundef %14) #8
  br label %75

75:                                               ; preds = %72, %67, %60, %34, %24, %3
  %76 = phi i32 [ %9, %3 ], [ %74, %72 ], [ -516, %67 ], [ 0, %60 ], [ 0, %34 ], [ %15, %24 ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_cpu_nsleep_restart(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.timespec64, align 8
  %3 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  %5 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 4
  %6 = load i64, ptr %5, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %2, i64 noundef %6) #8
  %7 = call fastcc i32 @do_cpu_nanosleep(i32 noundef %4, i32 noundef 1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanosleep_copyout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 2149276021}
!9 = !{i64 2149271845}
!10 = !{i64 2149271920, i64 2149271947, i64 2149271994, i64 2149272016, i64 2149272044, i64 2149272064}
!11 = !{i64 528081}
!12 = !{i64 2149300165}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 488703, i64 488724}
!15 = !{!"auto-init"}
!16 = !{i64 2152866811}
!17 = !{i64 2152073373}
!18 = !{i64 2152073541}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2149299024}
!21 = !{i64 2148222362}
!22 = !{i64 499089, i64 2148000655, i64 2148000681, i64 2148000728, i64 2148000750, i64 2148000778, i64 2148000798}
!23 = !{i64 492318, i64 492344, i64 492372, i64 492390, i64 492408, i64 492430}
!24 = !{i64 2148222564}
!25 = !{i64 2148923411}
!26 = !{i64 2148923628}
!27 = !{i64 2148065375, i64 2148065407, i64 2148065436, i64 2148065470, i64 2148065501, i64 2148065524}
