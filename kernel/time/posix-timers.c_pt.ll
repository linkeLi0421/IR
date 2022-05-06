; ModuleID = '/llk/IR/kernel/time/posix-timers.c_pt.bc'
source_filename = "../kernel/time/posix-timers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.k_clock = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12 }
%struct.llist_node = type { ptr }
%union.anon.12 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, ptr, i32, i32, i32, i64, i64, i32, i32, i64, ptr, %union.anon.92, ptr, %union.anon.93, %struct.callback_head }
%union.anon.92 = type { ptr }
%union.anon.93 = type { %struct.anon.95 }
%struct.anon.95 = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, ptr, i32, i32, ptr }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, ptr }
%struct.kernel_siginfo = type { %struct.anon }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.100 }
%union.sigval = type { i32 }
%union.anon.100 = type { [13 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }

@__initcall__kmod_posix_timers__245_280_init_posix_timers6 = internal global ptr @init_posix_timers, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [19 x i8] c"posix_timers_cache\00", align 1
@posix_timers_cache = internal unnamed_addr global ptr null, align 4
@hash_lock = internal global %struct.spinlock zeroinitializer, align 4
@posix_timers_hashtable = internal global [512 x %struct.hlist_head] zeroinitializer, align 4
@do_timer_gettime.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"kernel/time/posix-timers.c\00", align 1
@do_timer_settime.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@timer_wait_running.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@timer_delete_hook.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clock_posix_dynamic = external dso_local constant %struct.k_clock, align 4
@clock_posix_cpu = external dso_local constant %struct.k_clock, align 4
@posix_clocks = internal unnamed_addr constant [12 x ptr] [ptr @clock_realtime, ptr @clock_monotonic, ptr @clock_process, ptr @clock_thread, ptr @clock_monotonic_raw, ptr @clock_realtime_coarse, ptr @clock_monotonic_coarse, ptr @clock_boottime, ptr @alarm_clock, ptr @alarm_clock, ptr null, ptr @clock_tai], align 4
@clock_realtime = internal constant %struct.k_clock { ptr @posix_get_hrtimer_res, ptr @posix_clock_realtime_set, ptr @posix_get_realtime_timespec, ptr @posix_get_realtime_ktime, ptr @posix_clock_realtime_adj, ptr @common_timer_create, ptr @common_nsleep, ptr @common_timer_set, ptr @common_timer_del, ptr @common_timer_get, ptr @common_hrtimer_rearm, ptr @common_hrtimer_forward, ptr @common_hrtimer_remaining, ptr @common_hrtimer_try_to_cancel, ptr @common_hrtimer_arm, ptr @common_timer_wait_running }, align 4
@clock_monotonic = internal constant %struct.k_clock { ptr @posix_get_hrtimer_res, ptr null, ptr @posix_get_monotonic_timespec, ptr @posix_get_monotonic_ktime, ptr null, ptr @common_timer_create, ptr @common_nsleep_timens, ptr @common_timer_set, ptr @common_timer_del, ptr @common_timer_get, ptr @common_hrtimer_rearm, ptr @common_hrtimer_forward, ptr @common_hrtimer_remaining, ptr @common_hrtimer_try_to_cancel, ptr @common_hrtimer_arm, ptr @common_timer_wait_running }, align 4
@clock_process = external dso_local constant %struct.k_clock, align 4
@clock_thread = external dso_local constant %struct.k_clock, align 4
@clock_monotonic_raw = internal constant %struct.k_clock { ptr @posix_get_hrtimer_res, ptr null, ptr @posix_get_monotonic_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clock_realtime_coarse = internal constant %struct.k_clock { ptr @posix_get_coarse_res, ptr null, ptr @posix_get_realtime_coarse, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clock_monotonic_coarse = internal constant %struct.k_clock { ptr @posix_get_coarse_res, ptr null, ptr @posix_get_monotonic_coarse, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clock_boottime = internal constant %struct.k_clock { ptr @posix_get_hrtimer_res, ptr null, ptr @posix_get_boottime_timespec, ptr @posix_get_boottime_ktime, ptr null, ptr @common_timer_create, ptr @common_nsleep_timens, ptr @common_timer_set, ptr @common_timer_del, ptr @common_timer_get, ptr @common_hrtimer_rearm, ptr @common_hrtimer_forward, ptr @common_hrtimer_remaining, ptr @common_hrtimer_try_to_cancel, ptr @common_hrtimer_arm, ptr @common_timer_wait_running }, align 4
@alarm_clock = external dso_local constant %struct.k_clock, align 4
@clock_tai = internal constant %struct.k_clock { ptr @posix_get_hrtimer_res, ptr null, ptr @posix_get_tai_timespec, ptr @posix_get_tai_ktime, ptr null, ptr @common_timer_create, ptr @common_nsleep, ptr @common_timer_set, ptr @common_timer_del, ptr @common_timer_get, ptr @common_hrtimer_rearm, ptr @common_hrtimer_forward, ptr @common_hrtimer_remaining, ptr @common_hrtimer_try_to_cancel, ptr @common_hrtimer_arm, ptr @common_timer_wait_running }, align 4
@hrtimer_resolution = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_posix_timers__245_280_init_posix_timers6], section "llvm.metadata"

@sys_timer_create = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_timer_create
@sys_timer_gettime = dso_local alias i32 (i32, ptr), ptr @__se_sys_timer_gettime
@sys_timer_gettime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_timer_gettime32
@sys_timer_getoverrun = dso_local alias i32 (i32), ptr @__se_sys_timer_getoverrun
@sys_timer_settime = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_timer_settime
@sys_timer_settime32 = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_timer_settime32
@sys_timer_delete = dso_local alias i32 (i32), ptr @__se_sys_timer_delete
@sys_clock_settime = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_settime
@sys_clock_gettime = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_gettime
@sys_clock_adjtime = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_adjtime
@sys_clock_getres = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_getres
@sys_clock_settime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_settime32
@sys_clock_gettime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_gettime32
@sys_clock_adjtime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_adjtime32
@sys_clock_getres_time32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_getres_time32
@sys_clock_nanosleep = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_clock_nanosleep
@sys_clock_nanosleep_time32 = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_clock_nanosleep_time32

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_posix_timers() #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 0, i32 noundef 262144, ptr noundef null) #10
  store ptr %1, ptr @posix_timers_cache, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @posixtimer_rearm(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = ptrtoint ptr %8 to i32
  %10 = xor i32 %3, %9
  %11 = mul i32 %10, 1640531527
  %12 = lshr i32 %11, 23
  %13 = getelementptr [512 x %struct.hlist_head], ptr @posix_timers_hashtable, i32 0, i32 %12
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr i8, ptr %14, i32 -8
  %17 = icmp eq ptr %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %43, label %19

19:                                               ; preds = %28, %5
  %20 = phi ptr [ %32, %28 ], [ %16, %5 ]
  %21 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 12
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %19
  %29 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 1
  %30 = load volatile ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  %32 = getelementptr i8, ptr %30, i32 -8
  %33 = icmp eq ptr %32, null
  %34 = or i1 %31, %33
  br i1 %34, label %43, label %19

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 12
  %37 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 2
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #10
  %39 = load ptr, ptr %36, align 8
  %40 = load ptr, ptr %7, align 16
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #10
  br label %43

43:                                               ; preds = %42, %28, %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %72

44:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %45 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 11
  %46 = load i64, ptr %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 9
  %50 = load i32, ptr %49, align 8
  %51 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.k_clock, ptr %56, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef nonnull %20) #10
  %59 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 6
  store i32 1, ptr %59, align 8
  %60 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 7
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.k_itimer, ptr %20, i32 0, i32 8
  store i64 %61, ptr %62, align 8
  store i64 -1, ptr %60, align 8
  %63 = load i32, ptr %49, align 8
  %64 = add i32 %63, 1
  store i32 %64, ptr %49, align 8
  %65 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %61, %67
  %69 = tail call i64 @llvm.smin.i64(i64 %68, i64 2147483647) #10
  %70 = trunc i64 %69 to i32
  store i32 %70, ptr %65, align 4
  br label %71

71:                                               ; preds = %54, %48, %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #10
  br label %72

72:                                               ; preds = %71, %43, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @posix_timer_event(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sigqueue, ptr %4, i32 0, i32 2, i32 0, i32 3, i32 0, i32 3
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @send_sigqueue(ptr noundef %11, ptr noundef %13, i32 noundef %10) #10
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sigqueue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_create(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.sigevent, align 4
  %5 = inttoptr i32 %1 to ptr
  %6 = inttoptr i32 %2 to ptr
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false) #10, !annotation !10
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %5, i32 64, i32 -1090519040) #11, !srcloc !11
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !12

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #12, !srcloc !13
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 64) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !12

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 64, %8 ]
  %22 = sub i32 64, %21
  %23 = getelementptr i8, ptr %4, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #10
  br label %26

24:                                               ; preds = %12
  %25 = call fastcc i32 @do_timer_create(i32 noundef %0, ptr noundef nonnull %4, ptr noundef %6) #10
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  br label %30

28:                                               ; preds = %3
  %29 = tail call fastcc i32 @do_timer_create(i32 noundef %0, ptr noundef null, ptr noundef %6) #10
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @common_timer_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  %10 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %16, i1 true, i1 %9
  br i1 %17, label %18, label %53

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.k_clock, ptr %6, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = tail call i64 %20(i32 noundef %22) #10
  br label %42

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %11) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %25 = getelementptr inbounds %struct.k_clock, ptr %6, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = call i64 %26(i32 noundef %28) #10
  %30 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %33, i1 true, i1 %9
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.k_clock, ptr %6, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = call i64 %37(ptr noundef %0, i64 noundef %29) #10
  %39 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 7
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, %38
  store i64 %41, ptr %39, align 8
  br label %42

42:                                               ; preds = %35, %24, %18
  %43 = phi i64 [ %23, %18 ], [ %29, %24 ], [ %29, %35 ]
  %44 = getelementptr inbounds %struct.k_clock, ptr %6, i32 0, i32 12
  %45 = load ptr, ptr %44, align 4
  %46 = call i64 %45(ptr noundef %0, i64 noundef %43) #10
  %47 = icmp slt i64 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  br i1 %9, label %53, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.itimerspec64, ptr %1, i32 0, i32 1, i32 1
  store i32 1, ptr %50, align 8
  br label %53

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.itimerspec64, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %46) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %53

53:                                               ; preds = %51, %49, %48, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_gettime(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.itimerspec64, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false) #10, !annotation !10
  %4 = call fastcc i32 @do_timer_gettime(i32 noundef %0, ptr noundef nonnull %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = inttoptr i32 %1 to ptr
  %8 = call i32 @put_itimerspec64(ptr noundef nonnull %3, ptr noundef %7) #10
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 -14
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %4, %2 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_gettime32(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.itimerspec64, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false) #10, !annotation !10
  %4 = call fastcc i32 @do_timer_gettime(i32 noundef %0, ptr noundef nonnull %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = inttoptr i32 %1 to ptr
  %8 = call i32 @put_old_itimerspec32(ptr noundef nonnull %3, ptr noundef %7) #10
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 -14
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %4, %2 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_getoverrun(i32 noundef %0) #1 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = ptrtoint ptr %6 to i32
  %8 = xor i32 %7, %0
  %9 = mul i32 %8, 1640531527
  %10 = lshr i32 %9, 23
  %11 = getelementptr [512 x %struct.hlist_head], ptr @posix_timers_hashtable, i32 0, i32 %10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -8
  %15 = icmp eq ptr %14, null
  %16 = or i1 %13, %15
  br i1 %16, label %41, label %17

17:                                               ; preds = %26, %3
  %18 = phi ptr [ %30, %26 ], [ %14, %3 ]
  %19 = getelementptr inbounds %struct.k_itimer, ptr %18, i32 0, i32 12
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.k_itimer, ptr %18, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.k_itimer, ptr %18, i32 0, i32 1
  %28 = load volatile ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 -8
  %31 = icmp eq ptr %30, null
  %32 = or i1 %29, %31
  br i1 %32, label %41, label %17

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.k_itimer, ptr %18, i32 0, i32 12
  %35 = getelementptr inbounds %struct.k_itimer, ptr %18, i32 0, i32 2
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #10
  %37 = load ptr, ptr %34, align 8
  %38 = load ptr, ptr %5, align 16
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #10
  br label %41

41:                                               ; preds = %40, %26, %3
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %47

42:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %43 = getelementptr inbounds %struct.k_itimer, ptr %18, i32 0, i32 8
  %44 = load i64, ptr %43, align 8
  %45 = tail call i64 @llvm.smin.i64(i64 %44, i64 2147483647) #10
  %46 = trunc i64 %45 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #10
  br label %47

47:                                               ; preds = %42, %41, %1
  %48 = phi i32 [ %46, %42 ], [ -22, %41 ], [ -22, %1 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @common_timer_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @common_timer_get(ptr noundef %0, ptr noundef nonnull %3)
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.k_clock, ptr %6, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 6
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 2
  %20 = and i32 %19, -2
  store i32 %20, ptr %17, align 8
  %21 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 8
  store i64 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %25, %15
  %30 = load i64, ptr %2, align 8
  %31 = icmp sgt i64 %30, 9223372035
  br i1 %31, label %38, label %32, !prof !16

32:                                               ; preds = %29
  %33 = getelementptr inbounds [2 x i64], ptr %2, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = mul i64 %30, 1000000000
  %36 = and i64 %34, 4294967295
  %37 = add i64 %36, %35
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i64 [ %37, %32 ], [ 9223372036854775807, %29 ]
  store i64 %39, ptr %10, align 8
  %40 = load i64, ptr %22, align 8
  %41 = icmp sgt i64 %40, 9223372035
  br i1 %41, label %48, label %42, !prof !16

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = mul i64 %40, 1000000000
  %46 = and i64 %44, 4294967295
  %47 = add i64 %46, %45
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi i64 [ %47, %42 ], [ 9223372036854775807, %38 ]
  %50 = and i32 %1, 1
  %51 = icmp ne i32 %50, 0
  %52 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1
  %55 = getelementptr inbounds %struct.k_clock, ptr %6, i32 0, i32 14
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %0, i64 noundef %49, i1 noundef zeroext %51, i1 noundef zeroext %54) #10
  %57 = xor i1 %54, true
  %58 = zext i1 %57 to i32
  store i32 %58, ptr %16, align 8
  br label %59

59:                                               ; preds = %48, %25, %9
  %60 = phi i32 [ 0, %48 ], [ 1, %9 ], [ 0, %25 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_settime(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.itimerspec64, align 8
  %6 = alloca %struct.itimerspec64, align 8
  %7 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #10, !annotation !10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false) #10, !annotation !10
  %8 = icmp ne i32 %3, 0
  %9 = select i1 %8, ptr %6, ptr null
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = inttoptr i32 %2 to ptr
  %13 = call i32 @get_itimerspec64(ptr noundef nonnull %5, ptr noundef nonnull %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = call fastcc i32 @do_timer_settime(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %9) #10
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %8, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = call i32 @put_itimerspec64(ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 -14
  br label %23

23:                                               ; preds = %19, %15, %11, %4
  %24 = phi i32 [ -22, %4 ], [ -14, %11 ], [ %16, %15 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_settime32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.itimerspec64, align 8
  %6 = alloca %struct.itimerspec64, align 8
  %7 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #10, !annotation !10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false) #10, !annotation !10
  %8 = icmp ne i32 %3, 0
  %9 = select i1 %8, ptr %6, ptr null
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = inttoptr i32 %2 to ptr
  %13 = call i32 @get_old_itimerspec32(ptr noundef nonnull %5, ptr noundef nonnull %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = call fastcc i32 @do_timer_settime(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %9) #10
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %8, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = call i32 @put_old_itimerspec32(ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 -14
  br label %23

23:                                               ; preds = %19, %15, %11, %4
  %24 = phi i32 [ -22, %4 ], [ -14, %11 ], [ %16, %15 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @common_timer_del(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.k_clock, ptr %3, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 6
  store i32 0, ptr %10, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ 0, %9 ], [ 1, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_delete(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %95, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = ptrtoint ptr %7 to i32
  %9 = xor i32 %8, %0
  %10 = mul i32 %9, 1640531527
  %11 = lshr i32 %10, 23
  %12 = getelementptr [512 x %struct.hlist_head], ptr @posix_timers_hashtable, i32 0, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -8
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %42, label %18

18:                                               ; preds = %27, %4
  %19 = phi ptr [ %31, %27 ], [ %15, %4 ]
  %20 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 12
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %18
  %28 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  %31 = getelementptr i8, ptr %29, i32 -8
  %32 = icmp eq ptr %31, null
  %33 = or i1 %30, %32
  br i1 %33, label %42, label %18

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 12
  %36 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 2
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #10
  store i32 %37, ptr %2, align 4
  %38 = load ptr, ptr %35, align 8
  %39 = load ptr, ptr %6, align 16
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #10
  br label %42

42:                                               ; preds = %41, %27, %4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %95

43:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %44

44:                                               ; preds = %65, %43
  %45 = phi ptr [ %66, %65 ], [ %19, %43 ]
  %46 = getelementptr inbounds %struct.k_itimer, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.k_clock, ptr %47, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i1 [ true, %44 ], [ %52, %49 ]
  %55 = load i1, ptr @timer_delete_hook.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !16

58:                                               ; preds = %53
  store i1 true, ptr @timer_delete_hook.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %59

59:                                               ; preds = %58, %53
  br i1 %54, label %68, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.k_clock, ptr %47, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef nonnull %45) #10
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68, !prof !16

65:                                               ; preds = %60
  %66 = call fastcc ptr @timer_wait_running(ptr noundef nonnull %45, ptr noundef nonnull %2) #10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %95, label %44

68:                                               ; preds = %60, %59
  %69 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 94
  %70 = load ptr, ptr %69, align 4
  tail call void @_raw_spin_lock(ptr noundef %70) #10
  %71 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %45, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 4
  store volatile ptr %73, ptr %72, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %71, align 4
  %75 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %76 = load i16, ptr %75, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %78 = getelementptr inbounds %struct.k_itimer, ptr %45, i32 0, i32 12
  store ptr null, ptr %78, align 8
  %79 = load i32, ptr %2, align 4
  %80 = getelementptr inbounds %struct.k_itimer, ptr %45, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %80, i32 noundef %79) #10
  %81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hash_lock) #10
  %82 = getelementptr inbounds %struct.k_itimer, ptr %45, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.k_itimer, ptr %45, i32 0, i32 1, i32 1
  %85 = load ptr, ptr %84, align 4
  store volatile ptr %83, ptr %85, align 4
  %86 = icmp eq ptr %83, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %68
  %88 = getelementptr inbounds %struct.hlist_node, ptr %83, i32 0, i32 1
  store volatile ptr %85, ptr %88, align 4
  br label %89

89:                                               ; preds = %87, %68
  store volatile ptr inttoptr (i32 290 to ptr), ptr %84, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hash_lock, i32 noundef %81) #10
  %90 = getelementptr inbounds %struct.k_itimer, ptr %45, i32 0, i32 13
  %91 = load ptr, ptr %90, align 4
  tail call void @put_pid(ptr noundef %91) #10
  %92 = getelementptr inbounds %struct.k_itimer, ptr %45, i32 0, i32 14
  %93 = load ptr, ptr %92, align 8
  tail call void @sigqueue_free(ptr noundef %93) #10
  %94 = getelementptr inbounds %struct.k_itimer, ptr %45, i32 0, i32 16
  tail call void @call_rcu(ptr noundef %94, ptr noundef nonnull @k_itimer_rcu_free) #10
  br label %95

95:                                               ; preds = %89, %65, %42, %1
  %96 = phi i32 [ 0, %89 ], [ -22, %42 ], [ -22, %1 ], [ -22, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_itimers(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.signal_struct, ptr %0, i32 0, i32 16
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %54, label %5

5:                                                ; preds = %46, %1
  %6 = phi ptr [ %52, %46 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.k_itimer, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.k_itimer, ptr %6, i32 0, i32 3
  br label %9

9:                                                ; preds = %28, %5
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #10
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.k_clock, ptr %10, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ true, %9 ], [ %15, %12 ]
  %18 = load i1, ptr @timer_delete_hook.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !16

21:                                               ; preds = %16
  store i1 true, ptr @timer_delete_hook.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %22

22:                                               ; preds = %21, %16
  br i1 %17, label %31, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.k_clock, ptr %10, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %6) #10
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %29 = load i16, ptr %7, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  br label %9

31:                                               ; preds = %23, %22
  %32 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %36 = load i16, ptr %7, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hash_lock) #10
  %39 = getelementptr inbounds %struct.k_itimer, ptr %6, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.k_itimer, ptr %6, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  store volatile ptr %40, ptr %42, align 4
  %43 = icmp eq ptr %40, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  store volatile ptr %42, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %31
  store volatile ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hash_lock, i32 noundef %38) #10
  %47 = getelementptr inbounds %struct.k_itimer, ptr %6, i32 0, i32 13
  %48 = load ptr, ptr %47, align 4
  tail call void @put_pid(ptr noundef %48) #10
  %49 = getelementptr inbounds %struct.k_itimer, ptr %6, i32 0, i32 14
  %50 = load ptr, ptr %49, align 8
  tail call void @sigqueue_free(ptr noundef %50) #10
  %51 = getelementptr inbounds %struct.k_itimer, ptr %6, i32 0, i32 16
  tail call void @call_rcu(ptr noundef %51, ptr noundef nonnull @k_itimer_rcu_free) #10
  %52 = load volatile ptr, ptr %2, align 4
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %54, label %5

54:                                               ; preds = %46, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_settime(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  %4 = inttoptr i32 %1 to ptr
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = and i32 %0, 7
  %8 = icmp eq i32 %7, 3
  %9 = select i1 %8, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  br label %19

10:                                               ; preds = %2
  %11 = icmp ugt i32 %0, 11
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  br label %30

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %15 = and i32 %14, %0
  %16 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  %18 = icmp eq i32 %15, 10
  br i1 %18, label %30, label %19

19:                                               ; preds = %13, %6
  %20 = phi ptr [ %9, %6 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.k_clock, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = call i32 @get_timespec64(ptr noundef nonnull %3, ptr noundef %4) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load ptr, ptr %21, align 4
  %29 = call i32 %28(i32 noundef %0, ptr noundef nonnull %3) #10
  br label %30

30:                                               ; preds = %27, %24, %19, %13, %12
  %31 = phi i32 [ %29, %27 ], [ -22, %19 ], [ -22, %13 ], [ -14, %24 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_gettime(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  %4 = inttoptr i32 %1 to ptr
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = and i32 %0, 7
  %8 = icmp eq i32 %7, 3
  %9 = select i1 %8, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  br label %19

10:                                               ; preds = %2
  %11 = icmp ugt i32 %0, 11
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  br label %29

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %15 = and i32 %14, %0
  %16 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  %18 = icmp eq i32 %15, 10
  br i1 %18, label %29, label %19

19:                                               ; preds = %13, %6
  %20 = phi ptr [ %9, %6 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.k_clock, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(i32 noundef %0, ptr noundef nonnull %3) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = call i32 @put_timespec64(ptr noundef nonnull %3, ptr noundef %4) #10
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 0, i32 -14
  br label %29

29:                                               ; preds = %25, %19, %13, %12
  %30 = phi i32 [ -22, %13 ], [ %23, %19 ], [ %28, %25 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_clock_adjtime(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = and i32 %0, 7
  %6 = icmp eq i32 %5, 3
  %7 = select i1 %6, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  br label %16

8:                                                ; preds = %2
  %9 = icmp ugt i32 %0, 11
  br i1 %9, label %23, label %10

10:                                               ; preds = %8
  %11 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %12 = and i32 %11, %0
  %13 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq i32 %12, 10
  br i1 %15, label %23, label %16

16:                                               ; preds = %10, %4
  %17 = phi ptr [ %7, %4 ], [ %14, %10 ]
  %18 = getelementptr inbounds %struct.k_clock, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 %19(i32 noundef %0, ptr noundef %1) #10
  br label %23

23:                                               ; preds = %21, %16, %10, %8
  %24 = phi i32 [ %22, %21 ], [ -22, %10 ], [ -95, %16 ], [ -22, %8 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_adjtime(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.__kernel_timex, align 8
  %4 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(208) %3, i8 0, i32 208, i1 false) #10, !annotation !10
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 208, i32 -1090519040) #11
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !12

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #12, !srcloc !13
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %4, i32 noundef 208) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !12

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %14, %8 ], [ 208, %2 ]
  %18 = sub i32 208, %17
  %19 = getelementptr i8, ptr %3, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #10
  br label %50

20:                                               ; preds = %8
  %21 = icmp slt i32 %0, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = and i32 %0, 7
  %24 = icmp eq i32 %23, 3
  %25 = select i1 %24, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  br label %34

26:                                               ; preds = %20
  %27 = icmp ugt i32 %0, 11
  br i1 %27, label %48, label %28

28:                                               ; preds = %26
  %29 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %30 = and i32 %29, %0
  %31 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq i32 %30, 10
  br i1 %33, label %48, label %34

34:                                               ; preds = %28, %22
  %35 = phi ptr [ %25, %22 ], [ %32, %28 ]
  %36 = getelementptr inbounds %struct.k_clock, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = call i32 %37(i32 noundef %0, ptr noundef nonnull %3) #10
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #12, !srcloc !13
  %44 = and i32 %43, -13
  %45 = or i32 %44, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #10, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %46 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 208) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #10, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42, %39, %34, %28, %26
  %49 = phi i32 [ %40, %42 ], [ %40, %39 ], [ -22, %26 ], [ -95, %34 ], [ -22, %28 ]
  br label %50

50:                                               ; preds = %48, %42, %16
  %51 = phi i32 [ %49, %48 ], [ -14, %42 ], [ -14, %16 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %3) #10
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_getres(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  %4 = inttoptr i32 %1 to ptr
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = and i32 %0, 7
  %8 = icmp eq i32 %7, 3
  %9 = select i1 %8, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  br label %19

10:                                               ; preds = %2
  %11 = icmp ugt i32 %0, 11
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  br label %30

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %15 = and i32 %14, %0
  %16 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  %18 = icmp eq i32 %15, 10
  br i1 %18, label %30, label %19

19:                                               ; preds = %13, %6
  %20 = phi ptr [ %9, %6 ], [ %17, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(i32 noundef %0, ptr noundef nonnull %3) #10
  %23 = icmp eq i32 %22, 0
  %24 = icmp ne i32 %1, 0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = call i32 @put_timespec64(ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 0, i32 -14
  br label %30

30:                                               ; preds = %26, %19, %13, %12
  %31 = phi i32 [ -22, %13 ], [ %22, %19 ], [ %29, %26 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_settime32(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  %4 = inttoptr i32 %1 to ptr
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = and i32 %0, 7
  %8 = icmp eq i32 %7, 3
  %9 = select i1 %8, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  br label %19

10:                                               ; preds = %2
  %11 = icmp ugt i32 %0, 11
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  br label %30

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %15 = and i32 %14, %0
  %16 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  %18 = icmp eq i32 %15, 10
  br i1 %18, label %30, label %19

19:                                               ; preds = %13, %6
  %20 = phi ptr [ %9, %6 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.k_clock, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = call i32 @get_old_timespec32(ptr noundef nonnull %3, ptr noundef %4) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load ptr, ptr %21, align 4
  %29 = call i32 %28(i32 noundef %0, ptr noundef nonnull %3) #10
  br label %30

30:                                               ; preds = %27, %24, %19, %13, %12
  %31 = phi i32 [ %29, %27 ], [ -22, %19 ], [ -22, %13 ], [ -14, %24 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_gettime32(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  %4 = inttoptr i32 %1 to ptr
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = and i32 %0, 7
  %8 = icmp eq i32 %7, 3
  %9 = select i1 %8, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  br label %19

10:                                               ; preds = %2
  %11 = icmp ugt i32 %0, 11
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  br label %29

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %15 = and i32 %14, %0
  %16 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  %18 = icmp eq i32 %15, 10
  br i1 %18, label %29, label %19

19:                                               ; preds = %13, %6
  %20 = phi ptr [ %9, %6 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.k_clock, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(i32 noundef %0, ptr noundef nonnull %3) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = call i32 @put_old_timespec32(ptr noundef nonnull %3, ptr noundef %4) #10
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 0, i32 -14
  br label %29

29:                                               ; preds = %25, %19, %13, %12
  %30 = phi i32 [ -22, %13 ], [ %23, %19 ], [ %28, %25 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_adjtime32(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.__kernel_timex, align 8
  %4 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(208) %3, i8 0, i32 208, i1 false) #10, !annotation !10
  %5 = call i32 @get_old_timex32(ptr noundef nonnull %3, ptr noundef %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = and i32 %0, 7
  %11 = icmp eq i32 %10, 3
  %12 = select i1 %11, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  br label %21

13:                                               ; preds = %7
  %14 = icmp ugt i32 %0, 11
  br i1 %14, label %32, label %15

15:                                               ; preds = %13
  %16 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %17 = and i32 %16, %0
  %18 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq i32 %17, 10
  br i1 %20, label %32, label %21

21:                                               ; preds = %15, %9
  %22 = phi ptr [ %12, %9 ], [ %19, %15 ]
  %23 = getelementptr inbounds %struct.k_clock, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = call i32 %24(i32 noundef %0, ptr noundef nonnull %3) #10
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @put_old_timex32(ptr noundef %4, ptr noundef nonnull %3) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26, %21, %15, %13
  %33 = phi i32 [ %27, %29 ], [ %27, %26 ], [ -22, %13 ], [ -95, %21 ], [ -22, %15 ]
  br label %34

34:                                               ; preds = %32, %29, %2
  %35 = phi i32 [ %33, %32 ], [ %5, %2 ], [ -14, %29 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %3) #10
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_getres_time32(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  %4 = inttoptr i32 %1 to ptr
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = and i32 %0, 7
  %8 = icmp eq i32 %7, 3
  %9 = select i1 %8, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  br label %19

10:                                               ; preds = %2
  %11 = icmp ugt i32 %0, 11
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  br label %30

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %15 = and i32 %14, %0
  %16 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !10
  %18 = icmp eq i32 %15, 10
  br i1 %18, label %30, label %19

19:                                               ; preds = %13, %6
  %20 = phi ptr [ %9, %6 ], [ %17, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(i32 noundef %0, ptr noundef nonnull %3) #10
  %23 = icmp eq i32 %22, 0
  %24 = icmp ne i32 %1, 0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call i32 @put_old_timespec32(ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %19
  br label %30

30:                                               ; preds = %29, %26, %13, %12
  %31 = phi i32 [ %22, %29 ], [ -22, %13 ], [ -14, %26 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_nanosleep(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.timespec64, align 8
  %6 = inttoptr i32 %2 to ptr
  %7 = inttoptr i32 %3 to ptr
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = and i32 %0, 7
  %11 = icmp eq i32 %10, 3
  %12 = select i1 %11, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !annotation !10
  br label %22

13:                                               ; preds = %4
  %14 = icmp ugt i32 %0, 11
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  br label %48

16:                                               ; preds = %13
  %17 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %18 = and i32 %17, %0
  %19 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !annotation !10
  %21 = icmp eq i32 %18, 10
  br i1 %21, label %48, label %22

22:                                               ; preds = %16, %9
  %23 = phi ptr [ %12, %9 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.k_clock, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %22
  %28 = call i32 @get_timespec64(ptr noundef nonnull %5, ptr noundef %6) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i64, ptr %5, align 8
  %32 = icmp sgt i64 %31, -1
  %33 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = icmp ult i32 %34, 1000000000
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = and i32 %1, 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr %7, ptr null
  %41 = icmp ne ptr %40, null
  %42 = zext i1 %41 to i32
  %43 = tail call ptr @llvm.thread.pointer() #10
  %44 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 51, i32 2, i32 0, i32 1
  store i32 %42, ptr %44, align 4
  %45 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 51, i32 2, i32 0, i32 2
  store ptr %40, ptr %45, align 8
  %46 = load ptr, ptr %24, align 4
  %47 = call i32 %46(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5) #10
  br label %48

48:                                               ; preds = %37, %30, %27, %22, %16, %15
  %49 = phi i32 [ %47, %37 ], [ -22, %16 ], [ -95, %22 ], [ -14, %27 ], [ -22, %15 ], [ -22, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_nanosleep_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.timespec64, align 8
  %6 = inttoptr i32 %2 to ptr
  %7 = inttoptr i32 %3 to ptr
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = and i32 %0, 7
  %11 = icmp eq i32 %10, 3
  %12 = select i1 %11, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !annotation !10
  br label %22

13:                                               ; preds = %4
  %14 = icmp ugt i32 %0, 11
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  br label %48

16:                                               ; preds = %13
  %17 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %18 = and i32 %17, %0
  %19 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !annotation !10
  %21 = icmp eq i32 %18, 10
  br i1 %21, label %48, label %22

22:                                               ; preds = %16, %9
  %23 = phi ptr [ %12, %9 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.k_clock, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %22
  %28 = call i32 @get_old_timespec32(ptr noundef nonnull %5, ptr noundef %6) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i64, ptr %5, align 8
  %32 = icmp sgt i64 %31, -1
  %33 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = icmp ult i32 %34, 1000000000
  %36 = select i1 %32, i1 %35, i1 false
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = and i32 %1, 1
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr %7, ptr null
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, i32 0, i32 2
  %43 = tail call ptr @llvm.thread.pointer() #10
  %44 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 51, i32 2, i32 0, i32 1
  store i32 %42, ptr %44, align 4
  %45 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 51, i32 2, i32 0, i32 2
  store ptr %40, ptr %45, align 8
  %46 = load ptr, ptr %24, align 4
  %47 = call i32 %46(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5) #10
  br label %48

48:                                               ; preds = %37, %30, %27, %22, %16, %15
  %49 = phi i32 [ %47, %37 ], [ -22, %16 ], [ -95, %22 ], [ -14, %27 ], [ -22, %15 ], [ -22, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_timer_create(i32 noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = and i32 %0, 7
  %8 = icmp eq i32 %7, 3
  %9 = select i1 %8, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  br label %19

10:                                               ; preds = %3
  %11 = icmp ugt i32 %0, 11
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  br label %221

13:                                               ; preds = %10
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 12) #10, !srcloc !23
  %15 = and i32 %14, %0
  %16 = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %18 = icmp eq i32 %15, 10
  br i1 %18, label %221, label %19

19:                                               ; preds = %13, %6
  %20 = phi ptr [ %9, %6 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.k_clock, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %221, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @posix_timers_cache, align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %25, i32 noundef 3520) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %221, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @sigqueue_alloc() #10
  %30 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 14
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %34, !prof !16

32:                                               ; preds = %28
  %33 = load ptr, ptr @posix_timers_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %26) #10
  br label %221

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sigqueue, ptr %29, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %35, i8 0, i32 32, i1 false) #10
  %36 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 2
  store i32 0, ptr %36, align 8
  %37 = tail call ptr @llvm.thread.pointer() #10
  %38 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 93
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 15
  %41 = load i32, ptr %40, align 4
  %42 = ptrtoint ptr %39 to i32
  %43 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 1
  %44 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 1, i32 1
  br label %45

45:                                               ; preds = %77, %34
  tail call void @_raw_spin_lock(ptr noundef nonnull @hash_lock) #10
  %46 = load i32, ptr %40, align 4
  %47 = xor i32 %46, %42
  %48 = mul i32 %47, 1640531527
  %49 = lshr i32 %48, 23
  %50 = getelementptr [512 x %struct.hlist_head], ptr @posix_timers_hashtable, i32 0, i32 %49
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = getelementptr i8, ptr %51, i32 -8
  %54 = icmp eq ptr %53, null
  %55 = or i1 %52, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %65, %45
  %57 = phi ptr [ %69, %65 ], [ %53, %45 ]
  %58 = getelementptr inbounds %struct.k_itimer, ptr %57, i32 0, i32 12
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, %39
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.k_itimer, ptr %57, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %46
  br i1 %64, label %77, label %65

65:                                               ; preds = %61, %56
  %66 = getelementptr inbounds %struct.k_itimer, ptr %57, i32 0, i32 1
  %67 = load volatile ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  %69 = getelementptr i8, ptr %67, i32 -8
  %70 = icmp eq ptr %69, null
  %71 = or i1 %68, %70
  br i1 %71, label %72, label %56

72:                                               ; preds = %65, %45
  store ptr %51, ptr %43, align 8
  store volatile ptr %50, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  store volatile ptr %43, ptr %50, align 4
  br i1 %52, label %75, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  store volatile ptr %43, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = load i32, ptr %40, align 4
  br label %77

77:                                               ; preds = %75, %61
  %78 = phi i32 [ %76, %75 ], [ %46, %61 ]
  %79 = phi i32 [ %76, %75 ], [ -2, %61 ]
  %80 = add i32 %78, 1
  %81 = tail call i32 @llvm.smax.i32(i32 %80, i32 0) #10
  store i32 %81, ptr %40, align 4
  %82 = icmp eq i32 %81, %41
  %83 = icmp eq i32 %79, -2
  %84 = select i1 %82, i1 %83, i1 false
  %85 = select i1 %84, i32 -11, i32 %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %86 = load i16, ptr @hash_lock, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr @hash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %88 = icmp eq i32 %85, -2
  br i1 %88, label %45, label %89

89:                                               ; preds = %77
  store i32 %85, ptr %4, align 4
  %90 = icmp slt i32 %85, 0
  br i1 %90, label %215, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 5
  store i32 %85, ptr %92, align 4
  %93 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 4
  store i32 %0, ptr %93, align 8
  %94 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 3
  store ptr %20, ptr %94, align 4
  %95 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 7
  store i64 -1, ptr %95, align 8
  %96 = icmp eq ptr %1, null
  br i1 %96, label %148, label %97

97:                                               ; preds = %91
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %98 = load ptr, ptr %38, align 16
  %99 = getelementptr %struct.signal_struct, ptr %98, i32 0, i32 22, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.sigevent, ptr %1, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  switch i32 %102, label %133 [
    i32 4, label %103
    i32 0, label %114
    i32 2, label %114
    i32 1, label %120
  ]

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.sigevent, ptr %1, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = tail call ptr @find_vpid(i32 noundef %105) #10
  %107 = tail call ptr @pid_task(ptr noundef %106, i32 noundef 0) #10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %133, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 93
  %111 = load ptr, ptr %110, align 16
  %112 = load ptr, ptr %38, align 16
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %109, %97, %97
  %115 = phi ptr [ %100, %97 ], [ %100, %97 ], [ %106, %109 ]
  %116 = getelementptr inbounds %struct.sigevent, ptr %1, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, -65
  %119 = icmp ult i32 %118, -64
  br i1 %119, label %133, label %120

120:                                              ; preds = %114, %97
  %121 = phi ptr [ %100, %97 ], [ %115, %114 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %120
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %121) #10, !srcloc !25
  %124 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %121, ptr nonnull %121, i32 1, ptr nonnull elementtype(i32) %121) #10, !srcloc !26
  %125 = extractvalue { i32, i32, i32 } %124, 0
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127, !prof !16

127:                                              ; preds = %123
  %128 = add i32 %125, 1
  %129 = or i32 %128, %125
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %133, label %131, !prof !12

131:                                              ; preds = %127, %123
  %132 = phi i32 [ 2, %123 ], [ 1, %127 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %121, i32 noundef %132) #10
  br label %133

133:                                              ; preds = %131, %127, %120, %114, %109, %103, %97
  %134 = phi ptr [ null, %120 ], [ %121, %127 ], [ %121, %131 ], [ null, %109 ], [ null, %103 ], [ null, %114 ], [ null, %97 ]
  %135 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 13
  store ptr %134, ptr %135, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %206, label %138

138:                                              ; preds = %133
  %139 = load i32, ptr %101, align 4
  %140 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 10
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.sigevent, ptr %1, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %30, align 8
  %144 = getelementptr inbounds %struct.sigqueue, ptr %143, i32 0, i32 2
  store i32 %142, ptr %144, align 4
  %145 = load ptr, ptr %30, align 8
  %146 = getelementptr inbounds %struct.sigqueue, ptr %145, i32 0, i32 2, i32 0, i32 3, i32 0, i32 2
  %147 = load i32, ptr %1, align 4
  store i32 %147, ptr %146, align 4
  br label %173

148:                                              ; preds = %91
  %149 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 10
  store i32 0, ptr %149, align 4
  %150 = load ptr, ptr %30, align 8
  %151 = getelementptr inbounds %struct.sigqueue, ptr %150, i32 0, i32 2
  store i32 14, ptr %151, align 4
  %152 = load ptr, ptr %30, align 8
  %153 = getelementptr inbounds %struct.sigqueue, ptr %152, i32 0, i32 2, i32 0, i32 3, i32 0, i32 2
  store i32 0, ptr %153, align 4
  %154 = load i32, ptr %92, align 4
  %155 = load ptr, ptr %30, align 8
  %156 = getelementptr inbounds %struct.sigqueue, ptr %155, i32 0, i32 2, i32 0, i32 3, i32 0, i32 2
  store i32 %154, ptr %156, align 4
  %157 = load ptr, ptr %38, align 16
  %158 = getelementptr %struct.signal_struct, ptr %157, i32 0, i32 22, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %171, label %161

161:                                              ; preds = %148
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %159) #10, !srcloc !25
  %162 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %159, ptr nonnull %159, i32 1, ptr nonnull elementtype(i32) %159) #10, !srcloc !26
  %163 = extractvalue { i32, i32, i32 } %162, 0
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165, !prof !16

165:                                              ; preds = %161
  %166 = add i32 %163, 1
  %167 = or i32 %166, %163
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %171, label %169, !prof !12

169:                                              ; preds = %165, %161
  %170 = phi i32 [ 2, %161 ], [ 1, %165 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %159, i32 noundef %170) #10
  br label %171

171:                                              ; preds = %169, %165, %148
  %172 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 13
  store ptr %159, ptr %172, align 4
  br label %173

173:                                              ; preds = %171, %138
  %174 = load i32, ptr %92, align 4
  %175 = load ptr, ptr %30, align 8
  %176 = getelementptr inbounds %struct.sigqueue, ptr %175, i32 0, i32 2, i32 0, i32 3
  store i32 %174, ptr %176, align 4
  %177 = load ptr, ptr %30, align 8
  %178 = getelementptr inbounds %struct.sigqueue, ptr %177, i32 0, i32 2, i32 0, i32 2
  store i32 -2, ptr %178, align 4
  %179 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1090519040) #11, !srcloc !27
  %180 = extractvalue { i32, i32 } %179, 0
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %184 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %183) #12, !srcloc !13
  %185 = and i32 %184, -13
  %186 = or i32 %185, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %186) #10, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %187 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %4, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %184) #10, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !15
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %182
  %190 = load ptr, ptr %21, align 4
  %191 = call i32 %190(ptr noundef nonnull %26) #10
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 94
  %195 = load ptr, ptr %194, align 4
  call void @_raw_spin_lock_irq(ptr noundef %195) #10
  %196 = load ptr, ptr %38, align 16
  %197 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 12
  store ptr %196, ptr %197, align 8
  %198 = load ptr, ptr %38, align 16
  %199 = getelementptr inbounds %struct.signal_struct, ptr %198, i32 0, i32 16
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.list_head, ptr %200, i32 0, i32 1
  store ptr %26, ptr %201, align 4
  store ptr %200, ptr %26, align 8
  %202 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %199, ptr %202, align 4
  store volatile ptr %26, ptr %199, align 4
  %203 = load ptr, ptr %194, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %204 = load i16, ptr %203, align 4
  %205 = add i16 %204, 1
  store i16 %205, ptr %203, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  br label %221

206:                                              ; preds = %189, %182, %173, %133
  %207 = phi i32 [ -14, %182 ], [ -22, %133 ], [ %191, %189 ], [ -14, %173 ]
  %208 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hash_lock) #10
  %209 = load ptr, ptr %43, align 8
  %210 = load ptr, ptr %44, align 4
  store volatile ptr %209, ptr %210, align 4
  %211 = icmp eq ptr %209, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.hlist_node, ptr %209, i32 0, i32 1
  store volatile ptr %210, ptr %213, align 4
  br label %214

214:                                              ; preds = %212, %206
  store volatile ptr inttoptr (i32 290 to ptr), ptr %44, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hash_lock, i32 noundef %208) #10
  br label %215

215:                                              ; preds = %214, %89
  %216 = phi i32 [ %207, %214 ], [ %85, %89 ]
  %217 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 13
  %218 = load ptr, ptr %217, align 4
  call void @put_pid(ptr noundef %218) #10
  %219 = load ptr, ptr %30, align 8
  call void @sigqueue_free(ptr noundef %219) #10
  %220 = getelementptr inbounds %struct.k_itimer, ptr %26, i32 0, i32 16
  call void @call_rcu(ptr noundef %220, ptr noundef nonnull @k_itimer_rcu_free) #10
  br label %221

221:                                              ; preds = %215, %193, %32, %24, %19, %13, %12
  %222 = phi i32 [ %216, %215 ], [ 0, %193 ], [ -22, %13 ], [ -95, %19 ], [ -22, %12 ], [ -11, %32 ], [ -11, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %222
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sigqueue_alloc() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sigqueue_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @k_itimer_rcu_free(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -176
  %3 = load ptr, ptr @posix_timers_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_timer_gettime(i32 noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = ptrtoint ptr %7 to i32
  %9 = xor i32 %8, %0
  %10 = mul i32 %9, 1640531527
  %11 = lshr i32 %10, 23
  %12 = getelementptr [512 x %struct.hlist_head], ptr @posix_timers_hashtable, i32 0, i32 %11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -8
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %42, label %18

18:                                               ; preds = %27, %4
  %19 = phi ptr [ %31, %27 ], [ %15, %4 ]
  %20 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 12
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %18
  %28 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  %31 = getelementptr i8, ptr %29, i32 -8
  %32 = icmp eq ptr %31, null
  %33 = or i1 %30, %32
  br i1 %33, label %42, label %18

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 12
  %36 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 2
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #10
  %38 = load ptr, ptr %35, align 8
  %39 = load ptr, ptr %6, align 16
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #10
  br label %42

42:                                               ; preds = %41, %27, %4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %63

43:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %1, i8 0, i32 32, i1 false)
  %44 = getelementptr inbounds %struct.k_itimer, ptr %19, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.k_clock, ptr %45, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ true, %43 ], [ %50, %47 ]
  %53 = load i1, ptr @do_timer_gettime.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !16

56:                                               ; preds = %51
  store i1 true, ptr @do_timer_gettime.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 728, i32 noundef 9, ptr noundef null) #10
  br label %57

57:                                               ; preds = %56, %51
  br i1 %52, label %61, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.k_clock, ptr %45, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  tail call void %60(ptr noundef nonnull %19, ptr noundef %1) #10
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi i32 [ 0, %58 ], [ -22, %57 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #10
  br label %63

63:                                               ; preds = %61, %42, %2
  %64 = phi i32 [ %62, %61 ], [ -22, %42 ], [ -22, %2 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_itimerspec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_itimerspec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_itimerspec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_timer_settime(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = load i64, ptr %2, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %94, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 1000000000
  br i1 %11, label %12, label %94

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %94, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = icmp ult i32 %18, 1000000000
  br i1 %19, label %20, label %94

20:                                               ; preds = %16
  %21 = icmp eq ptr %3, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  br label %23

23:                                               ; preds = %22, %20
  %24 = icmp slt i32 %0, 0
  br i1 %24, label %94, label %25

25:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %26 = tail call ptr @llvm.thread.pointer() #10
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 93
  %28 = load ptr, ptr %27, align 16
  %29 = ptrtoint ptr %28 to i32
  %30 = xor i32 %29, %0
  %31 = mul i32 %30, 1640531527
  %32 = lshr i32 %31, 23
  %33 = getelementptr [512 x %struct.hlist_head], ptr @posix_timers_hashtable, i32 0, i32 %32
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = getelementptr i8, ptr %34, i32 -8
  %37 = icmp eq ptr %36, null
  %38 = or i1 %35, %37
  br i1 %38, label %63, label %39

39:                                               ; preds = %48, %25
  %40 = phi ptr [ %52, %48 ], [ %36, %25 ]
  %41 = getelementptr inbounds %struct.k_itimer, ptr %40, i32 0, i32 12
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, %28
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.k_itimer, ptr %40, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44, %39
  %49 = getelementptr inbounds %struct.k_itimer, ptr %40, i32 0, i32 1
  %50 = load volatile ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  %52 = getelementptr i8, ptr %50, i32 -8
  %53 = icmp eq ptr %52, null
  %54 = or i1 %51, %53
  br i1 %54, label %63, label %39

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.k_itimer, ptr %40, i32 0, i32 12
  %57 = getelementptr inbounds %struct.k_itimer, ptr %40, i32 0, i32 2
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #10
  store i32 %58, ptr %5, align 4
  %59 = load ptr, ptr %56, align 8
  %60 = load ptr, ptr %27, align 16
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %58) #10
  br label %63

63:                                               ; preds = %62, %48, %25
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %94

64:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %65

65:                                               ; preds = %87, %64
  %66 = phi ptr [ null, %87 ], [ %3, %64 ]
  %67 = phi ptr [ %88, %87 ], [ %40, %64 ]
  %68 = getelementptr inbounds %struct.k_itimer, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.k_clock, ptr %69, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i1 [ true, %65 ], [ %74, %71 ]
  %77 = load i1, ptr @do_timer_settime.__already_done, align 1
  %78 = xor i1 %77, true
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %81, !prof !16

80:                                               ; preds = %75
  store i1 true, ptr @do_timer_settime.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 920, i32 noundef 9, ptr noundef null) #10
  br label %81

81:                                               ; preds = %80, %75
  br i1 %76, label %90, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.k_clock, ptr %69, i32 0, i32 7
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 %84(ptr noundef nonnull %67, i32 noundef %1, ptr noundef %2, ptr noundef %66) #10
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = call fastcc ptr @timer_wait_running(ptr noundef nonnull %67, ptr noundef nonnull %5)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %65

90:                                               ; preds = %82, %81
  %91 = phi i32 [ %85, %82 ], [ -22, %81 ]
  %92 = load i32, ptr %5, align 4
  %93 = getelementptr inbounds %struct.k_itimer, ptr %67, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %93, i32 noundef %92) #10
  br label %94

94:                                               ; preds = %90, %87, %63, %23, %16, %12, %8, %4
  %95 = phi i32 [ %91, %90 ], [ -22, %16 ], [ -22, %8 ], [ -22, %4 ], [ -22, %12 ], [ -22, %63 ], [ -22, %23 ], [ -22, %87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @timer_wait_running(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 3
  %4 = load volatile ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 5
  %6 = load volatile i32, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %7) #10
  %9 = getelementptr inbounds %struct.k_clock, ptr %4, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = load i1, ptr @timer_wait_running.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !16

15:                                               ; preds = %2
  store i1 true, ptr @timer_wait_running.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 849, i32 noundef 9, ptr noundef null) #10
  br label %16

16:                                               ; preds = %15, %2
  br i1 %11, label %19, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %9, align 4
  tail call void %18(ptr noundef %0) #10
  br label %19

19:                                               ; preds = %17, %16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %20 = icmp slt i32 %6, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %22 = tail call ptr @llvm.thread.pointer() #10
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 93
  %24 = load ptr, ptr %23, align 16
  %25 = ptrtoint ptr %24 to i32
  %26 = xor i32 %6, %25
  %27 = mul i32 %26, 1640531527
  %28 = lshr i32 %27, 23
  %29 = getelementptr [512 x %struct.hlist_head], ptr @posix_timers_hashtable, i32 0, i32 %28
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = getelementptr i8, ptr %30, i32 -8
  %33 = icmp eq ptr %32, null
  %34 = or i1 %31, %33
  br i1 %34, label %60, label %35

35:                                               ; preds = %44, %21
  %36 = phi ptr [ %48, %44 ], [ %32, %21 ]
  %37 = getelementptr inbounds %struct.k_itimer, ptr %36, i32 0, i32 12
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, %24
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.k_itimer, ptr %36, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %6
  br i1 %43, label %51, label %44

44:                                               ; preds = %40, %35
  %45 = getelementptr inbounds %struct.k_itimer, ptr %36, i32 0, i32 1
  %46 = load volatile ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  %48 = getelementptr i8, ptr %46, i32 -8
  %49 = icmp eq ptr %48, null
  %50 = or i1 %47, %49
  br i1 %50, label %60, label %35

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.k_itimer, ptr %36, i32 0, i32 12
  %53 = getelementptr inbounds %struct.k_itimer, ptr %36, i32 0, i32 2
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #10
  store i32 %54, ptr %1, align 4
  %55 = load ptr, ptr %52, align 8
  %56 = load ptr, ptr %23, align 16
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %61

59:                                               ; preds = %51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #10
  br label %60

60:                                               ; preds = %59, %44, %21
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %61

61:                                               ; preds = %60, %58, %19
  %62 = phi ptr [ %36, %58 ], [ null, %60 ], [ null, %19 ]
  ret ptr %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_itimerspec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timex32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timex32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @posix_get_hrtimer_res(i32 noundef %0, ptr nocapture noundef writeonly %1) #7 {
  store i64 0, ptr %1, align 8
  %3 = load i32, ptr @hrtimer_resolution, align 4
  %4 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 %3, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_clock_realtime_set(i32 noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @do_sys_settimeofday64(ptr noundef %1, ptr noundef null) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_get_realtime_timespec(i32 noundef %0, ptr noundef %1) #1 {
  tail call void @ktime_get_real_ts64(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @posix_get_realtime_ktime(i32 noundef %0) #1 {
  %2 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  ret i64 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_clock_realtime_adj(i32 noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @do_adjtimex(ptr noundef %1) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @common_timer_create(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  tail call void @hrtimer_init(ptr noundef %2, i32 noundef %4, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @common_nsleep(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load i64, ptr %2, align 8
  %5 = icmp sgt i64 %4, 9223372035
  br i1 %5, label %12, label %6, !prof !16

6:                                                ; preds = %3
  %7 = getelementptr inbounds [2 x i64], ptr %2, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = mul i64 %4, 1000000000
  %10 = and i64 %8, 4294967295
  %11 = add i64 %10, %9
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi i64 [ %11, %6 ], [ 9223372036854775807, %3 ]
  %14 = and i32 %1, 1
  %15 = xor i32 %14, 1
  %16 = tail call i32 @hrtimer_nanosleep(i64 noundef %13, i32 noundef %15, i32 noundef %0) #10
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @common_hrtimer_rearm(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.hrtimer, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i64 %6() #10
  %8 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  %9 = load i64, ptr %8, align 8
  %10 = tail call i64 @hrtimer_forward(ptr noundef %2, i64 noundef %7, i64 noundef %9) #10
  %11 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 7
  %12 = load i64, ptr %11, align 8
  %13 = add i64 %12, %10
  store i64 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = sub i64 %17, %15
  tail call void @hrtimer_start_range_ns(ptr noundef %2, i64 noundef %15, i64 noundef %18, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @common_hrtimer_forward(ptr noundef %0, i64 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %4 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 11
  %5 = load i64, ptr %4, align 8
  %6 = tail call i64 @hrtimer_forward(ptr noundef %3, i64 noundef %1, i64 noundef %5) #10
  ret i64 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @common_hrtimer_remaining(ptr nocapture noundef readonly %0, i64 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = sub i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @common_hrtimer_try_to_cancel(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %3 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %2) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @common_hrtimer_arm(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15
  %6 = xor i1 %2, true
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = select i1 %2, ptr @clock_realtime, ptr @clock_monotonic
  %13 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %4
  tail call void @hrtimer_init(ptr noundef %5, i32 noundef %9, i32 noundef %7) #10
  %15 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  store ptr @posix_timer_fn, ptr %15, align 8
  br i1 %2, label %23, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.hrtimer, ptr %5, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i64 %20() #10
  %22 = tail call i64 @ktime_add_safe(i64 noundef %1, i64 noundef %21) #10
  br label %23

23:                                               ; preds = %16, %14
  %24 = phi i64 [ %1, %14 ], [ %22, %16 ]
  %25 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.k_itimer, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  store i64 %24, ptr %26, align 8
  br i1 %3, label %28, label %27

27:                                               ; preds = %23
  tail call void @hrtimer_start_range_ns(ptr noundef %5, i64 noundef %24, i64 noundef 0, i32 noundef 0) #10
  br label %28

28:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @common_timer_wait_running(ptr nocapture noundef readnone %0) #1 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_sys_settimeofday64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_adjtimex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_nanosleep(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_timer_fn(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr i8, ptr %0, i32 -56
  store i32 0, ptr %4, align 8
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -32
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ 0, %1 ]
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sigqueue, ptr %15, i32 0, i32 2, i32 0, i32 3, i32 0, i32 3
  store i32 %13, ptr %16, align 4
  %17 = getelementptr i8, ptr %0, i32 -28
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 2
  %20 = and i32 %19, 1
  %21 = xor i32 %20, 1
  %22 = load ptr, ptr %14, align 8
  %23 = getelementptr i8, ptr %0, i32 -12
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @send_sigqueue(ptr noundef %22, ptr noundef %24, i32 noundef %21) #10
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %47, label %27

27:                                               ; preds = %12
  %28 = load i64, ptr %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i64 %34() #10
  %36 = load i64, ptr %5, align 8
  %37 = icmp slt i64 %36, 10000000
  %38 = add i64 %35, 10000000
  %39 = select i1 %37, i64 %38, i64 %35
  %40 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %39, i64 noundef %36) #10
  %41 = getelementptr i8, ptr %0, i32 -48
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, %40
  store i64 %43, ptr %41, align 8
  %44 = getelementptr i8, ptr %0, i32 -32
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8
  store i32 1, ptr %4, align 8
  br label %47

47:                                               ; preds = %30, %27, %12
  %48 = phi i32 [ 1, %30 ], [ 0, %27 ], [ 0, %12 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_get_monotonic_timespec(i32 noundef %0, ptr noundef %1) #1 {
  tail call void @ktime_get_ts64(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @posix_get_monotonic_ktime(i32 noundef %0) #1 {
  %2 = tail call i64 @ktime_get() #10
  ret i64 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @common_nsleep_timens(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load i64, ptr %2, align 8
  %5 = icmp sgt i64 %4, 9223372035
  br i1 %5, label %12, label %6, !prof !16

6:                                                ; preds = %3
  %7 = getelementptr inbounds [2 x i64], ptr %2, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = mul i64 %4, 1000000000
  %10 = and i64 %8, 4294967295
  %11 = add i64 %10, %9
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi i64 [ %11, %6 ], [ 9223372036854775807, %3 ]
  %14 = and i32 %1, 1
  %15 = xor i32 %14, 1
  %16 = tail call i32 @hrtimer_nanosleep(i64 noundef %13, i32 noundef %15, i32 noundef %0) #10
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_get_monotonic_raw(i32 noundef %0, ptr noundef %1) #1 {
  tail call void @ktime_get_raw_ts64(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_get_coarse_res(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef 10000000) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_get_realtime_coarse(i32 noundef %0, ptr noundef %1) #1 {
  tail call void @ktime_get_coarse_real_ts64(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_get_monotonic_coarse(i32 noundef %0, ptr noundef %1) #1 {
  tail call void @ktime_get_coarse_ts64(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_get_boottime_timespec(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @posix_get_boottime_ktime(i32 noundef %0) #1 {
  %2 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  ret i64 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_get_tai_timespec(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = tail call i64 @ktime_get_with_offset(i32 noundef 2) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @posix_get_tai_ktime(i32 noundef %0) #1 {
  %2 = tail call i64 @ktime_get_with_offset(i32 noundef 2) #10
  ret i64 %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

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
!8 = !{i64 2149442345}
!9 = !{i64 2149442562}
!10 = !{!"auto-init"}
!11 = !{i64 2151537736, i64 2151537761}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 4033848}
!14 = !{i64 4034045}
!15 = !{i64 2151519324}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2149043573}
!18 = !{i64 2149039397}
!19 = !{i64 2149039472, i64 2149039499, i64 2149039546, i64 2149039568, i64 2149039596, i64 2149039616}
!20 = !{i64 2149066576}
!21 = !{i64 782430}
!22 = !{i64 2149067717}
!23 = !{i64 641522, i64 641539, i64 2148125609}
!24 = !{i64 2150426700}
!25 = !{i64 876507, i64 2148366478, i64 2148366504, i64 2148366551, i64 2148366573, i64 2148366601, i64 2148366621}
!26 = !{i64 2148379351, i64 2148379383, i64 2148379412, i64 2148379446, i64 2148379477, i64 2148379500}
!27 = !{i64 2151538314, i64 2151538339}
!28 = !{i64 2150551880}
!29 = !{i64 2150551722}
