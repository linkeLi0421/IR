; ModuleID = '/llk/IR/fs/signalfd.c_pt.bc'
source_filename = "../fs/signalfd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.sigset_t = type { [2 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.88 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signalfd_siginfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i16, i32, i64, i32, [28 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.kernel_siginfo = type { %struct.anon.74 }
%struct.anon.74 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.78 }
%struct.anon.78 = type { i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
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

@.str.2 = private unnamed_addr constant [11 x i8] c"[signalfd]\00", align 1
@signalfd_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @signalfd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @signalfd_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @signalfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @signalfd_show_fdinfo, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"sigmask:\09\00", align 1

@sys_signalfd4 = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_signalfd4
@sys_signalfd = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_signalfd

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @signalfd_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sighand_struct, ptr %0, i32 0, i32 2, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sighand_struct, ptr %0, i32 0, i32 2
  tail call void @__wake_up_pollfree(ptr noundef %6) #6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_signalfd4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.sigset_t, align 8
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !8
  %7 = icmp eq i32 %2, 8
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1090519040) #7, !srcloc !9
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !10

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #6
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #8, !srcloc !11
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #6, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !13
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %6, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #6, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 8, %8 ]
  %22 = sub i32 8, %21
  %23 = getelementptr i8, ptr %5, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #6
  br label %26

24:                                               ; preds = %12
  %25 = call fastcc i32 @do_signalfd4(i32 noundef %0, ptr noundef nonnull %5, i32 noundef %3) #6
  br label %26

26:                                               ; preds = %24, %20, %4
  %27 = phi i32 [ %25, %24 ], [ -22, %4 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_signalfd(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sigset_t, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8, !annotation !8
  %6 = icmp eq i32 %2, 8
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 8, i32 -1090519040) #7, !srcloc !9
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !10

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #6
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #8, !srcloc !11
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #6, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !13
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #6, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %11, %7
  %20 = phi i32 [ %17, %11 ], [ 8, %7 ]
  %21 = sub i32 8, %20
  %22 = getelementptr i8, ptr %4, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %20, i1 false) #6
  br label %25

23:                                               ; preds = %11
  %24 = call fastcc i32 @do_signalfd4(i32 noundef %0, ptr noundef nonnull %4, i32 noundef 0) #6
  br label %25

25:                                               ; preds = %23, %19, %3
  %26 = phi i32 [ %24, %23 ], [ -22, %3 ], [ -14, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_pollfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_signalfd4(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, -526337
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %53

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = and i32 %7, -262401
  %9 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, -1
  store i32 %11, ptr %9, align 4
  %12 = xor i32 %8, -1
  store i32 %12, ptr %1, align 4
  %13 = icmp eq i32 %0, -1
  br i1 %13, label %14, label %25

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 8) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %1, align 4
  store i64 %19, ptr %16, align 8
  %20 = and i32 %2, 526336
  %21 = or i32 %20, 2
  %22 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.2, ptr noundef nonnull @signalfd_fops, ptr noundef nonnull %16, i32 noundef %21) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %16) #6
  br label %53

25:                                               ; preds = %6
  %26 = tail call i32 @__fdget(i32 noundef %0) #6, !noalias !14
  %27 = and i32 %26, -4
  %28 = inttoptr i32 %27 to ptr
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, @signalfd_fops
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = and i32 %26, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  tail call void @fput(ptr noundef nonnull %28) #6
  br label %53

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 15
  %40 = load ptr, ptr %39, align 8
  %41 = tail call ptr @llvm.thread.pointer() #6
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 94
  %43 = load ptr, ptr %42, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %43) #6
  %44 = load i64, ptr %1, align 4
  store i64 %44, ptr %40, align 4
  %45 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %46 = load i16, ptr %45, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr inbounds %struct.sighand_struct, ptr %48, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %49, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %50 = and i32 %26, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  tail call void @fput(ptr noundef nonnull %28) #6
  br label %53

53:                                               ; preds = %52, %38, %37, %34, %25, %24, %18, %14, %3
  %54 = phi i32 [ -22, %3 ], [ -12, %14 ], [ %22, %24 ], [ %22, %18 ], [ %0, %52 ], [ %0, %38 ], [ -22, %37 ], [ -22, %34 ], [ -9, %25 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @signalfd_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.signalfd_siginfo, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wait_queue_entry, align 4
  %8 = alloca %struct.kernel_siginfo, align 4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %8, i8 0, i32 32, i1 false), !annotation !8
  %13 = icmp ult i32 %2, 128
  br i1 %13, label %169, label %14

14:                                               ; preds = %4
  %15 = lshr i32 %2, 7
  %16 = and i32 %12, 2048
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 1
  %18 = tail call ptr @llvm.thread.pointer() #6
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 3
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 3, i32 1
  %22 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 94
  %23 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 1
  %24 = getelementptr inbounds i8, ptr %5, i32 8
  %25 = getelementptr inbounds %struct.anon.74, ptr %8, i32 0, i32 1
  %26 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.anon.74, ptr %8, i32 0, i32 2
  %28 = getelementptr inbounds %struct.anon.74, ptr %8, i32 0, i32 3
  %29 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 19
  %30 = getelementptr inbounds %struct.anon.74, ptr %8, i32 0, i32 3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 18
  %32 = getelementptr inbounds %struct.anon.74, ptr %8, i32 0, i32 3, i32 0, i32 2
  %33 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 20
  %34 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 3
  %35 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 4
  %36 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 12
  %37 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 11
  %38 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 10
  %39 = getelementptr inbounds %struct.anon.74, ptr %8, i32 0, i32 3, i32 0, i32 3
  %40 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 13
  %41 = getelementptr inbounds %struct.anon.74, ptr %8, i32 0, i32 3, i32 0, i32 4
  %42 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 14
  %43 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 15
  %44 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 16
  %45 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 9
  %46 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 7
  %47 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 5
  %48 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 6
  %49 = getelementptr inbounds %struct.signalfd_siginfo, ptr %5, i32 0, i32 8
  %50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %51 = and i32 %2, -128
  br label %52

52:                                               ; preds = %159, %14
  %53 = phi i32 [ %15, %14 ], [ %162, %159 ]
  %54 = phi ptr [ %1, %14 ], [ %160, %159 ]
  %55 = phi i32 [ %16, %14 ], [ 1, %159 ]
  %56 = phi i32 [ 0, %14 ], [ %161, %159 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4
  store ptr %18, ptr %17, align 4
  store ptr @default_wake_function, ptr %19, align 4
  store ptr null, ptr %20, align 4
  store ptr null, ptr %21, align 4
  %57 = load ptr, ptr %22, align 4
  call void @_raw_spin_lock_irq(ptr noundef %57) #6
  %58 = call i32 @dequeue_signal(ptr noundef %18, ptr noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %6) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = icmp eq i32 %55, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %60, %52
  %63 = phi i32 [ %58, %52 ], [ -11, %60 ]
  %64 = load ptr, ptr %22, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %65 = load i16, ptr %64, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %64, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  br label %94

67:                                               ; preds = %60
  %68 = load ptr, ptr %22, align 4
  %69 = getelementptr inbounds %struct.sighand_struct, ptr %68, i32 0, i32 2
  call void @add_wait_queue(ptr noundef %69, ptr noundef nonnull %7) #6
  store volatile i32 1, ptr %23, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %70 = call i32 @dequeue_signal(ptr noundef %18, ptr noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %6) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %80, %67
  %73 = load volatile i32, ptr %18, align 4
  %74 = and i32 %73, 256
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87, !prof !10

76:                                               ; preds = %72
  %77 = load volatile i32, ptr %18, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load ptr, ptr %22, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %82 = load i16, ptr %81, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %81, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  call void @schedule() #6
  %84 = load ptr, ptr %22, align 4
  call void @_raw_spin_lock_irq(ptr noundef %84) #6
  store volatile i32 1, ptr %23, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %85 = call i32 @dequeue_signal(ptr noundef %18, ptr noundef %10, ptr noundef nonnull %8, ptr noundef nonnull %6) #6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %72, label %87

87:                                               ; preds = %80, %76, %72, %67
  %88 = phi i32 [ %70, %67 ], [ %85, %80 ], [ -512, %76 ], [ -512, %72 ]
  %89 = load ptr, ptr %22, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %90 = load i16, ptr %89, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %89, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  %92 = load ptr, ptr %22, align 4
  %93 = getelementptr inbounds %struct.sighand_struct, ptr %92, i32 0, i32 2
  call void @remove_wait_queue(ptr noundef %93, ptr noundef nonnull %7) #6
  store volatile i32 0, ptr %23, align 8
  br label %94

94:                                               ; preds = %87, %62
  %95 = phi i32 [ %63, %62 ], [ %88, %87 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %164, label %97, !prof !23

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(120) %24, i8 0, i64 120, i1 false) #6
  %98 = load i32, ptr %8, align 4
  store i32 %98, ptr %5, align 8
  %99 = load i32, ptr %25, align 4
  store i32 %99, ptr %26, align 4
  %100 = load i32, ptr %27, align 4
  store i32 %100, ptr %24, align 8
  %101 = call i32 @siginfo_layout(i32 noundef %98, i32 noundef %100) #6
  switch i32 %101, label %148 [
    i32 0, label %102
    i32 1, label %105
    i32 2, label %111
    i32 6, label %114
    i32 7, label %114
    i32 8, label %114
    i32 3, label %114
    i32 4, label %118
    i32 5, label %123
    i32 9, label %128
    i32 10, label %136
    i32 11, label %142
  ]

102:                                              ; preds = %97
  %103 = load i32, ptr %28, align 4
  store i32 %103, ptr %34, align 4
  %104 = load i32, ptr %30, align 4
  store i32 %104, ptr %35, align 8
  br label %148

105:                                              ; preds = %97
  %106 = load i32, ptr %28, align 4
  store i32 %106, ptr %48, align 8
  %107 = load i32, ptr %30, align 4
  store i32 %107, ptr %49, align 8
  %108 = load ptr, ptr %32, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = sext i32 %109 to i64
  store i64 %110, ptr %36, align 8
  store i32 %109, ptr %37, align 4
  br label %148

111:                                              ; preds = %97
  %112 = load i32, ptr %28, align 4
  store i32 %112, ptr %46, align 4
  %113 = load i32, ptr %30, align 4
  store i32 %113, ptr %47, align 4
  br label %148

114:                                              ; preds = %97, %97, %97, %97
  %115 = load ptr, ptr %28, align 4
  %116 = ptrtoint ptr %115 to i32
  %117 = sext i32 %116 to i64
  store i64 %117, ptr %43, align 8
  br label %148

118:                                              ; preds = %97
  %119 = load ptr, ptr %28, align 4
  %120 = ptrtoint ptr %119 to i32
  %121 = sext i32 %120 to i64
  store i64 %121, ptr %43, align 8
  %122 = load i32, ptr %30, align 4
  store i32 %122, ptr %45, align 4
  br label %148

123:                                              ; preds = %97
  %124 = load ptr, ptr %28, align 4
  %125 = ptrtoint ptr %124 to i32
  %126 = sext i32 %125 to i64
  store i64 %126, ptr %43, align 8
  %127 = load i16, ptr %30, align 4
  store i16 %127, ptr %44, align 8
  br label %148

128:                                              ; preds = %97
  %129 = load i32, ptr %28, align 4
  store i32 %129, ptr %34, align 4
  %130 = load i32, ptr %30, align 4
  store i32 %130, ptr %35, align 8
  %131 = load i32, ptr %32, align 4
  store i32 %131, ptr %38, align 8
  %132 = load i32, ptr %39, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, ptr %40, align 8
  %134 = load i32, ptr %41, align 4
  %135 = sext i32 %134 to i64
  store i64 %135, ptr %42, align 8
  br label %148

136:                                              ; preds = %97
  %137 = load i32, ptr %28, align 4
  store i32 %137, ptr %34, align 4
  %138 = load i32, ptr %30, align 4
  store i32 %138, ptr %35, align 8
  %139 = load ptr, ptr %32, align 4
  %140 = ptrtoint ptr %139 to i32
  %141 = sext i32 %140 to i64
  store i64 %141, ptr %36, align 8
  store i32 %140, ptr %37, align 4
  br label %148

142:                                              ; preds = %97
  %143 = load ptr, ptr %28, align 4
  %144 = ptrtoint ptr %143 to i32
  %145 = sext i32 %144 to i64
  store i64 %145, ptr %29, align 8
  %146 = load i32, ptr %30, align 4
  store i32 %146, ptr %31, align 4
  %147 = load i32, ptr %32, align 4
  store i32 %147, ptr %33, align 8
  br label %148

148:                                              ; preds = %142, %136, %128, %123, %118, %114, %111, %105, %102, %97
  %149 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %54, i32 128, i32 -1090519040) #7, !srcloc !24
  %150 = extractvalue { i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %50) #8, !srcloc !11
  %154 = and i32 %153, -13
  %155 = or i32 %154, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %155) #6, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !13
  %156 = call i32 @arm_copy_to_user(ptr noundef %54, ptr noundef nonnull %5, i32 noundef 128) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #6, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !13
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %152, %148
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  br label %164

159:                                              ; preds = %152
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  %160 = getelementptr %struct.signalfd_siginfo, ptr %54, i32 1
  %161 = add nuw i32 %56, 128
  %162 = add nsw i32 %53, -1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %52

164:                                              ; preds = %159, %158, %94
  %165 = phi i32 [ -14, %158 ], [ 128, %159 ], [ %95, %94 ]
  %166 = phi i32 [ %56, %158 ], [ %51, %159 ], [ %56, %94 ]
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %167, i32 %165, i32 %166
  br label %169

169:                                              ; preds = %164, %4
  %170 = phi i32 [ %168, %164 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #6
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @signalfd_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @llvm.thread.pointer() #6
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 94
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sighand_struct, ptr %7, i32 0, i32 2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 4
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  tail call void %11(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %1) #6
  %16 = load ptr, ptr %6, align 4
  br label %17

17:                                               ; preds = %15, %10, %2
  %18 = phi ptr [ %7, %2 ], [ %7, %10 ], [ %16, %15 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 98
  %20 = tail call i32 @next_signal(ptr noundef %19, ptr noundef %4) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 6
  %26 = tail call i32 @next_signal(ptr noundef %25, ptr noundef %4) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ 1, %28 ], [ 0, %22 ]
  %31 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @signalfd_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @signalfd_show_fdinfo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.sigset_t, align 8
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i32
  %10 = xor i32 %9, -1
  store i32 %10, ptr %7, align 4
  %11 = trunc i64 %6 to i32
  %12 = xor i32 %11, -1
  store i32 %12, ptr %3, align 8
  call void @render_sigset_t(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dequeue_signal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @siginfo_layout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @next_signal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @render_sigset_t(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{i64 2150976447, i64 2150976472}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3472559}
!12 = !{i64 3472756}
!13 = !{i64 2150958035}
!14 = !{!15}
!15 = distinct !{!15, !16, !"fdget: argument 0"}
!16 = distinct !{!16, !"fdget"}
!17 = !{i64 2148952358}
!18 = !{i64 2148948182}
!19 = !{i64 2148948257, i64 2148948284, i64 2148948331, i64 2148948353, i64 2148948381, i64 2148948401}
!20 = !{i64 326585}
!21 = !{i64 2148976502}
!22 = !{i64 2153693814}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2150977025, i64 2150977050}
