; ModuleID = '/llk/IR/kernel/time/itimer.c_pt.bc'
source_filename = "../kernel/time/itimer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.__kernel_old_itimerval = type { %struct.__kernel_old_timeval, %struct.__kernel_old_timeval }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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

@__tracepoint_itimer_expire = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__do_sys_setitimer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"\014%s calls setitimer() with new_value NULL pointer. Misfeature support will be removed\0A\00", align 1
@__tracepoint_itimer_state = external dso_local global %struct.tracepoint, align 4

@sys_getitimer = dso_local alias i32 (i32, ptr), ptr @__se_sys_getitimer
@sys_setitimer = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_setitimer

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getitimer(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.__kernel_old_itimerval, align 4
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.itimerspec64, align 8
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #7, !annotation !8
  %7 = tail call ptr @llvm.thread.pointer() #7
  switch i32 %0, label %55 [
    i32 0, label %8
    i32 1, label %26
    i32 2, label %27
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 94
  %10 = load ptr, ptr %9, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #7
  %11 = getelementptr inbounds %struct.itimerspec64, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 17
  %15 = tail call i64 @__hrtimer_get_remaining(ptr noundef %14, i1 noundef zeroext true) #7, !noalias !9
  %16 = tail call zeroext i1 @hrtimer_active(ptr noundef %14) #7, !noalias !9
  %17 = icmp slt i64 %15, 1
  %18 = select i1 %17, i64 1000, i64 %15
  %19 = select i1 %16, i64 %18, i64 0
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %11, i64 noundef %19) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %20 = load ptr, ptr %12, align 16
  %21 = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 18
  %22 = load i64, ptr %21, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %22) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  %23 = load ptr, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  br label %28

26:                                               ; preds = %2
  call fastcc void @get_cpu_itimer(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %5) #7
  br label %28

27:                                               ; preds = %2
  call fastcc void @get_cpu_itimer(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %5) #7
  br label %28

28:                                               ; preds = %27, %26, %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %29 = load i64, ptr %5, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, ptr %3, align 4
  %31 = getelementptr inbounds %struct.timespec64, ptr %5, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = sdiv i32 %32, 1000
  %34 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %3, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.itimerspec64, ptr %5, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %3, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.itimerspec64, ptr %5, i32 0, i32 1, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = sdiv i32 %40, 1000
  %42 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %3, i32 0, i32 1, i32 1
  store i32 %41, ptr %42, align 4
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1090519040) #8, !srcloc !17
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #9, !srcloc !18
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #7, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !20
  %51 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #7, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46, %28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %55

54:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %55

55:                                               ; preds = %54, %53, %2
  %56 = phi i32 [ -22, %2 ], [ 0, %54 ], [ -14, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  ret i32 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @it_real_fn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 172
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_expire, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %18 = tail call i32 @__traceiter_itimer_expire(ptr noundef null, i32 noundef 0, ptr noundef %3, i64 noundef 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  br label %19

19:                                               ; preds = %17, %6, %1
  %20 = tail call i32 @kill_pid_info(i32 noundef 14, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setitimer(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.__kernel_old_itimerval, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.__kernel_old_itimerval, align 4
  %8 = alloca %struct.itimerspec64, align 8
  %9 = alloca %struct.itimerspec64, align 8
  %10 = inttoptr i32 %1 to ptr
  %11 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  %12 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i32 24, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i32 32, i1 false) #7, !annotation !8
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #7, !annotation !8
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %10, i32 16, i32 -1090519040) #8, !srcloc !23
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26, !prof !24

18:                                               ; preds = %14
  %19 = tail call ptr @llvm.thread.pointer() #7
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #9, !srcloc !18
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #7, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !20
  %24 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #7, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !24

26:                                               ; preds = %18, %14
  %27 = phi i32 [ %24, %18 ], [ 16, %14 ]
  %28 = sub i32 16, %27
  %29 = getelementptr i8, ptr %7, i32 %28
  call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %27, i1 false) #7
  br label %45

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %7, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %7, i32 0, i32 1, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %36, 1000000
  %38 = load i32, ptr %7, align 4
  %39 = icmp sgt i32 %38, -1
  %40 = select i1 %37, i1 %39, i1 false
  %41 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %7, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 1000000
  %44 = select i1 %40, i1 %43, i1 false
  br i1 %44, label %47, label %45

45:                                               ; preds = %34, %30, %26
  %46 = phi i32 [ -14, %26 ], [ -22, %30 ], [ -22, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %167

47:                                               ; preds = %34
  %48 = zext i32 %38 to i64
  store i64 %48, ptr %8, align 8
  %49 = mul nuw nsw i32 %42, 1000
  store i32 %49, ptr %12, align 8
  %50 = zext i32 %32 to i64
  %51 = getelementptr inbounds %struct.itimerspec64, ptr %8, i32 0, i32 1
  store i64 %50, ptr %51, align 8
  %52 = mul nuw nsw i32 %36, 1000
  %53 = getelementptr inbounds %struct.itimerspec64, ptr %8, i32 0, i32 1, i32 1
  store i32 %52, ptr %53, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %62

54:                                               ; preds = %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 32, i1 false) #7
  %55 = load i1, ptr @__do_sys_setitimer.__already_done, align 1
  br i1 %55, label %56, label %58, !prof !24

56:                                               ; preds = %54
  %57 = tail call ptr @llvm.thread.pointer() #7
  br label %62

58:                                               ; preds = %54
  store i1 true, ptr @__do_sys_setitimer.__already_done, align 1
  %59 = tail call ptr @llvm.thread.pointer() #7
  %60 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 85
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %60) #10
  br label %62

62:                                               ; preds = %58, %56, %47
  %63 = phi ptr [ %57, %56 ], [ %19, %47 ], [ %59, %58 ]
  %64 = icmp eq i32 %2, 0
  %65 = select i1 %64, ptr null, ptr %9
  switch i32 %0, label %167 [
    i32 0, label %66
    i32 1, label %137
    i32 2, label %138
  ]

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 94
  %68 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 93
  %69 = getelementptr inbounds %struct.itimerspec64, ptr %9, i32 0, i32 1
  %70 = select i1 %64, ptr inttoptr (i32 16 to ptr), ptr %69
  br label %71

71:                                               ; preds = %87, %66
  %72 = load ptr, ptr %67, align 4
  call void @_raw_spin_lock_irq(ptr noundef %72) #7
  %73 = load ptr, ptr %68, align 16
  %74 = getelementptr inbounds %struct.signal_struct, ptr %73, i32 0, i32 17
  br i1 %64, label %84, label %75

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %76 = call i64 @__hrtimer_get_remaining(ptr noundef %74, i1 noundef zeroext true) #7, !noalias !25
  %77 = call zeroext i1 @hrtimer_active(ptr noundef %74) #7, !noalias !25
  %78 = icmp slt i64 %76, 1
  %79 = select i1 %78, i64 1000, i64 %76
  %80 = select i1 %77, i64 %79, i64 0
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %80) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %70, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %81 = load ptr, ptr %68, align 16
  %82 = getelementptr inbounds %struct.signal_struct, ptr %81, i32 0, i32 18
  %83 = load i64, ptr %82, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %83) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br label %84

84:                                               ; preds = %75, %71
  %85 = call i32 @hrtimer_try_to_cancel(ptr noundef %74) #7
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load ptr, ptr %67, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %89 = load i16, ptr %88, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %88, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !29
  br label %71

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.itimerspec64, ptr %8, i32 0, i32 1
  %93 = load i64, ptr %92, align 8
  %94 = icmp sgt i64 %93, 9223372035
  br i1 %94, label %102, label %95, !prof !30

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.itimerspec64, ptr %8, i32 0, i32 1, i32 1
  %97 = load i64, ptr %96, align 8
  %98 = mul i64 %93, 1000000000
  %99 = and i64 %97, 4294967295
  %100 = add i64 %99, %98
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %95, %91
  %103 = phi i64 [ %100, %95 ], [ 9223372036854775807, %91 ]
  %104 = load i64, ptr %8, align 8
  %105 = icmp sgt i64 %104, 9223372035
  br i1 %105, label %111, label %106, !prof !30

106:                                              ; preds = %102
  %107 = load i64, ptr %12, align 8
  %108 = mul i64 %104, 1000000000
  %109 = and i64 %107, 4294967295
  %110 = add i64 %109, %108
  br label %111

111:                                              ; preds = %106, %102
  %112 = phi i64 [ %110, %106 ], [ 9223372036854775807, %102 ]
  %113 = load ptr, ptr %68, align 16
  %114 = getelementptr inbounds %struct.signal_struct, ptr %113, i32 0, i32 18
  store i64 %112, ptr %114, align 8
  call void @hrtimer_start_range_ns(ptr noundef %74, i64 noundef %103, i64 noundef 0, i32 noundef 1) #7
  br label %118

115:                                              ; preds = %95
  %116 = load ptr, ptr %68, align 16
  %117 = getelementptr inbounds %struct.signal_struct, ptr %116, i32 0, i32 18
  store i64 0, ptr %117, align 8
  br label %118

118:                                              ; preds = %115, %111
  %119 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_state, i32 0, i32 1), align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = lshr i32 %123, 5
  %125 = getelementptr i32, ptr @__cpu_online_mask, i32 %124
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %123, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %128, %126
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %121
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  %132 = call i32 @__traceiter_itimer_state(ptr noundef null, i32 noundef 0, ptr noundef nonnull %8, i64 noundef 0) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  br label %133

133:                                              ; preds = %131, %121, %118
  %134 = load ptr, ptr %67, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %135 = load i16, ptr %134, align 4
  %136 = add i16 %135, 1
  store i16 %136, ptr %134, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  br label %139

137:                                              ; preds = %62
  call fastcc void @set_cpu_itimer(ptr noundef %63, i32 noundef 1, ptr noundef nonnull %8, ptr noundef %65) #7
  br label %139

138:                                              ; preds = %62
  call fastcc void @set_cpu_itimer(ptr noundef %63, i32 noundef 0, ptr noundef nonnull %8, ptr noundef %65) #7
  br label %139

139:                                              ; preds = %138, %137, %133
  br i1 %64, label %167, label %140

140:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %141 = load i64, ptr %9, align 8
  %142 = trunc i64 %141 to i32
  store i32 %142, ptr %4, align 4
  %143 = getelementptr inbounds %struct.timespec64, ptr %9, i32 0, i32 1
  %144 = load i32, ptr %143, align 8
  %145 = sdiv i32 %144, 1000
  %146 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %4, i32 0, i32 1
  store i32 %145, ptr %146, align 4
  %147 = getelementptr inbounds %struct.itimerspec64, ptr %9, i32 0, i32 1
  %148 = load i64, ptr %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %4, i32 0, i32 1
  store i32 %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.itimerspec64, ptr %9, i32 0, i32 1, i32 1
  %152 = load i32, ptr %151, align 8
  %153 = sdiv i32 %152, 1000
  %154 = getelementptr inbounds %struct.__kernel_old_itimerval, ptr %4, i32 0, i32 1, i32 1
  store i32 %153, ptr %154, align 4
  %155 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %11, i32 16, i32 -1090519040) #8, !srcloc !17
  %156 = extractvalue { i32, i32 } %155, 0
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %140
  %159 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %160 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %159) #9, !srcloc !18
  %161 = and i32 %160, -13
  %162 = or i32 %161, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #7, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !20
  %163 = call i32 @arm_copy_to_user(ptr noundef nonnull %11, ptr noundef nonnull %4, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %160) #7, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !20
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %158, %140
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  br label %167

166:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  br label %167

167:                                              ; preds = %166, %165, %139, %62, %45
  %168 = phi i32 [ 0, %139 ], [ %46, %45 ], [ 0, %166 ], [ -14, %165 ], [ -22, %62 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  ret i32 %168
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @get_cpu_itimer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [3 x i64], align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 19, i32 %1
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %11 = load ptr, ptr %10, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #7
  %12 = load i64, ptr %9, align 8
  %13 = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 19, i32 %1, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !8
  call void @thread_group_sample_cputime(ptr noundef %0, ptr noundef nonnull %4) #7
  %17 = getelementptr [3 x i64], ptr %4, i32 0, i32 %1
  %18 = load i64, ptr %17, align 8
  %19 = icmp ult i64 %12, %18
  %20 = sub i64 %12, %18
  %21 = select i1 %19, i64 10000000, i64 %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i64 [ %21, %16 ], [ 0, %3 ]
  %24 = load ptr, ptr %10, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %27 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %23) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %14) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__hrtimer_get_remaining(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_sample_cputime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_itimer_expire(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_cpu_itimer(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr %struct.signal_struct, ptr %10, i32 0, i32 19, i32 %1
  %12 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = icmp sgt i64 %13, 9223372035
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = icmp slt i64 %13, -9223372035
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = mul nsw i64 %13, 1000000000
  %19 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = sext i32 %20 to i64
  %22 = add i64 %18, %21
  br label %23

23:                                               ; preds = %17, %15, %4
  %24 = phi i64 [ %22, %17 ], [ 9223372036854775807, %4 ], [ -9223372036854775808, %15 ]
  store i64 %24, ptr %6, align 8
  %25 = load i64, ptr %2, align 8
  %26 = icmp sgt i64 %25, 9223372035
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = icmp slt i64 %25, -9223372035
  br i1 %28, label %35, label %29

29:                                               ; preds = %27
  %30 = mul nsw i64 %25, 1000000000
  %31 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add i64 %30, %33
  br label %35

35:                                               ; preds = %29, %27, %23
  %36 = phi i64 [ %34, %29 ], [ 9223372036854775807, %23 ], [ -9223372036854775808, %27 ]
  %37 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %38 = load ptr, ptr %37, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %38) #7
  %39 = load i64, ptr %11, align 8
  store i64 %39, ptr %5, align 8
  %40 = getelementptr %struct.signal_struct, ptr %10, i32 0, i32 19, i32 %1, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = icmp ne i64 %39, 0
  %43 = icmp ne i64 %24, 0
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = icmp eq i64 %24, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %45
  %48 = add i64 %24, 10000000
  store i64 %48, ptr %6, align 8
  br label %49

49:                                               ; preds = %47, %45
  call void @set_process_cpu_timer(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  %50 = load i64, ptr %6, align 8
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi i64 [ 0, %35 ], [ %50, %49 ]
  store i64 %52, ptr %11, align 8
  store i64 %36, ptr %40, align 8
  %53 = icmp eq i32 %1, 1
  %54 = select i1 %53, i32 1, i32 2
  %55 = load i64, ptr %6, align 8
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_state, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = tail call ptr @llvm.thread.pointer() #7
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !31
  %70 = call i32 @__traceiter_itimer_state(ptr noundef null, i32 noundef %54, ptr noundef %2, i64 noundef %55) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  br label %71

71:                                               ; preds = %69, %58, %51
  %72 = load ptr, ptr %37, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %73 = load i16, ptr %72, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %72, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %75 = icmp eq ptr %3, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.itimerspec64, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %78 = load i64, ptr %5, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %7, i64 noundef %78) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %77, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %8, i64 noundef %41) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %79

79:                                               ; preds = %76, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_itimer_state(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_process_cpu_timer(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"itimer_get_remtime: argument 0"}
!11 = distinct !{!11, !"itimer_get_remtime"}
!12 = !{i64 2149015937}
!13 = !{i64 2149011761}
!14 = !{i64 2149011836, i64 2149011863, i64 2149011910, i64 2149011932, i64 2149011960, i64 2149011980}
!15 = !{i64 754794}
!16 = !{i64 2149040081}
!17 = !{i64 2151510678, i64 2151510703}
!18 = !{i64 4006212}
!19 = !{i64 4006409}
!20 = !{i64 2151491688}
!21 = !{i64 2153811720}
!22 = !{i64 2153811888}
!23 = !{i64 2151510100, i64 2151510125}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{!26}
!26 = distinct !{!26, !27, !"itimer_get_remtime: argument 0"}
!27 = distinct !{!27, !"itimer_get_remtime"}
!28 = !{i64 2150524244}
!29 = !{i64 2150524086}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2153795376}
!32 = !{i64 2153795554}
