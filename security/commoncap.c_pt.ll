; ModuleID = '/llk/IR/security/commoncap.c_pt.bc'
source_filename = "../security/commoncap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.7 }
%union.anon.7 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.9, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.57 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.29, %struct.list_head, %struct.list_head, %union.anon.30 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.22, ptr }
%union.anon.22 = type { i64 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.29 = type { %struct.list_head }
%union.anon.30 = type { %struct.hlist_node }
%struct.vfs_ns_cap_data = type { i32, [2 x %struct.anon.75], i32 }
%struct.anon.75 = type { i32, i32 }
%struct.vfs_cap_data = type { i32, [2 x %struct.anon.74] }
%struct.anon.74 = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.71 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.cpu_vfs_cap_data = type { i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kuid_t }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.file = type { %union.anon.21, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [21 x i8] c"security/commoncap.c\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"security.capability\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"capability\00", align 1
@__cap_empty_set = external dso_local local_unnamed_addr constant %struct.kernel_cap_struct, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@dac_mmap_min_addr = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@file_caps_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"\015Invalid argument reading file caps for %s\0A\00", align 1
@warn_setuid_and_fcaps_mixed.warned = internal unnamed_addr global i1 false, align 4
@.str.5 = private unnamed_addr constant [106 x i8] c"\016warning: `%s' has both setuid-root and effective capabilities. Therefore not raising all capabilities.\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cap_capable(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.user_namespace, ptr %6, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 5
  br label %22

12:                                               ; preds = %31, %4
  %13 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 12
  %14 = ashr i32 %2, 5
  %15 = getelementptr [2 x i32], ptr %13, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %2, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  %21 = sext i1 %20 to i32
  br label %36

22:                                               ; preds = %27, %8
  %23 = phi ptr [ %1, %8 ], [ %29, %27 ]
  %24 = getelementptr inbounds %struct.user_namespace, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, %10
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.user_namespace, ptr %23, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %6
  br i1 %30, label %31, label %22

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.user_namespace, ptr %23, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %11, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %12

36:                                               ; preds = %31, %22, %12
  %37 = phi i32 [ %21, %12 ], [ 0, %31 ], [ -1, %22 ]
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_settime(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = tail call zeroext i1 @capable(i32 noundef 25) #14
  %4 = xor i1 %3, true
  %5 = sext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_ptrace_access_check(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  %3 = tail call ptr @llvm.thread.pointer() #14
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 83
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 21
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = and i32 %1, 8
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 11
  %17 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 12
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 11, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %18, align 4
  %24 = getelementptr inbounds [2 x i32], ptr %18, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %23, -1
  %27 = and i32 %20, %26
  %28 = xor i32 %25, -1
  %29 = and i32 %22, %28
  %30 = icmp eq i32 %27, 0
  %31 = icmp eq i32 %29, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %37, label %33

33:                                               ; preds = %13, %2
  %34 = tail call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 19) #14
  %35 = xor i1 %34, true
  %36 = sext i1 %35 to i32
  br label %37

37:                                               ; preds = %33, %13
  %38 = phi i32 [ 0, %13 ], [ %36, %33 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_ptrace_traceme(ptr noundef %0) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %3 = load volatile ptr, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #14
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 11
  %14 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 11
  %15 = load i32, ptr %13, align 4
  %16 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 11, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %14, align 4
  %19 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 11, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %18, -1
  %22 = and i32 %15, %21
  %23 = xor i32 %20, -1
  %24 = and i32 %17, %23
  %25 = icmp eq i32 %22, 0
  %26 = icmp eq i32 %24, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %32, label %28

28:                                               ; preds = %12, %1
  %29 = tail call zeroext i1 @has_ns_capability(ptr noundef %0, ptr noundef %10, i32 noundef 19) #14
  %30 = xor i1 %29, true
  %31 = sext i1 %30 to i32
  br label %32

32:                                               ; preds = %28, %12
  %33 = phi i32 [ 0, %12 ], [ %31, %28 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_ns_capability(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_capget(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %6 = load volatile ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 12
  %8 = load i64, ptr %7, align 4
  store i64 %8, ptr %1, align 4
  %9 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %2, align 4
  %11 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 11
  %12 = load i64, ptr %11, align 4
  store i64 %12, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_capset(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 10
  br i1 %12, label %21, label %14

14:                                               ; preds = %5
  %15 = load i32, ptr %13, align 4
  %16 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 10, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %3, align 4
  %19 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  br label %41

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 11
  %23 = load i32, ptr %13, align 4
  %24 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 10, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %22, align 4
  %27 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 11, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %26, %23
  %30 = or i32 %28, %25
  %31 = load i32, ptr %3, align 4
  %32 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %29, -1
  %35 = and i32 %31, %34
  %36 = xor i32 %30, -1
  %37 = and i32 %33, %36
  %38 = icmp eq i32 %35, 0
  %39 = icmp eq i32 %37, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %122

41:                                               ; preds = %21, %14
  %42 = phi i32 [ %20, %14 ], [ %33, %21 ]
  %43 = phi i32 [ %18, %14 ], [ %31, %21 ]
  %44 = phi i32 [ %17, %14 ], [ %25, %21 ]
  %45 = phi i32 [ %15, %14 ], [ %23, %21 ]
  %46 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 13
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 13, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %47, %45
  %51 = or i32 %49, %44
  %52 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %53 = xor i32 %50, -1
  %54 = and i32 %43, %53
  %55 = xor i32 %51, -1
  %56 = and i32 %42, %55
  %57 = icmp eq i32 %54, 0
  %58 = icmp eq i32 %56, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %122

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 11
  %62 = load i32, ptr %4, align 4
  %63 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %61, align 4
  %66 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 11, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = xor i32 %65, -1
  %69 = and i32 %62, %68
  %70 = xor i32 %67, -1
  %71 = and i32 %64, %70
  %72 = icmp eq i32 %69, 0
  %73 = icmp eq i32 %71, 0
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %122

75:                                               ; preds = %60
  %76 = load i32, ptr %2, align 4
  %77 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = xor i32 %62, -1
  %80 = and i32 %76, %79
  %81 = xor i32 %64, -1
  %82 = and i32 %78, %81
  %83 = icmp eq i32 %80, 0
  %84 = icmp eq i32 %82, 0
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %122

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 12
  %88 = load i64, ptr %2, align 4
  store i64 %88, ptr %87, align 4
  %89 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 10
  %90 = load i64, ptr %3, align 4
  store i64 %90, ptr %89, align 4
  %91 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 11
  %92 = load i64, ptr %4, align 4
  store i64 %92, ptr %91, align 4
  %93 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 14
  %94 = load i32, ptr %4, align 4
  %95 = load i32, ptr %63, align 4
  %96 = load i32, ptr %3, align 4
  %97 = load i32, ptr %52, align 4
  %98 = and i32 %96, %94
  %99 = and i32 %97, %95
  %100 = load i32, ptr %93, align 4
  %101 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 14, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %98, %100
  %104 = and i32 %99, %102
  %105 = zext i32 %104 to i64
  %106 = shl nuw i64 %105, 32
  %107 = zext i32 %103 to i64
  %108 = or i64 %106, %107
  store i64 %108, ptr %93, align 4
  %109 = and i64 %90, %92
  %110 = trunc i64 %109 to i32
  %111 = and i64 %90, %92
  %112 = lshr i64 %111, 32
  %113 = trunc i64 %112 to i32
  %114 = xor i32 %110, -1
  %115 = and i32 %103, %114
  %116 = xor i32 %113, -1
  %117 = and i32 %104, %116
  %118 = icmp eq i32 %115, 0
  %119 = icmp eq i32 %117, 0
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %122, label %121, !prof !10

121:                                              ; preds = %86
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef null) #14
  br label %122

122:                                              ; preds = %121, %86, %75, %60, %41, %21
  %123 = phi i32 [ -1, %21 ], [ -1, %41 ], [ -1, %60 ], [ -1, %75 ], [ -22, %121 ], [ 0, %86 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_inode_need_killpriv(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__vfs_getxattr(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0) #14
  %5 = icmp sgt i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_inode_killpriv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @__vfs_removexattr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1) #14
  %4 = icmp eq i32 %3, -95
  %5 = select i1 %4, i32 0, i32 %3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_inode_getsecurity(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store ptr null, ptr %6, align 4
  %7 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(11) @.str.2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %5
  %10 = tail call ptr @d_find_any_alias(ptr noundef %1) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %59, label %12

12:                                               ; preds = %9
  %13 = call i32 @vfs_getxattr_alloc(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, i32 noundef 24, i32 noundef 3136) #14
  call void @dput(ptr noundef nonnull %10) #14
  %14 = icmp sgt i32 %13, -1
  %15 = load ptr, ptr %6, align 4
  %16 = icmp ne ptr %15, null
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %59

18:                                               ; preds = %12
  switch i32 %13, label %56 [
    i32 20, label %19
    i32 24, label %26
  ]

19:                                               ; preds = %18
  %20 = load i32, ptr %15, align 4
  %21 = and i32 %20, -2
  %22 = icmp ne i32 %21, 33554432
  %23 = xor i1 %4, true
  %24 = or i1 %22, %23
  %25 = select i1 %22, i32 -22, i32 20
  br i1 %24, label %56, label %52

26:                                               ; preds = %18
  %27 = load i32, ptr %15, align 4
  %28 = and i32 %27, -2
  %29 = icmp eq i32 %28, 50331648
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %15, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, -2
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  br i1 %4, label %36, label %56

36:                                               ; preds = %35
  store ptr null, ptr %6, align 4
  br label %53

37:                                               ; preds = %30
  %38 = icmp ne i32 %32, 0
  %39 = xor i1 %4, true
  %40 = or i1 %38, %39
  %41 = select i1 %38, i32 -75, i32 20
  br i1 %40, label %56, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 2848, i32 noundef 20) #15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %15, align 4
  %48 = and i32 %47, 1
  %49 = or i32 %48, 33554432
  %50 = getelementptr inbounds %struct.vfs_cap_data, ptr %44, i32 0, i32 1
  %51 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %15, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %50, ptr noundef align 4 dereferenceable(16) %51, i32 16, i1 false)
  store i32 %49, ptr %44, align 8
  br label %53

52:                                               ; preds = %19
  store ptr null, ptr %6, align 4
  br label %53

53:                                               ; preds = %52, %46, %36
  %54 = phi ptr [ %15, %36 ], [ %44, %46 ], [ %15, %52 ]
  %55 = phi i32 [ 24, %36 ], [ 20, %46 ], [ 20, %52 ]
  store ptr %54, ptr %3, align 4
  br label %56

56:                                               ; preds = %53, %42, %37, %35, %26, %19, %18
  %57 = phi i32 [ 24, %35 ], [ -22, %26 ], [ %41, %37 ], [ -12, %42 ], [ %25, %19 ], [ -22, %18 ], [ %55, %53 ]
  %58 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %58) #14
  br label %59

59:                                               ; preds = %56, %12, %9, %5
  %60 = phi i32 [ %57, %56 ], [ -95, %5 ], [ -22, %9 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret i32 %60
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_convert_nscap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %5, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %4
  switch i32 %3, label %50 [
    i32 20, label %15
    i32 24, label %14
  ]

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ 50331648, %14 ], [ 33554432, %13 ]
  %17 = load i32, ptr %5, align 4
  %18 = and i32 %17, -2
  %19 = icmp eq i32 %18, %16
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %7, i32 noundef 31) #14
  br i1 %21, label %22, label %50

22:                                               ; preds = %20
  %23 = icmp eq i32 %3, 20
  %24 = icmp eq ptr %11, %0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 47
  %29 = load ptr, ptr %28, align 4
  %30 = tail call zeroext i1 @ns_capable(ptr noundef %29, i32 noundef 31) #14
  br i1 %30, label %50, label %38

31:                                               ; preds = %22
  %32 = icmp eq i32 %3, 24
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %50, label %38

38:                                               ; preds = %33, %31, %26
  %39 = phi i32 [ %36, %33 ], [ 0, %31 ], [ 0, %26 ]
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 2592, i32 noundef 24) #15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %41, i32 0, i32 2
  store i32 %39, ptr %44, align 4
  %45 = load i32, ptr %5, align 4
  %46 = and i32 %45, 1
  %47 = or i32 %46, 50331648
  store i32 %47, ptr %41, align 8
  %48 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %41, i32 0, i32 1
  %49 = getelementptr inbounds %struct.vfs_cap_data, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %48, ptr noundef align 4 dereferenceable(16) %49, i32 16, i1 false)
  store ptr %41, ptr %2, align 4
  br label %50

50:                                               ; preds = %43, %38, %33, %26, %20, %15, %13, %4
  %51 = phi i32 [ 24, %43 ], [ -22, %4 ], [ -22, %15 ], [ -1, %20 ], [ 20, %26 ], [ -22, %33 ], [ -12, %38 ], [ -22, %13 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_vfs_caps_from_disk(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.vfs_ns_cap_data, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !11
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %3
  %9 = call i32 @__vfs_getxattr(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 24) #14
  switch i32 %9, label %10 [
    i32 -61, label %63
    i32 -95, label %63
  ]

10:                                               ; preds = %8
  %11 = icmp slt i32 %9, 0
  br i1 %11, label %63, label %12

12:                                               ; preds = %10
  %13 = icmp ult i32 %9, 4
  br i1 %13, label %63, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %4, align 4
  store i32 %15, ptr %2, align 4
  %16 = and i32 %15, -16777216
  switch i32 %16, label %63 [
    i32 16777216, label %17
    i32 33554432, label %19
    i32 50331648, label %21
  ]

17:                                               ; preds = %14
  %18 = icmp eq i32 %9, 12
  br i1 %18, label %48, label %63

19:                                               ; preds = %14
  %20 = icmp eq i32 %9, 20
  br i1 %20, label %34, label %63

21:                                               ; preds = %14
  %22 = icmp eq i32 %9, 24
  br i1 %22, label %23, label %63

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.vfs_ns_cap_data, ptr %4, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 2
  %29 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 1
  %30 = getelementptr inbounds %struct.vfs_cap_data, ptr %4, i32 0, i32 1, i32 0
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.vfs_cap_data, ptr %4, i32 0, i32 1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %28, align 4
  br label %41

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 2
  %36 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 1
  %37 = getelementptr inbounds %struct.vfs_cap_data, ptr %4, i32 0, i32 1, i32 0
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.vfs_cap_data, ptr %4, i32 0, i32 1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %35, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = getelementptr inbounds %struct.vfs_cap_data, ptr %4, i32 0, i32 1, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.vfs_cap_data, ptr %4, i32 0, i32 1, i32 1, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 2, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  br label %55

48:                                               ; preds = %17
  %49 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 2
  %50 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 1
  %51 = getelementptr inbounds %struct.vfs_cap_data, ptr %4, i32 0, i32 1, i32 0
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.vfs_cap_data, ptr %4, i32 0, i32 1, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %49, align 4
  br label %55

55:                                               ; preds = %48, %41
  %56 = getelementptr %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 1, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 511
  store i32 %58, ptr %56, align 4
  %59 = getelementptr %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 2, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 511
  store i32 %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %2, i32 0, i32 3
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %55, %23, %21, %19, %17, %14, %12, %10, %8, %8, %3
  %64 = phi i32 [ 0, %55 ], [ -61, %3 ], [ -61, %8 ], [ -61, %8 ], [ %9, %10 ], [ -22, %12 ], [ -22, %17 ], [ -22, %19 ], [ -22, %21 ], [ -22, %14 ], [ -61, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_bprm_creds_from_file(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.cpu_vfs_cap_data, align 4
  %4 = tail call ptr @llvm.thread.pointer() #14
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 14
  %10 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 11
  %11 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10
  %12 = load i32, ptr %10, align 4
  %13 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 11, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %11, align 4
  %16 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 10, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %15, %12
  %19 = and i32 %17, %14
  %20 = load i32, ptr %9, align 4
  %21 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 14, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %18, -1
  %24 = and i32 %20, %23
  %25 = xor i32 %19, -1
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %24, 0
  %28 = icmp eq i32 %26, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %31, label %30, !prof !10

30:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 900, i32 noundef 9, ptr noundef null) #14
  br label %301

31:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #14, !annotation !11
  %32 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 11
  %33 = load i64, ptr @__cap_empty_set, align 4
  store i64 %33, ptr %32, align 4
  %34 = load i32, ptr @file_caps_enabled, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %97, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = tail call zeroext i1 @mnt_may_suid(ptr noundef %38) #14
  br i1 %39, label %40, label %97

40:                                               ; preds = %36
  %41 = load ptr, ptr %37, align 8
  %42 = getelementptr inbounds %struct.vfsmount, ptr %41, i32 0, i32 3
  %43 = load volatile ptr, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %44 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @get_vfs_caps_from_disk(ptr noundef %43, ptr noundef %45, ptr noundef nonnull %3) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  switch i32 %46, label %93 [
    i32 -22, label %49
    i32 -61, label %97
  ]

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %51) #16
  br label %93

53:                                               ; preds = %40
  %54 = load ptr, ptr %7, align 4
  %55 = load i32, ptr %3, align 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = icmp ugt i32 %55, 16777215
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %3, i32 0, i32 1
  %61 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %3, i32 0, i32 2
  %62 = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 13
  %63 = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 10
  %64 = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 11
  %65 = load i32, ptr %60, align 4
  %66 = load i32, ptr %61, align 4
  %67 = load i32, ptr %62, align 4
  %68 = and i32 %67, %65
  %69 = load i32, ptr %63, align 4
  %70 = and i32 %69, %66
  %71 = or i32 %70, %68
  store i32 %71, ptr %64, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %65, %72
  %74 = icmp ne i32 %73, 0
  %75 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %3, i32 0, i32 1, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.cpu_vfs_cap_data, ptr %3, i32 0, i32 2, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr %struct.cred, ptr %54, i32 0, i32 13, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, %76
  %82 = getelementptr %struct.cred, ptr %54, i32 0, i32 10, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, %78
  %85 = or i32 %84, %81
  %86 = getelementptr %struct.cred, ptr %54, i32 0, i32 11, i32 0, i32 1
  store i32 %85, ptr %86, align 4
  %87 = xor i32 %85, -1
  %88 = and i32 %76, %87
  %89 = icmp ne i32 %88, 0
  %90 = select i1 %89, i1 true, i1 %74
  %91 = icmp ne i8 %57, 0
  %92 = select i1 %91, i1 %90, i1 false
  br i1 %92, label %93, label %97

93:                                               ; preds = %53, %49, %48
  %94 = phi i32 [ -1, %53 ], [ -22, %49 ], [ %46, %48 ]
  %95 = load ptr, ptr %7, align 4
  %96 = getelementptr inbounds %struct.cred, ptr %95, i32 0, i32 11
  store i64 %33, ptr %96, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %301

97:                                               ; preds = %53, %48, %36, %31
  %98 = phi i8 [ 0, %36 ], [ %59, %53 ], [ 0, %48 ], [ 0, %31 ]
  %99 = phi i8 [ 0, %36 ], [ %57, %53 ], [ 0, %48 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  %100 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 21
  %101 = load ptr, ptr %5, align 8
  %102 = load ptr, ptr %7, align 4
  %103 = getelementptr inbounds %struct.cred, ptr %101, i32 0, i32 9
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %97
  %108 = icmp eq i8 %98, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i1, ptr @warn_setuid_and_fcaps_mixed.warned, align 4
  br i1 %118, label %148, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 14
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %121) #16
  store i1 true, ptr @warn_setuid_and_fcaps_mixed.warned, align 4
  br label %148

123:                                              ; preds = %113, %109, %107
  %124 = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 5
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %127, %123
  %132 = phi i8 [ %99, %127 ], [ 1, %123 ]
  %133 = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 11
  %134 = getelementptr inbounds %struct.cred, ptr %101, i32 0, i32 13
  %135 = getelementptr inbounds %struct.cred, ptr %101, i32 0, i32 10
  %136 = load i32, ptr %134, align 4
  %137 = getelementptr inbounds %struct.cred, ptr %101, i32 0, i32 13, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = load i32, ptr %135, align 4
  %140 = getelementptr inbounds %struct.cred, ptr %101, i32 0, i32 10, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = or i32 %139, %136
  %143 = or i32 %141, %138
  %144 = zext i32 %143 to i64
  %145 = shl nuw i64 %144, 32
  %146 = zext i32 %142 to i64
  %147 = or i64 %145, %146
  store i64 %147, ptr %133, align 4
  br label %148

148:                                              ; preds = %131, %127, %119, %117, %97
  %149 = phi i8 [ %99, %127 ], [ %99, %117 ], [ %99, %119 ], [ %99, %97 ], [ %132, %131 ]
  %150 = load i32, ptr %32, align 4
  %151 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 11, i32 0, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = load i32, ptr %10, align 4
  %154 = load i32, ptr %13, align 4
  %155 = xor i32 %153, -1
  %156 = and i32 %150, %155
  %157 = xor i32 %154, -1
  %158 = and i32 %152, %157
  %159 = icmp eq i32 %156, 0
  %160 = icmp eq i32 %158, 0
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %166, label %162

162:                                              ; preds = %148
  %163 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 11
  %164 = load i32, ptr %163, align 4
  %165 = or i32 %164, 7602176
  store i32 %165, ptr %163, align 4
  br label %166

166:                                              ; preds = %162, %148
  %167 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 5
  %168 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 1
  %169 = load i32, ptr %167, align 4
  %170 = load i32, ptr %168, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %190

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 6
  %174 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 2
  %175 = load i32, ptr %173, align 4
  %176 = load i32, ptr %174, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %172
  %179 = load i32, ptr %32, align 4
  %180 = load i32, ptr %151, align 4
  %181 = load i32, ptr %10, align 4
  %182 = load i32, ptr %13, align 4
  %183 = xor i32 %181, -1
  %184 = and i32 %179, %183
  %185 = xor i32 %182, -1
  %186 = and i32 %180, %185
  %187 = icmp eq i32 %184, 0
  %188 = icmp eq i32 %186, 0
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %223, label %190

190:                                              ; preds = %178, %172, %166
  %191 = phi i1 [ false, %178 ], [ true, %172 ], [ true, %166 ]
  %192 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 10
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, -3
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load ptr, ptr %100, align 4
  %198 = tail call zeroext i1 @ptracer_capable(ptr noundef %4, ptr noundef %197) #14
  br i1 %198, label %223, label %199

199:                                              ; preds = %196, %190
  %200 = load ptr, ptr %100, align 4
  %201 = tail call zeroext i1 @ns_capable(ptr noundef %200, i32 noundef 7) #14
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i32, ptr %192, align 4
  %204 = and i32 %203, 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %202, %199
  %207 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 1
  %208 = load i32, ptr %207, align 4
  store i32 %208, ptr %167, align 4
  %209 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 6
  %210 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 2
  %211 = load i32, ptr %210, align 4
  store i32 %211, ptr %209, align 4
  br label %212

212:                                              ; preds = %206, %202
  %213 = load i32, ptr %32, align 4
  %214 = load i32, ptr %151, align 4
  %215 = load i32, ptr %10, align 4
  %216 = load i32, ptr %13, align 4
  %217 = and i32 %215, %213
  %218 = and i32 %216, %214
  %219 = zext i32 %218 to i64
  %220 = shl nuw i64 %219, 32
  %221 = zext i32 %217 to i64
  %222 = or i64 %220, %221
  store i64 %222, ptr %32, align 4
  br label %223

223:                                              ; preds = %212, %196, %178
  %224 = phi i1 [ %191, %212 ], [ %191, %196 ], [ false, %178 ]
  %225 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 3
  %226 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 7
  %227 = load i32, ptr %167, align 4
  store i32 %227, ptr %226, align 4
  store i32 %227, ptr %225, align 4
  %228 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 4
  %229 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 8
  %230 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 6
  %231 = load i32, ptr %230, align 4
  store i32 %231, ptr %229, align 4
  store i32 %231, ptr %228, align 4
  %232 = icmp ne i8 %98, 0
  %233 = or i1 %232, %224
  %234 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 14
  br i1 %233, label %239, label %235

235:                                              ; preds = %223
  %236 = load i32, ptr %234, align 4
  %237 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 14, i32 0, i32 1
  %238 = load i32, ptr %237, align 4
  br label %243

239:                                              ; preds = %223
  store i64 %33, ptr %234, align 4
  %240 = trunc i64 %33 to i32
  %241 = lshr i64 %33, 32
  %242 = trunc i64 %241 to i32
  br label %243

243:                                              ; preds = %239, %235
  %244 = phi i32 [ %238, %235 ], [ %242, %239 ]
  %245 = phi i32 [ %236, %235 ], [ %240, %239 ]
  %246 = load i32, ptr %32, align 4
  %247 = load i32, ptr %151, align 4
  %248 = or i32 %245, %246
  %249 = or i32 %244, %247
  %250 = zext i32 %249 to i64
  %251 = shl nuw i64 %250, 32
  %252 = zext i32 %248 to i64
  %253 = or i64 %251, %252
  store i64 %253, ptr %32, align 4
  %254 = icmp eq i8 %149, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %243
  %256 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 14
  %257 = load i64, ptr %256, align 4
  %258 = trunc i64 %257 to i32
  %259 = lshr i64 %257, 32
  %260 = trunc i64 %259 to i32
  br label %261

261:                                              ; preds = %255, %243
  %262 = phi i32 [ %260, %255 ], [ %244, %243 ]
  %263 = phi i32 [ %258, %255 ], [ %245, %243 ]
  %264 = phi i64 [ %257, %255 ], [ %253, %243 ]
  %265 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 12
  store i64 %264, ptr %265, align 4
  %266 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 10
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 10, i32 0, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %267, %248
  %271 = and i32 %269, %249
  %272 = xor i32 %270, -1
  %273 = and i32 %263, %272
  %274 = xor i32 %271, -1
  %275 = and i32 %262, %274
  %276 = icmp eq i32 %273, 0
  %277 = icmp eq i32 %275, 0
  %278 = select i1 %276, i1 %277, i1 false
  br i1 %278, label %280, label %279, !prof !10

279:                                              ; preds = %261
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 957, i32 noundef 9, ptr noundef null) #14
  br label %301

280:                                              ; preds = %261
  %281 = xor i32 %263, -1
  %282 = xor i32 %262, -1
  %283 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 9
  %284 = load i32, ptr %283, align 4
  %285 = and i32 %284, -17
  store i32 %285, ptr %283, align 4
  br i1 %224, label %297, label %286

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %301, label %290

290:                                              ; preds = %286
  br i1 %254, label %291, label %297

291:                                              ; preds = %290
  %292 = and i32 %248, %281
  %293 = and i32 %249, %282
  %294 = icmp eq i32 %292, 0
  %295 = icmp eq i32 %293, 0
  %296 = select i1 %294, i1 %295, i1 false
  br i1 %296, label %301, label %297

297:                                              ; preds = %291, %290, %280
  %298 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 5
  %299 = load i8, ptr %298, align 4
  %300 = or i8 %299, 4
  store i8 %300, ptr %298, align 4
  br label %301

301:                                              ; preds = %297, %291, %286, %279, %93, %30
  %302 = phi i32 [ -1, %30 ], [ -1, %279 ], [ %94, %93 ], [ 0, %297 ], [ 0, %291 ], [ 0, %286 ]
  ret i32 %302
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptracer_capable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_inode_setxattr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.3, i32 noundef 9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(20) @.str.1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @ns_capable(ptr noundef %9, i32 noundef 21) #14
  %17 = xor i1 %16, true
  %18 = sext i1 %17 to i32
  br label %19

19:                                               ; preds = %15, %12, %5
  %20 = phi i32 [ 0, %5 ], [ 0, %12 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_inode_removexattr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(10) @.str.3, i32 noundef 9)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(20) @.str.1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 31) #14
  %19 = xor i1 %18, true
  %20 = sext i1 %19 to i32
  br label %25

21:                                               ; preds = %10
  %22 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #14
  %23 = xor i1 %22, true
  %24 = sext i1 %23 to i32
  br label %25

25:                                               ; preds = %21, %17, %13, %3
  %26 = phi i32 [ 0, %3 ], [ -22, %13 ], [ %20, %17 ], [ %24, %21 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cap_task_fix_setuid(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #7 {
  switch i32 %2, label %108 [
    i32 2, label %4
    i32 1, label %4
    i32 4, label %4
    i32 8, label %63
  ]

4:                                                ; preds = %3, %3, %3
  %5 = tail call ptr @llvm.thread.pointer() #14
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %108

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %20, %16, %12
  %25 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = and i32 %9, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i64, ptr @__cap_empty_set, align 4
  br label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 11
  %43 = load i64, ptr @__cap_empty_set, align 4
  store i64 %43, ptr %42, align 4
  %44 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 12
  store i64 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i64 [ %40, %39 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 14
  store i64 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %45, %32, %28, %24, %20
  %49 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %51, label %55, label %56

55:                                               ; preds = %48
  br i1 %54, label %108, label %59

56:                                               ; preds = %48
  br i1 %54, label %57, label %108

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 11
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %58, %57 ], [ @__cap_empty_set, %55 ]
  %61 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 12
  %62 = load i64, ptr %60, align 4
  store i64 %62, ptr %61, align 4
  br label %108

63:                                               ; preds = %3
  %64 = tail call ptr @llvm.thread.pointer() #14
  %65 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 83
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.cred, ptr %66, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %74, label %78, label %90

78:                                               ; preds = %71
  br i1 %77, label %108, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 12
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 12, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %81, -134218272
  %85 = and i32 %83, -2
  %86 = zext i32 %85 to i64
  %87 = shl nuw i64 %86, 32
  %88 = zext i32 %84 to i64
  %89 = or i64 %87, %88
  store i64 %89, ptr %80, align 4
  br label %108

90:                                               ; preds = %71
  br i1 %77, label %91, label %108

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 12
  %93 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 11
  %94 = load i32, ptr %92, align 4
  %95 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 12, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %93, align 4
  %98 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 11, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %97, 134218271
  %101 = and i32 %99, 1
  %102 = or i32 %100, %94
  %103 = or i32 %101, %96
  %104 = zext i32 %103 to i64
  %105 = shl nuw i64 %104, 32
  %106 = zext i32 %102 to i64
  %107 = or i64 %105, %106
  store i64 %107, ptr %92, align 4
  br label %108

108:                                              ; preds = %91, %90, %79, %78, %63, %59, %56, %55, %4, %3
  %109 = phi i32 [ -22, %3 ], [ 0, %90 ], [ 0, %91 ], [ 0, %63 ], [ 0, %4 ], [ 0, %55 ], [ 0, %56 ], [ 0, %59 ], [ 0, %78 ], [ 0, %79 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_task_setscheduler(ptr noundef %0) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %3 = load volatile ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 11
  %5 = tail call ptr @llvm.thread.pointer() #14
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 11
  %9 = load i32, ptr %4, align 4
  %10 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 11, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %8, align 4
  %13 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 11, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %12, -1
  %16 = and i32 %9, %15
  %17 = xor i32 %14, -1
  %18 = and i32 %11, %17
  %19 = icmp eq i32 %16, 0
  %20 = icmp eq i32 %18, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load volatile ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 21
  %25 = load ptr, ptr %24, align 4
  %26 = tail call zeroext i1 @ns_capable(ptr noundef %25, i32 noundef 23) #14
  %27 = xor i1 %26, true
  %28 = sext i1 %27 to i32
  br label %29

29:                                               ; preds = %22, %1
  %30 = phi i32 [ 0, %1 ], [ %28, %22 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_task_setioprio(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %4 = load volatile ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 11
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %5, align 4
  %11 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 11, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %9, align 4
  %14 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %13, -1
  %17 = and i32 %10, %16
  %18 = xor i32 %15, -1
  %19 = and i32 %12, %18
  %20 = icmp eq i32 %17, 0
  %21 = icmp eq i32 %19, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load volatile ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 21
  %26 = load ptr, ptr %25, align 4
  %27 = tail call zeroext i1 @ns_capable(ptr noundef %26, i32 noundef 23) #14
  %28 = xor i1 %27, true
  %29 = sext i1 %28 to i32
  br label %30

30:                                               ; preds = %23, %2
  %31 = phi i32 [ 0, %2 ], [ %29, %23 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_task_setnice(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %4 = load volatile ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 11
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %5, align 4
  %11 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 11, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %9, align 4
  %14 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %13, -1
  %17 = and i32 %10, %16
  %18 = xor i32 %15, -1
  %19 = and i32 %12, %18
  %20 = icmp eq i32 %17, 0
  %21 = icmp eq i32 %19, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load volatile ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 21
  %26 = load ptr, ptr %25, align 4
  %27 = tail call zeroext i1 @ns_capable(ptr noundef %26, i32 noundef 23) #14
  %28 = xor i1 %27, true
  %29 = sext i1 %28 to i32
  br label %30

30:                                               ; preds = %23, %2
  %31 = phi i32 [ 0, %2 ], [ %29, %23 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_task_prctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  switch i32 %0, label %164 [
    i32 23, label %9
    i32 24, label %19
    i32 28, label %36
    i32 27, label %61
    i32 7, label %64
    i32 8, label %69
    i32 47, label %87
  ]

9:                                                ; preds = %5
  %10 = icmp ult i32 %1, 41
  br i1 %10, label %11, label %164

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 13
  %13 = lshr i32 %1, 5
  %14 = getelementptr [2 x i32], ptr %12, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %1, 31
  %17 = lshr i32 %15, %16
  %18 = and i32 %17, 1
  br label %164

19:                                               ; preds = %5
  %20 = tail call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef 8) #14
  br i1 %20, label %21, label %164

21:                                               ; preds = %19
  %22 = icmp ult i32 %1, 41
  br i1 %22, label %23, label %164

23:                                               ; preds = %21
  %24 = tail call ptr @prepare_creds() #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %164, label %26

26:                                               ; preds = %23
  %27 = and i32 %1, 31
  %28 = shl nuw i32 1, %27
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 13
  %31 = lshr i32 %1, 5
  %32 = getelementptr [2 x i32], ptr %30, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, ptr %32, align 4
  %35 = tail call i32 @commit_creds(ptr noundef nonnull %24) #14
  br label %164

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 170
  %40 = lshr exact i32 %39, 1
  %41 = xor i32 %38, %1
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %164

44:                                               ; preds = %36
  %45 = xor i32 %1, -1
  %46 = and i32 %39, %45
  %47 = icmp eq i32 %46, 0
  %48 = icmp ult i32 %1, 256
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %164

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 12
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %164, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @prepare_creds() #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %164, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.cred, ptr %56, i32 0, i32 9
  store i32 %1, ptr %59, align 4
  %60 = tail call i32 @commit_creds(ptr noundef nonnull %56) #14
  br label %164

61:                                               ; preds = %5
  %62 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  br label %164

64:                                               ; preds = %5
  %65 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 4
  %68 = and i32 %67, 1
  br label %164

69:                                               ; preds = %5
  %70 = icmp ugt i32 %1, 1
  br i1 %70, label %164, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 9
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %164

76:                                               ; preds = %71
  %77 = tail call ptr @prepare_creds() #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %164, label %79

79:                                               ; preds = %76
  %80 = icmp eq i32 %1, 0
  %81 = getelementptr inbounds %struct.cred, ptr %77, i32 0, i32 9
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, -17
  %84 = select i1 %80, i32 0, i32 16
  %85 = or i32 %83, %84
  store i32 %85, ptr %81, align 4
  %86 = tail call i32 @commit_creds(ptr noundef nonnull %77) #14
  br label %164

87:                                               ; preds = %5
  %88 = icmp eq i32 %1, 4
  br i1 %88, label %89, label %100

89:                                               ; preds = %87
  %90 = or i32 %4, %3
  %91 = or i32 %90, %2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %164

93:                                               ; preds = %89
  %94 = tail call ptr @prepare_creds() #14
  %95 = icmp eq ptr %94, null
  br i1 %95, label %164, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.cred, ptr %94, i32 0, i32 14
  %98 = load i64, ptr @__cap_empty_set, align 4
  store i64 %98, ptr %97, align 4
  %99 = tail call i32 @commit_creds(ptr noundef nonnull %94) #14
  br label %164

100:                                              ; preds = %87
  %101 = icmp ugt i32 %2, 40
  %102 = zext i1 %101 to i32
  %103 = or i32 %4, %3
  %104 = or i32 %103, %102
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %164

106:                                              ; preds = %100
  %107 = icmp eq i32 %1, 1
  br i1 %107, label %108, label %116

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 14
  %110 = lshr i32 %2, 5
  %111 = getelementptr [2 x i32], ptr %109, i32 0, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %2, 31
  %114 = lshr i32 %112, %113
  %115 = and i32 %114, 1
  br label %164

116:                                              ; preds = %106
  %117 = add i32 %1, -4
  %118 = icmp ult i32 %117, -2
  br i1 %118, label %164, label %119

119:                                              ; preds = %116
  %120 = icmp eq i32 %1, 2
  br i1 %120, label %121, label %144

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 11
  %123 = lshr i32 %2, 5
  %124 = getelementptr [2 x i32], ptr %122, i32 0, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %2, 31
  %127 = shl nuw i32 1, %126
  %128 = and i32 %125, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %164, label %130

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 10
  %132 = getelementptr [2 x i32], ptr %131, i32 0, i32 %123
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, %127
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %164, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 9
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 64
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %136
  %142 = tail call ptr @prepare_creds() #14
  %143 = icmp eq ptr %142, null
  br i1 %143, label %164, label %147

144:                                              ; preds = %119
  %145 = tail call ptr @prepare_creds() #14
  %146 = icmp eq ptr %145, null
  br i1 %146, label %164, label %152

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.cred, ptr %142, i32 0, i32 14
  %149 = getelementptr [2 x i32], ptr %148, i32 0, i32 %123
  %150 = load i32, ptr %149, align 4
  %151 = or i32 %150, %127
  store i32 %151, ptr %149, align 4
  br label %161

152:                                              ; preds = %144
  %153 = and i32 %2, 31
  %154 = shl nuw i32 1, %153
  %155 = xor i32 %154, -1
  %156 = getelementptr inbounds %struct.cred, ptr %145, i32 0, i32 14
  %157 = lshr i32 %2, 5
  %158 = getelementptr [2 x i32], ptr %156, i32 0, i32 %157
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, %155
  store i32 %160, ptr %158, align 4
  br label %161

161:                                              ; preds = %152, %147
  %162 = phi ptr [ %145, %152 ], [ %142, %147 ]
  %163 = tail call i32 @commit_creds(ptr noundef nonnull %162) #14
  br label %164

164:                                              ; preds = %161, %144, %141, %136, %130, %121, %116, %108, %100, %96, %93, %89, %79, %76, %71, %69, %64, %61, %58, %55, %50, %44, %36, %26, %23, %21, %19, %11, %9, %5
  %165 = phi i32 [ %99, %96 ], [ %115, %108 ], [ %163, %161 ], [ %86, %79 ], [ %68, %64 ], [ %63, %61 ], [ %60, %58 ], [ %18, %11 ], [ -22, %9 ], [ -1, %50 ], [ -1, %44 ], [ -1, %36 ], [ -12, %55 ], [ -22, %69 ], [ -1, %71 ], [ -12, %76 ], [ -22, %89 ], [ -12, %93 ], [ -22, %100 ], [ -22, %116 ], [ -1, %136 ], [ -1, %130 ], [ -1, %121 ], [ -12, %141 ], [ -38, %5 ], [ %35, %26 ], [ -1, %19 ], [ -22, %21 ], [ -12, %23 ], [ -12, %144 ]
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cap_vm_enough_memory(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = tail call ptr @llvm.thread.pointer() #14
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 83
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @init_user_ns
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  br label %13

13:                                               ; preds = %18, %9
  %14 = phi ptr [ @init_user_ns, %9 ], [ %20, %18 ]
  %15 = getelementptr inbounds %struct.user_namespace, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, %11
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.user_namespace, ptr %14, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %7
  br i1 %21, label %22, label %13

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.user_namespace, ptr %14, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %12, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22, %2
  %28 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 2097152
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32, %27, %13
  %34 = phi i32 [ 1, %32 ], [ 0, %27 ], [ 0, %13 ]
  ret i32 %34
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cap_mmap_addr(i32 noundef %0) local_unnamed_addr #9 {
  %2 = load i32, ptr @dac_mmap_min_addr, align 4
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %4, label %38

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #14
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @init_user_ns
  br i1 %10, label %29, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.user_namespace, ptr %9, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 5
  br label %15

15:                                               ; preds = %20, %11
  %16 = phi ptr [ @init_user_ns, %11 ], [ %22, %20 ]
  %17 = getelementptr inbounds %struct.user_namespace, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, %13
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.user_namespace, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %24, label %15

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.user_namespace, ptr %16, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %14, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %24, %4
  %30 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 131072
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %24
  %35 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 256
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %29, %15, %1
  %39 = phi i32 [ 0, %34 ], [ -1, %29 ], [ 0, %1 ], [ -1, %15 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @cap_mmap_file(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mnt_may_suid(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

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
!8 = !{i64 2149040859}
!9 = !{i64 2149041076}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"auto-init"}
!12 = !{i64 2151809088}
