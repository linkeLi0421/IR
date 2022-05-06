; ModuleID = '/llk/IR/fs/ext4/ext4_jbd2.c_pt.bc'
source_filename = "../fs/ext4/ext4_jbd2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.jbd2_journal_handle = type { %union.anon.72, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.72 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }

@__func__.__ext4_journal_get_write_access = private unnamed_addr constant [32 x i8] c"__ext4_journal_get_write_access\00", align 1
@__func__.__ext4_forget = private unnamed_addr constant [14 x i8] c"__ext4_forget\00", align 1
@.str = private unnamed_addr constant [32 x i8] c"error %d when attempting revoke\00", align 1
@__func__.__ext4_journal_get_create_access = private unnamed_addr constant [33 x i8] c"__ext4_journal_get_create_access\00", align 1
@__ext4_handle_dirty_metadata.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"fs/ext4/ext4_jbd2.c\00", align 1
@__func__.__ext4_handle_dirty_metadata = private unnamed_addr constant [29 x i8] c"__ext4_handle_dirty_metadata\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"\013EXT4: jbd2_journal_dirty_metadata failed: handle type %u started at line %u, credits %u/%u, errcode %d\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"journal_dirty_metadata failed: handle type %u started at line %u, credits %u/%u, errcode %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"IO error syncing itable block\00", align 1
@__tracepoint_ext4_journal_start = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__func__.ext4_journal_check_start = private unnamed_addr constant [25 x i8] c"ext4_journal_check_start\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Detected aborted journal\00", align 1
@__tracepoint_ext4_journal_start_reserved = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_check_bdev_write_error = private unnamed_addr constant [28 x i8] c"ext4_check_bdev_write_error\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Error while async write back metadata\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\013EXT4-fs: %s:%d: aborting transaction: %s in %s\0A\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@__tracepoint_ext4_forget = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_inode_journal_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, -4096
  %12 = icmp eq i16 %11, -32768
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -124
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 2097152
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 17
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 3072
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load volatile i32, ptr %14, align 4
  %25 = and i32 %24, 16384
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %20, 134217728
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %36

30:                                               ; preds = %23, %18, %13
  %31 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 16384
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %9
  br label %39

36:                                               ; preds = %23
  switch i32 %21, label %37 [
    i32 2048, label %39
    i32 3072, label %38
  ]

37:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #7, !srcloc !8
  unreachable

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %36, %35, %30, %1
  %40 = phi i32 [ 1, %35 ], [ 4, %1 ], [ 2, %30 ], [ 2, %36 ], [ 4, %38 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__ext4_journal_start_sb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  %8 = ptrtoint ptr %7 to i32
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journal_start, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = tail call ptr @llvm.thread.pointer() #7
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  %23 = tail call i32 @__traceiter_ext4_journal_start(ptr noundef null, ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %8) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  br label %24

24:                                               ; preds = %22, %11, %6
  %25 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 48
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %72, !prof !11

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 26
  %38 = load i32, ptr %37, align 16
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %42, !prof !12

40:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 75, i32 noundef 9, ptr noundef null) #7
  %41 = load ptr, ptr %25, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %26, %36 ]
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %43, i32 0, i32 47
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %45, align 8
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.journal_s, ptr %45, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = sub i32 0, %53
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_journal_check_start, i32 noundef 83, i1 noundef zeroext true, i32 noundef %54, i64 noundef 0, ptr noundef nonnull @.str.6) #7
  br label %72

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %43, i32 0, i32 25
  %57 = load i16, ptr %56, align 8
  %58 = and i16 %57, 32
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55, %42
  %61 = tail call ptr @llvm.thread.pointer() #7
  %62 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 113
  %63 = load ptr, ptr %62, align 4
  %64 = icmp ugt ptr %63, inttoptr (i32 4095 to ptr)
  br i1 %64, label %65, label %66, !prof !12

65:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 38, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

66:                                               ; preds = %60
  %67 = ptrtoint ptr %63 to i32
  %68 = add i32 %67, 1
  %69 = inttoptr i32 %68 to ptr
  store ptr %69, ptr %62, align 4
  br label %72

70:                                               ; preds = %55
  %71 = tail call ptr @jbd2__journal_start(ptr noundef nonnull %45, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 3136, i32 noundef %2, i32 noundef %1) #7
  br label %72

72:                                               ; preds = %70, %66, %51, %31, %24
  %73 = phi ptr [ %69, %66 ], [ %71, %70 ], [ inttoptr (i32 -30 to ptr), %31 ], [ inttoptr (i32 -5 to ptr), %24 ], [ inttoptr (i32 -30 to ptr), %51 ]
  ret ptr %73
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2__journal_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_journal_stop(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 53, 0\0A.popsection", ""() #7, !srcloc !14
  unreachable

8:                                                ; preds = %5
  %9 = ptrtoint ptr %2 to i32
  %10 = add i32 %9, -1
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call ptr @llvm.thread.pointer() #7
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 113
  store ptr %11, ptr %13, align 4
  br label %32

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = tail call i32 @jbd2_journal_stop(ptr noundef %2) #7
  %21 = icmp eq i32 %16, 0
  %22 = select i1 %21, i32 %20, i32 %16
  br label %32

23:                                               ; preds = %14
  %24 = load ptr, ptr %17, align 8
  %25 = getelementptr inbounds %struct.journal_s, ptr %24, i32 0, i32 69
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @jbd2_journal_stop(ptr noundef %2) #7
  %28 = icmp eq i32 %16, 0
  %29 = select i1 %28, i32 %27, i32 %16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  tail call void @__ext4_std_error(ptr noundef %26, ptr noundef %0, i32 noundef %1, i32 noundef %29) #7
  br label %32

32:                                               ; preds = %31, %23, %19, %8
  %33 = phi i32 [ %22, %19 ], [ 0, %8 ], [ %29, %31 ], [ 0, %23 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__ext4_journal_start_reserved(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = tail call ptr @llvm.thread.pointer() #7
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 113
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 4095 to ptr)
  br i1 %9, label %10, label %11, !prof !12

10:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 38, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

11:                                               ; preds = %5
  %12 = ptrtoint ptr %8 to i32
  %13 = add i32 %12, 1
  %14 = inttoptr i32 %13 to ptr
  store ptr %14, ptr %7, align 4
  br label %90

15:                                               ; preds = %3
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 69
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr %16, ptr %0
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.journal_s, ptr %24, i32 0, i32 48
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %28, -1
  %32 = add i32 %31, %30
  %33 = sdiv i32 %32, %30
  %34 = sub i32 %26, %33
  %35 = tail call ptr @llvm.returnaddress(i32 0)
  %36 = ptrtoint ptr %35 to i32
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_journal_start_reserved, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %15
  %40 = tail call ptr @llvm.thread.pointer() #7
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  %51 = tail call i32 @__traceiter_ext4_journal_start_reserved(ptr noundef null, ptr noundef %18, i32 noundef %34, i32 noundef %36) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  br label %52

52:                                               ; preds = %50, %39, %15
  %53 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ext4_sb_info, ptr %54, i32 0, i32 48
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %83, !prof !11

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 26
  %66 = load i32, ptr %65, align 16
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %70, !prof !12

68:                                               ; preds = %64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 75, i32 noundef 9, ptr noundef null) #7
  %69 = load ptr, ptr %53, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi ptr [ %69, %68 ], [ %54, %64 ]
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 47
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load i32, ptr %73, align 8
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.journal_s, ptr %73, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = sub i32 0, %81
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %18, ptr noundef nonnull @__func__.ext4_journal_check_start, i32 noundef 83, i1 noundef zeroext true, i32 noundef %82, i64 noundef 0, ptr noundef nonnull @.str.6) #7
  br label %83

83:                                               ; preds = %79, %59, %52
  %84 = phi ptr [ inttoptr (i32 -30 to ptr), %59 ], [ inttoptr (i32 -5 to ptr), %52 ], [ inttoptr (i32 -30 to ptr), %79 ]
  tail call void @jbd2_journal_free_reserved(ptr noundef %0) #7
  br label %90

85:                                               ; preds = %75, %70
  %86 = tail call i32 @jbd2_journal_start_reserved(ptr noundef %0, i32 noundef %2, i32 noundef %1) #7
  %87 = icmp slt i32 %86, 0
  %88 = inttoptr i32 %86 to ptr
  %89 = select i1 %87, ptr %88, ptr %0
  br label %90

90:                                               ; preds = %85, %83, %11
  %91 = phi ptr [ %84, %83 ], [ %14, %11 ], [ %89, %85 ]
  ret ptr %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_free_reserved(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_start_reserved(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %5, label %53, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %53, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = and i32 %8, 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr %15, ptr %12
  %23 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.journal_s, ptr %22, i32 0, i32 48
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %26, -1
  %30 = add i32 %29, %28
  %31 = sdiv i32 %30, %28
  %32 = sub i32 %24, %31
  %33 = icmp slt i32 %32, %1
  br i1 %33, label %38, label %34

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %36, %3
  br i1 %37, label %38, label %53

38:                                               ; preds = %34, %19
  %39 = select i1 %21, ptr %12, ptr %0
  %40 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %3, %41
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 0)
  %44 = load ptr, ptr %39, align 4
  %45 = getelementptr inbounds %struct.journal_s, ptr %44, i32 0, i32 48
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %29
  %48 = sdiv i32 %47, %46
  %49 = sub i32 %2, %24
  %50 = add i32 %49, %48
  %51 = tail call i32 @llvm.smax.i32(i32 %50, i32 0)
  %52 = tail call i32 @jbd2_journal_extend(ptr noundef %0, i32 noundef %51, i32 noundef %43) #7
  br label %53

53:                                               ; preds = %38, %34, %14, %11, %6, %4
  %54 = phi i32 [ 0, %4 ], [ -30, %14 ], [ 0, %34 ], [ %52, %38 ], [ -30, %11 ], [ -30, %6 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_journal_get_write_access(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i8], align 1
  %8 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.block_device, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 11
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 139
  %24 = load volatile i32, ptr %23, align 16
  %25 = tail call i32 @errseq_check(ptr noundef %22, i32 noundef %24) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 140
  tail call void @_raw_spin_lock(ptr noundef %28) #7
  %29 = tail call i32 @errseq_check_and_advance(ptr noundef %22, ptr noundef %23) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %30 = load i16, ptr %28, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = sub i32 0, %29
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef nonnull %11, ptr noundef nonnull @__func__.ext4_check_bdev_write_error, i32 noundef 218, i1 noundef zeroext false, i32 noundef %34, i64 noundef 0, ptr noundef nonnull @.str.7) #7
  br label %35

35:                                               ; preds = %33, %27, %13, %6
  %36 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  br i1 %36, label %64, label %37

37:                                               ; preds = %35
  %38 = tail call i32 @jbd2_journal_get_write_access(ptr noundef %2, ptr noundef %4) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false) #7, !annotation !21
  %41 = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %38, ptr noundef nonnull %7) #7
  %42 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 %38, ptr %42, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %52, align 8
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %1, ptr noundef %41, ptr noundef nonnull @__func__.__ext4_journal_get_write_access) #8
  %61 = load i32, ptr %47, align 4
  %62 = or i32 %61, 8
  store i32 %62, ptr %47, align 4
  br label %63

63:                                               ; preds = %59, %54, %51, %46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %102

64:                                               ; preds = %37, %35
  %65 = icmp eq i32 %5, 1
  br i1 %65, label %102, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ext4_super_block, ptr %70, i32 0, i32 30
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %102, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 119
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  %79 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %93, !prof !12

82:                                               ; preds = %75
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3289, i32 noundef 9, ptr noundef null) #7
  %83 = load ptr, ptr %67, align 4
  %84 = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 15
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ext4_super_block, ptr %85, i32 0, i32 30
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1024
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 119
  %92 = load ptr, ptr %91, align 8
  br label %93

93:                                               ; preds = %90, %75
  %94 = phi ptr [ %92, %90 ], [ %77, %75 ]
  %95 = phi ptr [ %83, %90 ], [ %68, %75 ]
  %96 = icmp eq ptr %94, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = icmp eq i32 %5, 0
  br i1 %98, label %100, label %99, !prof !11

99:                                               ; preds = %97
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #7, !srcloc !22
  unreachable

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.ext4_sb_info, ptr %95, i32 0, i32 129
  tail call void @jbd2_journal_set_triggers(ptr noundef %4, ptr noundef %101) #7
  br label %102

102:                                              ; preds = %100, %93, %82, %66, %64, %63
  %103 = phi i32 [ %38, %63 ], [ 0, %100 ], [ 0, %93 ], [ 0, %64 ], [ 0, %82 ], [ 0, %66 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_write_access(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_set_triggers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_forget(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [16 x i8], align 1
  %9 = alloca [16 x i8], align 1
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_forget, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = tail call ptr @llvm.thread.pointer() #7
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %24 = tail call i32 @__traceiter_ext4_forget(ptr noundef null, ptr noundef %4, i32 noundef %3, i64 noundef %6) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  br label %25

25:                                               ; preds = %23, %12, %7
  %26 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = icmp eq ptr %5, null
  br i1 %28, label %126, label %29

29:                                               ; preds = %27
  tail call void @__bforget(ptr noundef nonnull %5) #7
  br label %126

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ext4_sb_info, ptr %34, i32 0, i32 17
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 3072
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %68, label %39

39:                                               ; preds = %30
  %40 = icmp eq i32 %3, 0
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ext4_sb_info, ptr %34, i32 0, i32 47
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %68, label %45

45:                                               ; preds = %41
  %46 = load i16, ptr %4, align 8
  %47 = and i16 %46, -4096
  %48 = icmp eq i16 %47, -32768
  br i1 %48, label %49, label %97

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %4, i32 -124
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 2097152
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load volatile i32, ptr %50, align 4
  %56 = and i32 %55, 16384
  %57 = icmp ne i32 %56, 0
  %58 = and i32 %36, 134217728
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %66

61:                                               ; preds = %54, %49
  %62 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 16384
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %97, label %68

66:                                               ; preds = %54
  switch i32 %37, label %67 [
    i32 2048, label %68
    i32 3072, label %68
  ]

67:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #7, !srcloc !8
  unreachable

68:                                               ; preds = %66, %66, %61, %41, %30
  %69 = icmp eq ptr %5, null
  br i1 %69, label %126, label %70

70:                                               ; preds = %68
  %71 = tail call i32 @jbd2_journal_forget(ptr noundef %2, ptr noundef nonnull %5) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %126, label %73

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %9, i8 0, i32 16, i1 false) #7, !annotation !21
  %74 = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %71, ptr noundef nonnull %9) #7
  %75 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 %71, ptr %75, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load ptr, ptr %2, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %1, ptr noundef %74, ptr noundef nonnull @__func__.__ext4_forget) #8
  %94 = load i32, ptr %80, align 4
  %95 = or i32 %94, 8
  store i32 %95, ptr %80, align 4
  br label %96

96:                                               ; preds = %92, %87, %84, %79
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  br label %126

97:                                               ; preds = %61, %45, %39
  %98 = tail call i32 @jbd2_journal_revoke(ptr noundef %2, i64 noundef %6, ptr noundef %5) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %126, label %100

100:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false) #7, !annotation !21
  %101 = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %98, ptr noundef nonnull %8) #7
  %102 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 %98, ptr %102, align 4
  br label %106

106:                                              ; preds = %105, %100
  %107 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 7
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load ptr, ptr %2, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %112, align 8
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 2
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %1, ptr noundef %101, ptr noundef nonnull @__func__.__ext4_forget) #8
  %121 = load i32, ptr %107, align 4
  %122 = or i32 %121, 8
  store i32 %122, ptr %107, align 4
  br label %123

123:                                              ; preds = %119, %114, %111, %106
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  %124 = load ptr, ptr %31, align 4
  %125 = sub i32 0, %98
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %124, ptr noundef %0, i32 noundef %1, i1 noundef zeroext true, i32 noundef %125, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %98) #7
  br label %126

126:                                              ; preds = %123, %97, %96, %70, %68, %29, %27
  %127 = phi i32 [ %71, %96 ], [ 0, %70 ], [ 0, %68 ], [ 0, %97 ], [ %98, %123 ], [ 0, %27 ], [ 0, %29 ]
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_forget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_revoke(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_journal_get_create_access(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i8], align 1
  %8 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  br i1 %8, label %74, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @jbd2_journal_get_create_access(ptr noundef %2, ptr noundef %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false) #7, !annotation !21
  %13 = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %10, ptr noundef nonnull %7) #7
  %14 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 %10, ptr %14, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load ptr, ptr %2, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %1, ptr noundef %13, ptr noundef nonnull @__func__.__ext4_journal_get_create_access) #8
  %33 = load i32, ptr %19, align 4
  %34 = or i32 %33, 8
  store i32 %34, ptr %19, align 4
  br label %35

35:                                               ; preds = %31, %26, %23, %18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %74

36:                                               ; preds = %9
  %37 = icmp eq i32 %5, 1
  br i1 %37, label %74, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ext4_super_block, ptr %42, i32 0, i32 30
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1024
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %74, label %47

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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3289, i32 noundef 9, ptr noundef null) #7
  %55 = load ptr, ptr %39, align 4
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 15
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ext4_super_block, ptr %57, i32 0, i32 30
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 1024
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 119
  %64 = load ptr, ptr %63, align 8
  br label %65

65:                                               ; preds = %62, %47
  %66 = phi ptr [ %64, %62 ], [ %49, %47 ]
  %67 = phi ptr [ %55, %62 ], [ %40, %47 ]
  %68 = icmp eq ptr %66, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = icmp eq i32 %5, 0
  br i1 %70, label %72, label %71, !prof !11

71:                                               ; preds = %69
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_jbd2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 332, 0\0A.popsection", ""() #7, !srcloc !25
  unreachable

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ext4_sb_info, ptr %67, i32 0, i32 129
  tail call void @jbd2_journal_set_triggers(ptr noundef %4, ptr noundef %73) #7
  br label %74

74:                                               ; preds = %72, %65, %54, %38, %36, %35, %6
  %75 = phi i32 [ %10, %35 ], [ 0, %72 ], [ 0, %6 ], [ 0, %65 ], [ 0, %36 ], [ 0, %54 ], [ 0, %38 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_create_access(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [16 x i8], align 1
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #7
  br label %11

11:                                               ; preds = %10, %5
  %12 = load volatile i32, ptr %4, align 4
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @_set_bit(i32 noundef 14, ptr noundef %4) #7
  br label %16

16:                                               ; preds = %15, %11
  %17 = load volatile i32, ptr %4, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #7
  br label %21

21:                                               ; preds = %20, %16
  %22 = icmp ult ptr %2, inttoptr (i32 4096 to ptr)
  br i1 %22, label %120, label %23

23:                                               ; preds = %21
  %24 = tail call i32 @jbd2_journal_dirty_metadata(ptr noundef %2, ptr noundef %4) #7
  %25 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %138

29:                                               ; preds = %23
  %30 = load ptr, ptr %2, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %138, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %138

37:                                               ; preds = %32
  %38 = icmp ne i32 %24, 0
  %39 = load i1, ptr @__ext4_handle_dirty_metadata.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !12

42:                                               ; preds = %37
  store i1 true, ptr @__ext4_handle_dirty_metadata.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 352, i32 noundef 9, ptr noundef null) #7
  br label %43

43:                                               ; preds = %42, %37
  br i1 %38, label %44, label %138

44:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false) #7, !annotation !21
  %45 = call ptr @ext4_decode_error(ptr noundef null, i32 noundef %24, ptr noundef nonnull %6) #7
  %46 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 %24, ptr %46, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, ptr %25, align 4
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load ptr, ptr %2, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %1, ptr noundef %45, ptr noundef nonnull @__func__.__ext4_handle_dirty_metadata) #8
  %64 = load i32, ptr %25, align 4
  %65 = or i32 %64, 8
  store i32 %65, ptr %25, align 4
  br label %66

66:                                               ; preds = %62, %57, %54, %50
  %67 = phi i32 [ %51, %50 ], [ %51, %54 ], [ %51, %57 ], [ %65, %62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  %68 = icmp eq ptr %3, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %66
  %70 = lshr i32 %67, 4
  %71 = and i32 %70, 255
  %72 = lshr i32 %67, 12
  %73 = and i32 %72, 65535
  %74 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 9
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %67, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load ptr, ptr %2, align 4
  br label %80

80:                                               ; preds = %78, %69
  %81 = phi ptr [ %79, %78 ], [ %2, %69 ]
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.journal_s, ptr %82, i32 0, i32 48
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %86, -1
  %90 = add i32 %89, %88
  %91 = sdiv i32 %90, %88
  %92 = sub i32 %84, %91
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %92, i32 noundef %24) #8
  br label %138

94:                                               ; preds = %66
  %95 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 3
  %96 = load i64, ptr %95, align 8
  %97 = lshr i32 %67, 4
  %98 = and i32 %97, 255
  %99 = lshr i32 %67, 12
  %100 = and i32 %99, 65535
  %101 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 9
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %67, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load ptr, ptr %2, align 4
  br label %107

107:                                              ; preds = %105, %94
  %108 = phi ptr [ %106, %105 ], [ %2, %94 ]
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %2, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.journal_s, ptr %109, i32 0, i32 48
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %113, -1
  %117 = add i32 %116, %115
  %118 = sdiv i32 %117, %115
  %119 = sub i32 %111, %118
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1, i64 noundef %96, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %119, i32 noundef %24) #7
  br label %138

120:                                              ; preds = %21
  %121 = icmp eq ptr %3, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %120
  tail call void @mark_buffer_dirty_inode(ptr noundef %4, ptr noundef nonnull %3) #7
  %123 = tail call i32 @inode_needs_sync(ptr noundef nonnull %3) #7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %138, label %126

125:                                              ; preds = %120
  tail call void @mark_buffer_dirty(ptr noundef %4) #7
  br label %138

126:                                              ; preds = %122
  %127 = tail call i32 @sync_dirty_buffer(ptr noundef %4) #7
  %128 = load volatile i32, ptr %4, align 4
  %129 = and i32 %128, 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %126
  %132 = load volatile i32, ptr %4, align 4
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 3
  %137 = load i64, ptr %136, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1, i64 noundef %137, i32 noundef 5, ptr noundef nonnull @.str.4) #7
  br label %138

138:                                              ; preds = %135, %131, %126, %125, %122, %107, %80, %43, %32, %29, %23
  %139 = phi i32 [ %24, %80 ], [ %24, %32 ], [ %24, %107 ], [ 0, %43 ], [ 0, %131 ], [ -5, %135 ], [ 0, %126 ], [ 0, %122 ], [ 0, %125 ], [ %24, %29 ], [ %24, %23 ]
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_dirty_metadata(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_journal_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_journal_start_reserved(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_extend(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check_and_advance(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_decode_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_forget(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2156003033, i64 2156003516, i64 2156003070, i64 2156003126, i64 2156003160, i64 2156003184, i64 2156003225, i64 2156003246, i64 2156003274, i64 2156003308}
!9 = !{i64 2155140474}
!10 = !{i64 2155140702}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2156004125, i64 2156004608, i64 2156004162, i64 2156004218, i64 2156004252, i64 2156004276, i64 2156004317, i64 2156004338, i64 2156004366, i64 2156004400}
!14 = !{i64 2156005152, i64 2156005635, i64 2156005189, i64 2156005245, i64 2156005279, i64 2156005303, i64 2156005344, i64 2156005365, i64 2156005393, i64 2156005427}
!15 = !{i64 2155157863}
!16 = !{i64 2155158057}
!17 = !{i64 2149022292}
!18 = !{i64 2149018116}
!19 = !{i64 2149018191, i64 2149018218, i64 2149018265, i64 2149018287, i64 2149018315, i64 2149018335}
!20 = !{i64 2149045295}
!21 = !{!"auto-init"}
!22 = !{i64 2156015395, i64 2156015879, i64 2156015432, i64 2156015488, i64 2156015522, i64 2156015546, i64 2156015587, i64 2156015608, i64 2156015636, i64 2156015670}
!23 = !{i64 2154698953}
!24 = !{i64 2154699137}
!25 = !{i64 2156021726, i64 2156022210, i64 2156021763, i64 2156021819, i64 2156021853, i64 2156021877, i64 2156021918, i64 2156021939, i64 2156021967, i64 2156022001}
