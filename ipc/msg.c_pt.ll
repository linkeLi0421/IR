; ModuleID = '/llk/IR/ipc/msg.c_pt.bc'
source_filename = "../ipc/msg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipc_ops = type { ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipc_params = type { i32, i32, %union.anon.93 }
%union.anon.93 = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%union.anon.37 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [4 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rhash_head = type { ptr }
%struct.msg_queue = type { %struct.kern_ipc_perm, i64, i64, i64, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, [60 x i8] }
%struct.msqid_ds = type { %struct.ipc_perm, ptr, ptr, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.ipc_perm = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.msqid64_ds = type { %struct.ipc64_perm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i16, [2 x i8], i16, i16, i32, i32 }
%struct.msginfo = type { i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.wake_q_head = type { ptr, ptr }
%struct.msg_sender = type { %struct.list_head, ptr, i32 }
%struct.msgbuf = type { i32, [1 x i8] }
%struct.msg_msg = type { %struct.list_head, i32, i32, ptr, ptr }
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
%struct.msg_receiver = type { %struct.list_head, ptr, i32, i32, i32, ptr }

@ksys_msgget.msg_ops = internal constant %struct.ipc_ops { ptr @newque, ptr @security_msg_queue_associate, ptr null }, align 4
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@.str = private unnamed_addr constant [12 x i8] c"sysvipc/msg\00", align 1
@.str.1 = private unnamed_addr constant [121 x i8] c"       key      msqid perms      cbytes       qnum lspid lrpid   uid   gid  cuid  cgid      stime      rtime      ctime\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ipc_mni = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"%10d %10d  %4o  %10lu %10lu %5u %5u %5u %5u %5u %5u %10llu %10llu %10llu\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4

@sys_msgget = dso_local alias i32 (i32, i32), ptr @__se_sys_msgget
@sys_msgctl = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_msgctl
@sys_old_msgctl = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_old_msgctl
@sys_msgsnd = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_msgsnd
@sys_msgrcv = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_msgrcv

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_msgget(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ipc_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store i32 %0, ptr %3, align 4
  %10 = getelementptr inbounds %struct.ipc_params, ptr %3, i32 0, i32 1
  store i32 %1, ptr %10, align 4
  %11 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 1
  %12 = call i32 @ipcget(ptr noundef %9, ptr noundef %11, ptr noundef nonnull @ksys_msgget.msg_ops, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @newque(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ipc_params, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 4197568, i32 noundef 192) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9, !prof !9

9:                                                ; preds = %2
  %10 = trunc i32 %5 to i16
  %11 = and i16 %10, 511
  %12 = getelementptr inbounds %struct.kern_ipc_perm, ptr %7, i32 0, i32 8
  store i16 %11, ptr %12, align 32
  %13 = getelementptr inbounds %struct.kern_ipc_perm, ptr %7, i32 0, i32 3
  store i32 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.kern_ipc_perm, ptr %7, i32 0, i32 10
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 64 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %16 = tail call i64 @ktime_get_real_seconds() #10
  %17 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 3
  store i64 %16, ptr %17, align 16
  %18 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 5
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 4
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 6
  store i32 %21, ptr %22, align 32
  %23 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 8
  store ptr null, ptr %23, align 8
  %24 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 7
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 9
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 9, i32 1
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 10
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 10, i32 1
  store ptr %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 11
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.msg_queue, ptr %7, i32 0, i32 11, i32 1
  store ptr %29, ptr %30, align 8
  %31 = getelementptr [3 x %struct.ipc_ids], ptr %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @ipc_addid(ptr noundef %31, ptr noundef nonnull %7, i32 noundef %33) #10
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %9
  tail call void @ipc_rcu_putref(ptr noundef nonnull %7, ptr noundef nonnull @msg_rcu_free) #10
  br label %42

37:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %38 = load i16, ptr %7, align 8
  %39 = add i16 %38, 1
  store i16 %39, ptr %7, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %40 = getelementptr inbounds %struct.kern_ipc_perm, ptr %7, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  br label %42

42:                                               ; preds = %37, %36, %2
  %43 = phi i32 [ %34, %36 ], [ %41, %37 ], [ -12, %2 ]
  ret i32 %43
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @security_msg_queue_associate(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msgget(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.ipc_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store i32 %0, ptr %3, align 4
  %10 = getelementptr inbounds %struct.ipc_params, ptr %3, i32 0, i32 1
  store i32 %1, ptr %10, align 4
  %11 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 1
  %12 = call i32 @ipcget(ptr noundef %9, ptr noundef %11, ptr noundef nonnull @ksys_msgget.msg_ops, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msgctl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %2 to ptr
  %5 = tail call fastcc i32 @ksys_msgctl(i32 noundef %0, i32 noundef %1, ptr noundef %4, i32 noundef 256) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_old_msgctl(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = call i32 @ipc_parse_version(ptr noundef nonnull %4) #10
  %6 = load i32, ptr %4, align 4
  %7 = call fastcc i32 @ksys_msgctl(i32 noundef %0, i32 noundef %6, ptr noundef %2, i32 noundef %5)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_parse_version(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ksys_msgctl(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.msqid_ds, align 4
  %6 = alloca %struct.msqid_ds, align 4
  %7 = alloca %struct.msqid64_ds, align 4
  %8 = alloca %struct.msginfo, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %7, i8 0, i32 88, i1 false), !annotation !8
  %9 = or i32 %1, %0
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %265

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #10
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 92
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nsproxy, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  switch i32 %1, label %265 [
    i32 3, label %17
    i32 12, label %17
    i32 11, label %70
    i32 13, label %70
    i32 2, label %70
    i32 1, label %209
    i32 0, label %263
  ]

17:                                               ; preds = %11, %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  %18 = getelementptr inbounds %struct.ipc_namespace, ptr %16, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.msginfo, ptr %8, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ipc_namespace, ptr %16, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msginfo, ptr %8, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ipc_namespace, ptr %16, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.msginfo, ptr %8, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.msginfo, ptr %8, i32 0, i32 5
  store i32 16, ptr %27, align 4
  %28 = getelementptr inbounds %struct.msginfo, ptr %8, i32 0, i32 7
  store i16 -1, ptr %28, align 4
  %29 = getelementptr [3 x %struct.ipc_ids], ptr %16, i32 0, i32 1
  %30 = getelementptr [3 x %struct.ipc_ids], ptr %16, i32 0, i32 1, i32 2
  tail call void @down_read(ptr noundef %30) #10
  %31 = icmp eq i32 %1, 12
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load i32, ptr %29, align 4
  store i32 %33, ptr %8, align 4
  %34 = getelementptr inbounds %struct.ipc_namespace, ptr %16, i32 0, i32 7
  %35 = load volatile i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ipc_namespace, ptr %16, i32 0, i32 6
  %37 = load volatile i32, ptr %36, align 4
  br label %39

38:                                               ; preds = %17
  store i32 512000, ptr %8, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %35, %32 ], [ 16384, %38 ]
  %41 = phi i32 [ %37, %32 ], [ 16384, %38 ]
  %42 = getelementptr inbounds %struct.msginfo, ptr %8, i32 0, i32 1
  store i32 %40, ptr %42, align 4
  %43 = getelementptr inbounds %struct.msginfo, ptr %8, i32 0, i32 6
  store i32 %41, ptr %43, align 4
  %44 = load i32, ptr %29, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr @ipc_mni, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = add i32 %44, -1
  br label %54

51:                                               ; preds = %46
  %52 = getelementptr [3 x %struct.ipc_ids], ptr %16, i32 0, i32 1, i32 4
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %49, %39
  %55 = phi i32 [ %50, %49 ], [ %53, %51 ], [ -1, %39 ]
  tail call void @up_read(ptr noundef %30) #10
  %56 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 32, i32 -1090519040) #12, !srcloc !15
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = tail call i32 @llvm.smax.i32(i32 %55, i32 0) #10
  %61 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %61) #13, !srcloc !16
  %63 = and i32 %62, -13
  %64 = or i32 %63, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %65 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %8, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 %60, i32 -14
  br label %68

68:                                               ; preds = %59, %54
  %69 = phi i32 [ -14, %54 ], [ %67, %59 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  br label %265

70:                                               ; preds = %11, %11, %11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %7, i8 0, i32 88, i1 false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %71 = icmp eq i32 %1, 13
  switch i32 %1, label %78 [
    i32 13, label %72
    i32 11, label %72
  ]

72:                                               ; preds = %70, %70
  %73 = getelementptr [3 x %struct.ipc_ids], ptr %16, i32 0, i32 1
  %74 = tail call ptr @ipc_obtain_object_idr(ptr noundef %73, i32 noundef %0) #10
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = ptrtoint ptr %74 to i32
  br label %145

78:                                               ; preds = %70
  %79 = getelementptr [3 x %struct.ipc_ids], ptr %16, i32 0, i32 1
  %80 = tail call ptr @ipc_obtain_object_check(ptr noundef %79, i32 noundef %0) #10
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = ptrtoint ptr %80 to i32
  br label %145

84:                                               ; preds = %78, %72
  %85 = phi ptr [ %74, %72 ], [ %80, %78 ]
  br i1 %71, label %89, label %86

86:                                               ; preds = %84
  %87 = tail call i32 @ipcperms(ptr noundef %16, ptr noundef %85, i16 noundef signext 292) #10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %143

89:                                               ; preds = %86, %84
  tail call void @_raw_spin_lock(ptr noundef %85) #10
  %90 = getelementptr inbounds %struct.kern_ipc_perm, ptr %85, i32 0, i32 1
  %91 = load i8, ptr %90, align 4, !range !20
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %94 = load i16, ptr %85, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %85, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %143

96:                                               ; preds = %89
  call void @kernel_to_ipc64_perm(ptr noundef %85, ptr noundef nonnull %7) #10
  %97 = getelementptr inbounds %struct.msg_queue, ptr %85, i32 0, i32 1
  %98 = load i64, ptr %97, align 64
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 1
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.msg_queue, ptr %85, i32 0, i32 2
  %102 = load i64, ptr %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 3
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.msg_queue, ptr %85, i32 0, i32 3
  %106 = load i64, ptr %105, align 16
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 5
  store i32 %107, ptr %108, align 4
  %109 = lshr i64 %98, 32
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 2
  store i32 %110, ptr %111, align 4
  %112 = lshr i64 %102, 32
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 4
  store i32 %113, ptr %114, align 4
  %115 = lshr i64 %106, 32
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 6
  store i32 %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.msg_queue, ptr %85, i32 0, i32 4
  %119 = load i32, ptr %118, align 8
  %120 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 7
  store i32 %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.msg_queue, ptr %85, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 8
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.msg_queue, ptr %85, i32 0, i32 6
  %125 = load i32, ptr %124, align 32
  %126 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 9
  store i32 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.msg_queue, ptr %85, i32 0, i32 7
  %128 = load ptr, ptr %127, align 4
  %129 = call i32 @pid_vnr(ptr noundef %128) #10
  %130 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 10
  store i32 %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.msg_queue, ptr %85, i32 0, i32 8
  %132 = load ptr, ptr %131, align 8
  %133 = call i32 @pid_vnr(ptr noundef %132) #10
  %134 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 11
  store i32 %133, ptr %134, align 4
  %135 = icmp eq i32 %1, 2
  br i1 %135, label %139, label %136

136:                                              ; preds = %96
  %137 = getelementptr inbounds %struct.kern_ipc_perm, ptr %85, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  br label %139

139:                                              ; preds = %136, %96
  %140 = phi i32 [ %138, %136 ], [ 0, %96 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %141 = load i16, ptr %85, align 4
  %142 = add i16 %141, 1
  store i16 %142, ptr %85, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %145

143:                                              ; preds = %93, %86
  %144 = phi i32 [ -13, %86 ], [ -43, %93 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %265

145:                                              ; preds = %139, %82, %76
  %146 = phi i32 [ %77, %76 ], [ %140, %139 ], [ %83, %82 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %265, label %148

148:                                              ; preds = %145
  switch i32 %3, label %265 [
    i32 256, label %149
    i32 0, label %159
  ]

149:                                              ; preds = %148
  %150 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 88, i32 -1090519040) #12, !srcloc !15
  %151 = extractvalue { i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %265

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %155 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %154) #13, !srcloc !16
  %156 = and i32 %155, -13
  %157 = or i32 %156, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %157) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %158 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %7, i32 noundef 88) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %155) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %205

159:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %6, i8 0, i64 56, i1 false) #10
  call void @ipc64_perm_to_ipc_perm(ptr noundef nonnull %7, ptr noundef nonnull %6) #10
  %160 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 3
  store i32 %161, ptr %162, align 4
  %163 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 4
  store i32 %164, ptr %165, align 4
  %166 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 5
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 5
  store i32 %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 7
  %170 = load i32, ptr %169, align 4
  %171 = call i32 @llvm.umin.i32(i32 %170, i32 65535) #10
  %172 = trunc i32 %171 to i16
  %173 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 8
  store i16 %172, ptr %173, align 4
  %174 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 6
  store i32 %170, ptr %174, align 4
  %175 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 8
  %176 = load i32, ptr %175, align 4
  %177 = call i32 @llvm.umin.i32(i32 %176, i32 65535) #10
  %178 = trunc i32 %177 to i16
  %179 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 9
  store i16 %178, ptr %179, align 2
  %180 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 9
  %181 = load i32, ptr %180, align 4
  %182 = call i32 @llvm.umin.i32(i32 %181, i32 65535) #10
  %183 = trunc i32 %182 to i16
  %184 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 10
  store i16 %183, ptr %184, align 4
  %185 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 7
  store i32 %181, ptr %185, align 4
  %186 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 10
  %187 = load i32, ptr %186, align 4
  %188 = trunc i32 %187 to i16
  %189 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 11
  store i16 %188, ptr %189, align 2
  %190 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 11
  %191 = load i32, ptr %190, align 4
  %192 = trunc i32 %191 to i16
  %193 = getelementptr inbounds %struct.msqid_ds, ptr %6, i32 0, i32 12
  store i16 %192, ptr %193, align 4
  %194 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 56, i32 -1090519040) #12, !srcloc !15
  %195 = extractvalue { i32, i32 } %194, 0
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %159
  %198 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %199 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %198) #13, !srcloc !16
  %200 = and i32 %199, -13
  %201 = or i32 %200, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %201) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %202 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 56) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %199) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  br label %203

203:                                              ; preds = %197, %159
  %204 = phi i32 [ %202, %197 ], [ 56, %159 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  br label %205

205:                                              ; preds = %203, %153
  %206 = phi i32 [ %204, %203 ], [ %158, %153 ]
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i32 %146, i32 -14
  br label %265

209:                                              ; preds = %11
  switch i32 %3, label %265 [
    i32 256, label %210
    i32 0, label %228
  ]

210:                                              ; preds = %209
  %211 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 88, i32 -1090519040) #12, !srcloc !21
  %212 = extractvalue { i32, i32 } %211, 0
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %224, !prof !22

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %216 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %215) #13, !srcloc !16
  %217 = and i32 %216, -13
  %218 = or i32 %217, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %218) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %219 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %2, i32 noundef 88) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %216) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224, !prof !22

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 9
  %223 = load i32, ptr %222, align 4
  br label %260

224:                                              ; preds = %214, %210
  %225 = phi i32 [ %219, %214 ], [ 88, %210 ]
  %226 = sub i32 88, %225
  %227 = getelementptr i8, ptr %7, i32 %226
  call void @llvm.memset.p0.i32(ptr align 1 %227, i8 0, i32 %225, i1 false) #10
  br label %265

228:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false) #10, !annotation !8
  %229 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 56, i32 -1090519040) #12, !srcloc !21
  %230 = extractvalue { i32, i32 } %229, 0
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %259, !prof !22

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %234 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %233) #13, !srcloc !16
  %235 = and i32 %234, -13
  %236 = or i32 %235, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %236) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %237 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 56) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %234) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %259, !prof !22

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.ipc_perm, ptr %5, i32 0, i32 1
  %241 = load i16, ptr %240, align 4
  %242 = zext i16 %241 to i32
  %243 = getelementptr inbounds %struct.ipc64_perm, ptr %7, i32 0, i32 1
  store i32 %242, ptr %243, align 4
  %244 = getelementptr inbounds %struct.ipc_perm, ptr %5, i32 0, i32 2
  %245 = load i16, ptr %244, align 2
  %246 = zext i16 %245 to i32
  %247 = getelementptr inbounds %struct.ipc64_perm, ptr %7, i32 0, i32 2
  store i32 %246, ptr %247, align 4
  %248 = getelementptr inbounds %struct.ipc_perm, ptr %5, i32 0, i32 5
  %249 = load i16, ptr %248, align 4
  %250 = getelementptr inbounds %struct.ipc64_perm, ptr %7, i32 0, i32 5
  store i16 %249, ptr %250, align 4
  %251 = getelementptr inbounds %struct.msqid_ds, ptr %5, i32 0, i32 10
  %252 = load i16, ptr %251, align 4
  %253 = icmp eq i16 %252, 0
  %254 = getelementptr inbounds %struct.msqid_ds, ptr %5, i32 0, i32 7
  %255 = load i32, ptr %254, align 4
  %256 = zext i16 %252 to i32
  %257 = select i1 %253, i32 %255, i32 %256
  %258 = getelementptr inbounds %struct.msqid64_ds, ptr %7, i32 0, i32 9
  store i32 %257, ptr %258, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #10
  br label %260

259:                                              ; preds = %232, %228
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #10
  br label %265

260:                                              ; preds = %239, %221
  %261 = phi i32 [ %223, %221 ], [ %257, %239 ]
  %262 = call fastcc i32 @msgctl_down(ptr noundef %16, i32 noundef %0, i32 noundef 1, ptr noundef nonnull %7, i32 noundef %261)
  br label %265

263:                                              ; preds = %11
  %264 = tail call fastcc i32 @msgctl_down(ptr noundef %16, i32 noundef %0, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %265

265:                                              ; preds = %263, %260, %259, %224, %209, %205, %149, %148, %145, %143, %68, %11, %4
  %266 = phi i32 [ %264, %263 ], [ %262, %260 ], [ %69, %68 ], [ -22, %4 ], [ %146, %145 ], [ -14, %259 ], [ -22, %11 ], [ %144, %143 ], [ -14, %148 ], [ -14, %149 ], [ -14, %209 ], [ -14, %224 ], [ %208, %205 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #10
  ret i32 %266
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_msgctl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 %1, ptr %4, align 4
  %6 = call i32 @ipc_parse_version(ptr noundef nonnull %4) #10
  %7 = load i32, ptr %4, align 4
  %8 = call fastcc i32 @ksys_msgctl(i32 noundef %0, i32 noundef %7, ptr noundef %5, i32 noundef %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_msgsnd(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wake_q_head, align 8
  %6 = alloca %struct.msg_sender, align 4
  %7 = tail call ptr @llvm.thread.pointer() #10
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #13, !srcloc !16
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #10, !srcloc !23
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #10, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %207

15:                                               ; preds = %4
  %16 = extractvalue { i32, i32 } %12, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store ptr inttoptr (i32 1 to ptr), ptr %5, align 8
  %17 = getelementptr inbounds %struct.wake_q_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 92
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nsproxy, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ipc_namespace, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %2
  %25 = or i32 %2, %0
  %26 = icmp slt i32 %25, 0
  %27 = or i1 %26, %24
  %28 = icmp slt i32 %16, 1
  %29 = or i1 %28, %27
  br i1 %29, label %205, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.msgbuf, ptr %1, i32 0, i32 1
  %32 = call ptr @load_msg(ptr noundef %31, i32 noundef %2) #10
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = ptrtoint ptr %32 to i32
  br label %205

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.msg_msg, ptr %32, i32 0, i32 1
  store i32 %16, ptr %37, align 4
  %38 = getelementptr inbounds %struct.msg_msg, ptr %32, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %39 = getelementptr [3 x %struct.ipc_ids], ptr %21, i32 0, i32 1
  %40 = call ptr @ipc_obtain_object_check(ptr noundef %39, i32 noundef %0) #10
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = ptrtoint ptr %40 to i32
  br label %200

44:                                               ; preds = %36
  call void @_raw_spin_lock(ptr noundef %40) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %45 = call i32 @ipcperms(ptr noundef %21, ptr noundef %40, i16 noundef signext 146) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.kern_ipc_perm, ptr %40, i32 0, i32 1
  %49 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 4
  %50 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 6
  %51 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 5
  %52 = and i32 %3, 2048
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.msg_sender, ptr %6, i32 0, i32 1
  %55 = getelementptr inbounds %struct.msg_sender, ptr %6, i32 0, i32 2
  %56 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %57 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 11
  %58 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 11, i32 1
  %59 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  br label %60

60:                                               ; preds = %97, %47
  %61 = load i8, ptr %48, align 4, !range !20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load i32, ptr %49, align 8
  %65 = add i32 %64, %2
  %66 = load i32, ptr %50, align 32
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %51, align 4
  %70 = add i32 %69, 1
  %71 = icmp ugt i32 %70, %66
  br i1 %71, label %72, label %100

72:                                               ; preds = %68, %63
  br i1 %53, label %73, label %95

73:                                               ; preds = %72
  store ptr %7, ptr %54, align 4
  store i32 %2, ptr %55, align 4
  store volatile i32 1, ptr %56, align 8
  %74 = load ptr, ptr %58, align 4
  store ptr %6, ptr %58, align 4
  store ptr %57, ptr %6, align 4
  store ptr %74, ptr %59, align 4
  store volatile ptr %6, ptr %74, align 4
  %75 = call zeroext i1 @ipc_rcu_getref(ptr noundef %40) #10
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %77 = load i16, ptr %40, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %40, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  call void @schedule() #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  call void @_raw_spin_lock(ptr noundef %40) #10
  call void @ipc_rcu_putref(ptr noundef %40, ptr noundef nonnull @msg_rcu_free) #10
  %79 = load i8, ptr %48, align 4, !range !20
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load ptr, ptr %6, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %59, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %85, ptr %86, align 4
  store volatile ptr %82, ptr %85, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load volatile i32, ptr %7, align 4
  %89 = and i32 %88, 256
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95, !prof !22

91:                                               ; preds = %87
  %92 = load volatile i32, ptr %7, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %97, %91, %87, %76, %73, %72, %60, %44
  %96 = phi i32 [ -13, %44 ], [ -514, %91 ], [ -43, %76 ], [ -43, %73 ], [ -11, %72 ], [ -43, %60 ], [ -13, %97 ], [ -514, %87 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %195

97:                                               ; preds = %91
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #10, !annotation !8
  %98 = call i32 @ipcperms(ptr noundef %21, ptr noundef %40, i16 noundef signext 146) #10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %60, label %95

100:                                              ; preds = %68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %101 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 7
  %102 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %103 = load ptr, ptr %102, align 16
  %104 = getelementptr %struct.signal_struct, ptr %103, i32 0, i32 22, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %101, align 4
  %107 = icmp eq ptr %106, %105
  br i1 %107, label %121, label %108

108:                                              ; preds = %100
  %109 = icmp eq ptr %105, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %108
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %105) #10, !srcloc !24
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %105, ptr nonnull %105, i32 1, ptr nonnull elementtype(i32) %105) #10, !srcloc !25
  %112 = extractvalue { i32, i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114, !prof !9

114:                                              ; preds = %110
  %115 = add i32 %112, 1
  %116 = or i32 %115, %112
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %120, label %118, !prof !22

118:                                              ; preds = %114, %110
  %119 = phi i32 [ 2, %110 ], [ 1, %114 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %105, i32 noundef %119) #10
  br label %120

120:                                              ; preds = %118, %114, %108
  store ptr %105, ptr %101, align 4
  call void @put_pid(ptr noundef %106) #10
  br label %121

121:                                              ; preds = %120, %100
  %122 = call i64 @ktime_get_real_seconds() #10
  %123 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 1
  store i64 %122, ptr %123, align 64
  %124 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 10
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %124
  br i1 %126, label %182, label %127

127:                                              ; preds = %175, %121
  %128 = phi ptr [ %129, %175 ], [ %125, %121 ]
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.msg_receiver, ptr %128, i32 0, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.msg_receiver, ptr %128, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  switch i32 %133, label %175 [
    i32 1, label %143
    i32 5, label %143
    i32 4, label %134
    i32 2, label %137
    i32 3, label %140
  ]

134:                                              ; preds = %127
  %135 = load i32, ptr %37, align 4
  %136 = icmp sgt i32 %135, %131
  br i1 %136, label %175, label %143

137:                                              ; preds = %127
  %138 = load i32, ptr %37, align 4
  %139 = icmp eq i32 %138, %131
  br i1 %139, label %143, label %175

140:                                              ; preds = %127
  %141 = load i32, ptr %37, align 4
  %142 = icmp eq i32 %141, %131
  br i1 %142, label %175, label %143

143:                                              ; preds = %140, %137, %134, %127, %127
  %144 = getelementptr inbounds %struct.msg_receiver, ptr %128, i32 0, i32 1
  %145 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  store ptr %146, ptr %147, align 4
  store volatile ptr %129, ptr %146, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %128, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %145, align 4
  %148 = getelementptr inbounds %struct.msg_receiver, ptr %128, i32 0, i32 4
  %149 = load i32, ptr %148, align 4
  %150 = load i32, ptr %38, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load ptr, ptr %144, align 4
  call void @wake_q_add(ptr noundef nonnull %5, ptr noundef %153) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  %154 = getelementptr inbounds %struct.msg_receiver, ptr %128, i32 0, i32 5
  store volatile ptr inttoptr (i32 -7 to ptr), ptr %154, align 4
  br label %175

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 8
  %157 = load ptr, ptr %144, align 4
  %158 = getelementptr inbounds %struct.task_struct, ptr %157, i32 0, i32 62
  %159 = load ptr, ptr %158, align 64
  %160 = load ptr, ptr %156, align 4
  %161 = icmp eq ptr %160, %159
  br i1 %161, label %177, label %162

162:                                              ; preds = %155
  %163 = icmp eq ptr %159, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %162
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %159) #10, !srcloc !24
  %165 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %159, ptr nonnull %159, i32 1, ptr nonnull elementtype(i32) %159) #10, !srcloc !25
  %166 = extractvalue { i32, i32, i32 } %165, 0
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168, !prof !9

168:                                              ; preds = %164
  %169 = add i32 %166, 1
  %170 = or i32 %169, %166
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %174, label %172, !prof !22

172:                                              ; preds = %168, %164
  %173 = phi i32 [ 2, %164 ], [ 1, %168 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %159, i32 noundef %173) #10
  br label %174

174:                                              ; preds = %172, %168, %162
  store ptr %159, ptr %156, align 4
  call void @put_pid(ptr noundef %160) #10
  br label %177

175:                                              ; preds = %152, %140, %137, %134, %127
  %176 = icmp eq ptr %129, %124
  br i1 %176, label %182, label %127

177:                                              ; preds = %174, %155
  %178 = call i64 @ktime_get_real_seconds() #10
  %179 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 2
  store i64 %178, ptr %179, align 8
  %180 = load ptr, ptr %144, align 4
  call void @wake_q_add(ptr noundef nonnull %5, ptr noundef %180) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  %181 = getelementptr inbounds %struct.msg_receiver, ptr %128, i32 0, i32 5
  store volatile ptr %32, ptr %181, align 4
  br label %195

182:                                              ; preds = %175, %121
  %183 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 9
  %184 = getelementptr inbounds %struct.msg_queue, ptr %40, i32 0, i32 9, i32 1
  %185 = load ptr, ptr %184, align 4
  store ptr %32, ptr %184, align 4
  store ptr %183, ptr %32, align 4
  %186 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %185, ptr %186, align 4
  store volatile ptr %32, ptr %185, align 4
  %187 = load i32, ptr %49, align 8
  %188 = add i32 %187, %2
  store i32 %188, ptr %49, align 8
  %189 = load i32, ptr %51, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %51, align 4
  %191 = getelementptr inbounds %struct.ipc_namespace, ptr %21, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %191) #10, !srcloc !24
  %192 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %191, ptr %191, i32 %2, ptr elementtype(i32) %191) #10, !srcloc !28
  %193 = getelementptr inbounds %struct.ipc_namespace, ptr %21, i32 0, i32 7
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %193) #10, !srcloc !24
  %194 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %193, ptr %193, i32 1, ptr elementtype(i32) %193) #10, !srcloc !28
  br label %195

195:                                              ; preds = %182, %177, %95
  %196 = phi ptr [ null, %182 ], [ null, %177 ], [ %32, %95 ]
  %197 = phi i32 [ 0, %182 ], [ 0, %177 ], [ %96, %95 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %198 = load i16, ptr %40, align 4
  %199 = add i16 %198, 1
  store i16 %199, ptr %40, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void @wake_up_q(ptr noundef nonnull %5) #10
  br label %200

200:                                              ; preds = %195, %42
  %201 = phi ptr [ %32, %42 ], [ %196, %195 ]
  %202 = phi i32 [ %43, %42 ], [ %197, %195 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %203 = icmp eq ptr %201, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  call void @free_msg(ptr noundef nonnull %201) #10
  br label %205

205:                                              ; preds = %204, %200, %34, %15
  %206 = phi i32 [ %35, %34 ], [ -22, %15 ], [ %202, %204 ], [ %202, %200 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %207

207:                                              ; preds = %205, %4
  %208 = phi i32 [ %206, %205 ], [ -14, %4 ]
  ret i32 %208
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msgsnd(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %1 to ptr
  %6 = tail call i32 @ksys_msgsnd(i32 noundef %0, ptr noundef %5, i32 noundef %2, i32 noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_msgrcv(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.wake_q_head, align 8
  %7 = alloca %struct.msg_receiver, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr inttoptr (i32 1 to ptr), ptr %6, align 8
  %8 = getelementptr inbounds %struct.wake_q_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 92
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = or i32 %2, %0
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %243

16:                                               ; preds = %5
  %17 = and i32 %4, 16384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = and i32 %4, 10240
  %21 = icmp eq i32 %20, 2048
  %22 = select i1 %21, i32 -38, i32 -22
  br label %243

23:                                               ; preds = %16
  %24 = icmp eq i32 %3, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %23
  %26 = icmp slt i32 %3, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = icmp eq i32 %3, -2147483648
  %29 = sub i32 0, %3
  %30 = select i1 %28, i32 2147483647, i32 %29
  br label %35

31:                                               ; preds = %25
  %32 = and i32 %4, 8192
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 2, i32 3
  br label %35

35:                                               ; preds = %31, %27, %23
  %36 = phi i32 [ 0, %23 ], [ %30, %27 ], [ %3, %31 ]
  %37 = phi i32 [ 1, %23 ], [ 4, %27 ], [ %34, %31 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %38 = getelementptr [3 x %struct.ipc_ids], ptr %13, i32 0, i32 1
  %39 = call ptr @ipc_obtain_object_check(ptr noundef %38, i32 noundef %0) #10
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %62, label %41

41:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 28, i1 false) #10, !annotation !8
  %42 = call i32 @ipcperms(ptr noundef %13, ptr noundef %39, i16 noundef signext 292) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %208

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.kern_ipc_perm, ptr %39, i32 0, i32 1
  %46 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 9
  %47 = and i32 %4, 2048
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 10
  %50 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 10, i32 1
  %51 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %52 = getelementptr inbounds %struct.msg_receiver, ptr %7, i32 0, i32 1
  %53 = getelementptr inbounds %struct.msg_receiver, ptr %7, i32 0, i32 3
  %54 = getelementptr inbounds %struct.msg_receiver, ptr %7, i32 0, i32 2
  %55 = and i32 %4, 4096
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.msg_receiver, ptr %7, i32 0, i32 4
  %58 = getelementptr inbounds %struct.msg_receiver, ptr %7, i32 0, i32 5
  %59 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %60 = select i1 %56, i32 %2, i32 2147483647
  %61 = icmp eq i32 %37, 1
  br label %64

62:                                               ; preds = %35
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %63 = ptrtoint ptr %39 to i32
  br label %243

64:                                               ; preds = %210, %44
  %65 = phi i32 [ %36, %44 ], [ %186, %210 ]
  call void @_raw_spin_lock(ptr noundef %39) #10
  %66 = load i8, ptr %45, align 4, !range !20
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %215

68:                                               ; preds = %64
  %69 = load ptr, ptr %46, align 4
  %70 = icmp eq ptr %69, %46
  br i1 %70, label %185, label %71

71:                                               ; preds = %68
  br i1 %61, label %101, label %72

72:                                               ; preds = %93, %71
  %73 = phi i32 [ %94, %93 ], [ %65, %71 ]
  %74 = phi i32 [ %95, %93 ], [ %65, %71 ]
  %75 = phi ptr [ %97, %93 ], [ %69, %71 ]
  %76 = phi ptr [ %96, %93 ], [ null, %71 ]
  switch i32 %37, label %93 [
    i32 3, label %85
    i32 2, label %81
    i32 4, label %77
  ]

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.msg_msg, ptr %75, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp sgt i32 %79, %74
  br i1 %80, label %93, label %89

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.msg_msg, ptr %75, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, %74
  br i1 %84, label %101, label %93

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.msg_msg, ptr %75, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, %74
  br i1 %88, label %93, label %101

89:                                               ; preds = %77
  %90 = icmp eq i32 %79, 1
  br i1 %90, label %101, label %91

91:                                               ; preds = %89
  %92 = add i32 %79, -1
  br label %93

93:                                               ; preds = %91, %85, %81, %77, %72
  %94 = phi i32 [ %73, %77 ], [ %73, %81 ], [ %73, %85 ], [ %92, %91 ], [ %73, %72 ]
  %95 = phi i32 [ %74, %77 ], [ %74, %81 ], [ %74, %85 ], [ %92, %91 ], [ %74, %72 ]
  %96 = phi ptr [ %76, %77 ], [ %76, %81 ], [ %76, %85 ], [ %75, %91 ], [ %76, %72 ]
  %97 = load ptr, ptr %75, align 4
  %98 = icmp eq ptr %97, %46
  br i1 %98, label %99, label %72

99:                                               ; preds = %93
  %100 = icmp eq ptr %96, null
  br i1 %100, label %185, label %101

101:                                              ; preds = %99, %89, %85, %81, %71
  %102 = phi i32 [ %94, %99 ], [ %65, %71 ], [ %73, %89 ], [ %73, %85 ], [ %73, %81 ]
  %103 = phi ptr [ %96, %99 ], [ %69, %71 ], [ %75, %89 ], [ %75, %85 ], [ %75, %81 ]
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %185, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.msg_msg, ptr %103, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = icmp ugt i32 %107, %2
  %109 = and i1 %56, %108
  br i1 %109, label %215, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %103, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %112, ptr %114, align 4
  store volatile ptr %113, ptr %112, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %103, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %111, align 4
  %115 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, -1
  store i32 %117, ptr %115, align 4
  %118 = call i64 @ktime_get_real_seconds() #10
  %119 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 2
  store i64 %118, ptr %119, align 8
  %120 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 8
  %121 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 93
  %122 = load ptr, ptr %121, align 16
  %123 = getelementptr %struct.signal_struct, ptr %122, i32 0, i32 22, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = load ptr, ptr %120, align 4
  %126 = icmp eq ptr %125, %124
  br i1 %126, label %140, label %127

127:                                              ; preds = %110
  %128 = icmp eq ptr %124, null
  br i1 %128, label %139, label %129

129:                                              ; preds = %127
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %124) #10, !srcloc !24
  %130 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %124, ptr nonnull %124, i32 1, ptr nonnull elementtype(i32) %124) #10, !srcloc !25
  %131 = extractvalue { i32, i32, i32 } %130, 0
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133, !prof !9

133:                                              ; preds = %129
  %134 = add i32 %131, 1
  %135 = or i32 %134, %131
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %139, label %137, !prof !22

137:                                              ; preds = %133, %129
  %138 = phi i32 [ 2, %129 ], [ 1, %133 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %124, i32 noundef %138) #10
  br label %139

139:                                              ; preds = %137, %133, %127
  store ptr %124, ptr %120, align 4
  call void @put_pid(ptr noundef %125) #10
  br label %140

140:                                              ; preds = %139, %110
  %141 = load i32, ptr %106, align 4
  %142 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 4
  %143 = load i32, ptr %142, align 8
  %144 = sub i32 %143, %141
  store i32 %144, ptr %142, align 8
  %145 = load i32, ptr %106, align 4
  %146 = getelementptr inbounds %struct.ipc_namespace, ptr %13, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %146) #10, !srcloc !24
  %147 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %146, ptr %146, i32 %145, ptr elementtype(i32) %146) #10, !srcloc !29
  %148 = getelementptr inbounds %struct.ipc_namespace, ptr %13, i32 0, i32 7
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #10, !srcloc !24
  %149 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 1, ptr elementtype(i32) %148) #10, !srcloc !29
  %150 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 11
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %150
  br i1 %152, label %215, label %153

153:                                              ; preds = %140
  %154 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 6
  %155 = getelementptr inbounds %struct.msg_queue, ptr %39, i32 0, i32 11, i32 1
  br label %156

156:                                              ; preds = %182, %153
  %157 = phi ptr [ %151, %153 ], [ %159, %182 ]
  %158 = phi ptr [ null, %153 ], [ %183, %182 ]
  %159 = load ptr, ptr %157, align 4
  %160 = getelementptr inbounds %struct.msg_sender, ptr %157, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %158, %161
  br i1 %162, label %215, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.msg_sender, ptr %157, i32 0, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = load i32, ptr %142, align 8
  %167 = add i32 %166, %165
  %168 = load i32, ptr %154, align 32
  %169 = icmp ugt i32 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %163
  %171 = load i32, ptr %115, align 4
  %172 = add i32 %171, 1
  %173 = icmp ugt i32 %172, %168
  br i1 %173, label %174, label %181

174:                                              ; preds = %170, %163
  %175 = icmp eq ptr %158, null
  %176 = select i1 %175, ptr %161, ptr %158
  %177 = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  store ptr %178, ptr %179, align 4
  store volatile ptr %159, ptr %178, align 4
  %180 = load ptr, ptr %155, align 4
  store ptr %157, ptr %155, align 4
  store ptr %150, ptr %157, align 4
  store ptr %180, ptr %177, align 4
  store volatile ptr %157, ptr %180, align 4
  br label %182

181:                                              ; preds = %170
  call void @wake_q_add(ptr noundef nonnull %6, ptr noundef %161) #10
  br label %182

182:                                              ; preds = %181, %174
  %183 = phi ptr [ %158, %181 ], [ %176, %174 ]
  %184 = icmp eq ptr %159, %150
  br i1 %184, label %215, label %156

185:                                              ; preds = %101, %99, %68
  %186 = phi i32 [ %102, %101 ], [ %94, %99 ], [ %65, %68 ]
  br i1 %48, label %187, label %215

187:                                              ; preds = %185
  %188 = load ptr, ptr %50, align 4
  store ptr %7, ptr %50, align 4
  store ptr %49, ptr %7, align 4
  store ptr %188, ptr %51, align 4
  store volatile ptr %7, ptr %188, align 4
  store ptr %9, ptr %52, align 4
  store i32 %186, ptr %53, align 4
  store i32 %37, ptr %54, align 4
  store i32 %60, ptr %57, align 4
  store volatile ptr inttoptr (i32 -11 to ptr), ptr %58, align 4
  store volatile i32 1, ptr %59, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %189 = load i16, ptr %39, align 4
  %190 = add i16 %189, 1
  store i16 %190, ptr %39, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  call void @schedule() #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %191 = load volatile ptr, ptr %58, align 4
  %192 = icmp eq ptr %191, inttoptr (i32 -11 to ptr)
  br i1 %192, label %194, label %193

193:                                              ; preds = %187
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  br label %208

194:                                              ; preds = %187
  call void @_raw_spin_lock(ptr noundef %39) #10
  %195 = load volatile ptr, ptr %58, align 4
  %196 = icmp eq ptr %195, inttoptr (i32 -11 to ptr)
  br i1 %196, label %197, label %215

197:                                              ; preds = %194
  %198 = load ptr, ptr %51, align 4
  %199 = load ptr, ptr %7, align 4
  %200 = getelementptr inbounds %struct.list_head, ptr %199, i32 0, i32 1
  store ptr %198, ptr %200, align 4
  store volatile ptr %199, ptr %198, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  %201 = load volatile i32, ptr %9, align 4
  %202 = and i32 %201, 256
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %215, !prof !22

204:                                              ; preds = %197
  %205 = load volatile i32, ptr %9, align 4
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %215

208:                                              ; preds = %210, %193, %41
  %209 = phi ptr [ %191, %193 ], [ inttoptr (i32 -13 to ptr), %41 ], [ inttoptr (i32 -13 to ptr), %210 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #10
  br label %219

210:                                              ; preds = %204
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %211 = load i16, ptr %39, align 4
  %212 = add i16 %211, 1
  store i16 %212, ptr %39, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 28, i1 false) #10, !annotation !8
  %213 = call i32 @ipcperms(ptr noundef %13, ptr noundef %39, i16 noundef signext 292) #10
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %64, label %208

215:                                              ; preds = %204, %197, %194, %185, %182, %156, %140, %105, %64
  %216 = phi ptr [ %103, %140 ], [ inttoptr (i32 -7 to ptr), %105 ], [ %103, %156 ], [ %103, %182 ], [ inttoptr (i32 -514 to ptr), %204 ], [ inttoptr (i32 -42 to ptr), %185 ], [ inttoptr (i32 -43 to ptr), %64 ], [ %195, %194 ], [ inttoptr (i32 -514 to ptr), %197 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %217 = load i16, ptr %39, align 4
  %218 = add i16 %217, 1
  store i16 %218, ptr %39, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void @wake_up_q(ptr noundef nonnull %6) #10
  br label %219

219:                                              ; preds = %215, %208
  %220 = phi ptr [ %216, %215 ], [ %209, %208 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %221 = icmp ugt ptr %220, inttoptr (i32 -4096 to ptr)
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = ptrtoint ptr %220 to i32
  br label %243

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.msg_msg, ptr %220, i32 0, i32 1
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %228 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %227) #13, !srcloc !16
  %229 = and i32 %228, -13
  %230 = or i32 %229, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %230) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %231 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %226, i32 -1090519041) #10, !srcloc !31
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %228) #10, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !18
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %224
  %234 = getelementptr inbounds %struct.msg_msg, ptr %220, i32 0, i32 2
  %235 = load i32, ptr %234, align 4
  %236 = call i32 @llvm.umin.i32(i32 %235, i32 %2) #10
  %237 = getelementptr inbounds %struct.msgbuf, ptr %1, i32 0, i32 1
  %238 = call i32 @store_msg(ptr noundef %237, ptr noundef %220, i32 noundef %236) #10
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %239, i32 %236, i32 -14
  br label %241

241:                                              ; preds = %233, %224
  %242 = phi i32 [ -14, %224 ], [ %240, %233 ]
  call void @free_msg(ptr noundef %220) #10
  br label %243

243:                                              ; preds = %241, %222, %62, %19, %5
  %244 = phi i32 [ %63, %62 ], [ %223, %222 ], [ %242, %241 ], [ -22, %5 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %244
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msgrcv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %1 to ptr
  %7 = tail call i32 @ksys_msgrcv(i32 noundef %0, ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msg_init_ns(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 3
  store i32 8192, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 4
  store i32 16384, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 5
  store i32 32000, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 6
  store volatile i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 7
  store volatile i32 0, ptr %6, align 4
  %7 = getelementptr [3 x %struct.ipc_ids], ptr %0, i32 0, i32 1
  tail call void @ipc_init_ids(ptr noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_init_ids(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msg_init() local_unnamed_addr #5 section ".init.text" {
  store i32 8192, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 3), align 4
  store i32 16384, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 4), align 4
  store i32 32000, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 5), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 6), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 7), align 4
  tail call void @ipc_init_ids(ptr noundef getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 0, i32 1)) #10
  tail call void @ipc_init_proc_interface(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull @sysvipc_msg_proc_show) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ipc_init_proc_interface(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysvipc_msg_proc_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ipc_seq_pid_ns(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 8
  %9 = load i16, ptr %8, align 32
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.msg_queue, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.msg_queue, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.msg_queue, ptr %1, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @pid_nr_ns(ptr noundef %16, ptr noundef %3) #10
  %18 = getelementptr inbounds %struct.msg_queue, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @pid_nr_ns(ptr noundef %19, ptr noundef %3) #10
  %21 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 16
  %23 = icmp eq i32 %22, -1
  %24 = load i32, ptr @overflowuid, align 4
  %25 = select i1 %23, i32 %24, i32 %22
  %26 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  %29 = load i32, ptr @overflowgid, align 4
  %30 = select i1 %28, i32 %29, i32 %27
  %31 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, -1
  %34 = select i1 %33, i32 %24, i32 %32
  %35 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  %38 = select i1 %37, i32 %29, i32 %36
  %39 = getelementptr inbounds %struct.msg_queue, ptr %1, i32 0, i32 1
  %40 = load i64, ptr %39, align 64
  %41 = getelementptr inbounds %struct.msg_queue, ptr %1, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.msg_queue, ptr %1, i32 0, i32 3
  %44 = load i64, ptr %43, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %5, i32 noundef %7, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %25, i32 noundef %30, i32 noundef %34, i32 noundef %38, i64 noundef %40, i64 noundef %42, i64 noundef %44) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_addid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rcu_putref(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msg_rcu_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  tail call void @kfree(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msgctl_down(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.wake_q_head, align 8
  %7 = alloca %struct.wake_q_head, align 8
  %8 = getelementptr [3 x %struct.ipc_ids], ptr %0, i32 0, i32 1
  %9 = getelementptr [3 x %struct.ipc_ids], ptr %0, i32 0, i32 1, i32 2
  tail call void @down_write(ptr noundef %9) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %10 = tail call ptr @ipcctl_obtain_check(ptr noundef %0, ptr noundef %8, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #10
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = ptrtoint ptr %10 to i32
  br label %156

14:                                               ; preds = %5
  switch i32 %2, label %156 [
    i32 0, label %15
    i32 1, label %76
  ]

15:                                               ; preds = %14
  tail call void @_raw_spin_lock(ptr noundef %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr inttoptr (i32 1 to ptr), ptr %6, align 8
  %16 = getelementptr inbounds %struct.wake_q_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %38, label %20

20:                                               ; preds = %35, %15
  %21 = phi ptr [ %22, %35 ], [ %18, %15 ]
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msg_receiver, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #10, !srcloc !24
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #10, !srcloc !25
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !9

29:                                               ; preds = %20
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33, !prof !22

33:                                               ; preds = %29, %20
  %34 = phi i32 [ 2, %20 ], [ 1, %29 ]
  call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #10
  br label %35

35:                                               ; preds = %33, %29
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  %36 = getelementptr inbounds %struct.msg_receiver, ptr %21, i32 0, i32 5
  store volatile ptr inttoptr (i32 -43 to ptr), ptr %36, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %6, ptr noundef %24) #10
  %37 = icmp eq ptr %22, %17
  br i1 %37, label %38, label %20

38:                                               ; preds = %35, %15
  %39 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %48, label %42

42:                                               ; preds = %42, %38
  %43 = phi ptr [ %44, %42 ], [ %40, %38 ]
  %44 = load ptr, ptr %43, align 4
  store ptr null, ptr %43, align 4
  %45 = getelementptr inbounds %struct.msg_sender, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  call void @wake_q_add(ptr noundef nonnull %6, ptr noundef %46) #10
  %47 = icmp eq ptr %44, %39
  br i1 %47, label %48, label %42

48:                                               ; preds = %42, %38
  call void @ipc_rmid(ptr noundef %8, ptr noundef %10) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %49 = load i16, ptr %10, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void @wake_up_q(ptr noundef nonnull %6) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %51 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 9
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 7
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi ptr [ %52, %54 ], [ %58, %56 ]
  %58 = load ptr, ptr %57, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #10, !srcloc !24
  %59 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #10, !srcloc !29
  call void @free_msg(ptr noundef %57) #10
  %60 = icmp eq ptr %58, %51
  br i1 %60, label %61, label %56

61:                                               ; preds = %56, %48
  %62 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 4
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #10, !srcloc !24
  %65 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 %63, ptr elementtype(i32) %64) #10, !srcloc !29
  %66 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 7
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  store ptr null, ptr %66, align 4
  call void @put_pid(ptr noundef nonnull %67) #10
  br label %70

70:                                               ; preds = %69, %61
  %71 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store ptr null, ptr %71, align 4
  call void @put_pid(ptr noundef nonnull %72) #10
  br label %75

75:                                               ; preds = %74, %70
  call void @ipc_rcu_putref(ptr noundef %10, ptr noundef nonnull @msg_rcu_free) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %158

76:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store ptr inttoptr (i32 1 to ptr), ptr %7, align 8
  %77 = getelementptr inbounds %struct.wake_q_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %77, align 4
  %78 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %79, %4
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %82, label %83, label %151

83:                                               ; preds = %81, %76
  call void @_raw_spin_lock(ptr noundef %10) #10
  %84 = call i32 @ipc_update_perm(ptr noundef %3, ptr noundef %10) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %153

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 6
  store i32 %4, ptr %87, align 32
  %88 = call i64 @ktime_get_real_seconds() #10
  %89 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 3
  store i64 %88, ptr %89, align 16
  %90 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 10
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %90
  br i1 %92, label %111, label %93

93:                                               ; preds = %108, %86
  %94 = phi ptr [ %95, %108 ], [ %91, %86 ]
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.msg_receiver, ptr %94, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #10, !srcloc !24
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #10, !srcloc !25
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102, !prof !9

102:                                              ; preds = %93
  %103 = add i32 %100, 1
  %104 = or i32 %103, %100
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %108, label %106, !prof !22

106:                                              ; preds = %102, %93
  %107 = phi i32 [ 2, %93 ], [ 1, %102 ]
  call void @refcount_warn_saturate(ptr noundef %98, i32 noundef %107) #10
  br label %108

108:                                              ; preds = %106, %102
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  %109 = getelementptr inbounds %struct.msg_receiver, ptr %94, i32 0, i32 5
  store volatile ptr inttoptr (i32 -11 to ptr), ptr %109, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %7, ptr noundef %97) #10
  %110 = icmp eq ptr %95, %90
  br i1 %110, label %111, label %93

111:                                              ; preds = %108, %86
  %112 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 11
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %112
  br i1 %114, label %148, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 4
  %117 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 5
  %118 = getelementptr inbounds %struct.msg_queue, ptr %10, i32 0, i32 11, i32 1
  br label %119

119:                                              ; preds = %145, %115
  %120 = phi ptr [ %113, %115 ], [ %122, %145 ]
  %121 = phi ptr [ null, %115 ], [ %146, %145 ]
  %122 = load ptr, ptr %120, align 4
  %123 = getelementptr inbounds %struct.msg_sender, ptr %120, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %121, %124
  br i1 %125, label %148, label %126

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.msg_sender, ptr %120, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = load i32, ptr %116, align 8
  %130 = add i32 %129, %128
  %131 = load i32, ptr %87, align 32
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load i32, ptr %117, align 4
  %135 = add i32 %134, 1
  %136 = icmp ugt i32 %135, %131
  br i1 %136, label %137, label %144

137:                                              ; preds = %133, %126
  %138 = icmp eq ptr %121, null
  %139 = select i1 %138, ptr %124, ptr %121
  %140 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %141, ptr %142, align 4
  store volatile ptr %122, ptr %141, align 4
  %143 = load ptr, ptr %118, align 4
  store ptr %120, ptr %118, align 4
  store ptr %112, ptr %120, align 4
  store ptr %143, ptr %140, align 4
  store volatile ptr %120, ptr %143, align 4
  br label %145

144:                                              ; preds = %133
  call void @wake_q_add(ptr noundef nonnull %7, ptr noundef %124) #10
  br label %145

145:                                              ; preds = %144, %137
  %146 = phi ptr [ %121, %144 ], [ %139, %137 ]
  %147 = icmp eq ptr %122, %112
  br i1 %147, label %148, label %119

148:                                              ; preds = %145, %119, %111
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %149 = load i16, ptr %10, align 4
  %150 = add i16 %149, 1
  store i16 %150, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void @wake_up_q(ptr noundef nonnull %7) #10
  br label %151

151:                                              ; preds = %148, %81
  %152 = phi i32 [ -1, %81 ], [ 0, %148 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %156

153:                                              ; preds = %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %154 = load i16, ptr %10, align 4
  %155 = add i16 %154, 1
  store i16 %155, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %156

156:                                              ; preds = %153, %151, %14, %12
  %157 = phi i32 [ %13, %12 ], [ %84, %153 ], [ -22, %14 ], [ %152, %151 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %158

158:                                              ; preds = %156, %75
  %159 = phi i32 [ %157, %156 ], [ 0, %75 ]
  call void @up_write(ptr noundef %9) #10
  ret i32 %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcperms(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_to_ipc64_perm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_idr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_check(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc64_perm_to_ipc_perm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipcctl_obtain_check(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_update_perm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_msg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rmid(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_msg(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipc_rcu_getref(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @store_msg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_seq_pid_ns(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }
attributes #14 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148895475}
!11 = !{i64 2148891299}
!12 = !{i64 2148891374, i64 2148891401, i64 2148891448, i64 2148891470, i64 2148891498, i64 2148891518}
!13 = !{i64 2148918478}
!14 = !{i64 2149111210}
!15 = !{i64 2151538183, i64 2151538208}
!16 = !{i64 4033717}
!17 = !{i64 4033914}
!18 = !{i64 2151519193}
!19 = !{i64 2149110993}
!20 = !{i8 0, i8 2}
!21 = !{i64 2151537605, i64 2151537630}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2154015413, i64 2154015693, i64 2154016027, i64 2154016361}
!24 = !{i64 726871, i64 2148216842, i64 2148216868, i64 2148216915, i64 2148216937, i64 2148216965, i64 2148216985}
!25 = !{i64 2148229715, i64 2148229747, i64 2148229776, i64 2148229810, i64 2148229841, i64 2148229864}
!26 = !{i64 2154000457}
!27 = !{i64 2154004605}
!28 = !{i64 2148228257, i64 2148228283, i64 2148228312, i64 2148228346, i64 2148228377, i64 2148228400}
!29 = !{i64 2148230614, i64 2148230640, i64 2148230669, i64 2148230703, i64 2148230734, i64 2148230757}
!30 = !{i64 2154052613}
!31 = !{i64 2154036420, i64 2154036700, i64 2154037034, i64 2154037368}
!32 = !{i64 2153957888}
