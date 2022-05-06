; ModuleID = '/llk/IR/fs/autofs/inode.c_pt.bc'
source_filename = "../fs/autofs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.match_token = type { i32, ptr }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.substring_t = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, ptr, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, ptr, ptr }
%union.anon.55 = type { i32 }
%struct.seqcount = type { i32 }
%union.anon.56 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.57 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.58 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { i64 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.34 = type { %struct.callback_head }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@autofs_fill_super.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&sbi->wq_mutex\00", align 1
@autofs_fill_super.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&sbi->pipe_mutex\00", align 1
@autofs_sops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @autofs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@autofs_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@.str.3 = private unnamed_addr constant [48 x i8] c"\013autofs4:pid:%d:%s: called with bogus options\0A\00", align 1
@__func__.autofs_fill_super = private unnamed_addr constant [18 x i8] c"autofs_fill_super\00", align 1
@.str.4 = private unnamed_addr constant [91 x i8] c"\013autofs4:pid:%d:%s: kernel does not match daemon version daemon (%d, %d) kernel (%d, %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"\013autofs4:pid:%d:%s: could not find process group %d\0A\00", align 1
@autofs_root_operations = external dso_local constant %struct.file_operations, align 4
@autofs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str.6 = private unnamed_addr constant [58 x i8] c"\013autofs4:pid:%d:%s: could not open pipe file descriptor\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"\013autofs4:pid:%d:%s: pipe file descriptor does not contain proper ops\0A\00", align 1
@autofs_dir_operations = external dso_local constant %struct.file_operations, align 4
@autofs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str.8 = private unnamed_addr constant [18 x i8] c"fs/autofs/inode.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [7 x i8] c",fd=%d\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c",pgrp=%d\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c",timeout=%lu\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c",minproto=%d\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c",maxproto=%d\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c",offset\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c",direct\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c",indirect\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c",strictexpire\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c",ignore\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = internal constant [12 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.22 }, %struct.match_token { i32 2, ptr @.str.23 }, %struct.match_token { i32 3, ptr @.str.24 }, %struct.match_token { i32 4, ptr @.str.25 }, %struct.match_token { i32 5, ptr @.str.26 }, %struct.match_token { i32 6, ptr @.str.27 }, %struct.match_token { i32 7, ptr @.str.28 }, %struct.match_token { i32 8, ptr @.str.29 }, %struct.match_token { i32 9, ptr @.str.30 }, %struct.match_token { i32 10, ptr @.str.31 }, %struct.match_token { i32 11, ptr @.str.32 }, %struct.match_token zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"fd=%u\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"pgrp=%u\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"minproto=%u\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"maxproto=%u\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"indirect\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"strictexpire\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @autofs_new_ino(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 4
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 4, i32 1
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 5
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 5, i32 1
  store ptr %8, ptr %9, align 8
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 7
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.autofs_info, ptr %3, i32 0, i32 6
  store ptr %0, ptr %12, align 4
  br label %13

13:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @autofs_clean_ino(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.autofs_info, ptr %0, i32 0, i32 9
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.autofs_info, ptr %0, i32 0, i32 10
  store i32 0, ptr %3, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.autofs_info, ptr %0, i32 0, i32 7
  store i32 %4, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @autofs_free_ino(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.autofs_info, ptr %0, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %4, ptr noundef nonnull inttoptr (i32 64 to ptr)) #11
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @autofs_kill_sb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  tail call void @autofs_catatonic_mode(ptr noundef nonnull %3) #11
  %6 = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @put_pid(ptr noundef %7) #11
  tail call void @kill_litter_super(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 19
  tail call void @kvfree_call_rcu(ptr noundef %8, ptr noundef nonnull inttoptr (i32 116 to ptr)) #11
  br label %10

9:                                                ; preds = %1
  tail call void @kill_litter_super(ptr noundef %0) #11
  br label %10

10:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_catatonic_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @autofs_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca [3 x %struct.substring_t], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec64, align 8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 124) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %229, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %10, ptr %13, align 4
  store i32 1833588077, ptr %10, align 8
  %14 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 1
  store i32 -1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 2
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 9
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 3
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 11
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 4
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 5
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 8
  store i32 1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 10
  store i32 1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 6
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 7
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @autofs_fill_super.__key) #11
  %26 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @autofs_fill_super.__key.1) #11
  %27 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 14
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 15
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 16
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 17
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 17, i32 1
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 18
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.autofs_sb_info, ptr %10, i32 0, i32 18, i32 1
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 1024, ptr %34, align 16
  %35 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 10, ptr %35, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 391, ptr %36, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @autofs_sops, ptr %37, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  store ptr @autofs_dentry_operations, ptr %38, align 16
  %39 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %39, align 32
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 72) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %227, label %43

43:                                               ; preds = %12
  %44 = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 4
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 4, i32 1
  store ptr %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 5
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 5, i32 1
  store ptr %46, ptr %47, align 8
  %48 = load volatile i32, ptr @jiffies, align 64
  %49 = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 7
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 6
  store ptr %10, ptr %50, align 4
  %51 = tail call ptr @new_inode(ptr noundef %0) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %77, label %53

53:                                               ; preds = %43
  store i16 16877, ptr %51, align 8
  %54 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %55 = load ptr, ptr %54, align 64
  %56 = icmp eq ptr %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 2
  %59 = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 5
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %58, align 4
  %63 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 3
  %64 = load ptr, ptr %54, align 64
  %65 = getelementptr inbounds %struct.dentry, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 3
  %68 = load i32, ptr %67, align 8
  store i32 %68, ptr %63, align 8
  br label %69

69:                                               ; preds = %57, %53
  %70 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 14
  %71 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 15
  %72 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %8, ptr noundef nonnull %51) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %71, ptr noundef align 8 dereferenceable(16) %72, i32 16, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %70, ptr noundef align 8 dereferenceable(16) %72, i32 16, i1 false) #11
  %73 = call i32 @get_next_ino() #11
  %74 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 10
  store i32 %73, ptr %74, align 4
  call void @set_nlink(ptr noundef nonnull %51, i32 noundef 2) #11
  %75 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 7
  store ptr @autofs_dir_inode_operations, ptr %75, align 8
  %76 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 39
  store ptr @autofs_dir_operations, ptr %76, align 8
  br label %77

77:                                               ; preds = %69, %43
  %78 = call ptr @d_make_root(ptr noundef %51) #11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.autofs_info, ptr %41, i32 0, i32 11
  call void @kvfree_call_rcu(ptr noundef %81, ptr noundef nonnull inttoptr (i32 64 to ptr)) #11
  br label %227

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.dentry, ptr %78, i32 0, i32 11
  store ptr %41, ptr %83, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store ptr %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 -1, ptr %7, align 4
  %84 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 2
  %85 = tail call ptr @llvm.thread.pointer() #11
  %86 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 83
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.cred, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %84, align 4
  %90 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 3
  %91 = load ptr, ptr %86, align 8
  %92 = getelementptr inbounds %struct.cred, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  store i32 %93, ptr %90, align 8
  store i32 3, ptr %23, align 8
  store i32 5, ptr %24, align 4
  store i32 -1, ptr %14, align 4
  %94 = icmp eq ptr %1, null
  br i1 %94, label %154, label %95

95:                                               ; preds = %82
  %96 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.21) #11
  %97 = icmp eq ptr %96, null
  br i1 %97, label %155, label %98

98:                                               ; preds = %149, %95
  %99 = phi i32 [ %150, %149 ], [ 0, %95 ]
  %100 = phi i8 [ %151, %149 ], [ 0, %95 ]
  %101 = phi ptr [ %152, %149 ], [ %96, %95 ]
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %149, label %104

104:                                              ; preds = %98
  %105 = call i32 @match_token(ptr noundef nonnull %101, ptr noundef nonnull @tokens, ptr noundef nonnull %5) #11
  switch i32 %105, label %154 [
    i32 1, label %106
    i32 2, label %111
    i32 3, label %118
    i32 4, label %125
    i32 5, label %130
    i32 6, label %135
    i32 7, label %140
    i32 8, label %141
    i32 9, label %142
    i32 10, label %143
    i32 11, label %146
  ]

106:                                              ; preds = %104
  %107 = call i32 @match_int(ptr noundef nonnull %5, ptr noundef nonnull %7) #11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %154

109:                                              ; preds = %106
  %110 = load i32, ptr %7, align 4
  store i32 %110, ptr %14, align 4
  br label %149

111:                                              ; preds = %104
  %112 = call i32 @match_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %154

114:                                              ; preds = %111
  %115 = load i32, ptr %6, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %154, label %117

117:                                              ; preds = %114
  store i32 %115, ptr %84, align 4
  br label %149

118:                                              ; preds = %104
  %119 = call i32 @match_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %154

121:                                              ; preds = %118
  %122 = load i32, ptr %6, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %154, label %124

124:                                              ; preds = %121
  store i32 %122, ptr %90, align 8
  br label %149

125:                                              ; preds = %104
  %126 = call i32 @match_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = load i32, ptr %6, align 4
  br label %149

130:                                              ; preds = %104
  %131 = call i32 @match_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = load i32, ptr %6, align 4
  store i32 %134, ptr %23, align 8
  br label %149

135:                                              ; preds = %104
  %136 = call i32 @match_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load i32, ptr %6, align 4
  store i32 %139, ptr %24, align 4
  br label %149

140:                                              ; preds = %104
  store i32 1, ptr %22, align 8
  br label %149

141:                                              ; preds = %104
  store i32 2, ptr %22, align 8
  br label %149

142:                                              ; preds = %104
  store i32 4, ptr %22, align 8
  br label %149

143:                                              ; preds = %104
  %144 = load i32, ptr %21, align 8
  %145 = or i32 %144, 2
  store i32 %145, ptr %21, align 8
  br label %149

146:                                              ; preds = %104
  %147 = load i32, ptr %21, align 8
  %148 = or i32 %147, 4
  store i32 %148, ptr %21, align 8
  br label %149

149:                                              ; preds = %146, %143, %142, %141, %140, %138, %133, %128, %124, %117, %109, %98
  %150 = phi i32 [ %99, %98 ], [ %99, %146 ], [ %99, %143 ], [ %99, %142 ], [ %99, %141 ], [ %99, %140 ], [ %99, %138 ], [ %99, %133 ], [ %129, %128 ], [ %99, %124 ], [ %99, %117 ], [ %99, %109 ]
  %151 = phi i8 [ %100, %98 ], [ %100, %146 ], [ %100, %143 ], [ %100, %142 ], [ %100, %141 ], [ %100, %140 ], [ %100, %138 ], [ %100, %133 ], [ 1, %128 ], [ %100, %124 ], [ %100, %117 ], [ %100, %109 ]
  %152 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.21) #11
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %98

154:                                              ; preds = %135, %130, %125, %121, %118, %114, %111, %106, %104, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %160

155:                                              ; preds = %149, %95
  %156 = phi i32 [ 0, %95 ], [ %150, %149 ]
  %157 = phi i8 [ 0, %95 ], [ %151, %149 ]
  %158 = load i32, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %159 = icmp sgt i32 %158, -1
  br i1 %159, label %164, label %160

160:                                              ; preds = %155, %154
  %161 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 52
  %162 = load i32, ptr %161, align 8
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %162, ptr noundef nonnull @__func__.autofs_fill_super) #12
  br label %226

164:                                              ; preds = %155
  %165 = load i32, ptr %24, align 4
  %166 = icmp slt i32 %165, 3
  %167 = load i32, ptr %23, align 8
  %168 = icmp sgt i32 %167, 5
  %169 = select i1 %166, i1 true, i1 %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 52
  %172 = load i32, ptr %171, align 8
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %172, ptr noundef nonnull @__func__.autofs_fill_super, i32 noundef %167, i32 noundef %165, i32 noundef 3, i32 noundef 5) #12
  br label %226

174:                                              ; preds = %164
  %175 = call i32 @llvm.umin.i32(i32 %165, i32 5)
  store i32 %175, ptr %19, align 8
  store i32 5, ptr %20, align 4
  %176 = icmp eq i8 %157, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = call ptr @find_get_pid(i32 noundef %156) #11
  store ptr %178, ptr %17, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 52
  %182 = load i32, ptr %181, align 8
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %182, ptr noundef nonnull @__func__.autofs_fill_super, i32 noundef %156) #12
  br label %226

184:                                              ; preds = %174
  %185 = call ptr @get_task_pid(ptr noundef %85, i32 noundef 2) #11
  store ptr %185, ptr %17, align 4
  br label %186

186:                                              ; preds = %184, %177
  %187 = load i32, ptr %22, align 8
  switch i32 %187, label %191 [
    i32 4, label %188
    i32 2, label %188
  ]

188:                                              ; preds = %186, %186
  %189 = load i32, ptr %78, align 8
  %190 = or i32 %189, 393216
  store i32 %190, ptr %78, align 8
  br label %191

191:                                              ; preds = %188, %186
  %192 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 39
  store ptr @autofs_root_operations, ptr %192, align 8
  %193 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 7
  store ptr @autofs_dir_inode_operations, ptr %193, align 8
  %194 = load i32, ptr %14, align 4
  %195 = call ptr @fget(i32 noundef %194) #11
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 52
  %199 = load i32, ptr %198, align 8
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %199, ptr noundef nonnull @__func__.autofs_fill_super) #12
  br label %224

201:                                              ; preds = %191
  %202 = getelementptr inbounds %struct.file, ptr %195, i32 0, i32 8
  %203 = load i32, ptr %202, align 8
  %204 = and i32 %203, 262144
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %220, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.file, ptr %195, i32 0, i32 2
  %208 = load ptr, ptr %207, align 8
  %209 = load i16, ptr %208, align 8
  %210 = and i16 %209, -4096
  %211 = icmp eq i16 %210, 4096
  br i1 %211, label %212, label %220

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.file, ptr %195, i32 0, i32 7
  %214 = load i32, ptr %213, align 4
  %215 = and i32 %214, -67585
  %216 = or i32 %215, 65536
  store i32 %216, ptr %213, align 4
  store ptr %195, ptr %15, align 8
  %217 = load i32, ptr %21, align 8
  %218 = and i32 %217, -2
  store i32 %218, ptr %21, align 8
  %219 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %78, ptr %219, align 64
  br label %229

220:                                              ; preds = %206, %201
  %221 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 52
  %222 = load i32, ptr %221, align 8
  %223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %222, ptr noundef nonnull @__func__.autofs_fill_super) #12
  call void @fput(ptr noundef nonnull %195) #11
  br label %224

224:                                              ; preds = %220, %197
  %225 = load ptr, ptr %17, align 4
  call void @put_pid(ptr noundef %225) #11
  br label %226

226:                                              ; preds = %224, %180, %170, %160
  call void @dput(ptr noundef nonnull %78) #11
  br label %227

227:                                              ; preds = %226, %80, %12
  %228 = phi i32 [ -22, %226 ], [ -12, %80 ], [ -12, %12 ]
  call void @kfree(ptr noundef nonnull %10) #11
  store ptr null, ptr %13, align 4
  br label %229

229:                                              ; preds = %227, %212, %3
  %230 = phi i32 [ %228, %227 ], [ 0, %212 ], [ -12, %3 ]
  ret i32 %230
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @autofs_get_inode(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = tail call ptr @new_inode(ptr noundef %0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  store i16 %1, ptr %4, align 8
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %11, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 3
  %17 = load ptr, ptr %7, align 64
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  store i32 %21, ptr %16, align 8
  br label %22

22:                                               ; preds = %10, %6
  %23 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 14
  %24 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 15
  %25 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %24, ptr noundef align 8 dereferenceable(16) %25, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %23, ptr noundef align 8 dereferenceable(16) %25, i32 16, i1 false)
  %26 = call i32 @get_next_ino() #11
  %27 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 10
  store i32 %26, ptr %27, align 4
  %28 = and i16 %1, -4096
  switch i16 %28, label %34 [
    i16 16384, label %29
    i16 -24576, label %32
  ]

29:                                               ; preds = %22
  call void @set_nlink(ptr noundef nonnull %4, i32 noundef 2) #11
  %30 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 7
  store ptr @autofs_dir_inode_operations, ptr %30, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 39
  store ptr @autofs_dir_operations, ptr %31, align 8
  br label %35

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 7
  store ptr @autofs_symlink_inode_operations, ptr %33, align 8
  br label %35

34:                                               ; preds = %22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 382, i32 noundef 9, ptr noundef null) #11
  br label %35

35:                                               ; preds = %34, %32, %29, %2
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @autofs_evict_inode(ptr noundef %0) #0 {
  tail call void @clear_inode(ptr noundef %0) #11
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autofs_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 13
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %6, null
  br i1 %11, label %58, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %14) #11
  %15 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = icmp eq i32 %16, -1
  %20 = load i32, ptr @overflowuid, align 4
  %21 = select i1 %19, i32 %20, i32 %16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %21) #11
  br label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = icmp eq i32 %24, -1
  %28 = load i32, ptr @overflowgid, align 4
  %29 = select i1 %27, i32 %28, i32 %24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %29) #11
  br label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @pid_vnr(ptr noundef %32) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %33) #11
  %34 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = udiv i32 %35, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %36) #11
  %37 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %38) #11
  %39 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %40) #11
  %41 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 2
  %44 = select i1 %43, ptr @.str.17, ptr @.str.18
  %45 = icmp eq i32 %42, 4
  %46 = select i1 %45, ptr @.str.16, ptr %44
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %46) #11
  %47 = getelementptr inbounds %struct.autofs_sb_info, ptr %6, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %30
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.19) #11
  %52 = load i32, ptr %47, align 4
  br label %53

53:                                               ; preds = %51, %30
  %54 = phi i32 [ %52, %51 ], [ %48, %30 ]
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.20) #11
  br label %58

58:                                               ; preds = %57, %53, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
