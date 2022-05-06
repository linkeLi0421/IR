; ModuleID = '/llk/IR/fs/timerfd.c_pt.bc'
source_filename = "../fs/timerfd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timerfd_ctx = type { %union.anon, i64, i64, %struct.wait_queue_head, i64, i32, i16, i16, %struct.callback_head, %struct.list_head, %struct.spinlock, i8 }
%union.anon = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, ptr, i32, i32, ptr }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@cancel_list = internal global %struct.list_head { ptr @cancel_list, ptr @cancel_list }, align 4
@timerfd_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @timerfd_work, i64 4), ptr getelementptr (i8, ptr @timerfd_work, i64 4) }, ptr @timerfd_resume_work }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__do_sys_timerfd_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"&ctx->wqh\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[timerfd]\00", align 1
@timerfd_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @timerfd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @timerfd_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @timerfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @timerfd_show, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cancel_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [93 x i8] c"clockid: %d\0Aticks: %llu\0Asettime flags: 0%o\0Ait_value: (%llu, %llu)\0Ait_interval: (%llu, %llu)\0A\00", align 1

@sys_timerfd_create = dso_local alias i32 (i32, i32), ptr @__se_sys_timerfd_create
@sys_timerfd_settime = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_timerfd_settime
@sys_timerfd_gettime = dso_local alias i32 (i32, ptr), ptr @__se_sys_timerfd_gettime
@sys_timerfd_settime32 = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_timerfd_settime32
@sys_timerfd_gettime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_timerfd_gettime32

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timerfd_clock_was_set() local_unnamed_addr #0 {
  %1 = tail call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %2 = load volatile ptr, ptr @cancel_list, align 4
  %3 = icmp eq ptr %2, @cancel_list
  br i1 %3, label %23, label %4

4:                                                ; preds = %20, %0
  %5 = phi ptr [ %21, %20 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %5, i32 -40
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  %12 = getelementptr i8, ptr %5, i32 -48
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  store i64 9223372036854775807, ptr %12, align 8
  %16 = getelementptr i8, ptr %5, i32 -24
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8
  tail call void @__wake_up_locked_key(ptr noundef %10, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  br label %19

19:                                               ; preds = %15, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  br label %20

20:                                               ; preds = %19, %4
  %21 = load volatile ptr, ptr %5, align 4
  %22 = icmp eq ptr %21, @cancel_list
  br i1 %22, label %23, label %4

23:                                               ; preds = %20, %0
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timerfd_resume() local_unnamed_addr #0 {
  %1 = load ptr, ptr @system_wq, align 4
  %2 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %1, ptr noundef nonnull @timerfd_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_create(i32 noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, -526337
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  switch i32 %0, label %31 [
    i32 9, label %6
    i32 8, label %6
    i32 7, label %6
    i32 1, label %6
    i32 0, label %6
  ]

6:                                                ; preds = %5, %5, %5, %5, %5
  %7 = and i32 %0, -2
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call zeroext i1 @capable(i32 noundef 35) #8
  br i1 %10, label %11, label %31

11:                                               ; preds = %9, %6
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 160) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.timerfd_ctx, ptr %13, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @__do_sys_timerfd_create.__key) #8
  %17 = getelementptr inbounds %struct.timerfd_ctx, ptr %13, i32 0, i32 10
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.timerfd_ctx, ptr %13, i32 0, i32 5
  store i32 %0, ptr %18, align 8
  br i1 %8, label %19, label %22

19:                                               ; preds = %15
  %20 = icmp ne i32 %0, 8
  %21 = zext i1 %20 to i32
  tail call void @alarm_init(ptr noundef nonnull %13, i32 noundef %21, ptr noundef nonnull @timerfd_alarmproc) #8
  br label %23

22:                                               ; preds = %15
  tail call void @hrtimer_init(ptr noundef nonnull %13, i32 noundef %0, i32 noundef 0) #8
  br label %23

23:                                               ; preds = %22, %19
  %24 = tail call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.timerfd_ctx, ptr %13, i32 0, i32 2
  store i64 %24, ptr %25, align 8
  %26 = and i32 %1, 526336
  %27 = or i32 %26, 2
  %28 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.1, ptr noundef nonnull @timerfd_fops, ptr noundef nonnull %13, i32 noundef %27) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call void @kfree(ptr noundef nonnull %13) #8
  br label %31

31:                                               ; preds = %30, %23, %11, %9, %5, %2
  %32 = phi i32 [ -22, %5 ], [ -22, %2 ], [ -1, %9 ], [ -12, %11 ], [ %28, %30 ], [ %28, %23 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_settime(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.itimerspec64, align 8
  %6 = alloca %struct.itimerspec64, align 8
  %7 = inttoptr i32 %2 to ptr
  %8 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false) #8, !annotation !11
  %9 = call i32 @get_itimerspec64(ptr noundef nonnull %5, ptr noundef %7) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = call fastcc i32 @do_timerfd_settime(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = call i32 @put_itimerspec64(ptr noundef nonnull %6, ptr noundef nonnull %8) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %14
  br label %20

20:                                               ; preds = %19, %16, %11, %4
  %21 = phi i32 [ 0, %19 ], [ -14, %4 ], [ %12, %11 ], [ -14, %16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_gettime(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.itimerspec64, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false) #8, !annotation !11
  %4 = call fastcc i32 @do_timerfd_gettime(i32 noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = inttoptr i32 %1 to ptr
  %8 = call i32 @put_itimerspec64(ptr noundef nonnull %3, ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 -14
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_settime32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.itimerspec64, align 8
  %6 = alloca %struct.itimerspec64, align 8
  %7 = inttoptr i32 %2 to ptr
  %8 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false) #8, !annotation !11
  %9 = call i32 @get_old_itimerspec32(ptr noundef nonnull %5, ptr noundef %7) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = call fastcc i32 @do_timerfd_settime(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = call i32 @put_old_itimerspec32(ptr noundef nonnull %6, ptr noundef nonnull %8) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %14
  br label %20

20:                                               ; preds = %19, %16, %11, %4
  %21 = phi i32 [ 0, %19 ], [ -14, %4 ], [ %12, %11 ], [ -14, %16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_gettime32(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.itimerspec64, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false) #8, !annotation !11
  %4 = call fastcc i32 @do_timerfd_gettime(i32 noundef %0, ptr noundef nonnull %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = inttoptr i32 %1 to ptr
  %8 = call i32 @put_old_itimerspec32(ptr noundef nonnull %3, ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 -14
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_mono_to_any(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @timerfd_resume_work(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %3 = load volatile ptr, ptr @cancel_list, align 4
  %4 = icmp eq ptr %3, @cancel_list
  br i1 %4, label %24, label %5

5:                                                ; preds = %21, %1
  %6 = phi ptr [ %22, %21 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 -40
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #8
  %13 = getelementptr i8, ptr %6, i32 -48
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, %2
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  store i64 9223372036854775807, ptr %13, align 8
  %17 = getelementptr i8, ptr %6, i32 -24
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  tail call void @__wake_up_locked_key(ptr noundef %11, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  br label %20

20:                                               ; preds = %16, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #8
  br label %21

21:                                               ; preds = %20, %5
  %22 = load volatile ptr, ptr %6, align 4
  %23 = icmp eq ptr %22, @cancel_list
  br i1 %23, label %24, label %5

24:                                               ; preds = %21, %1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timerfd_alarmproc(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.timerfd_ctx, ptr %0, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.timerfd_ctx, ptr %0, i32 0, i32 6
  store i16 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.timerfd_ctx, ptr %0, i32 0, i32 4
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %6, align 8
  tail call void @__wake_up_locked_key(ptr noundef %3, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timerfd_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ult i32 %2, 8
  br i1 %8, label %101, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #8
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %21 = tail call ptr @llvm.thread.pointer() #8
  store i32 0, ptr %5, align 4
  store ptr %21, ptr %20, align 4
  %22 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %22, align 4
  %23 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %28, %19
  %26 = call i32 @do_wait_intr_irq(ptr noundef %10, ptr noundef nonnull %5) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, ptr %16, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %25, label %31

31:                                               ; preds = %28, %25
  %32 = load ptr, ptr %24, align 4
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  %35 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  store volatile i32 0, ptr %35, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  br label %36

36:                                               ; preds = %31, %15, %9
  %37 = phi i32 [ -11, %9 ], [ %26, %31 ], [ 0, %15 ]
  %38 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 11
  %39 = load i8, ptr %38, align 4, !range !9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = icmp eq i64 %43, 9223372036854775807
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #8
  store i64 %46, ptr %42, align 8
  %47 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 4
  store i64 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 6
  store i16 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %45, %41, %36
  %50 = phi i32 [ -125, %45 ], [ %37, %41 ], [ %37, %36 ]
  %51 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 4
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %87, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 6
  %56 = load i16, ptr %55, align 4
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.timerfd_ctx, ptr %7, i32 0, i32 5
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, -2
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = call i64 @alarm_forward_now(ptr noundef %7, i64 noundef %60) #8
  %69 = add i64 %52, -1
  %70 = add i64 %69, %68
  call void @alarm_restart(ptr noundef %7) #8
  br label %85

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.hrtimer, ptr %7, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %73, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  %76 = call i64 %75() #8
  %77 = call i64 @hrtimer_forward(ptr noundef %7, i64 noundef %76, i64 noundef %60) #8
  %78 = add i64 %52, -1
  %79 = add i64 %78, %77
  %80 = getelementptr inbounds %struct.hrtimer, ptr %7, i32 0, i32 1
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds %struct.timerqueue_node, ptr %7, i32 0, i32 1
  %83 = load i64, ptr %82, align 8
  %84 = sub i64 %83, %81
  call void @hrtimer_start_range_ns(ptr noundef %7, i64 noundef %81, i64 noundef %84, i32 noundef 0) #8
  br label %85

85:                                               ; preds = %71, %67, %58, %54
  %86 = phi i64 [ %70, %67 ], [ %79, %71 ], [ %52, %58 ], [ %52, %54 ]
  store i16 0, ptr %55, align 4
  store i64 0, ptr %51, align 8
  br label %87

87:                                               ; preds = %85, %49
  %88 = phi i64 [ %86, %85 ], [ 0, %49 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %89 = load i16, ptr %10, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %91 = icmp eq i64 %88, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %87
  %93 = tail call ptr @llvm.thread.pointer() #8
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 3
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %94) #10, !srcloc !17
  %96 = and i32 %95, -13
  %97 = or i32 %96, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #8, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %98 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i64 %88, i32 -1090519041) #8, !srcloc !20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #8, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !19
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 8, i32 -14
  br label %101

101:                                              ; preds = %92, %87, %4
  %102 = phi i32 [ -22, %4 ], [ %100, %92 ], [ %50, %87 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timerfd_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #8
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %15 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 4
  %16 = load i64, ptr %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %14) #8
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timerfd_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 11
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  store i8 0, ptr %6, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cancel_lock) #8
  %10 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 9
  %11 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 9, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %15 = load i16, ptr @cancel_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @cancel_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  br label %17

17:                                               ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %18 = load i16, ptr %5, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  %20 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -2
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call i32 @alarm_cancel(ptr noundef %4) #8
  br label %28

26:                                               ; preds = %17
  %27 = tail call i32 @hrtimer_cancel(ptr noundef %4) #8
  br label %28

28:                                               ; preds = %26, %24
  %29 = icmp eq ptr %4, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %31, ptr noundef nonnull inttoptr (i32 136 to ptr)) #8
  br label %32

32:                                               ; preds = %30, %28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @timerfd_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.timerfd_ctx, ptr %6, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %8 = getelementptr inbounds %struct.timerfd_ctx, ptr %6, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -2
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i64 @alarm_expires_remaining(ptr noundef %6) #8
  br label %23

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.hrtimer, ptr %6, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i64 %18() #8
  %20 = getelementptr inbounds %struct.timerqueue_node, ptr %6, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = sub i64 %21, %19
  br label %23

23:                                               ; preds = %14, %12
  %24 = phi i64 [ %13, %12 ], [ %22, %14 ]
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 0) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %25) #8
  %26 = load i64, ptr %3, align 8
  %27 = getelementptr inbounds i8, ptr %3, i32 8
  %28 = load i32, ptr %27, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %29 = getelementptr inbounds %struct.timerfd_ctx, ptr %6, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %30) #8
  %31 = load i64, ptr %4, align 8
  %32 = getelementptr inbounds i8, ptr %4, i32 8
  %33 = load i32, ptr %32, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %34 = load i16, ptr %7, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %36 = load i32, ptr %8, align 8
  %37 = getelementptr inbounds %struct.timerfd_ctx, ptr %6, i32 0, i32 4
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.timerfd_ctx, ptr %6, i32 0, i32 7
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = sext i32 %28 to i64
  %43 = sext i32 %33 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %36, i64 noundef %38, i32 noundef %41, i64 noundef %26, i64 noundef %42, i64 noundef %31, i64 noundef %43) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @alarm_forward_now(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alarm_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @alarm_expires_remaining(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_itimerspec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_timerfd_settime(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = icmp ult i32 %1, 4
  br i1 %7, label %8, label %199

8:                                                ; preds = %4
  %9 = load i64, ptr %2, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %199, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = icmp ult i32 %13, 1000000000
  br i1 %14, label %15, label %199

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %199, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %21, 1000000000
  br i1 %22, label %23, label %199

23:                                               ; preds = %19
  %24 = tail call i32 @__fdget(i32 noundef %0) #8, !noalias !22
  %25 = and i32 %24, -4
  %26 = inttoptr i32 %25 to ptr
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %199, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, @timerfd_fops
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = and i32 %24, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %199, label %35

35:                                               ; preds = %32
  tail call void @fput(ptr noundef nonnull %26) #8
  br label %199

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 15
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, -2
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = tail call zeroext i1 @capable(i32 noundef 35) #8
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = and i32 %24, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %199, label %48

48:                                               ; preds = %45
  tail call void @fput(ptr noundef nonnull %26) #8
  br label %199

49:                                               ; preds = %43, %36
  %50 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %50) #8
  %51 = load i32, ptr %39, align 8
  switch i32 %51, label %65 [
    i32 0, label %52
    i32 8, label %52
  ]

52:                                               ; preds = %49, %49
  %53 = icmp eq i32 %1, 3
  br i1 %53, label %54, label %65

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 11
  %56 = load i8, ptr %55, align 4, !range !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  store i8 1, ptr %55, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cancel_lock) #8
  %59 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 9
  %60 = load ptr, ptr @cancel_list, align 4
  store ptr %60, ptr %59, align 4
  %61 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 9, i32 1
  store ptr @cancel_list, ptr %61, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  store volatile ptr %59, ptr @cancel_list, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %62, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %63 = load i16, ptr @cancel_lock, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr @cancel_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  br label %77

65:                                               ; preds = %52, %49
  %66 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 11
  %67 = load i8, ptr %66, align 4, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  store i8 0, ptr %66, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cancel_lock) #8
  %70 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 9
  %71 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 9, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %70, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 4
  store volatile ptr %73, ptr %72, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %75 = load i16, ptr @cancel_lock, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr @cancel_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  br label %77

77:                                               ; preds = %69, %65, %58, %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %78 = load i16, ptr %50, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  %80 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 3
  br label %81

81:                                               ; preds = %91, %77
  tail call void @_raw_spin_lock_irq(ptr noundef %80) #8
  %82 = load i32, ptr %39, align 8
  %83 = and i32 %82, -2
  %84 = icmp eq i32 %83, 8
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = tail call i32 @alarm_try_to_cancel(ptr noundef %38) #8
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %94, label %91

88:                                               ; preds = %81
  %89 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %38) #8
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %94, label %91

91:                                               ; preds = %88, %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %92 = load i16, ptr %80, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %80, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8
  br label %81

94:                                               ; preds = %88, %85
  %95 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 6
  %96 = load i16, ptr %95, align 4
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 1
  %100 = load i64, ptr %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %39, align 8
  %104 = and i32 %103, -2
  %105 = icmp eq i32 %104, 8
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = tail call i64 @alarm_forward_now(ptr noundef %38, i64 noundef %100) #8
  br label %115

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.hrtimer, ptr %38, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %110, i32 0, i32 6
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i64 %112() #8
  %114 = tail call i64 @hrtimer_forward(ptr noundef %38, i64 noundef %113, i64 noundef %100) #8
  br label %115

115:                                              ; preds = %108, %106, %98, %94
  %116 = getelementptr inbounds %struct.itimerspec64, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %117 = load i32, ptr %39, align 8
  %118 = and i32 %117, -2
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = tail call i64 @alarm_expires_remaining(ptr noundef %38) #8
  br label %131

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.hrtimer, ptr %38, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %124, i32 0, i32 6
  %126 = load ptr, ptr %125, align 4
  %127 = tail call i64 %126() #8
  %128 = getelementptr inbounds %struct.timerqueue_node, ptr %38, i32 0, i32 1
  %129 = load i64, ptr %128, align 8
  %130 = sub i64 %129, %127
  br label %131

131:                                              ; preds = %122, %120
  %132 = phi i64 [ %121, %120 ], [ %130, %122 ]
  %133 = tail call i64 @llvm.smax.i64(i64 %132, i64 0) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %133) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %116, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %134 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 1
  %135 = load i64, ptr %134, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %135) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  %136 = load i32, ptr %39, align 8
  %137 = and i32 %1, 1
  %138 = icmp eq i32 %137, 0
  %139 = xor i32 %137, 1
  %140 = load i64, ptr %16, align 8
  %141 = icmp sgt i64 %140, 9223372035
  br i1 %141, label %147, label %142, !prof !26

142:                                              ; preds = %131
  %143 = load i64, ptr %20, align 8
  %144 = mul i64 %140, 1000000000
  %145 = and i64 %143, 4294967295
  %146 = add i64 %145, %144
  br label %147

147:                                              ; preds = %142, %131
  %148 = phi i64 [ %146, %142 ], [ 9223372036854775807, %131 ]
  store i16 0, ptr %95, align 4
  %149 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 4
  store i64 0, ptr %149, align 8
  %150 = load i64, ptr %2, align 8
  %151 = icmp sgt i64 %150, 9223372035
  br i1 %151, label %157, label %152, !prof !26

152:                                              ; preds = %147
  %153 = load i64, ptr %12, align 8
  %154 = mul i64 %150, 1000000000
  %155 = and i64 %153, 4294967295
  %156 = add i64 %155, %154
  br label %157

157:                                              ; preds = %152, %147
  %158 = phi i64 [ %156, %152 ], [ 9223372036854775807, %147 ]
  store i64 %158, ptr %134, align 8
  %159 = and i32 %136, -2
  %160 = icmp eq i32 %159, 8
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = icmp ne i32 %136, 8
  %163 = zext i1 %162 to i32
  call void @alarm_init(ptr noundef %38, i32 noundef %163, ptr noundef nonnull @timerfd_alarmproc) #8
  br label %168

164:                                              ; preds = %157
  call void @hrtimer_init(ptr noundef %38, i32 noundef %136, i32 noundef %139) #8
  %165 = getelementptr inbounds %struct.timerqueue_node, ptr %38, i32 0, i32 1
  store i64 %148, ptr %165, align 8
  %166 = getelementptr inbounds %struct.hrtimer, ptr %38, i32 0, i32 1
  store i64 %148, ptr %166, align 8
  %167 = getelementptr inbounds %struct.hrtimer, ptr %38, i32 0, i32 2
  store ptr @timerfd_tmrproc, ptr %167, align 8
  br label %168

168:                                              ; preds = %164, %161
  %169 = icmp eq i64 %148, 0
  br i1 %169, label %188, label %170

170:                                              ; preds = %168
  %171 = load i32, ptr %39, align 8
  %172 = and i32 %171, -2
  %173 = icmp eq i32 %172, 8
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  br i1 %138, label %176, label %175

175:                                              ; preds = %174
  call void @alarm_start(ptr noundef %38, i64 noundef %148) #8
  br label %178

176:                                              ; preds = %174
  call void @alarm_start_relative(ptr noundef %38, i64 noundef %148) #8
  br label %178

177:                                              ; preds = %170
  call void @hrtimer_start_range_ns(ptr noundef %38, i64 noundef %148, i64 noundef 0, i32 noundef %139) #8
  br label %178

178:                                              ; preds = %177, %176, %175
  %179 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 11
  %180 = load i8, ptr %179, align 4, !range !9
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 2
  %184 = load i64, ptr %183, align 8
  %185 = icmp eq i64 %184, 9223372036854775807
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #8
  store i64 %187, ptr %183, align 8
  br label %192

188:                                              ; preds = %182, %178, %168
  %189 = trunc i32 %1 to i16
  %190 = and i16 %189, 3
  %191 = getelementptr inbounds %struct.timerfd_ctx, ptr %38, i32 0, i32 7
  store i16 %190, ptr %191, align 2
  br label %192

192:                                              ; preds = %188, %186
  %193 = phi i32 [ 0, %188 ], [ -125, %186 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %194 = load i16, ptr %80, align 4
  %195 = add i16 %194, 1
  store i16 %195, ptr %80, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %196 = and i32 %24, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %192
  call void @fput(ptr noundef nonnull %26) #8
  br label %199

199:                                              ; preds = %198, %192, %48, %45, %35, %32, %23, %19, %15, %11, %8, %4
  %200 = phi i32 [ -22, %19 ], [ -22, %4 ], [ -1, %45 ], [ -1, %48 ], [ %193, %192 ], [ %193, %198 ], [ -22, %11 ], [ -22, %15 ], [ -22, %8 ], [ -22, %35 ], [ -22, %32 ], [ -9, %23 ]
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_itimerspec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alarm_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timerfd_tmrproc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.timerfd_ctx, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.timerfd_ctx, ptr %0, i32 0, i32 6
  store i16 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.timerfd_ctx, ptr %0, i32 0, i32 4
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8
  tail call void @__wake_up_locked_key(ptr noundef %2, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_start_relative(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_timerfd_gettime(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = tail call i32 @__fdget(i32 noundef %0) #8, !noalias !27
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %82, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @timerfd_fops
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = and i32 %5, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %82, label %16

16:                                               ; preds = %13
  tail call void @fput(ptr noundef nonnull %7) #8
  br label %82

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 15
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.timerfd_ctx, ptr %19, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.timerfd_ctx, ptr %19, i32 0, i32 6
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.timerfd_ctx, ptr %19, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %24
  store i16 0, ptr %21, align 4
  %29 = getelementptr inbounds %struct.timerfd_ctx, ptr %19, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, -2
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = tail call i64 @alarm_forward_now(ptr noundef %19, i64 noundef %26) #8
  %35 = add i64 %34, -1
  %36 = getelementptr inbounds %struct.timerfd_ctx, ptr %19, i32 0, i32 4
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %35, %37
  store i64 %38, ptr %36, align 8
  tail call void @alarm_restart(ptr noundef %19) #8
  br label %55

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.hrtimer, ptr %19, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %41, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i64 %43() #8
  %45 = tail call i64 @hrtimer_forward(ptr noundef %19, i64 noundef %44, i64 noundef %26) #8
  %46 = add i64 %45, -1
  %47 = getelementptr inbounds %struct.timerfd_ctx, ptr %19, i32 0, i32 4
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %46, %48
  store i64 %49, ptr %47, align 8
  %50 = getelementptr inbounds %struct.hrtimer, ptr %19, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.timerqueue_node, ptr %19, i32 0, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = sub i64 %53, %51
  tail call void @hrtimer_start_range_ns(ptr noundef %19, i64 noundef %51, i64 noundef %54, i32 noundef 0) #8
  br label %55

55:                                               ; preds = %39, %33, %24, %17
  %56 = getelementptr inbounds %struct.itimerspec64, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %57 = getelementptr inbounds %struct.timerfd_ctx, ptr %19, i32 0, i32 5
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, -2
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = tail call i64 @alarm_expires_remaining(ptr noundef %19) #8
  br label %72

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.hrtimer, ptr %19, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %65, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i64 %67() #8
  %69 = getelementptr inbounds %struct.timerqueue_node, ptr %19, i32 0, i32 1
  %70 = load i64, ptr %69, align 8
  %71 = sub i64 %70, %68
  br label %72

72:                                               ; preds = %63, %61
  %73 = phi i64 [ %62, %61 ], [ %71, %63 ]
  %74 = tail call i64 @llvm.smax.i64(i64 %73, i64 0) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %74) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %56, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %75 = getelementptr inbounds %struct.timerfd_ctx, ptr %19, i32 0, i32 1
  %76 = load i64, ptr %75, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %76) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %77 = load i16, ptr %20, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %20, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  %79 = and i32 %5, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  call void @fput(ptr noundef nonnull %7) #8
  br label %82

82:                                               ; preds = %81, %72, %16, %13, %2
  %83 = phi i32 [ 0, %72 ], [ 0, %81 ], [ -22, %16 ], [ -22, %13 ], [ -9, %2 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_itimerspec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_itimerspec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readonly }

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
!8 = !{i64 2148943737}
!9 = !{i8 0, i8 2}
!10 = !{i64 2148943954}
!11 = !{!"auto-init"}
!12 = !{i64 2149077491}
!13 = !{i64 2149073315}
!14 = !{i64 2149073390, i64 2149073417, i64 2149073464, i64 2149073486, i64 2149073514, i64 2149073534}
!15 = !{i64 311205}
!16 = !{i64 2149101635}
!17 = !{i64 3477913}
!18 = !{i64 3478110}
!19 = !{i64 2150963389}
!20 = !{i64 2153746849, i64 2153747129, i64 2153747463, i64 2153747797}
!21 = !{i64 2149100494}
!22 = !{!23}
!23 = distinct !{!23, !24, !"fdget: argument 0"}
!24 = distinct !{!24, !"fdget"}
!25 = !{i64 2149499306}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!28}
!28 = distinct !{!28, !29, !"fdget: argument 0"}
!29 = distinct !{!29, !"fdget"}
