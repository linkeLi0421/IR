; ModuleID = '/llk/IR/fs/ext4/fsmap.c_pt.bc'
source_filename = "../fs/ext4/fsmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ext4_fsmap = type { %struct.list_head, i32, i32, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.fsmap = type { i32, i32, i64, i64, i64, i64, [3 x i64] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.ext4_getfsmap_dev = type { ptr, i32 }
%struct.ext4_getfsmap_info = type { ptr, ptr, ptr, i64, i32, i32, %struct.ext4_fsmap, %struct.ext4_fsmap, %struct.ext4_fsmap, %struct.list_head, i8 }
%struct.ext4_fsmap_head = type { i32, i32, i32, i32, [2 x %struct.ext4_fsmap] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.51 }
%struct.llist_node = type { ptr }
%union.anon.51 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.52 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.71 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_ext4_fsmap_low_key = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_ext4_fsmap_high_key = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_fsmap_mapping = external dso_local global %struct.tracepoint, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ext4_fsmap_from_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  store i32 %5, ptr %1, align 8
  %6 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsmap, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 3
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i64
  %14 = shl i64 %10, %13
  %15 = getelementptr inbounds %struct.fsmap, ptr %1, i32 0, i32 2
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.fsmap, ptr %1, i32 0, i32 3
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.fsmap, ptr %1, i32 0, i32 4
  store i64 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 5
  %21 = load i64, ptr %20, align 8
  %22 = load i8, ptr %11, align 4
  %23 = zext i8 %22 to i64
  %24 = shl i64 %21, %23
  %25 = getelementptr inbounds %struct.fsmap, ptr %1, i32 0, i32 5
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.fsmap, ptr %1, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ext4_fsmap_to_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 8
  %5 = getelementptr inbounds %struct.ext4_fsmap, ptr %1, i32 0, i32 1
  store i32 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.fsmap, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_fsmap, ptr %1, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fsmap, ptr %2, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i64
  %14 = lshr i64 %10, %13
  %15 = getelementptr inbounds %struct.ext4_fsmap, ptr %1, i32 0, i32 3
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.fsmap, ptr %2, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ext4_fsmap, ptr %1, i32 0, i32 4
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.fsmap, ptr %2, i32 0, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = load i8, ptr %11, align 4
  %22 = zext i8 %21 to i64
  %23 = lshr i64 %20, %22
  %24 = getelementptr inbounds %struct.ext4_fsmap, ptr %1, i32 0, i32 5
  store i64 %23, ptr %24, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_getfsmap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca [2 x %struct.ext4_fsmap], align 8
  %6 = alloca [2 x %struct.ext4_getfsmap_dev], align 4
  %7 = alloca %struct.ext4_getfsmap_info, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %8, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #10
  %9 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(168) %9, i8 0, i32 160, i1 false)
  %10 = load i32, ptr %1, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %191

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %1, i32 0, i32 4
  %14 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %1, i32 0, i32 4, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %16 [
    i32 0, label %46
    i32 -1, label %46
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 255
  %22 = lshr i32 %20, 12
  %23 = and i32 %22, 1048320
  %24 = or i32 %23, %21
  %25 = shl i32 %20, 12
  %26 = and i32 %25, -1048576
  %27 = or i32 %24, %26
  %28 = icmp eq i32 %15, %27
  br i1 %28, label %46, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 55
  %33 = load ptr, ptr %32, align 16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %191, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 255
  %39 = lshr i32 %37, 12
  %40 = and i32 %39, 1048320
  %41 = or i32 %40, %38
  %42 = shl i32 %37, 12
  %43 = and i32 %42, -1048576
  %44 = or i32 %41, %43
  %45 = icmp eq i32 %15, %44
  br i1 %45, label %46, label %191

46:                                               ; preds = %35, %16, %12, %12
  %47 = getelementptr %struct.ext4_fsmap_head, ptr %1, i32 0, i32 4, i32 1
  %48 = getelementptr %struct.ext4_fsmap_head, ptr %1, i32 0, i32 4, i32 1, i32 1
  %49 = load i32, ptr %48, align 8
  switch i32 %49, label %50 [
    i32 0, label %80
    i32 -1, label %80
  ]

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.block_device, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 255
  %56 = lshr i32 %54, 12
  %57 = and i32 %56, 1048320
  %58 = or i32 %57, %55
  %59 = shl i32 %54, 12
  %60 = and i32 %59, -1048576
  %61 = or i32 %58, %60
  %62 = icmp eq i32 %49, %61
  br i1 %62, label %80, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 55
  %67 = load ptr, ptr %66, align 16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %191, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.block_device, ptr %67, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 255
  %73 = lshr i32 %71, 12
  %74 = and i32 %73, 1048320
  %75 = or i32 %74, %72
  %76 = shl i32 %71, 12
  %77 = and i32 %76, -1048576
  %78 = or i32 %75, %77
  %79 = icmp eq i32 %49, %78
  br i1 %79, label %80, label %191

80:                                               ; preds = %69, %50, %46, %46
  %81 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %1, i32 0, i32 3
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.block_device, ptr %84, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 255
  %88 = lshr i32 %86, 12
  %89 = and i32 %88, 1048320
  %90 = or i32 %89, %87
  %91 = shl i32 %86, 12
  %92 = and i32 %91, -1048576
  %93 = or i32 %90, %92
  %94 = getelementptr inbounds %struct.ext4_getfsmap_dev, ptr %6, i32 0, i32 1
  store i32 %93, ptr %94, align 4
  store ptr @ext4_getfsmap_datadev, ptr %6, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.ext4_sb_info, ptr %96, i32 0, i32 55
  %98 = load ptr, ptr %97, align 16
  %99 = icmp eq ptr %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %80
  %101 = getelementptr inbounds %struct.block_device, ptr %98, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 255
  %104 = lshr i32 %102, 12
  %105 = and i32 %104, 1048320
  %106 = or i32 %105, %103
  %107 = shl i32 %102, 12
  %108 = and i32 %107, -1048576
  %109 = or i32 %106, %108
  %110 = getelementptr inbounds [2 x %struct.ext4_getfsmap_dev], ptr %6, i32 0, i32 1
  %111 = getelementptr inbounds [2 x %struct.ext4_getfsmap_dev], ptr %6, i32 0, i32 1, i32 1
  store i32 %109, ptr %111, align 4
  store ptr @ext4_getfsmap_logdev, ptr %110, align 4
  br label %112

112:                                              ; preds = %100, %80
  call void @sort(ptr noundef nonnull %6, i32 noundef 2, i32 noundef 8, ptr noundef nonnull @ext4_getfsmap_dev_compare, ptr noundef null) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef align 8 dereferenceable(40) %13, i32 40, i1 false)
  %113 = getelementptr inbounds %struct.ext4_fsmap, ptr %5, i32 0, i32 5
  %114 = load i64, ptr %113, align 8
  %115 = getelementptr inbounds %struct.ext4_fsmap, ptr %5, i32 0, i32 3
  %116 = load i64, ptr %115, align 8
  %117 = add i64 %116, %114
  store i64 %117, ptr %115, align 8
  %118 = getelementptr inbounds %struct.ext4_fsmap, ptr %5, i32 0, i32 4
  %119 = getelementptr inbounds [2 x %struct.ext4_fsmap], ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %119, i8 -1, i32 40, i1 false)
  %120 = getelementptr inbounds %struct.ext4_fsmap, ptr %5, i32 0, i32 1
  %121 = load i32, ptr %120, align 8
  %122 = load i32, ptr %48, align 8
  %123 = icmp ugt i32 %121, %122
  br i1 %123, label %191, label %124

124:                                              ; preds = %112
  %125 = icmp ult i32 %121, %122
  br i1 %125, label %136, label %126

126:                                              ; preds = %124
  %127 = getelementptr %struct.ext4_fsmap_head, ptr %1, i32 0, i32 4, i32 1, i32 3
  %128 = load i64, ptr %127, align 8
  %129 = icmp ugt i64 %117, %128
  br i1 %129, label %191, label %130

130:                                              ; preds = %126
  %131 = icmp ult i64 %117, %128
  br i1 %131, label %136, label %132

132:                                              ; preds = %130
  %133 = getelementptr %struct.ext4_fsmap_head, ptr %1, i32 0, i32 4, i32 1, i32 4
  %134 = load i64, ptr %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %191, label %136

136:                                              ; preds = %132, %130, %124
  %137 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %1, i32 0, i32 4, i32 0, i32 3
  %138 = load i64, ptr %137, align 8
  %139 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %1, i32 0, i32 4, i32 0, i32 5
  %140 = load i64, ptr %139, align 8
  %141 = add i64 %140, %138
  %142 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %7, i32 0, i32 3
  store i64 %141, ptr %142, align 8
  %143 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %7, i32 0, i32 1
  store ptr %2, ptr %143, align 4
  %144 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %7, i32 0, i32 2
  store ptr %3, ptr %144, align 8
  store ptr %1, ptr %7, align 8
  %145 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %7, i32 0, i32 4
  %146 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %7, i32 0, i32 10
  %147 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %7, i32 0, i32 5
  %148 = load ptr, ptr %6, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %166, label %150

150:                                              ; preds = %136
  %151 = load i32, ptr %14, align 8
  %152 = load i32, ptr %94, align 4
  %153 = icmp ugt i32 %151, %152
  br i1 %153, label %166, label %154

154:                                              ; preds = %150
  %155 = icmp ult i32 %122, %152
  br i1 %155, label %188, label %156

156:                                              ; preds = %154
  %157 = icmp eq i32 %152, %122
  br i1 %157, label %158, label %159

158:                                              ; preds = %156
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %119, ptr noundef align 8 dereferenceable(40) %47, i32 40, i1 false)
  br label %159

159:                                              ; preds = %158, %156
  %160 = icmp ugt i32 %152, %151
  br i1 %160, label %161, label %162

161:                                              ; preds = %159
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false)
  br label %162

162:                                              ; preds = %161, %159
  store i32 %152, ptr %145, align 8
  store i8 0, ptr %146, align 8
  store i32 -1, ptr %147, align 4
  %163 = call i32 %148(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %7) #10
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %188

165:                                              ; preds = %162
  store i64 0, ptr %142, align 8
  br label %166

166:                                              ; preds = %165, %150, %136
  %167 = getelementptr inbounds [2 x %struct.ext4_getfsmap_dev], ptr %6, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %188, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %14, align 8
  %172 = getelementptr inbounds [2 x %struct.ext4_getfsmap_dev], ptr %6, i32 0, i32 1, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = icmp ugt i32 %171, %173
  br i1 %174, label %188, label %175

175:                                              ; preds = %170
  %176 = load i32, ptr %48, align 8
  %177 = icmp ult i32 %176, %173
  br i1 %177, label %188, label %178

178:                                              ; preds = %175
  %179 = icmp eq i32 %173, %176
  br i1 %179, label %180, label %181

180:                                              ; preds = %178
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %119, ptr noundef align 8 dereferenceable(40) %47, i32 40, i1 false)
  br label %181

181:                                              ; preds = %180, %178
  %182 = icmp ugt i32 %173, %171
  br i1 %182, label %183, label %184

183:                                              ; preds = %181
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false)
  br label %184

184:                                              ; preds = %183, %181
  store i32 %173, ptr %145, align 8
  store i8 0, ptr %146, align 8
  store i32 -1, ptr %147, align 4
  %185 = call i32 %168(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %7) #10
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i64 0, ptr %142, align 8
  br label %188

188:                                              ; preds = %187, %184, %175, %170, %166, %162, %154
  %189 = phi i32 [ 0, %154 ], [ %163, %162 ], [ 0, %175 ], [ %185, %184 ], [ 0, %187 ], [ 0, %170 ], [ 0, %166 ]
  %190 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %1, i32 0, i32 1
  store i32 1, ptr %190, align 4
  br label %191

191:                                              ; preds = %188, %132, %126, %112, %69, %63, %35, %29, %4
  %192 = phi i32 [ %189, %188 ], [ -22, %4 ], [ -22, %132 ], [ -22, %29 ], [ -22, %35 ], [ -22, %63 ], [ -22, %69 ], [ -22, %112 ], [ -22, %126 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #10
  ret i32 %192
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_getfsmap_datadev(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 29
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 50
  %21 = load i32, ptr %20, align 8
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i64 [ %23, %19 ], [ 0, %3 ]
  %26 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  %29 = or i64 %25, %28
  %30 = getelementptr inbounds %struct.ext4_fsmap, ptr %1, i32 0, i32 3
  %31 = load i64, ptr %30, align 8
  %32 = icmp ult i64 %31, %29
  br i1 %32, label %33, label %345

33:                                               ; preds = %24
  %34 = icmp ult i64 %31, %14
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store i64 %14, ptr %30, align 8
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i64 [ %31, %33 ], [ %14, %35 ]
  %38 = getelementptr %struct.ext4_fsmap, ptr %1, i32 1
  %39 = getelementptr %struct.ext4_fsmap, ptr %1, i32 1, i32 3
  %40 = load i64, ptr %39, align 8
  %41 = icmp ult i64 %40, %29
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = add i64 %29, -1
  store i64 %43, ptr %39, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i64 [ %43, %42 ], [ %40, %36 ]
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %37, ptr noundef nonnull %4, ptr noundef nonnull %6) #10
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %45, ptr noundef nonnull %5, ptr noundef nonnull %7) #10
  %46 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %46, ptr noundef align 8 dereferenceable(40) %1, i32 40, i1 false)
  %47 = load i32, ptr %6, align 4
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 12
  %49 = load i32, ptr %48, align 16
  %50 = shl i32 %47, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 6, i32 3
  store i64 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 6, i32 5
  store i64 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 7
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %54, i8 -1, i32 40, i1 false)
  %55 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 9
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 9, i32 1
  store ptr %55, ptr %56, align 4
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr inbounds %struct.ext4_sb_info, ptr %57, i32 0, i32 8
  %59 = load i32, ptr %58, align 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %187, label %61

61:                                               ; preds = %173, %44
  %62 = phi i32 [ %182, %173 ], [ 0, %44 ]
  %63 = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %62, ptr noundef null) #10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %221, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %8, align 4
  %67 = zext i32 %62 to i64
  %68 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = zext i32 %69 to i64
  %71 = mul nuw i64 %70, %67
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ext4_super_block, ptr %73, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = zext i32 %75 to i64
  %77 = add nuw i64 %71, %76
  %78 = getelementptr inbounds %struct.ext4_super_block, ptr %73, i32 0, i32 47
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ext4_sb_info, ptr %66, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = udiv i32 %62, %81
  %83 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %62) #10
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %65
  %86 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %87 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3136, i32 noundef 40) #11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %221, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ext4_fsmap, ptr %87, i32 0, i32 1
  store i32 0, ptr %90, align 8
  %91 = getelementptr inbounds %struct.ext4_fsmap, ptr %87, i32 0, i32 2
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.ext4_fsmap, ptr %87, i32 0, i32 3
  store i64 %77, ptr %92, align 8
  %93 = getelementptr inbounds %struct.ext4_fsmap, ptr %87, i32 0, i32 4
  store i64 377957122049, ptr %93, align 8
  %94 = getelementptr inbounds %struct.ext4_fsmap, ptr %87, i32 0, i32 5
  store i64 1, ptr %94, align 8
  %95 = load ptr, ptr %56, align 4
  store ptr %87, ptr %56, align 4
  store ptr %55, ptr %87, align 8
  %96 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %95, ptr %96, align 4
  store volatile ptr %87, ptr %95, align 4
  %97 = add nuw i64 %77, 1
  br label %98

98:                                               ; preds = %89, %65
  %99 = phi i64 [ %97, %89 ], [ %77, %65 ]
  %100 = call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %62) #10
  %101 = zext i32 %100 to i64
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %141, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %105 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3136, i32 noundef 40) #11
  %106 = icmp eq ptr %105, null
  br i1 %106, label %221, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ext4_fsmap, ptr %105, i32 0, i32 1
  store i32 0, ptr %108, align 8
  %109 = getelementptr inbounds %struct.ext4_fsmap, ptr %105, i32 0, i32 2
  store i32 0, ptr %109, align 4
  %110 = getelementptr inbounds %struct.ext4_fsmap, ptr %105, i32 0, i32 3
  store i64 %99, ptr %110, align 8
  %111 = getelementptr inbounds %struct.ext4_fsmap, ptr %105, i32 0, i32 4
  store i64 438086664193, ptr %111, align 8
  %112 = getelementptr inbounds %struct.ext4_fsmap, ptr %105, i32 0, i32 5
  store i64 %101, ptr %112, align 8
  %113 = load ptr, ptr %56, align 4
  store ptr %105, ptr %56, align 4
  store ptr %55, ptr %105, align 8
  %114 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %113, ptr %114, align 4
  store volatile ptr %105, ptr %113, align 4
  %115 = add nuw i64 %99, %101
  %116 = load ptr, ptr %8, align 4
  %117 = getelementptr inbounds %struct.ext4_sb_info, ptr %116, i32 0, i32 15
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.ext4_super_block, ptr %118, i32 0, i32 29
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 16
  %122 = icmp eq i32 %121, 0
  %123 = icmp ult i32 %82, %79
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %107
  %126 = load ptr, ptr %72, align 4
  %127 = getelementptr inbounds %struct.ext4_super_block, ptr %126, i32 0, i32 37
  %128 = load i16, ptr %127, align 2
  %129 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %130 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3136, i32 noundef 40) #11
  %131 = icmp eq ptr %130, null
  br i1 %131, label %221, label %132

132:                                              ; preds = %125
  %133 = zext i16 %128 to i64
  %134 = getelementptr inbounds %struct.ext4_fsmap, ptr %130, i32 0, i32 1
  store i32 0, ptr %134, align 8
  %135 = getelementptr inbounds %struct.ext4_fsmap, ptr %130, i32 0, i32 2
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.ext4_fsmap, ptr %130, i32 0, i32 3
  store i64 %115, ptr %136, align 8
  %137 = getelementptr inbounds %struct.ext4_fsmap, ptr %130, i32 0, i32 4
  store i64 438086664194, ptr %137, align 8
  %138 = getelementptr inbounds %struct.ext4_fsmap, ptr %130, i32 0, i32 5
  store i64 %133, ptr %138, align 8
  %139 = load ptr, ptr %56, align 4
  store ptr %130, ptr %56, align 4
  store ptr %55, ptr %130, align 8
  %140 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %139, ptr %140, align 4
  store volatile ptr %130, ptr %139, align 4
  br label %141

141:                                              ; preds = %132, %107, %98
  %142 = call i64 @ext4_block_bitmap(ptr noundef %0, ptr noundef nonnull %63) #10
  %143 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %144 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %143, i32 noundef 3136, i32 noundef 40) #11
  %145 = icmp eq ptr %144, null
  br i1 %145, label %221, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.ext4_fsmap, ptr %144, i32 0, i32 1
  store i32 0, ptr %147, align 8
  %148 = getelementptr inbounds %struct.ext4_fsmap, ptr %144, i32 0, i32 2
  store i32 0, ptr %148, align 4
  %149 = getelementptr inbounds %struct.ext4_fsmap, ptr %144, i32 0, i32 3
  store i64 %142, ptr %149, align 8
  %150 = getelementptr inbounds %struct.ext4_fsmap, ptr %144, i32 0, i32 4
  store i64 438086664195, ptr %150, align 8
  %151 = getelementptr inbounds %struct.ext4_fsmap, ptr %144, i32 0, i32 5
  store i64 1, ptr %151, align 8
  %152 = load ptr, ptr %56, align 4
  store ptr %144, ptr %56, align 4
  store ptr %55, ptr %144, align 8
  %153 = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  store ptr %152, ptr %153, align 4
  store volatile ptr %144, ptr %152, align 4
  %154 = call i64 @ext4_inode_bitmap(ptr noundef %0, ptr noundef nonnull %63) #10
  %155 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %156 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %155, i32 noundef 3136, i32 noundef 40) #11
  %157 = icmp eq ptr %156, null
  br i1 %157, label %221, label %158

158:                                              ; preds = %146
  %159 = getelementptr inbounds %struct.ext4_fsmap, ptr %156, i32 0, i32 1
  store i32 0, ptr %159, align 8
  %160 = getelementptr inbounds %struct.ext4_fsmap, ptr %156, i32 0, i32 2
  store i32 0, ptr %160, align 4
  %161 = getelementptr inbounds %struct.ext4_fsmap, ptr %156, i32 0, i32 3
  store i64 %154, ptr %161, align 8
  %162 = getelementptr inbounds %struct.ext4_fsmap, ptr %156, i32 0, i32 4
  store i64 438086664196, ptr %162, align 8
  %163 = getelementptr inbounds %struct.ext4_fsmap, ptr %156, i32 0, i32 5
  store i64 1, ptr %163, align 8
  %164 = load ptr, ptr %56, align 4
  store ptr %156, ptr %56, align 4
  store ptr %55, ptr %156, align 8
  %165 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  store ptr %164, ptr %165, align 4
  store volatile ptr %156, ptr %164, align 4
  %166 = call i64 @ext4_inode_table(ptr noundef %0, ptr noundef nonnull %63) #10
  %167 = load ptr, ptr %8, align 4
  %168 = getelementptr inbounds %struct.ext4_sb_info, ptr %167, i32 0, i32 5
  %169 = load i32, ptr %168, align 4
  %170 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %171 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %170, i32 noundef 3136, i32 noundef 40) #11
  %172 = icmp eq ptr %171, null
  br i1 %172, label %221, label %173

173:                                              ; preds = %158
  %174 = zext i32 %169 to i64
  %175 = getelementptr inbounds %struct.ext4_fsmap, ptr %171, i32 0, i32 1
  store i32 0, ptr %175, align 8
  %176 = getelementptr inbounds %struct.ext4_fsmap, ptr %171, i32 0, i32 2
  store i32 0, ptr %176, align 4
  %177 = getelementptr inbounds %struct.ext4_fsmap, ptr %171, i32 0, i32 3
  store i64 %166, ptr %177, align 8
  %178 = getelementptr inbounds %struct.ext4_fsmap, ptr %171, i32 0, i32 4
  store i64 377957122053, ptr %178, align 8
  %179 = getelementptr inbounds %struct.ext4_fsmap, ptr %171, i32 0, i32 5
  store i64 %174, ptr %179, align 8
  %180 = load ptr, ptr %56, align 4
  store ptr %171, ptr %56, align 4
  store ptr %55, ptr %171, align 8
  %181 = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  store ptr %180, ptr %181, align 4
  store volatile ptr %171, ptr %180, align 4
  %182 = add nuw i32 %62, 1
  %183 = load ptr, ptr %8, align 4
  %184 = getelementptr inbounds %struct.ext4_sb_info, ptr %183, i32 0, i32 8
  %185 = load i32, ptr %184, align 32
  %186 = icmp ult i32 %182, %185
  br i1 %186, label %61, label %187

187:                                              ; preds = %173, %44
  call void @list_sort(ptr noundef null, ptr noundef %55, ptr noundef nonnull @ext4_getfsmap_compare) #10
  %188 = load ptr, ptr %55, align 4
  %189 = icmp eq ptr %188, %55
  br i1 %189, label %232, label %190

190:                                              ; preds = %218, %187
  %191 = phi ptr [ %193, %218 ], [ %188, %187 ]
  %192 = phi ptr [ %219, %218 ], [ null, %187 ]
  %193 = load ptr, ptr %191, align 8
  %194 = icmp eq ptr %192, null
  br i1 %194, label %218, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.ext4_fsmap, ptr %192, i32 0, i32 4
  %197 = load i64, ptr %196, align 8
  %198 = getelementptr inbounds %struct.ext4_fsmap, ptr %191, i32 0, i32 4
  %199 = load i64, ptr %198, align 8
  %200 = icmp eq i64 %197, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.ext4_fsmap, ptr %192, i32 0, i32 3
  %203 = load i64, ptr %202, align 8
  %204 = getelementptr inbounds %struct.ext4_fsmap, ptr %192, i32 0, i32 5
  %205 = load i64, ptr %204, align 8
  %206 = add i64 %205, %203
  %207 = getelementptr inbounds %struct.ext4_fsmap, ptr %191, i32 0, i32 3
  %208 = load i64, ptr %207, align 8
  %209 = icmp eq i64 %206, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %201
  %211 = getelementptr inbounds %struct.ext4_fsmap, ptr %191, i32 0, i32 5
  %212 = load i64, ptr %211, align 8
  %213 = add i64 %212, %205
  store i64 %213, ptr %204, align 8
  %214 = getelementptr inbounds %struct.list_head, ptr %191, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = load ptr, ptr %191, align 4
  %217 = getelementptr inbounds %struct.list_head, ptr %216, i32 0, i32 1
  store ptr %215, ptr %217, align 4
  store volatile ptr %216, ptr %215, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %191, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %214, align 4
  call void @kfree(ptr noundef %191) #10
  br label %218

218:                                              ; preds = %210, %201, %195, %190
  %219 = phi ptr [ %192, %210 ], [ %191, %190 ], [ %191, %201 ], [ %191, %195 ]
  %220 = icmp eq ptr %193, %55
  br i1 %220, label %232, label %190

221:                                              ; preds = %158, %146, %141, %125, %103, %85, %61
  %222 = phi i32 [ -117, %61 ], [ -12, %85 ], [ -12, %103 ], [ -12, %125 ], [ -12, %141 ], [ -12, %146 ], [ -12, %158 ]
  %223 = load ptr, ptr %55, align 4
  %224 = icmp eq ptr %223, %55
  br i1 %224, label %334, label %225

225:                                              ; preds = %225, %221
  %226 = phi ptr [ %227, %225 ], [ %223, %221 ]
  %227 = load ptr, ptr %226, align 8
  %228 = getelementptr inbounds %struct.list_head, ptr %226, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.list_head, ptr %227, i32 0, i32 1
  store ptr %229, ptr %230, align 4
  store volatile ptr %227, ptr %229, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %226, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %228, align 4
  call void @kfree(ptr noundef %226) #10
  %231 = icmp eq ptr %227, %55
  br i1 %231, label %334, label %225

232:                                              ; preds = %218, %187
  %233 = load i32, ptr %4, align 4
  %234 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 5
  store i32 %233, ptr %234, align 4
  %235 = load i32, ptr %5, align 4
  %236 = icmp ugt i32 %233, %235
  br i1 %236, label %318, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 7, i32 3
  %239 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 7, i32 5
  %240 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 4
  %241 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 6, i32 4
  %242 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 7, i32 4
  br label %243

243:                                              ; preds = %314, %237
  %244 = phi i32 [ %235, %237 ], [ %316, %314 ]
  %245 = phi i32 [ %233, %237 ], [ %315, %314 ]
  %246 = icmp eq i32 %245, %244
  br i1 %246, label %247, label %252

247:                                              ; preds = %243
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %54, ptr noundef align 8 dereferenceable(40) %38, i32 40, i1 false)
  %248 = load i32, ptr %7, align 4
  %249 = load i32, ptr %48, align 16
  %250 = shl i32 %248, %249
  %251 = sext i32 %250 to i64
  store i64 %251, ptr %238, align 8
  store i64 0, ptr %239, align 8
  br label %252

252:                                              ; preds = %247, %243
  %253 = load i32, ptr %240, align 8
  %254 = load i64, ptr %52, align 8
  %255 = load i64, ptr %53, align 8
  %256 = load i64, ptr %241, align 8
  %257 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_low_key, i32 0, i32 1), align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %274

259:                                              ; preds = %252
  %260 = tail call ptr @llvm.thread.pointer() #10
  %261 = getelementptr inbounds %struct.thread_info, ptr %260, i32 0, i32 2
  %262 = load i32, ptr %261, align 8
  %263 = lshr i32 %262, 5
  %264 = getelementptr i32, ptr @__cpu_online_mask, i32 %263
  %265 = load volatile i32, ptr %264, align 4
  %266 = and i32 %262, 31
  %267 = shl nuw i32 1, %266
  %268 = and i32 %267, %265
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %259
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %271 = call i32 @__traceiter_ext4_fsmap_low_key(ptr noundef null, ptr noundef %0, i32 noundef %253, i32 noundef %245, i64 noundef %254, i64 noundef %255, i64 noundef %256) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %272 = load i32, ptr %240, align 8
  %273 = load i32, ptr %234, align 4
  br label %274

274:                                              ; preds = %270, %259, %252
  %275 = phi i32 [ %245, %252 ], [ %245, %259 ], [ %273, %270 ]
  %276 = phi i32 [ %253, %252 ], [ %253, %259 ], [ %272, %270 ]
  %277 = load i64, ptr %238, align 8
  %278 = load i64, ptr %239, align 8
  %279 = load i64, ptr %242, align 8
  %280 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_high_key, i32 0, i32 1), align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %297

282:                                              ; preds = %274
  %283 = tail call ptr @llvm.thread.pointer() #10
  %284 = getelementptr inbounds %struct.thread_info, ptr %283, i32 0, i32 2
  %285 = load i32, ptr %284, align 8
  %286 = lshr i32 %285, 5
  %287 = getelementptr i32, ptr @__cpu_online_mask, i32 %286
  %288 = load volatile i32, ptr %287, align 4
  %289 = and i32 %285, 31
  %290 = shl nuw i32 1, %289
  %291 = and i32 %290, %288
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %282
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %294 = call i32 @__traceiter_ext4_fsmap_high_key(ptr noundef null, ptr noundef %0, i32 noundef %276, i32 noundef %275, i64 noundef %277, i64 noundef %278, i64 noundef %279) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %295 = load i32, ptr %234, align 4
  %296 = load i64, ptr %238, align 8
  br label %297

297:                                              ; preds = %293, %282, %274
  %298 = phi i64 [ %277, %274 ], [ %277, %282 ], [ %296, %293 ]
  %299 = phi i32 [ %275, %274 ], [ %275, %282 ], [ %295, %293 ]
  %300 = load i64, ptr %52, align 8
  %301 = load i32, ptr %48, align 16
  %302 = zext i32 %301 to i64
  %303 = lshr i64 %300, %302
  %304 = trunc i64 %303 to i32
  %305 = lshr i64 %298, %302
  %306 = trunc i64 %305 to i32
  %307 = call i32 @ext4_mballoc_query_range(ptr noundef %0, i32 noundef %299, i32 noundef %304, i32 noundef %306, ptr noundef nonnull @ext4_getfsmap_datadev_helper, ptr noundef %2) #10
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %334

309:                                              ; preds = %297
  %310 = load i32, ptr %234, align 4
  %311 = load i32, ptr %4, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %309
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %46, i8 0, i32 40, i1 false)
  br label %314

314:                                              ; preds = %313, %309
  %315 = add i32 %310, 1
  store i32 %315, ptr %234, align 4
  %316 = load i32, ptr %5, align 4
  %317 = icmp ugt i32 %315, %316
  br i1 %317, label %318, label %243

318:                                              ; preds = %314, %232
  %319 = phi i32 [ %235, %232 ], [ %316, %314 ]
  %320 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 8, i32 4
  %321 = load i64, ptr %320, align 8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %329, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 8
  %325 = call fastcc i32 @ext4_getfsmap_helper(ptr noundef %0, ptr noundef %2, ptr noundef %324)
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %323
  %328 = load i32, ptr %5, align 4
  br label %329

329:                                              ; preds = %327, %318
  %330 = phi i32 [ %328, %327 ], [ %319, %318 ]
  %331 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 10
  store i8 1, ptr %331, align 8
  %332 = load i32, ptr %7, align 4
  %333 = call i32 @ext4_getfsmap_datadev_helper(ptr noundef %0, i32 noundef %330, i32 noundef %332, i32 noundef 0, ptr noundef %2)
  br label %334

334:                                              ; preds = %329, %323, %297, %225, %221
  %335 = phi i32 [ %325, %323 ], [ %333, %329 ], [ %222, %221 ], [ %307, %297 ], [ %222, %225 ]
  %336 = load ptr, ptr %55, align 4
  %337 = icmp eq ptr %336, %55
  br i1 %337, label %345, label %338

338:                                              ; preds = %338, %334
  %339 = phi ptr [ %340, %338 ], [ %336, %334 ]
  %340 = load ptr, ptr %339, align 8
  %341 = getelementptr inbounds %struct.list_head, ptr %339, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.list_head, ptr %340, i32 0, i32 1
  store ptr %342, ptr %343, align 4
  store volatile ptr %340, ptr %342, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %339, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %341, align 4
  call void @kfree(ptr noundef %339) #10
  %344 = icmp eq ptr %340, %55
  br i1 %344, label %345, label %338

345:                                              ; preds = %338, %334, %24
  %346 = phi i32 [ 0, %24 ], [ %335, %334 ], [ %335, %338 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %346
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_getfsmap_logdev(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = alloca %struct.ext4_fsmap, align 8
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 16, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %9, ptr noundef align 8 dereferenceable(40) %1, i32 32, i1 false)
  %10 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 6, i32 5
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 7
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %11, i8 -1, i32 40, i1 false)
  %12 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 6, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 6, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_low_key, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = tail call ptr @llvm.thread.pointer() #10
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %32 = tail call i32 @__traceiter_ext4_fsmap_low_key(ptr noundef null, ptr noundef %0, i32 noundef %13, i32 noundef 0, i64 noundef %15, i64 noundef 0, i64 noundef %17) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %33 = load i32, ptr %12, align 8
  %34 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 7, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 7, i32 5
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %2, i32 0, i32 7, i32 4
  %39 = load i64, ptr %38, align 8
  br label %40

40:                                               ; preds = %31, %20, %3
  %41 = phi i64 [ -1, %3 ], [ -1, %20 ], [ %39, %31 ]
  %42 = phi i64 [ -1, %3 ], [ -1, %20 ], [ %37, %31 ]
  %43 = phi i64 [ -1, %3 ], [ -1, %20 ], [ %35, %31 ]
  %44 = phi i32 [ %13, %3 ], [ %13, %20 ], [ %33, %31 ]
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_high_key, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = tail call ptr @llvm.thread.pointer() #10
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %59 = tail call i32 @__traceiter_ext4_fsmap_high_key(ptr noundef null, ptr noundef %0, i32 noundef %44, i32 noundef 0, i64 noundef %43, i64 noundef %42, i64 noundef %41) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %60

60:                                               ; preds = %58, %47, %40
  %61 = getelementptr inbounds %struct.ext4_fsmap, ptr %1, i32 0, i32 3
  %62 = load i64, ptr %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.journal_s, ptr %8, i32 0, i32 34
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 3
  store i64 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.journal_s, ptr %8, i32 0, i32 37
  %69 = load i32, ptr %68, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 5
  store i64 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 4
  store i64 377957122050, ptr %72, align 8
  %73 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 2
  store i32 0, ptr %73, align 4
  %74 = call fastcc i32 @ext4_getfsmap_helper(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4)
  br label %75

75:                                               ; preds = %64, %60
  %76 = phi i32 [ %74, %64 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ext4_getfsmap_dev_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.ext4_getfsmap_dev, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_getfsmap_dev, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  ret i32 %7
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_get_group_no_and_offset(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mballoc_query_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_getfsmap_datadev_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #1 {
  %6 = alloca %struct.ext4_fsmap, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 12
  %10 = load i32, ptr %9, align 16
  %11 = shl i32 %2, %10
  %12 = sext i32 %11 to i64
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = zext i32 %15 to i64
  %17 = mul nuw i64 %16, %13
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_super_block, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = add i64 %17, %12
  %24 = add i64 %23, %22
  %25 = shl i32 %3, %10
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %4, i32 0, i32 8
  %28 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %4, i32 0, i32 8, i32 4
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %4, i32 0, i32 8, i32 3
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %4, i32 0, i32 8, i32 5
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %33
  %37 = icmp eq i64 %36, %24
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = add i64 %35, %26
  store i64 %39, ptr %34, align 8
  br label %102

40:                                               ; preds = %31
  %41 = tail call fastcc i32 @ext4_getfsmap_helper(ptr noundef %0, ptr noundef %4, ptr noundef %27)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %102

43:                                               ; preds = %40
  store i64 0, ptr %28, align 8
  br label %44

44:                                               ; preds = %43, %5
  %45 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %4, i32 0, i32 9
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %4, i32 0, i32 3
  br label %50

50:                                               ; preds = %76, %48
  %51 = phi ptr [ %46, %48 ], [ %52, %76 ]
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.ext4_fsmap, ptr %51, i32 0, i32 3
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds %struct.ext4_fsmap, ptr %51, i32 0, i32 5
  %56 = load i64, ptr %55, align 8
  %57 = add i64 %56, %54
  %58 = load i64, ptr %49, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %52, ptr %62, align 4
  br label %74

64:                                               ; preds = %50
  %65 = icmp ult i64 %54, %24
  br i1 %65, label %66, label %76

66:                                               ; preds = %64
  %67 = tail call fastcc i32 @ext4_getfsmap_helper(ptr noundef %0, ptr noundef %4, ptr noundef %51)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %51, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  br label %74

74:                                               ; preds = %69, %60
  %75 = phi ptr [ %61, %60 ], [ %70, %69 ]
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %75, align 4
  tail call void @kfree(ptr noundef %51) #10
  br label %76

76:                                               ; preds = %74, %64
  %77 = icmp eq ptr %52, %45
  br i1 %77, label %78, label %50

78:                                               ; preds = %76, %44
  %79 = getelementptr inbounds %struct.ext4_fsmap, ptr %6, i32 0, i32 1
  store i32 0, ptr %79, align 8
  %80 = getelementptr inbounds %struct.ext4_fsmap, ptr %6, i32 0, i32 3
  store i64 %24, ptr %80, align 8
  %81 = getelementptr inbounds %struct.ext4_fsmap, ptr %6, i32 0, i32 5
  store i64 %26, ptr %81, align 8
  %82 = getelementptr inbounds %struct.ext4_fsmap, ptr %6, i32 0, i32 4
  store i64 1, ptr %82, align 8
  %83 = getelementptr inbounds %struct.ext4_fsmap, ptr %6, i32 0, i32 2
  store i32 0, ptr %83, align 4
  %84 = add i64 %24, %26
  %85 = add i32 %1, 1
  %86 = zext i32 %85 to i64
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr inbounds %struct.ext4_sb_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = zext i32 %89 to i64
  %91 = mul nuw i64 %90, %86
  %92 = getelementptr inbounds %struct.ext4_sb_info, ptr %87, i32 0, i32 15
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ext4_super_block, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = zext i32 %95 to i64
  %97 = add nuw i64 %91, %96
  %98 = icmp eq i64 %84, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %78
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 40, i1 false)
  br label %102

100:                                              ; preds = %78
  %101 = call fastcc i32 @ext4_getfsmap_helper(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6)
  br label %102

102:                                              ; preds = %100, %99, %66, %40, %38
  %103 = phi i32 [ 0, %38 ], [ 0, %99 ], [ %101, %100 ], [ %41, %40 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_getfsmap_helper(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = alloca %struct.ext4_fsmap, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 3
  %10 = load i64, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 98, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %168

20:                                               ; preds = %15, %3
  %21 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 6, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = icmp ult i64 %10, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 5
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, %10
  %28 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 3
  %29 = load i64, ptr %28, align 8
  %30 = icmp ult i64 %29, %27
  br i1 %30, label %31, label %168

31:                                               ; preds = %24
  store i64 %27, ptr %28, align 8
  br label %168

32:                                               ; preds = %20
  %33 = load ptr, ptr %1, align 8
  %34 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %33, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %168, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = icmp ugt i64 %10, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = add nuw i32 %39, 1
  store i32 %46, ptr %38, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 10
  %49 = load i8, ptr %48, align 8, !range !13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %168

51:                                               ; preds = %47
  %52 = load ptr, ptr %1, align 8
  %53 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %52, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 5
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, %10
  %59 = load i64, ptr %42, align 8
  %60 = icmp ult i64 %59, %58
  br i1 %60, label %61, label %168

61:                                               ; preds = %51
  store i64 %58, ptr %42, align 8
  br label %168

62:                                               ; preds = %32
  %63 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 3
  %64 = load i64, ptr %63, align 8
  %65 = icmp ugt i64 %10, %64
  br i1 %65, label %66, label %118

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %33, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i32 %68, %35
  br i1 %69, label %70, label %168

70:                                               ; preds = %66
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %71 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = load i32, ptr %5, align 4
  %74 = load i32, ptr %6, align 4
  %75 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 12
  %76 = load i32, ptr %75, align 16
  %77 = shl i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = load i64, ptr %63, align 8
  %80 = sub i64 %10, %79
  %81 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_mapping, i32 0, i32 1), align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @__cpu_online_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %83
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %94 = call i32 @__traceiter_ext4_fsmap_mapping(ptr noundef null, ptr noundef %0, i32 noundef %72, i32 noundef %73, i64 noundef %78, i64 noundef %80, i64 noundef 2) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %95 = load i32, ptr %71, align 8
  %96 = load i64, ptr %63, align 8
  %97 = sub i64 %10, %96
  br label %98

98:                                               ; preds = %93, %83, %70
  %99 = phi i64 [ %80, %70 ], [ %80, %83 ], [ %97, %93 ]
  %100 = phi i64 [ %79, %70 ], [ %79, %83 ], [ %96, %93 ]
  %101 = phi i32 [ %72, %70 ], [ %72, %83 ], [ %95, %93 ]
  %102 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 1
  store i32 %101, ptr %102, align 8
  %103 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 3
  store i64 %100, ptr %103, align 8
  %104 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 4
  store i64 2, ptr %104, align 8
  %105 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 5
  store i64 %99, ptr %105, align 8
  %106 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 2
  store i32 16, ptr %106, align 4
  %107 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = call i32 %108(ptr noundef nonnull %4, ptr noundef %110) #10
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %168

113:                                              ; preds = %98
  %114 = load ptr, ptr %1, align 8
  %115 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %114, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, 1
  store i32 %117, ptr %115, align 4
  br label %118

118:                                              ; preds = %113, %62
  %119 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 10
  %120 = load i8, ptr %119, align 8, !range !13
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %161

122:                                              ; preds = %118
  %123 = load ptr, ptr %1, align 8
  %124 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %123, i32 0, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %123, i32 0, i32 2
  %127 = load i32, ptr %126, align 8
  %128 = icmp ult i32 %125, %127
  br i1 %128, label %129, label %168

129:                                              ; preds = %122
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %130 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 4
  %131 = load i32, ptr %130, align 8
  %132 = load i32, ptr %5, align 4
  %133 = load i32, ptr %6, align 4
  %134 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 12
  %135 = load i32, ptr %134, align 16
  %136 = shl i32 %133, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 5
  %139 = load i64, ptr %138, align 8
  %140 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 4
  %141 = load i64, ptr %140, align 8
  call fastcc void @trace_ext4_fsmap_mapping(ptr noundef %0, i32 noundef %131, i32 noundef %132, i64 noundef %137, i64 noundef %139, i64 noundef %141)
  %142 = load i32, ptr %130, align 8
  %143 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 1
  store i32 %142, ptr %143, align 8
  %144 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 3
  store i64 %10, ptr %144, align 8
  %145 = load i64, ptr %140, align 8
  %146 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 4
  store i64 %145, ptr %146, align 8
  %147 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 2
  store i32 16, ptr %147, align 4
  %148 = load i64, ptr %138, align 8
  %149 = getelementptr inbounds %struct.ext4_fsmap, ptr %4, i32 0, i32 5
  store i64 %148, ptr %149, align 8
  %150 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.ext4_getfsmap_info, ptr %1, i32 0, i32 2
  %153 = load ptr, ptr %152, align 8
  %154 = call i32 %151(ptr noundef nonnull %4, ptr noundef %153) #10
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %129
  %157 = load ptr, ptr %1, align 8
  %158 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %157, i32 0, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %158, align 4
  br label %161

161:                                              ; preds = %156, %118
  %162 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 5
  %163 = load i64, ptr %162, align 8
  %164 = add i64 %163, %10
  %165 = load i64, ptr %63, align 8
  %166 = icmp ult i64 %165, %164
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i64 %164, ptr %63, align 8
  br label %168

168:                                              ; preds = %167, %161, %129, %122, %98, %66, %61, %51, %47, %37, %31, %24, %15
  %169 = phi i32 [ -4, %15 ], [ 0, %31 ], [ 0, %24 ], [ 1, %37 ], [ 0, %47 ], [ 0, %61 ], [ 0, %51 ], [ 1, %66 ], [ %111, %98 ], [ 1, %122 ], [ %154, %129 ], [ 0, %167 ], [ 0, %161 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret i32 %169
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_block_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ext4_getfsmap_compare(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #5 {
  %4 = getelementptr inbounds %struct.ext4_fsmap, ptr %1, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ext4_fsmap, ptr %2, i32 0, i32 3
  %7 = load i64, ptr %6, align 8
  %8 = icmp ult i64 %5, %7
  %9 = icmp ugt i64 %5, %7
  %10 = zext i1 %9 to i32
  %11 = select i1 %8, i32 -1, i32 %10
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_has_super(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_num_gdb(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fsmap_low_key(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fsmap_high_key(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_fsmap_mapping(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #9 {
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fsmap_mapping, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %21 = tail call i32 @__traceiter_ext4_fsmap_mapping(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %22

22:                                               ; preds = %20, %9, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fsmap_mapping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i64 2156123733}
!10 = !{i64 2156123947}
!11 = !{i64 2156145535}
!12 = !{i64 2156145751}
!13 = !{i8 0, i8 2}
!14 = !{i64 2156163291}
!15 = !{i64 2156163505}
