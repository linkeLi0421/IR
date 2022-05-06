; ModuleID = '/llk/IR/fs/ext4/mmp.c_pt.bc'
source_filename = "../fs/ext4/mmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mmp_struct = type { i32, i32, i64, [64 x i8], [32 x i8], i16, i16, [226 x i32], i32 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.anon.72 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.67 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"MMP failure info: last update time: %llu, last update node: %.*s, last update device: %.*s\00", align 1
@__func__.ext4_multi_mount_protect = private unnamed_addr constant [25 x i8] c"ext4_multi_mount_protect\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Invalid MMP block in superblock\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"fsck is running on the filesystem\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"MMP interval %u higher than expected, please wait.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"MMP startup interrupted, failing mount\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Device is already active on another node.\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"MMP startup interrupted, failing mount\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"kmmpd-%.*s\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Unable to create kmmpd thread for %s.\00", align 1
@__func__.read_mmp_block = private unnamed_addr constant [15 x i8] c"read_mmp_block\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Error %d while reading MMP block %llu\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@__func__.kmmpd = private unnamed_addr constant [6 x i8] c"kmmpd\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"kmmpd being stopped since MMP feature has been disabled.\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [27 x i8] c"Error writing to MMP block\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"error reading MMP data: %d\00", align 1
@.str.15 = private unnamed_addr constant [83 x i8] c"Error while updating MMP info. The filesystem seems to have been multiply mounted.\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@init_uts_ns = external dso_local local_unnamed_addr global %struct.uts_namespace, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__dump_mmp_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str, ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.mmp_struct, ptr %1, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmp_struct, ptr %1, i32 0, i32 3
  %9 = getelementptr inbounds %struct.mmp_struct, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.1, i64 noundef %7, i32 noundef 64, ptr noundef %8, i32 noundef 32, ptr noundef %9) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_stop_mmpd(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 117
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @kthread_stop(ptr noundef nonnull %3) #9
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 46
  %8 = load ptr, ptr %7, align 16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @__brelse(ptr noundef nonnull %8) #9
  br label %11

11:                                               ; preds = %10, %5
  store ptr null, ptr %2, align 16
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_multi_mount_protect(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4
  %8 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 57
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ugt i64 %12, %1
  br i1 %13, label %31, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 29
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  %21 = load i32, ptr %20, align 8
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i64 [ %23, %19 ], [ 0, %14 ]
  %26 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  %29 = or i64 %25, %28
  %30 = icmp ugt i64 %29, %1
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %2
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 292, ptr noundef nonnull @.str.2) #9
  br label %122

32:                                               ; preds = %24
  %33 = call fastcc i32 @read_mmp_block(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %1)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %122

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.buffer_head, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.mmp_struct, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %46 [
    i32 -11711152, label %75
    i32 -498250416, label %41
  ]

41:                                               ; preds = %35
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 317, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9
  %42 = getelementptr inbounds %struct.mmp_struct, ptr %38, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.mmp_struct, ptr %38, i32 0, i32 3
  %45 = getelementptr inbounds %struct.mmp_struct, ptr %38, i32 0, i32 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 317, ptr noundef nonnull @.str.1, i64 noundef %43, i32 noundef 64, ptr noundef %44, i32 noundef 32, ptr noundef %45) #9
  br label %122

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.mmp_struct, ptr %38, i32 0, i32 5
  %48 = load i16, ptr %47, align 8
  %49 = tail call i16 @llvm.umax.i16(i16 %9, i16 %48)
  %50 = tail call i16 @llvm.umax.i16(i16 %49, i16 5)
  %51 = zext i16 %50 to i32
  %52 = shl nuw nsw i32 %51, 1
  %53 = or i32 %52, 1
  %54 = add nuw nsw i32 %51, 60
  %55 = tail call i32 @llvm.umin.i32(i32 %53, i32 %54)
  %56 = icmp ugt i32 %55, 20
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = shl nuw nsw i32 %55, 1
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 327, ptr noundef nonnull @.str.4, i32 noundef %58) #9
  br label %59

59:                                               ; preds = %57, %46
  %60 = mul nuw nsw i32 %55, 100
  %61 = tail call i32 @schedule_timeout_interruptible(i32 noundef %60) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 330, ptr noundef nonnull @.str.5) #9
  br label %122

64:                                               ; preds = %59
  %65 = call fastcc i32 @read_mmp_block(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %1)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %122

67:                                               ; preds = %64
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds %struct.buffer_head, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.mmp_struct, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %40, %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  tail call void @__dump_mmp_msg(ptr noundef %0, ptr noundef %70, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 340, ptr noundef nonnull @.str.6)
  br label %122

75:                                               ; preds = %67, %35
  %76 = phi ptr [ %36, %35 ], [ %68, %67 ]
  %77 = phi i32 [ 0, %35 ], [ %55, %67 ]
  %78 = phi ptr [ %38, %35 ], [ %70, %67 ]
  br label %79

79:                                               ; preds = %79, %75
  %80 = tail call i32 @prandom_u32() #9
  %81 = icmp ugt i32 %80, -498250417
  br i1 %81, label %79, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.mmp_struct, ptr %78, i32 0, i32 1
  store i32 %80, ptr %83, align 4
  %84 = tail call fastcc i32 @write_mmp_block(ptr noundef %0, ptr noundef %76)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %124

86:                                               ; preds = %82
  %87 = mul nsw i32 %77, 100
  %88 = tail call i32 @schedule_timeout_interruptible(i32 noundef %87) #9
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 359, ptr noundef nonnull @.str.7) #9
  br label %122

91:                                               ; preds = %86
  %92 = call fastcc i32 @read_mmp_block(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %1)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %91
  %95 = load ptr, ptr %3, align 4
  %96 = getelementptr inbounds %struct.buffer_head, ptr %95, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.mmp_struct, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %80, %99
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  tail call void @__dump_mmp_msg(ptr noundef %0, ptr noundef %97, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 369, ptr noundef nonnull @.str.6)
  br label %122

102:                                              ; preds = %94
  %103 = load ptr, ptr %4, align 4
  %104 = getelementptr inbounds %struct.ext4_sb_info, ptr %103, i32 0, i32 46
  store ptr %95, ptr %104, align 16
  %105 = getelementptr inbounds %struct.buffer_head, ptr %95, i32 0, i32 6
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.mmp_struct, ptr %97, i32 0, i32 4
  %108 = tail call ptr @bdevname(ptr noundef %106, ptr noundef %107) #9
  %109 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kmmpd, ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef %108) #9
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %113, label %111

111:                                              ; preds = %102
  %112 = tail call i32 @wake_up_process(ptr noundef %109) #9
  br label %113

113:                                              ; preds = %111, %102
  %114 = load ptr, ptr %4, align 4
  %115 = getelementptr inbounds %struct.ext4_sb_info, ptr %114, i32 0, i32 117
  store ptr %109, ptr %115, align 16
  %116 = load ptr, ptr %4, align 4
  %117 = getelementptr inbounds %struct.ext4_sb_info, ptr %116, i32 0, i32 117
  %118 = load ptr, ptr %117, align 16
  %119 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  store ptr null, ptr %117, align 16
  %121 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 33
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_multi_mount_protect, i32 noundef 385, ptr noundef nonnull @.str.9, ptr noundef %121) #9
  br label %122

122:                                              ; preds = %120, %101, %91, %90, %74, %64, %63, %41, %32, %31
  %123 = load ptr, ptr %3, align 4
  br label %124

124:                                              ; preds = %122, %82
  %125 = phi ptr [ %123, %122 ], [ %76, %82 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  tail call void @__brelse(ptr noundef nonnull %125) #9
  br label %128

128:                                              ; preds = %127, %124, %113
  %129 = phi i32 [ 0, %113 ], [ 1, %124 ], [ 1, %127 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %129
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_mmp_block(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.anon.72, align 8
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %5) #9
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 16
  %15 = tail call ptr @__getblk_gfp(ptr noundef %12, i64 noundef %2, i32 noundef %14, i32 noundef 8) #9
  store ptr %15, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %10, %7
  %18 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %18) #9, !srcloc !9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 4, ptr nonnull elementtype(i32) %18) #9, !srcloc !10
  %24 = extractvalue { i32, i32, i32 } %23, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17
  tail call void @__lock_buffer(ptr noundef nonnull %18) #9
  br label %28

28:                                               ; preds = %27, %22
  %29 = load ptr, ptr %1, align 4
  %30 = tail call i32 @ext4_read_bh(ptr noundef %29, i32 noundef 12288, ptr noundef null) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %28
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 5066064
  br i1 %37, label %38, label %88

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ext4_super_block, ptr %42, i32 0, i32 30
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1024
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %95, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 119
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  %51 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %65, !prof !12

54:                                               ; preds = %47
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %55 = load ptr, ptr %39, align 4
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 15
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ext4_super_block, ptr %57, i32 0, i32 30
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 1024
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %95, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 119
  %64 = load ptr, ptr %63, align 8
  br label %65

65:                                               ; preds = %62, %47
  %66 = phi ptr [ %64, %62 ], [ %49, %47 ]
  %67 = phi ptr [ %55, %62 ], [ %40, %47 ]
  %68 = icmp eq ptr %66, null
  br i1 %68, label %95, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.mmp_struct, ptr %35, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %67, i32 0, i32 120
  %73 = load i32, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #9, !annotation !13
  %74 = load i32, ptr %66, align 64
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %77, label %76, !prof !14

76:                                               ; preds = %69
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #9, !srcloc !15
  unreachable

77:                                               ; preds = %69
  store ptr %66, ptr %4, align 8
  %78 = getelementptr inbounds %struct.anon.72, ptr %4, i32 0, i32 1
  store i32 %73, ptr %78, align 8
  %79 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef %35, i32 noundef 1020) #9
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81, !prof !14

81:                                               ; preds = %77
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

82:                                               ; preds = %77
  %83 = load i32, ptr %78, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %84 = icmp eq i32 %71, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %82, %28
  %86 = phi i32 [ -74, %82 ], [ %30, %28 ]
  %87 = load ptr, ptr %1, align 4
  br label %88

88:                                               ; preds = %85, %32
  %89 = phi ptr [ %87, %85 ], [ %33, %32 ]
  %90 = phi i32 [ %86, %85 ], [ -117, %32 ]
  %91 = icmp eq ptr %89, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @__brelse(ptr noundef nonnull %89) #9
  br label %93

93:                                               ; preds = %92, %88, %10
  %94 = phi i32 [ %90, %88 ], [ %90, %92 ], [ -12, %10 ]
  store ptr null, ptr %1, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.read_mmp_block, i32 noundef 107, ptr noundef nonnull @.str.10, i32 noundef %94, i64 noundef %2) #9
  br label %95

95:                                               ; preds = %93, %82, %65, %54, %38
  %96 = phi i32 [ %94, %93 ], [ 0, %82 ], [ 0, %65 ], [ 0, %54 ], [ 0, %38 ]
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_mmp_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.anon.72, align 8
  %4 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21, !prof !14

9:                                                ; preds = %2
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !18
  %11 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #4, !srcloc !19
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #9, !srcloc !20
  br label %23

21:                                               ; preds = %2
  %22 = tail call zeroext i1 @__percpu_down_read(ptr noundef %6, i1 noundef zeroext false) #9
  br label %23

23:                                               ; preds = %21, %9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  %24 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_super_block, ptr %27, i32 0, i32 30
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %25, i32 0, i32 119
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  %36 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %50, !prof !12

39:                                               ; preds = %32
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %40 = load ptr, ptr %24, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ext4_super_block, ptr %42, i32 0, i32 30
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1024
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 119
  %49 = load ptr, ptr %48, align 8
  br label %50

50:                                               ; preds = %47, %32
  %51 = phi ptr [ %49, %47 ], [ %34, %32 ]
  %52 = phi ptr [ %40, %47 ], [ %25, %32 ]
  %53 = icmp eq ptr %51, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ext4_sb_info, ptr %52, i32 0, i32 120
  %56 = load i32, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !13
  %57 = load i32, ptr %51, align 64
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %60, label %59, !prof !14

59:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #9, !srcloc !15
  unreachable

60:                                               ; preds = %54
  store ptr %51, ptr %3, align 8
  %61 = getelementptr inbounds %struct.anon.72, ptr %3, i32 0, i32 1
  store i32 %56, ptr %61, align 8
  %62 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1020) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64, !prof !14

64:                                               ; preds = %60
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

65:                                               ; preds = %60
  %66 = load i32, ptr %61, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  %67 = getelementptr inbounds %struct.mmp_struct, ptr %5, i32 0, i32 8
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %50, %39, %23
  %69 = load volatile i32, ptr %1, align 4
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #9, !srcloc !9
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 4, ptr elementtype(i32) %1) #9, !srcloc !10
  %74 = extractvalue { i32, i32, i32 } %73, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72, %68
  call void @__lock_buffer(ptr noundef %1) #9
  br label %78

78:                                               ; preds = %77, %72
  %79 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 7
  store ptr @end_buffer_write_sync, ptr %79, align 4
  %80 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %80) #9, !srcloc !9
  %81 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 1, ptr elementtype(i32) %80) #9, !srcloc !22
  %82 = call i32 @submit_bh(i32 noundef 1, i32 noundef 14336, ptr noundef %1) #9
  %83 = load volatile i32, ptr %1, align 4
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  call void @__wait_on_buffer(ptr noundef %1) #9
  br label %87

87:                                               ; preds = %86, %78
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %88 = load volatile i32, ptr %6, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %102, !prof !14

90:                                               ; preds = %87
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !18
  %92 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = call i32 @llvm.read_register.i32(metadata !0) #9
  %96 = inttoptr i32 %95 to ptr
  %97 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %96) #4, !srcloc !19
  %98 = add i32 %97, %94
  %99 = inttoptr i32 %98 to ptr
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, -1
  store i32 %101, ptr %99, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #9, !srcloc !20
  br label %116

102:                                              ; preds = %87
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %103 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !18
  %104 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = call i32 @llvm.read_register.i32(metadata !0) #9
  %108 = inttoptr i32 %107 to ptr
  %109 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %108) #4, !srcloc !19
  %110 = add i32 %109, %106
  %111 = inttoptr i32 %110 to ptr
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, -1
  store i32 %113, ptr %111, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %103) #9, !srcloc !20
  %114 = getelementptr %struct.super_block, ptr %0, i32 0, i32 26, i32 2, i32 0, i32 2
  %115 = call i32 @rcuwait_wake_up(ptr noundef %114) #9
  br label %116

116:                                              ; preds = %102, %90
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %117 = load volatile i32, ptr %1, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, i32 -5, i32 0, !prof !12
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kmmpd(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 46
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.ext4_super_block, ptr %6, i32 0, i32 57
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.ext4_super_block, ptr %6, i32 0, i32 58
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i64 @ktime_get_real_seconds() #9
  %17 = getelementptr inbounds %struct.mmp_struct, ptr %15, i32 0, i32 2
  store i64 %16, ptr %17, align 8
  %18 = shl nuw nsw i32 %11, 1
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 5)
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.mmp_struct, ptr %15, i32 0, i32 5
  store i16 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.mmp_struct, ptr %15, i32 0, i32 4
  %25 = tail call ptr @bdevname(ptr noundef %23, ptr noundef %24) #9
  %26 = getelementptr inbounds %struct.mmp_struct, ptr %15, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %26, ptr noundef align 1 dereferenceable(64) getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 1), i32 64, i1 false)
  %27 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %27, label %114, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %30 = getelementptr inbounds %struct.mmp_struct, ptr %15, i32 0, i32 1
  %31 = mul nuw nsw i32 %11, 100
  br label %32

32:                                               ; preds = %106, %28
  %33 = phi i32 [ 0, %28 ], [ %52, %106 ]
  %34 = phi i32 [ 0, %28 ], [ %65, %106 ]
  %35 = phi i32 [ %19, %28 ], [ %111, %106 ]
  %36 = phi i32 [ 0, %28 ], [ %107, %106 ]
  %37 = load i32, ptr %29, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %114

40:                                               ; preds = %32
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ext4_super_block, ptr %43, i32 0, i32 29
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.kmmpd, i32 noundef 162, ptr noundef nonnull @.str.12) #9
  br label %118

49:                                               ; preds = %40
  %50 = add i32 %33, 1
  %51 = icmp ugt i32 %50, -498250417
  %52 = select i1 %51, i32 1, i32 %50
  store i32 %52, ptr %30, align 4
  %53 = tail call i64 @ktime_get_real_seconds() #9
  store i64 %53, ptr %17, align 8
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = tail call fastcc i32 @write_mmp_block(ptr noundef %0, ptr noundef %8)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %49
  %58 = urem i32 %34, 60
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = sub i32 0, %55
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.kmmpd, i32 noundef 180, i1 noundef zeroext false, i32 noundef %61, i64 noundef 0, ptr noundef nonnull @.str.13) #9
  br label %62

62:                                               ; preds = %60, %57
  %63 = add i32 %34, 1
  br label %64

64:                                               ; preds = %62, %49
  %65 = phi i32 [ %63, %62 ], [ %34, %49 ]
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = sub i32 %66, %54
  %68 = icmp ugt i32 %31, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = sub i32 %31, %67
  %71 = tail call i32 @schedule_timeout_interruptible(i32 noundef %70) #9
  br label %72

72:                                               ; preds = %69, %64
  %73 = load volatile i32, ptr @jiffies, align 64
  %74 = sub i32 %73, %54
  %75 = mul nuw nsw i32 %35, 100
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4
  %78 = call fastcc i32 @read_mmp_block(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %13)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = sub i32 0, %78
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.kmmpd, i32 noundef 204, i1 noundef zeroext false, i32 noundef %81, i64 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %78) #9
  br label %101

82:                                               ; preds = %77
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr inbounds %struct.buffer_head, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %30, align 4
  %87 = getelementptr inbounds %struct.mmp_struct, ptr %85, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.mmp_struct, ptr %85, i32 0, i32 3
  %92 = tail call i32 @bcmp(ptr noundef dereferenceable(64) %26, ptr noundef dereferenceable(64) %91, i32 64)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %90, %82
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.kmmpd, i32 noundef 215, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #9
  %95 = getelementptr inbounds %struct.mmp_struct, ptr %85, i32 0, i32 2
  %96 = load i64, ptr %95, align 8
  %97 = getelementptr inbounds %struct.mmp_struct, ptr %85, i32 0, i32 3
  %98 = getelementptr inbounds %struct.mmp_struct, ptr %85, i32 0, i32 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.kmmpd, i32 noundef 215, ptr noundef nonnull @.str.1, i64 noundef %96, i32 noundef 64, ptr noundef %97, i32 noundef 32, ptr noundef %98) #9
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.kmmpd, i32 noundef 216, i1 noundef zeroext false, i32 noundef 16, i64 noundef 0, ptr noundef nonnull @.str.16) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %99 = getelementptr inbounds %struct.buffer_head, ptr %83, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #9, !srcloc !9
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #9, !srcloc !27
  br label %101

101:                                              ; preds = %94, %80
  %102 = phi i32 [ -16, %94 ], [ %78, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %118

103:                                              ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %104 = getelementptr inbounds %struct.buffer_head, ptr %83, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #9, !srcloc !9
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #9, !srcloc !27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %106

106:                                              ; preds = %103, %72
  %107 = phi i32 [ 0, %103 ], [ %55, %72 ]
  %108 = shl i32 %74, 1
  %109 = udiv i32 %108, 100
  %110 = tail call i32 @llvm.umin.i32(i32 %109, i32 300)
  %111 = tail call i32 @llvm.umax.i32(i32 %110, i32 5)
  %112 = trunc i32 %111 to i16
  store i16 %112, ptr %21, align 8
  %113 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %113, label %114, label %32

114:                                              ; preds = %106, %32, %1
  %115 = getelementptr inbounds %struct.mmp_struct, ptr %15, i32 0, i32 1
  store i32 -11711152, ptr %115, align 4
  %116 = tail call i64 @ktime_get_real_seconds() #9
  store i64 %116, ptr %17, align 8
  %117 = tail call fastcc i32 @write_mmp_block(ptr noundef %0, ptr noundef %8)
  br label %118

118:                                              ; preds = %114, %101, %48
  %119 = phi i32 [ %117, %114 ], [ %36, %48 ], [ %102, %101 ]
  %120 = tail call zeroext i1 @kthread_should_stop() #9
  %121 = tail call ptr @llvm.thread.pointer() #9
  br i1 %120, label %129, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 1
  br label %124

124:                                              ; preds = %127, %122
  store volatile i32 1, ptr %123, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %125 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %125, label %127, label %126

126:                                              ; preds = %124
  tail call void @schedule() #9
  br label %127

127:                                              ; preds = %126, %124
  %128 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %128, label %129, label %124

129:                                              ; preds = %127, %118
  %130 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 1
  store volatile i32 0, ptr %130, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_write_sync(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }

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
!9 = !{i64 835688, i64 2148325659, i64 2148325685, i64 2148325732, i64 2148325754, i64 2148325782, i64 2148325802}
!10 = !{i64 2148345536, i64 2148345568, i64 2148345597, i64 2148345631, i64 2148345662, i64 2148345685}
!11 = !{i64 2148446876}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153773458, i64 2153773938, i64 2153773495, i64 2153773551, i64 2153773585, i64 2153773609, i64 2153773650, i64 2153773671, i64 2153773699, i64 2153773733}
!16 = !{i64 2153774536, i64 2153775016, i64 2153774573, i64 2153774629, i64 2153774663, i64 2153774687, i64 2153774728, i64 2153774749, i64 2153774777, i64 2153774811}
!17 = !{i64 2151133923}
!18 = !{i64 741366, i64 741427}
!19 = !{i64 760066}
!20 = !{i64 744383}
!21 = !{i64 2151141540}
!22 = !{i64 2148337074, i64 2148337100, i64 2148337129, i64 2148337163, i64 2148337194, i64 2148337217}
!23 = !{i64 2151150005}
!24 = !{i64 2151158316}
!25 = !{i64 2151166534}
!26 = !{i64 2152549371}
!27 = !{i64 2148339431, i64 2148339457, i64 2148339486, i64 2148339520, i64 2148339551, i64 2148339574}
!28 = !{i64 2153822185}
!29 = !{i64 2153825009}
