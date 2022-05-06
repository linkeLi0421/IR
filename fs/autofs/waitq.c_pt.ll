; ModuleID = '/llk/IR/fs/autofs/waitq.c_pt.bc'
source_filename = "../fs/autofs/waitq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.autofs_wait_queue = type { %struct.wait_queue_head, ptr, i32, %struct.qstr, i32, i32, i64, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.path = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.upid = type { i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.58, %struct.list_head, %struct.list_head, %union.anon.59 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.56 }
%union.anon.56 = type { i64 }
%union.anon.58 = type { %struct.list_head }
%union.anon.59 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { i32, i32 }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.50, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.51, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.52, ptr, %struct.address_space, %struct.list_head, %union.anon.55, i32, i32, ptr, ptr }
%union.anon.50 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.51 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.52 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.55 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.36, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.36 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.21 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.21 = type { %struct.callback_head }
%union.anon.60 = type { %union.autofs_v5_packet_union }
%union.autofs_v5_packet_union = type { %struct.autofs_v5_packet }
%struct.autofs_v5_packet = type { %struct.autofs_packet_hdr, i32, i32, i64, i32, i32, i32, i32, i32, [256 x i8] }
%struct.autofs_packet_hdr = type { i32, i32 }
%struct.autofs_packet_missing = type { %struct.autofs_packet_hdr, i32, i32, [256 x i8] }
%struct.autofs_packet_expire_multi = type { %struct.autofs_packet_hdr, i32, i32, [256 x i8] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@autofs_next_wait_queue = internal unnamed_addr global i32 1, align 4
@autofs_wait.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&wq->queue\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\014autofs4:pid:%d:%s: bad type %d!\0A\00", align 1
@__func__.autofs_notify_daemon = private unnamed_addr constant [21 x i8] c"autofs_notify_daemon\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @autofs_catatonic_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = or i32 %4, 1
  store i32 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  store ptr null, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %12, %7
  %13 = phi ptr [ %15, %12 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.autofs_wait_queue, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.autofs_wait_queue, ptr %13, i32 0, i32 11
  store i32 -2, ptr %16, align 8
  %17 = getelementptr inbounds %struct.autofs_wait_queue, ptr %13, i32 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.autofs_wait_queue, ptr %13, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = sub i32 0, %20
  %22 = getelementptr i8, ptr %18, i32 %21
  tail call void @kfree(ptr noundef %22) #12
  store ptr null, ptr %17, align 8
  %23 = getelementptr inbounds %struct.autofs_wait_queue, ptr %13, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 4
  tail call void @__wake_up(ptr noundef nonnull %13, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %26 = icmp eq ptr %15, null
  br i1 %26, label %27, label %12

27:                                               ; preds = %12, %7
  %28 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @fput(ptr noundef %29) #12
  store ptr null, ptr %28, align 4
  %30 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 1
  store i32 -1, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %1
  tail call void @mutex_unlock(ptr noundef %2) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @autofs_wait(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.path, align 8
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %319

12:                                               ; preds = %3
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.pid, ptr %15, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.pid, ptr %15, i32 0, i32 7, i32 %19, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi ptr [ %21, %17 ], [ null, %12 ]
  %24 = tail call i32 @__task_pid_nr_ns(ptr noundef %13, i32 noundef 0, ptr noundef %23) #12
  %25 = load ptr, ptr %14, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pid, ptr %25, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.pid, ptr %25, i32 0, i32 7, i32 %29, i32 1
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi ptr [ %31, %27 ], [ null, %22 ]
  %34 = tail call i32 @__task_pid_nr_ns(ptr noundef %13, i32 noundef 1, ptr noundef %33) #12
  %35 = icmp eq i32 %24, 0
  %36 = icmp eq i32 %34, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %319, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %45 [
    i32 4, label %319
    i32 2, label %319
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %47, %49
  br i1 %50, label %51, label %319

51:                                               ; preds = %45, %38
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3264, i32 noundef 256) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %319, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %7, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  switch i32 %61, label %64 [
    i32 4, label %62
    i32 2, label %62
  ]

62:                                               ; preds = %59, %59
  %63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str, ptr noundef %7)
  br label %74

64:                                               ; preds = %59, %55
  %65 = tail call ptr @dentry_path_raw(ptr noundef %7, ptr noundef nonnull %53, i32 noundef 255) #12
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @kfree(ptr noundef nonnull %53) #12
  br label %319

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %65, i32 1
  %70 = tail call i32 @strlen(ptr noundef %69)
  %71 = ptrtoint ptr %69 to i32
  %72 = ptrtoint ptr %53 to i32
  %73 = sub i32 %71, %72
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i32 [ %70, %68 ], [ %63, %62 ]
  %76 = phi ptr [ %69, %68 ], [ %53, %62 ]
  %77 = phi i32 [ %73, %68 ], [ 0, %62 ]
  %78 = tail call i32 @full_name_hash(ptr noundef %7, ptr noundef %76, i32 noundef %75) #14
  %79 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 12
  %80 = tail call i32 @mutex_lock_interruptible(ptr noundef %79) #12
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  tail call void @kfree(ptr noundef nonnull %53) #12
  br label %319

83:                                               ; preds = %74
  %84 = load ptr, ptr %6, align 4
  %85 = load i32, ptr %8, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %184

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %112, label %92

92:                                               ; preds = %108, %88
  %93 = phi ptr [ %110, %108 ], [ %90, %88 ]
  %94 = getelementptr inbounds %struct.autofs_wait_queue, ptr %93, i32 0, i32 3
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, %78
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.anon, ptr %94, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, %75
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.autofs_wait_queue, ptr %93, i32 0, i32 3, i32 1
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = tail call i32 @bcmp(ptr nonnull %103, ptr %76, i32 %75) #12
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %257, label %108

108:                                              ; preds = %105, %101, %97, %92
  %109 = getelementptr inbounds %struct.autofs_wait_queue, ptr %93, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %92

112:                                              ; preds = %108, %88
  %113 = getelementptr inbounds %struct.dentry, ptr %84, i32 0, i32 11
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %188, label %116

116:                                              ; preds = %112
  switch i32 %2, label %188 [
    i32 0, label %117
    i32 1, label %157
  ]

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.autofs_info, ptr %114, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %184, label %122

122:                                              ; preds = %153, %117
  tail call void @mutex_unlock(ptr noundef %79) #12
  %123 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #12
  %124 = tail call i32 @mutex_lock_interruptible(ptr noundef %79) #12
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %186

126:                                              ; preds = %122
  %127 = load i32, ptr %8, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %184

130:                                              ; preds = %126
  %131 = load ptr, ptr %89, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %153, label %133

133:                                              ; preds = %149, %130
  %134 = phi ptr [ %151, %149 ], [ %131, %130 ]
  %135 = getelementptr inbounds %struct.autofs_wait_queue, ptr %134, i32 0, i32 3
  %136 = load i32, ptr %135, align 8
  %137 = icmp eq i32 %136, %78
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.anon, ptr %135, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, %75
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.autofs_wait_queue, ptr %134, i32 0, i32 3, i32 1
  %144 = load ptr, ptr %143, align 8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = tail call i32 @bcmp(ptr nonnull %144, ptr %76, i32 %75) #12
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %257, label %149

149:                                              ; preds = %146, %142, %138, %133
  %150 = getelementptr inbounds %struct.autofs_wait_queue, ptr %134, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %133

153:                                              ; preds = %149, %130
  %154 = load i32, ptr %118, align 4
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %184, label %122

157:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %158 = getelementptr inbounds %struct.dentry, ptr %84, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = icmp eq ptr %84, %159
  br i1 %160, label %174, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.dentry, ptr %84, i32 0, i32 2, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.dentry, ptr %84, i32 0, i32 5
  %167 = load ptr, ptr %166, align 8
  %168 = icmp eq ptr %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.dentry, ptr %84, i32 0, i32 4
  %171 = tail call ptr @d_lookup(ptr noundef %159, ptr noundef %170) #12
  %172 = icmp eq ptr %171, null
  %173 = select i1 %172, ptr %84, ptr %171
  br label %174

174:                                              ; preds = %169, %165, %161, %157
  %175 = phi ptr [ %84, %157 ], [ %173, %169 ], [ %84, %165 ], [ %84, %161 ]
  %176 = phi ptr [ null, %157 ], [ %171, %169 ], [ null, %165 ], [ null, %161 ]
  %177 = load ptr, ptr %1, align 4
  store ptr %177, ptr %4, align 8
  %178 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  store ptr %175, ptr %178, align 4
  %179 = call i32 @path_has_submounts(ptr noundef nonnull %4) #12
  %180 = icmp eq i32 %179, 0
  %181 = icmp eq ptr %176, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %174
  call void @dput(ptr noundef nonnull %176) #12
  br label %183

183:                                              ; preds = %182, %174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br i1 %180, label %188, label %184

184:                                              ; preds = %183, %153, %126, %117, %83
  %185 = phi i32 [ 0, %183 ], [ -2, %83 ], [ 0, %117 ], [ 0, %153 ], [ -2, %126 ]
  call void @mutex_unlock(ptr noundef %79) #12
  br label %186

186:                                              ; preds = %184, %122
  %187 = phi i32 [ %185, %184 ], [ -4, %122 ]
  call void @kfree(ptr noundef nonnull %53) #12
  br label %319

188:                                              ; preds = %183, %116, %112
  %189 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %190 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %189, i32 noundef 3264, i32 noundef 80) #13
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  call void @kfree(ptr noundef nonnull %53) #12
  call void @mutex_unlock(ptr noundef %79) #12
  br label %319

193:                                              ; preds = %188
  %194 = load i32, ptr @autofs_next_wait_queue, align 4
  %195 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 2
  store i32 %194, ptr %195, align 8
  %196 = add i32 %194, 1
  %197 = icmp eq i32 %196, 0
  %198 = select i1 %197, i32 1, i32 %196
  store i32 %198, ptr @autofs_next_wait_queue, align 4
  %199 = load ptr, ptr %89, align 4
  %200 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 1
  store ptr %199, ptr %200, align 4
  store ptr %190, ptr %89, align 4
  call void @__init_waitqueue_head(ptr noundef nonnull %190, ptr noundef nonnull @.str.1, ptr noundef nonnull @autofs_wait.__key) #12
  %201 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 3
  store i32 %78, ptr %201, align 8
  %202 = getelementptr inbounds i8, ptr %201, i32 4
  store i32 %75, ptr %202, align 4
  %203 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 3, i32 1
  store ptr %76, ptr %203, align 8
  %204 = getelementptr inbounds i8, ptr %201, i32 12
  store i32 0, ptr %204, align 4
  %205 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 4
  store i32 %77, ptr %205, align 8
  %206 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 11
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.super_block, ptr %207, i32 0, i32 1
  %209 = load i32, ptr %208, align 8
  %210 = and i32 %209, 255
  %211 = lshr i32 %209, 12
  %212 = and i32 %211, 1048320
  %213 = or i32 %212, %210
  %214 = shl i32 %209, 12
  %215 = and i32 %214, -1048576
  %216 = or i32 %213, %215
  %217 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 5
  store i32 %216, ptr %217, align 4
  %218 = getelementptr inbounds %struct.super_block, ptr %207, i32 0, i32 13
  %219 = load ptr, ptr %218, align 64
  %220 = getelementptr inbounds %struct.dentry, ptr %219, i32 0, i32 5
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds %struct.inode, ptr %221, i32 0, i32 10
  %223 = load i32, ptr %222, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 6
  store i64 %224, ptr %225, align 8
  %226 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 7
  %227 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 83
  %228 = load ptr, ptr %227, align 8
  %229 = getelementptr inbounds %struct.cred, ptr %228, i32 0, i32 1
  %230 = load i32, ptr %229, align 4
  store i32 %230, ptr %226, align 8
  %231 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 8
  %232 = load ptr, ptr %227, align 8
  %233 = getelementptr inbounds %struct.cred, ptr %232, i32 0, i32 2
  %234 = load i32, ptr %233, align 4
  store i32 %234, ptr %231, align 4
  %235 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 9
  store i32 %24, ptr %235, align 8
  %236 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 10
  store i32 %34, ptr %236, align 4
  %237 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 11
  store i32 -4, ptr %237, align 8
  %238 = getelementptr inbounds %struct.autofs_wait_queue, ptr %190, i32 0, i32 12
  store i32 2, ptr %238, align 4
  %239 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 4
  %240 = load i32, ptr %239, align 4
  %241 = icmp slt i32 %240, 5
  %242 = icmp eq i32 %2, 1
  br i1 %241, label %243, label %245

243:                                              ; preds = %193
  %244 = select i1 %242, i32 0, i32 2
  br label %255

245:                                              ; preds = %193
  %246 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 10
  %247 = load i32, ptr %246, align 4
  %248 = icmp ne i32 %247, 2
  %249 = icmp ne i32 %247, 4
  %250 = and i1 %248, %249
  br i1 %242, label %251, label %253

251:                                              ; preds = %245
  %252 = select i1 %250, i32 3, i32 5
  br label %255

253:                                              ; preds = %245
  %254 = select i1 %250, i32 4, i32 6
  br label %255

255:                                              ; preds = %253, %251, %243
  %256 = phi i32 [ %252, %251 ], [ %254, %253 ], [ %244, %243 ]
  call fastcc void @autofs_notify_daemon(ptr noundef %0, ptr noundef nonnull %190, i32 noundef %256)
  br label %262

257:                                              ; preds = %146, %105
  %258 = phi ptr [ %134, %146 ], [ %93, %105 ]
  %259 = getelementptr inbounds %struct.autofs_wait_queue, ptr %258, i32 0, i32 12
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, 1
  store i32 %261, ptr %259, align 4
  tail call void @mutex_unlock(ptr noundef %79) #12
  tail call void @kfree(ptr noundef nonnull %53) #12
  br label %262

262:                                              ; preds = %257, %255
  %263 = phi ptr [ %190, %255 ], [ %258, %257 ]
  %264 = getelementptr inbounds %struct.autofs_wait_queue, ptr %263, i32 0, i32 3, i32 1
  %265 = load ptr, ptr %264, align 8
  %266 = icmp eq ptr %265, null
  br i1 %266, label %280, label %267

267:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #12
  %268 = call i32 @prepare_to_wait_event(ptr noundef nonnull %263, ptr noundef nonnull %5, i32 noundef 258) #12
  %269 = load ptr, ptr %264, align 8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %278, label %271

271:                                              ; preds = %274, %267
  %272 = phi i32 [ %275, %274 ], [ %268, %267 ]
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  call void @schedule() #12
  %275 = call i32 @prepare_to_wait_event(ptr noundef %263, ptr noundef nonnull %5, i32 noundef 258) #12
  %276 = load ptr, ptr %264, align 8
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %271

278:                                              ; preds = %274, %267
  call void @finish_wait(ptr noundef %263, ptr noundef nonnull %5) #12
  br label %279

279:                                              ; preds = %278, %271
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #12
  br label %280

280:                                              ; preds = %279, %262
  %281 = getelementptr inbounds %struct.autofs_wait_queue, ptr %263, i32 0, i32 11
  %282 = load i32, ptr %281, align 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %312

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 11
  %286 = load ptr, ptr %285, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %297

288:                                              ; preds = %284
  %289 = load ptr, ptr %56, align 8
  %290 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 4
  %291 = call ptr @d_lookup(ptr noundef %289, ptr noundef %290) #12
  %292 = icmp eq ptr %291, null
  br i1 %292, label %312, label %293

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.dentry, ptr %291, i32 0, i32 11
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %310, label %297

297:                                              ; preds = %293, %284
  %298 = phi ptr [ %291, %293 ], [ null, %284 ]
  %299 = phi ptr [ %295, %293 ], [ %286, %284 ]
  %300 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %300) #12
  %301 = getelementptr inbounds %struct.autofs_info, ptr %299, i32 0, i32 9
  %302 = getelementptr inbounds %struct.autofs_wait_queue, ptr %263, i32 0, i32 7
  %303 = load i32, ptr %302, align 8
  store i32 %303, ptr %301, align 4
  %304 = getelementptr inbounds %struct.autofs_info, ptr %299, i32 0, i32 10
  %305 = getelementptr inbounds %struct.autofs_wait_queue, ptr %263, i32 0, i32 8
  %306 = load i32, ptr %305, align 4
  store i32 %306, ptr %304, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %307 = load i16, ptr %300, align 4
  %308 = add i16 %307, 1
  store i16 %308, ptr %300, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %309 = icmp eq ptr %298, null
  br i1 %309, label %312, label %310

310:                                              ; preds = %297, %293
  %311 = phi ptr [ %298, %297 ], [ %291, %293 ]
  call void @dput(ptr noundef nonnull %311) #12
  br label %312

312:                                              ; preds = %310, %297, %288, %280
  call void @mutex_lock(ptr noundef %79) #12
  %313 = getelementptr inbounds %struct.autofs_wait_queue, ptr %263, i32 0, i32 12
  %314 = load i32, ptr %313, align 4
  %315 = add i32 %314, -1
  store i32 %315, ptr %313, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  call void @kfree(ptr noundef %263) #12
  br label %318

318:                                              ; preds = %317, %312
  call void @mutex_unlock(ptr noundef %79) #12
  br label %319

319:                                              ; preds = %318, %192, %186, %82, %67, %51, %45, %42, %42, %32, %3
  %320 = phi i32 [ -4, %82 ], [ %187, %186 ], [ %282, %318 ], [ -12, %192 ], [ -2, %3 ], [ -2, %32 ], [ -2, %42 ], [ -2, %45 ], [ -12, %51 ], [ -2, %67 ], [ -2, %42 ]
  ret i32 %320
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_path_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @autofs_notify_daemon(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %union.anon.60, align 8
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(296) %6, i8 0, i64 296, i1 false)
  %7 = load i32, ptr %5, align 4
  store i32 %7, ptr %4, align 8
  %8 = getelementptr inbounds %struct.autofs_packet_hdr, ptr %4, i32 0, i32 1
  store i32 %2, ptr %8, align 4
  switch i32 %2, label %69 [
    i32 0, label %9
    i32 2, label %21
    i32 3, label %33
    i32 4, label %33
    i32 5, label %33
    i32 6, label %33
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.autofs_packet_missing, ptr %4, i32 0, i32 1
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.autofs_packet_missing, ptr %4, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.autofs_packet_missing, ptr %4, i32 0, i32 3
  %18 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %17, ptr align 1 %19, i32 %15, i1 false)
  %20 = getelementptr %struct.autofs_packet_missing, ptr %4, i32 0, i32 3, i32 %15
  store i8 0, ptr %20, align 1
  br label %75

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %4, i32 0, i32 1
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 3
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %4, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.autofs_packet_expire_multi, ptr %4, i32 0, i32 3
  %30 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %29, ptr align 1 %31, i32 %27, i1 false)
  %32 = getelementptr %struct.autofs_packet_expire_multi, ptr %4, i32 0, i32 3, i32 %27
  store i8 0, ptr %32, align 1
  br label %75

33:                                               ; preds = %3, %3, %3, %3
  %34 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.autofs_v5_packet, ptr %4, i32 0, i32 1
  store i32 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 3
  %38 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.autofs_v5_packet, ptr %4, i32 0, i32 8
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.autofs_v5_packet, ptr %4, i32 0, i32 9
  %42 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 3, i32 1
  %43 = load ptr, ptr %42, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %41, ptr align 1 %43, i32 %39, i1 false)
  %44 = getelementptr %struct.autofs_v5_packet, ptr %4, i32 0, i32 9, i32 %39
  store i8 0, ptr %44, align 1
  %45 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.autofs_v5_packet, ptr %4, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 6
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.autofs_v5_packet, ptr %4, i32 0, i32 3
  store i64 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 7
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, -1
  %54 = load i32, ptr @overflowuid, align 4
  %55 = select i1 %53, i32 %54, i32 %52
  %56 = getelementptr inbounds %struct.autofs_v5_packet, ptr %4, i32 0, i32 4
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, -1
  %60 = load i32, ptr @overflowgid, align 4
  %61 = select i1 %59, i32 %60, i32 %58
  %62 = getelementptr inbounds %struct.autofs_v5_packet, ptr %4, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 9
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.autofs_v5_packet, ptr %4, i32 0, i32 6
  store i32 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.autofs_v5_packet, ptr %4, i32 0, i32 7
  store i32 %67, ptr %68, align 4
  br label %75

69:                                               ; preds = %3
  %70 = tail call ptr @llvm.thread.pointer() #12
  %71 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 52
  %72 = load i32, ptr %71, align 8
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %72, ptr noundef nonnull @__func__.autofs_notify_daemon, i32 noundef %2) #15
  %74 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %74) #12
  br label %117

75:                                               ; preds = %33, %21, %9
  %76 = phi i32 [ 304, %33 ], [ 272, %21 ], [ 272, %9 ]
  %77 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.file, ptr %78, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #12, !srcloc !13
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #12, !srcloc !14
  %81 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %81) #12
  %82 = tail call ptr @llvm.thread.pointer() #12
  %83 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 98, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %85) #12
  br label %86

86:                                               ; preds = %86, %75
  %87 = phi i32 [ %76, %75 ], [ %92, %86 ]
  %88 = phi ptr [ %4, %75 ], [ %91, %86 ]
  %89 = call i32 @__kernel_write(ptr noundef %78, ptr noundef %88, i32 noundef %87, ptr noundef null) #12
  %90 = icmp slt i32 %89, 1
  %91 = getelementptr i8, ptr %88, i32 %89
  %92 = sub i32 %87, %89
  %93 = icmp eq i32 %92, 0
  %94 = or i1 %90, %93
  br i1 %94, label %95, label %86

95:                                               ; preds = %86
  call void @mutex_unlock(ptr noundef %85) #12
  %96 = icmp ne i32 %89, -32
  %97 = and i32 %84, 4096
  %98 = icmp ne i32 %97, 0
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 94
  %102 = load ptr, ptr %101, align 4
  %103 = call i32 @_raw_spin_lock_irqsave(ptr noundef %102) #12
  %104 = load i32, ptr %83, align 4
  %105 = and i32 %104, -4097
  store i32 %105, ptr %83, align 4
  call void @recalc_sigpending() #12
  %106 = load ptr, ptr %101, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %106, i32 noundef %103) #12
  br label %107

107:                                              ; preds = %100, %95
  %108 = icmp slt i32 %89, 0
  %109 = select i1 %108, i32 %89, i32 -5
  %110 = select i1 %90, i32 %109, i32 0
  switch i32 %110, label %115 [
    i32 0, label %116
    i32 -12, label %111
    i32 -512, label %111
  ]

111:                                              ; preds = %107, %107
  %112 = getelementptr inbounds %struct.autofs_wait_queue, ptr %1, i32 0, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = call i32 @autofs_wait_release(ptr noundef %0, i32 noundef %113, i32 noundef %110)
  br label %116

115:                                              ; preds = %107
  call void @autofs_catatonic_mode(ptr noundef %0)
  br label %116

116:                                              ; preds = %115, %111, %107
  call void @fput(ptr noundef %78) #12
  br label %117

117:                                              ; preds = %116, %69
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @autofs_wait_release(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.autofs_sb_info, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.autofs_wait_queue, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %23, label %16

12:                                               ; preds = %16
  %13 = getelementptr inbounds %struct.autofs_wait_queue, ptr %19, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %21, label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %19, %12 ], [ %6, %8 ]
  %18 = getelementptr inbounds %struct.autofs_wait_queue, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %12

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.autofs_wait_queue, ptr %17, i32 0, i32 1
  br label %23

23:                                               ; preds = %21, %8
  %24 = phi ptr [ %6, %8 ], [ %19, %21 ]
  %25 = phi ptr [ %5, %8 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.autofs_wait_queue, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.autofs_wait_queue, ptr %24, i32 0, i32 3, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.autofs_wait_queue, ptr %24, i32 0, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = sub i32 0, %31
  %33 = getelementptr i8, ptr %29, i32 %32
  tail call void @kfree(ptr noundef %33) #12
  store ptr null, ptr %28, align 8
  %34 = getelementptr inbounds %struct.autofs_wait_queue, ptr %24, i32 0, i32 11
  store i32 %2, ptr %34, align 8
  tail call void @__wake_up(ptr noundef nonnull %24, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %35 = getelementptr inbounds %struct.autofs_wait_queue, ptr %24, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  tail call void @kfree(ptr noundef nonnull %24) #12
  br label %40

40:                                               ; preds = %39, %23, %16, %3
  %41 = phi i32 [ -22, %3 ], [ 0, %39 ], [ 0, %23 ], [ -22, %16 ]
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @path_has_submounts(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { cold nounwind }

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
!9 = !{i64 2149243396}
!10 = !{i64 2149239220}
!11 = !{i64 2149239295, i64 2149239322, i64 2149239369, i64 2149239391, i64 2149239419, i64 2149239439}
!12 = !{i64 2149266399}
!13 = !{i64 466464, i64 2147968030, i64 2147968056, i64 2147968103, i64 2147968125, i64 2147968153, i64 2147968173}
!14 = !{i64 2148031292, i64 2148031318, i64 2148031347, i64 2148031381, i64 2148031412, i64 2148031435}
