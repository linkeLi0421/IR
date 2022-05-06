; ModuleID = '/llk/IR/fs/ext4/ialloc.c_pt.bc'
source_filename = "../fs/ext4/ialloc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.bgl_lock = type { %struct.spinlock, [60 x i8] }
%struct.flex_groups = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_group_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.34 = type { %struct.callback_head }
%struct.ext4_group_info = type { i32, %struct.rb_root, i32, i32, i32, i32, i32, %struct.list_head, %struct.rw_semaphore, %struct.rb_node, %struct.list_head, [0 x i32] }
%struct.jbd2_journal_handle = type { %union.anon.76, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.76 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.dx_hash_info = type { i32, i32, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.53, %struct.list_head, %struct.list_head, %union.anon.54 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { i64 }
%union.anon.53 = type { %struct.list_head }
%union.anon.54 = type { %struct.hlist_node }
%struct.anon.4 = type { i32, i32 }
%struct.ext4_inode = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, %union.anon.79, [15 x i32], i32, i32, i32, i32, %union.anon.83, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { i32 }
%union.anon.83 = type { %struct.anon.85 }
%struct.anon.85 = type { i16, i16, i16, i16, i32 }
%struct.anon.87 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }

@.str = private unnamed_addr constant [47 x i8] c"\013EXT4-fs: %s:%d: inode on nonexistent device\0A\00", align 1
@__func__.ext4_free_inode = private unnamed_addr constant [16 x i8] c"ext4_free_inode\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s:%d: inode #%lu: count=%d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s:%d: inode #%lu: nlink=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"reserved or nonexistent inode %lu\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"bit already cleared for inode %lu\00", align 1
@__func__.ext4_mark_inode_used = private unnamed_addr constant [21 x i8] c"ext4_mark_inode_used\00", align 1
@__func__.__ext4_new_inode = private unnamed_addr constant [17 x i8] c"__ext4_new_inode\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"reserved inode found cleared - inode=%lu\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"failed to insert inode %lu: doubly allocated?\00", align 1
@__func__.ext4_orphan_get = private unnamed_addr constant [16 x i8] c"ext4_orphan_get\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"couldn't read orphan inode %lu (err %d)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"bad orphan inode %lu\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"\013ext4_test_bit(bit=%d, block=%llu) = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\013is_bad_inode(inode)=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\013NEXT_ORPHAN(inode)=%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\013max_ino=%lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"\013i_nlink=%u\0A\00", align 1
@__func__.ext4_init_inode_table = private unnamed_addr constant [22 x i8] c"ext4_init_inode_table\00", align 1
@.str.16 = private unnamed_addr constant [82 x i8] c"Something is wrong with group %u: used itable blocks: %d; itable unused count: %u\00", align 1
@.str.17 = private unnamed_addr constant [90 x i8] c"Something is wrong with group %u: itable unused count: %u; itables initialized count: %ld\00", align 1
@__tracepoint_ext4_free_inode = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__func__.ext4_read_inode_bitmap = private unnamed_addr constant [23 x i8] c"ext4_read_inode_bitmap\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"Invalid inode bitmap blk %llu in block_group %u\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"Cannot read inode bitmap - block_group = %u, inode_bitmap = %llu\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Inode bitmap for bg 0 marked uninitialized\00", align 1
@__tracepoint_ext4_load_inode_bitmap = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_validate_inode_bitmap = private unnamed_addr constant [27 x i8] c"ext4_validate_inode_bitmap\00", align 1
@.str.22 = private unnamed_addr constant [61 x i8] c"Corrupt inode bitmap - block_group = %u, inode_bitmap = %llu\00", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_ext4_request_inode = external dso_local global %struct.tracepoint, align 4
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@__tracepoint_ext4_allocate_inode = external dso_local global %struct.tracepoint, align 4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_mark_bitmap_end(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %0, %1
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = add i32 %0, 7
  %7 = and i32 %6, -8
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %9, label %19

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %17, %9 ], [ %0, %5 ]
  %11 = and i32 %10, 31
  %12 = shl nuw i32 1, %11
  %13 = lshr i32 %10, 5
  %14 = getelementptr i32, ptr %2, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, ptr %14, align 4
  %17 = add nuw i32 %10, 1
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %9

19:                                               ; preds = %9, %5
  %20 = phi i32 [ %0, %5 ], [ %7, %9 ]
  %21 = icmp slt i32 %20, %1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = ashr i32 %20, 3
  %24 = getelementptr i8, ptr %2, i32 %23
  %25 = sub i32 %1, %20
  %26 = ashr i32 %25, 3
  tail call void @llvm.memset.p0.i32(ptr align 1 %24, i8 -1, i32 %26, i1 false)
  br label %27

27:                                               ; preds = %22, %19, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_end_bitmap_read(ptr noundef %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %4
  tail call void @_set_bit(i32 noundef 25, ptr noundef %0) #10
  br label %10

10:                                               ; preds = %9, %2
  tail call void @unlock_buffer(ptr noundef %0) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %11 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #10, !srcloc !9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #10, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_free_inode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 252) #11
  br label %196

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 35
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = load volatile i32, ptr %10, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 258, i32 noundef %15, i32 noundef %16) #10
  br label %196

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 263, i32 noundef %23, i32 noundef %19) #10
  br label %196

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_free_inode, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = tail call ptr @llvm.thread.pointer() #10
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %43 = tail call i32 @__traceiter_ext4_free_inode(ptr noundef null, ptr noundef %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %44

44:                                               ; preds = %42, %31, %24
  %45 = load i16, ptr %1, align 8
  %46 = and i16 %45, -4096
  %47 = icmp eq i16 %46, 16384
  tail call void @ext4_clear_inode(ptr noundef %1) #10
  %48 = load ptr, ptr %25, align 4
  %49 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 30
  %50 = load i32, ptr %49, align 8
  %51 = icmp ult i32 %28, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 8
  %56 = icmp ugt i32 %28, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %44
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef nonnull %5, ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 282, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %28) #10
  br label %196

58:                                               ; preds = %52
  %59 = add i32 %28, -1
  %60 = getelementptr inbounds %struct.ext4_sb_info, ptr %48, i32 0, i32 4
  %61 = load i32, ptr %60, align 16
  %62 = freeze i32 %59
  %63 = freeze i32 %61
  %64 = udiv i32 %62, %63
  %65 = mul i32 %64, %63
  %66 = sub i32 %62, %65
  %67 = tail call fastcc ptr @ext4_read_inode_bitmap(ptr noundef nonnull %5, i32 noundef %64)
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = ptrtoint ptr %67 to i32
  br label %192

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 25
  %73 = load i16, ptr %72, align 8
  %74 = and i16 %73, 32
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load ptr, ptr %25, align 4
  %78 = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 8
  %79 = load i32, ptr %78, align 32
  %80 = icmp ugt i32 %79, %64
  br i1 %80, label %82, label %81, !prof !14

81:                                               ; preds = %76
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 28
  %84 = load i32, ptr %83, align 64
  %85 = lshr i32 %64, %84
  %86 = getelementptr inbounds %struct.ext4_sb_info, ptr %77, i32 0, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, -1
  %89 = and i32 %88, %64
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %90 = load ptr, ptr %25, align 4
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %90, i32 0, i32 58
  %92 = load volatile ptr, ptr %91, align 4
  %93 = getelementptr ptr, ptr %92, i32 %85
  %94 = load ptr, ptr %93, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %95 = getelementptr ptr, ptr %94, i32 %89
  %96 = load ptr, ptr %95, align 4
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %188, !prof !14

100:                                              ; preds = %82, %71
  %101 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 304, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %67, i32 noundef 1) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %188

103:                                              ; preds = %100
  %104 = call ptr @ext4_get_group_desc(ptr noundef nonnull %5, i32 noundef %64, ptr noundef nonnull %3) #10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %3, align 4
  %108 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 313, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %107, i32 noundef 1) #10
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i32 [ %108, %106 ], [ -3, %103 ]
  call fastcc void @ext4_lock_group(ptr noundef nonnull %5, i32 noundef %64)
  %111 = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = and i32 %66, 31
  %114 = shl nuw i32 1, %113
  %115 = lshr i32 %66, 5
  %116 = getelementptr i32, ptr %112, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = xor i32 %114, -1
  %119 = and i32 %117, %118
  store i32 %119, ptr %116, align 4
  %120 = icmp eq i32 %110, 0
  %121 = and i32 %117, %114
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %132, label %124

124:                                              ; preds = %109
  %125 = load ptr, ptr %25, align 4
  %126 = getelementptr inbounds %struct.ext4_sb_info, ptr %125, i32 0, i32 41
  %127 = load ptr, ptr %126, align 16
  %128 = and i32 %64, 63
  %129 = getelementptr [64 x %struct.bgl_lock], ptr %127, i32 0, i32 %128
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %130 = load i16, ptr %129, align 4
  %131 = add i16 %130, 1
  store i16 %131, ptr %129, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %181

132:                                              ; preds = %109
  %133 = call i32 @ext4_free_inodes_count(ptr noundef nonnull %5, ptr noundef %104) #10
  %134 = add i32 %133, 1
  call void @ext4_free_inodes_set(ptr noundef nonnull %5, ptr noundef %104, i32 noundef %134) #10
  br i1 %47, label %135, label %144

135:                                              ; preds = %132
  %136 = call i32 @ext4_used_dirs_count(ptr noundef nonnull %5, ptr noundef %104) #10
  %137 = add i32 %136, -1
  call void @ext4_used_dirs_set(ptr noundef nonnull %5, ptr noundef %104, i32 noundef %137) #10
  %138 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 38, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 38
  %143 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %142, i64 noundef -1, i32 noundef %143) #10
  br label %144

144:                                              ; preds = %141, %135, %132
  %145 = load ptr, ptr %25, align 4
  %146 = getelementptr inbounds %struct.ext4_sb_info, ptr %145, i32 0, i32 4
  %147 = load i32, ptr %146, align 16
  %148 = lshr i32 %147, 3
  call void @ext4_inode_bitmap_csum_set(ptr noundef nonnull %5, i32 noundef %64, ptr noundef %104, ptr noundef %67, i32 noundef %148) #10
  call void @ext4_group_desc_csum_set(ptr noundef nonnull %5, i32 noundef %64, ptr noundef %104) #10
  %149 = load ptr, ptr %25, align 4
  %150 = getelementptr inbounds %struct.ext4_sb_info, ptr %149, i32 0, i32 41
  %151 = load ptr, ptr %150, align 16
  %152 = and i32 %64, 63
  %153 = getelementptr [64 x %struct.bgl_lock], ptr %151, i32 0, i32 %152
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %154 = load i16, ptr %153, align 4
  %155 = add i16 %154, 1
  store i16 %155, ptr %153, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %156 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 37, i32 3
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 37
  %161 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %160, i64 noundef 1, i32 noundef %161) #10
  br label %162

162:                                              ; preds = %159, %144
  %163 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 110
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %162
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %167 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 111
  %168 = load volatile ptr, ptr %167, align 8
  %169 = load i32, ptr %163, align 4
  %170 = lshr i32 %64, %169
  %171 = getelementptr ptr, ptr %168, i32 %170
  %172 = load ptr, ptr %171, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %173 = getelementptr inbounds %struct.flex_groups, ptr %172, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %173) #10, !srcloc !9
  %174 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #10, !srcloc !22
  br i1 %47, label %175, label %178

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.flex_groups, ptr %172, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %176) #10, !srcloc !9
  %177 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %176, ptr %176, i32 1, ptr elementtype(i32) %176) #10, !srcloc !10
  br label %178

178:                                              ; preds = %175, %166, %162
  %179 = load ptr, ptr %3, align 4
  %180 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 347, ptr noundef %0, ptr noundef null, ptr noundef %179) #10
  br label %181

181:                                              ; preds = %178, %124
  %182 = phi i32 [ %180, %178 ], [ %110, %124 ]
  br i1 %122, label %183, label %187

183:                                              ; preds = %181
  %184 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 351, ptr noundef %0, ptr noundef null, ptr noundef %67) #10
  %185 = icmp eq i32 %182, 0
  %186 = select i1 %185, i32 %184, i32 %182
  br label %188

187:                                              ; preds = %181
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef nonnull %5, ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 355, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %28) #10
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef nonnull %5, i32 noundef %64, i32 noundef 8) #10
  br label %188

188:                                              ; preds = %187, %183, %100, %82
  %189 = phi i32 [ %101, %100 ], [ %182, %187 ], [ -117, %82 ], [ %186, %183 ]
  %190 = icmp eq ptr %67, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  call void @__brelse(ptr noundef nonnull %67) #10
  br label %192

192:                                              ; preds = %191, %188, %69
  %193 = phi i32 [ %189, %188 ], [ %189, %191 ], [ %70, %69 ]
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  call void @__ext4_std_error(ptr noundef nonnull %5, ptr noundef nonnull @__func__.ext4_free_inode, i32 noundef 362, i32 noundef %193) #10
  br label %196

196:                                              ; preds = %195, %192, %57, %21, %13, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_clear_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ext4_read_inode_bitmap(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %1, ptr noundef null) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %272, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @ext4_inode_bitmap(ptr noundef %0, ptr noundef nonnull %5) #10
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ugt i64 %8, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 29
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 50
  %22 = load i32, ptr %21, align 8
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i64 [ %24, %20 ], [ 0, %15 ]
  %27 = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = zext i32 %28 to i64
  %30 = or i64 %26, %29
  %31 = icmp ult i64 %8, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %25, %7
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_read_inode_bitmap, i32 noundef 140, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef %8, i32 noundef %1) #10
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %1, i32 noundef 8) #10
  br label %272

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 16
  %38 = tail call ptr @__getblk_gfp(ptr noundef %35, i64 noundef %8, i32 noundef %37, i32 noundef 8) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !23

40:                                               ; preds = %33
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_read_inode_bitmap, i32 noundef 149, ptr noundef nonnull @.str.20, i32 noundef %1, i64 noundef %8) #10
  br label %272

41:                                               ; preds = %33
  %42 = load volatile i32, ptr %38, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load volatile i32, ptr %38, align 4
  %47 = and i32 %46, 33554432
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %183

49:                                               ; preds = %45, %41
  %50 = load volatile i32, ptr %38, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %38) #10, !srcloc !9
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %38, ptr nonnull %38, i32 4, ptr nonnull elementtype(i32) %38) #10, !srcloc !24
  %55 = extractvalue { i32, i32, i32 } %54, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53, %49
  tail call void @__lock_buffer(ptr noundef nonnull %38) #10
  br label %59

59:                                               ; preds = %58, %53
  %60 = load volatile i32, ptr %38, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load volatile i32, ptr %38, align 4
  %65 = and i32 %64, 33554432
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %182

67:                                               ; preds = %63, %59
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 41
  %70 = load ptr, ptr %69, align 16
  %71 = and i32 %1, 63
  %72 = getelementptr [64 x %struct.bgl_lock], ptr %70, i32 0, i32 %71
  %73 = tail call i32 @_raw_spin_trylock(ptr noundef %72) #10
  %74 = icmp eq i32 %73, 0
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %75, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #10
  br i1 %74, label %82, label %77

77:                                               ; preds = %67
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 0, i32 -1, ptr elementtype(i32) %76) #10, !srcloc !26
  %79 = extractvalue { i32, i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  br label %88

82:                                               ; preds = %67
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 8, i32 1, ptr elementtype(i32) %76) #10, !srcloc !26
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  br label %87

87:                                               ; preds = %86, %82
  tail call void @_raw_spin_lock(ptr noundef %72) #10
  br label %88

88:                                               ; preds = %87, %81, %77
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr inbounds %struct.ext4_sb_info, ptr %89, i32 0, i32 15
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.ext4_super_block, ptr %91, i32 0, i32 30
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %88
  %97 = and i32 %93, 1024
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %163, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.ext4_sb_info, ptr %89, i32 0, i32 119
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  %103 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %104 = xor i1 %103, true
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %117, !prof !23

106:                                              ; preds = %99
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 3289, i32 noundef 9, ptr noundef null) #10
  %107 = load ptr, ptr %3, align 4
  %108 = getelementptr inbounds %struct.ext4_sb_info, ptr %107, i32 0, i32 15
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.ext4_super_block, ptr %109, i32 0, i32 30
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 1024
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %163, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.ext4_sb_info, ptr %107, i32 0, i32 119
  %116 = load ptr, ptr %115, align 8
  br label %117

117:                                              ; preds = %114, %99
  %118 = phi ptr [ %107, %114 ], [ %89, %99 ]
  %119 = phi ptr [ %116, %114 ], [ %101, %99 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %163, label %121

121:                                              ; preds = %117, %88
  %122 = phi ptr [ %89, %88 ], [ %118, %117 ]
  %123 = getelementptr inbounds %struct.ext4_group_desc, ptr %5, i32 0, i32 6
  %124 = load i16, ptr %123, align 2
  %125 = and i16 %124, 1
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %163, label %127

127:                                              ; preds = %121
  %128 = icmp eq i32 %1, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.ext4_sb_info, ptr %122, i32 0, i32 41
  %131 = load ptr, ptr %130, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %132 = load i16, ptr %131, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %131, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  tail call void @unlock_buffer(ptr noundef nonnull %38) #10
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_read_inode_bitmap, i32 noundef 168, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.21) #10
  br label %268

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 5
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.ext4_sb_info, ptr %122, i32 0, i32 4
  %138 = load i32, ptr %137, align 16
  %139 = add i32 %138, 7
  %140 = lshr i32 %139, 3
  tail call void @llvm.memset.p0.i32(ptr align 1 %136, i8 0, i32 %140, i1 false)
  %141 = load ptr, ptr %3, align 4
  %142 = getelementptr inbounds %struct.ext4_sb_info, ptr %141, i32 0, i32 4
  %143 = load i32, ptr %142, align 16
  %144 = load i32, ptr %36, align 16
  %145 = shl i32 %144, 3
  %146 = load ptr, ptr %135, align 4
  tail call void @ext4_mark_bitmap_end(i32 noundef %143, i32 noundef %145, ptr noundef %146)
  tail call void @_set_bit(i32 noundef 25, ptr noundef nonnull %38) #10
  %147 = load volatile i32, ptr %38, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %134
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %38) #10
  br label %151

151:                                              ; preds = %150, %134
  %152 = load volatile i32, ptr %38, align 4
  %153 = and i32 %152, 16777216
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  tail call void @_set_bit(i32 noundef 24, ptr noundef nonnull %38) #10
  br label %156

156:                                              ; preds = %155, %151
  %157 = load ptr, ptr %3, align 4
  %158 = getelementptr inbounds %struct.ext4_sb_info, ptr %157, i32 0, i32 41
  %159 = load ptr, ptr %158, align 16
  %160 = getelementptr [64 x %struct.bgl_lock], ptr %159, i32 0, i32 %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %161 = load i16, ptr %160, align 4
  %162 = add i16 %161, 1
  store i16 %162, ptr %160, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  tail call void @unlock_buffer(ptr noundef nonnull %38) #10
  br label %272

163:                                              ; preds = %121, %117, %106, %96
  %164 = phi ptr [ %89, %96 ], [ %107, %106 ], [ %122, %121 ], [ %118, %117 ]
  %165 = getelementptr inbounds %struct.ext4_sb_info, ptr %164, i32 0, i32 41
  %166 = load ptr, ptr %165, align 16
  %167 = getelementptr [64 x %struct.bgl_lock], ptr %166, i32 0, i32 %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %168 = load i16, ptr %167, align 4
  %169 = add i16 %168, 1
  store i16 %169, ptr %167, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %170 = load volatile i32, ptr %38, align 4
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %163
  tail call void @_set_bit(i32 noundef 25, ptr noundef nonnull %38) #10
  br label %182

174:                                              ; preds = %163
  tail call fastcc void @trace_ext4_load_inode_bitmap(ptr noundef %0, i32 noundef %1)
  %175 = tail call i32 @ext4_read_bh(ptr noundef nonnull %38, i32 noundef 12288, ptr noundef nonnull @ext4_end_bitmap_read) #10
  %176 = load volatile i32, ptr %38, align 4
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %180 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %180) #10, !srcloc !9
  %181 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %180, ptr %180, i32 1, ptr elementtype(i32) %180) #10, !srcloc !10
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_read_inode_bitmap, i32 noundef 203, i1 noundef zeroext false, i32 noundef 5, i64 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %1, i64 noundef %8) #10
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %1, i32 noundef 8) #10
  br label %272

182:                                              ; preds = %173, %63
  tail call void @unlock_buffer(ptr noundef nonnull %38) #10
  br label %183

183:                                              ; preds = %182, %174, %45
  %184 = load ptr, ptr %3, align 4
  %185 = getelementptr inbounds %struct.ext4_sb_info, ptr %184, i32 0, i32 25
  %186 = load i16, ptr %185, align 8
  %187 = and i16 %186, 32
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %272

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.ext4_sb_info, ptr %184, i32 0, i32 8
  %191 = load i32, ptr %190, align 32
  %192 = icmp ugt i32 %191, %1
  br i1 %192, label %194, label %193, !prof !14

193:                                              ; preds = %189
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.ext4_sb_info, ptr %184, i32 0, i32 28
  %196 = load i32, ptr %195, align 64
  %197 = lshr i32 %1, %196
  %198 = getelementptr inbounds %struct.ext4_sb_info, ptr %184, i32 0, i32 7
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, -1
  %201 = and i32 %200, %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %202 = load ptr, ptr %3, align 4
  %203 = getelementptr inbounds %struct.ext4_sb_info, ptr %202, i32 0, i32 58
  %204 = load volatile ptr, ptr %203, align 4
  %205 = getelementptr ptr, ptr %204, i32 %197
  %206 = load ptr, ptr %205, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %207 = getelementptr ptr, ptr %206, i32 %201
  %208 = load ptr, ptr %207, align 4
  %209 = load volatile i32, ptr %38, align 4
  %210 = and i32 %209, 16777216
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %272

212:                                              ; preds = %194
  %213 = load volatile i32, ptr %208, align 4
  %214 = and i32 %213, 8
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %268

216:                                              ; preds = %212
  %217 = load ptr, ptr %3, align 4
  %218 = getelementptr inbounds %struct.ext4_sb_info, ptr %217, i32 0, i32 41
  %219 = load ptr, ptr %218, align 16
  %220 = and i32 %1, 63
  %221 = getelementptr [64 x %struct.bgl_lock], ptr %219, i32 0, i32 %220
  %222 = tail call i32 @_raw_spin_trylock(ptr noundef %221) #10
  %223 = icmp eq i32 %222, 0
  %224 = load ptr, ptr %3, align 4
  %225 = getelementptr inbounds %struct.ext4_sb_info, ptr %224, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %225) #10
  br i1 %223, label %231, label %226

226:                                              ; preds = %216
  %227 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %225, ptr %225, i32 0, i32 -1, ptr elementtype(i32) %225) #10, !srcloc !26
  %228 = extractvalue { i32, i32, i32 } %227, 0
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %226
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  br label %237

231:                                              ; preds = %216
  %232 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %225, ptr %225, i32 8, i32 1, ptr elementtype(i32) %225) #10, !srcloc !26
  %233 = extractvalue { i32, i32, i32 } %232, 0
  %234 = icmp eq i32 %233, 8
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  br label %236

236:                                              ; preds = %235, %231
  tail call void @_raw_spin_lock(ptr noundef %221) #10
  br label %237

237:                                              ; preds = %236, %230, %226
  %238 = load volatile i32, ptr %38, align 4
  %239 = and i32 %238, 16777216
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %261

241:                                              ; preds = %237
  %242 = tail call i64 @ext4_inode_bitmap(ptr noundef %0, ptr noundef nonnull %5) #10
  %243 = load ptr, ptr %3, align 4
  %244 = getelementptr inbounds %struct.ext4_sb_info, ptr %243, i32 0, i32 4
  %245 = load i32, ptr %244, align 16
  %246 = lshr i32 %245, 3
  %247 = tail call i32 @ext4_inode_bitmap_csum_verify(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %38, i32 noundef %246) #10
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %241
  %250 = load volatile i32, ptr %38, align 4
  %251 = and i32 %250, 16777216
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %249
  tail call void @_set_bit(i32 noundef 24, ptr noundef nonnull %38) #10
  br label %261

254:                                              ; preds = %241
  %255 = load ptr, ptr %3, align 4
  %256 = getelementptr inbounds %struct.ext4_sb_info, ptr %255, i32 0, i32 41
  %257 = load ptr, ptr %256, align 16
  %258 = getelementptr [64 x %struct.bgl_lock], ptr %257, i32 0, i32 %220
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %259 = load i16, ptr %258, align 4
  %260 = add i16 %259, 1
  store i16 %260, ptr %258, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_validate_inode_bitmap, i32 noundef 106, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %1, i64 noundef %242) #10
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %0, i32 noundef %1, i32 noundef 8) #10
  br label %268

261:                                              ; preds = %253, %249, %237
  %262 = load ptr, ptr %3, align 4
  %263 = getelementptr inbounds %struct.ext4_sb_info, ptr %262, i32 0, i32 41
  %264 = load ptr, ptr %263, align 16
  %265 = getelementptr [64 x %struct.bgl_lock], ptr %264, i32 0, i32 %220
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %266 = load i16, ptr %265, align 4
  %267 = add i16 %266, 1
  store i16 %267, ptr %265, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %272

268:                                              ; preds = %254, %212, %129
  %269 = phi ptr [ inttoptr (i32 -117 to ptr), %129 ], [ inttoptr (i32 -74 to ptr), %254 ], [ inttoptr (i32 -117 to ptr), %212 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %270 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %270) #10, !srcloc !9
  %271 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %270, ptr %270, i32 1, ptr elementtype(i32) %270) #10, !srcloc !10
  br label %272

272:                                              ; preds = %268, %261, %194, %183, %179, %156, %40, %32, %2
  %273 = phi ptr [ inttoptr (i32 -117 to ptr), %32 ], [ inttoptr (i32 -12 to ptr), %40 ], [ %269, %268 ], [ %38, %156 ], [ inttoptr (i32 -5 to ptr), %179 ], [ inttoptr (i32 -117 to ptr), %2 ], [ %38, %261 ], [ %38, %183 ], [ %38, %194 ]
  ret ptr %273
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_lock_group(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 41
  %6 = load ptr, ptr %5, align 16
  %7 = and i32 %1, 63
  %8 = getelementptr [64 x %struct.bgl_lock], ptr %6, i32 0, i32 %7
  %9 = tail call i32 @_raw_spin_trylock(ptr noundef %8) #10
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10
  br i1 %10, label %18, label %13

13:                                               ; preds = %2
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #10, !srcloc !26
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  br label %24

18:                                               ; preds = %2
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 8, i32 1, ptr elementtype(i32) %12) #10, !srcloc !26
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  br label %23

23:                                               ; preds = %22, %18
  tail call void @_raw_spin_lock(ptr noundef %8) #10
  br label %24

24:                                               ; preds = %23, %17, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_inodes_count(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_inodes_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_used_dirs_count(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_used_dirs_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_bitmap_csum_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_group_desc_csum_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mark_group_bitmap_corrupted(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_mark_inode_used(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 30
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, %1
  %12 = icmp ult i32 %8, %1
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %138, label %14

14:                                               ; preds = %2
  %15 = add i32 %1, -1
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 16
  %18 = freeze i32 %17
  %19 = udiv i32 %15, %18
  %20 = mul i32 %19, %18
  %21 = sub i32 %15, %20
  %22 = tail call fastcc ptr @ext4_read_inode_bitmap(ptr noundef %0, i32 noundef %19)
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = ptrtoint ptr %22 to i32
  br label %138

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = lshr i32 %21, 5
  %30 = getelementptr i32, ptr %28, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %21, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %138

36:                                               ; preds = %26
  %37 = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %3) #10
  %38 = icmp ne ptr %37, null
  %39 = load ptr, ptr %3, align 4
  %40 = icmp ne ptr %39, null
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %138

42:                                               ; preds = %36
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr i32, ptr %43, i32 %29
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, %33
  store i32 %46, ptr %44, align 4
  %47 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 784, ptr noundef null, ptr noundef null, ptr noundef %22) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  call void @__ext4_std_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 786, i32 noundef %47) #10
  br label %138

50:                                               ; preds = %42
  %51 = call i32 @sync_dirty_buffer(ptr noundef %22) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void @__ext4_std_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 791, i32 noundef %51) #10
  br label %138

54:                                               ; preds = %50
  %55 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %0)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %92, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ext4_group_desc, ptr %37, i32 0, i32 6
  %59 = load i16, ptr %58, align 2
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %57
  %63 = call ptr @ext4_read_block_bitmap(ptr noundef %0, i32 noundef %19) #10
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = ptrtoint ptr %63 to i32
  br label %138

67:                                               ; preds = %62
  %68 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 807, ptr noundef null, ptr noundef null, ptr noundef %63) #10
  %69 = call i32 @sync_dirty_buffer(ptr noundef %63) #10
  call fastcc void @ext4_lock_group(ptr noundef %0, i32 noundef %19)
  %70 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %0)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load i16, ptr %58, align 2
  %74 = and i16 %73, 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = and i16 %73, -3
  store i16 %77, ptr %58, align 2
  %78 = call i32 @ext4_free_clusters_after_init(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %37) #10
  call void @ext4_free_group_clusters_set(ptr noundef %0, ptr noundef nonnull %37, i32 noundef %78) #10
  call void @ext4_block_bitmap_csum_set(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %37, ptr noundef %63) #10
  call void @ext4_group_desc_csum_set(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %37) #10
  br label %79

79:                                               ; preds = %76, %72, %67
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr inbounds %struct.ext4_sb_info, ptr %80, i32 0, i32 41
  %82 = load ptr, ptr %81, align 16
  %83 = and i32 %19, 63
  %84 = getelementptr [64 x %struct.bgl_lock], ptr %82, i32 0, i32 %83
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %85 = load i16, ptr %84, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %84, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %87 = icmp eq ptr %63, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  call void @__brelse(ptr noundef nonnull %63) #10
  br label %89

89:                                               ; preds = %88, %79
  %90 = icmp eq i32 %68, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %89
  call void @__ext4_std_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 825, i32 noundef %68) #10
  br label %138

92:                                               ; preds = %89, %57, %54
  %93 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %0)
  %94 = icmp eq i32 %93, 0
  call fastcc void @ext4_lock_group(ptr noundef %0, i32 noundef %19)
  br i1 %94, label %116, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr inbounds %struct.ext4_sb_info, ptr %96, i32 0, i32 4
  %98 = load i32, ptr %97, align 16
  %99 = call i32 @ext4_itable_unused_count(ptr noundef %0, ptr noundef nonnull %37) #10
  %100 = sub i32 %98, %99
  %101 = getelementptr inbounds %struct.ext4_group_desc, ptr %37, i32 0, i32 6
  %102 = load i16, ptr %101, align 2
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %95
  %106 = and i16 %102, -2
  store i16 %106, ptr %101, align 2
  br label %107

107:                                              ; preds = %105, %95
  %108 = phi i32 [ 0, %105 ], [ %100, %95 ]
  %109 = icmp slt i32 %21, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %4, align 4
  %112 = getelementptr inbounds %struct.ext4_sb_info, ptr %111, i32 0, i32 4
  %113 = load i32, ptr %112, align 16
  %114 = xor i32 %21, -1
  %115 = add i32 %113, %114
  call void @ext4_itable_unused_set(ptr noundef %0, ptr noundef nonnull %37, i32 noundef %115) #10
  br label %116

116:                                              ; preds = %110, %107, %92
  %117 = call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %37) #10
  %118 = add i32 %117, -1
  call void @ext4_free_inodes_set(ptr noundef %0, ptr noundef nonnull %37, i32 noundef %118) #10
  %119 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %0)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %4, align 4
  %123 = getelementptr inbounds %struct.ext4_sb_info, ptr %122, i32 0, i32 4
  %124 = load i32, ptr %123, align 16
  %125 = lshr i32 %124, 3
  call void @ext4_inode_bitmap_csum_set(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %37, ptr noundef %22, i32 noundef %125) #10
  call void @ext4_group_desc_csum_set(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %37) #10
  br label %126

126:                                              ; preds = %121, %116
  %127 = load ptr, ptr %4, align 4
  %128 = getelementptr inbounds %struct.ext4_sb_info, ptr %127, i32 0, i32 41
  %129 = load ptr, ptr %128, align 16
  %130 = and i32 %19, 63
  %131 = getelementptr [64 x %struct.bgl_lock], ptr %129, i32 0, i32 %130
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %132 = load i16, ptr %131, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %131, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %134 = load ptr, ptr %3, align 4
  %135 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_mark_inode_used, i32 noundef 862, ptr noundef null, ptr noundef null, ptr noundef %134) #10
  %136 = load ptr, ptr %3, align 4
  %137 = call i32 @sync_dirty_buffer(ptr noundef %136) #10
  br label %138

138:                                              ; preds = %126, %91, %65, %53, %49, %36, %26, %24, %2
  %139 = phi i32 [ %25, %24 ], [ -117, %2 ], [ %47, %49 ], [ %51, %53 ], [ %135, %126 ], [ 0, %26 ], [ -22, %36 ], [ %68, %91 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_group_desc_csum(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = and i32 %7, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 119
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %31, !prof !23

20:                                               ; preds = %13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 3289, i32 noundef 9, ptr noundef null) #10
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %23, i32 0, i32 30
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %21, i32 0, i32 119
  %30 = load ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %28, %13
  %32 = phi ptr [ %30, %28 ], [ %15, %13 ]
  %33 = icmp ne ptr %32, null
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %31, %20, %10, %1
  %36 = phi i32 [ 1, %1 ], [ 0, %20 ], [ %34, %31 ], [ 0, %10 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_read_block_bitmap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_group_clusters_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_clusters_after_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_block_bitmap_csum_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_itable_unused_count(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_itable_unused_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__ext4_new_inode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #3 {
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timespec64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store ptr null, ptr %12, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  store i32 0, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 0, ptr %14, align 4
  %18 = icmp eq ptr %2, null
  br i1 %18, label %738, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %738, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 48
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %738, !prof !14

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 8
  %34 = load i32, ptr %33, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  %35 = zext i16 %3 to i32
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_request_inode, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = tail call ptr @llvm.thread.pointer() #10
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  %50 = tail call i32 @__traceiter_ext4_request_inode(ptr noundef null, ptr noundef nonnull %2, i32 noundef %35) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  br label %51

51:                                               ; preds = %49, %38, %32
  %52 = tail call ptr @new_inode(ptr noundef %25) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %738, label %54

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %52, i32 -208
  %56 = icmp eq ptr %6, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  store i16 %3, ptr %52, align 8
  %58 = load i32, ptr %6, align 4
  %59 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 2
  store i32 %58, ptr %59, align 4
  %60 = getelementptr i32, ptr %6, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 3
  store i32 %61, ptr %62, align 8
  br label %80

63:                                               ; preds = %54
  %64 = load ptr, ptr %26, align 4
  %65 = getelementptr inbounds %struct.ext4_sb_info, ptr %64, i32 0, i32 17
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %63
  store i16 %3, ptr %52, align 8
  %70 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 2
  %71 = tail call ptr @llvm.thread.pointer() #10
  %72 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 83
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.cred, ptr %73, i32 0, i32 7
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %70, align 4
  %76 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 3
  %77 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 3
  %78 = load i32, ptr %77, align 8
  store i32 %78, ptr %76, align 8
  br label %80

79:                                               ; preds = %63
  tail call void @inode_init_owner(ptr noundef %0, ptr noundef nonnull %52, ptr noundef nonnull %2, i16 noundef zeroext %3) #10
  br label %80

80:                                               ; preds = %79, %69, %57
  %81 = load ptr, ptr %26, align 4
  %82 = getelementptr inbounds %struct.ext4_sb_info, ptr %81, i32 0, i32 15
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ext4_super_block, ptr %83, i32 0, i32 30
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 8192
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %80
  %89 = getelementptr i8, ptr %2, i32 -124
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 536870912
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = getelementptr i8, ptr %52, i32 532
  %95 = getelementptr i8, ptr %2, i32 532
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %94, align 4
  br label %99

97:                                               ; preds = %88, %80
  %98 = getelementptr i8, ptr %52, i32 532
  store i32 0, ptr %98, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = and i32 %7, 2097152
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 16384
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %728

107:                                              ; preds = %102, %99
  %108 = icmp eq i32 %5, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 32
  %111 = load i32, ptr %110, align 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %109, %107
  %114 = phi i32 [ %111, %109 ], [ %5, %107 ]
  %115 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 15
  %116 = load ptr, ptr %115, align 4
  %117 = load i32, ptr %116, align 8
  %118 = icmp ugt i32 %114, %117
  br i1 %118, label %129, label %119

119:                                              ; preds = %113
  %120 = add i32 %114, -1
  %121 = load ptr, ptr %26, align 4
  %122 = getelementptr inbounds %struct.ext4_sb_info, ptr %121, i32 0, i32 4
  %123 = load i32, ptr %122, align 16
  %124 = freeze i32 %120
  %125 = freeze i32 %123
  %126 = udiv i32 %124, %125
  store i32 %126, ptr %13, align 4
  %127 = mul i32 %126, %125
  %128 = sub i32 %124, %127
  store i32 %128, ptr %14, align 4
  br label %244

129:                                              ; preds = %113, %109
  %130 = and i32 %35, 61440
  %131 = icmp eq i32 %130, 16384
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call fastcc i32 @find_group_orlov(ptr noundef %25, ptr noundef nonnull %2, ptr noundef nonnull %13, i16 noundef zeroext %3, ptr noundef %4)
  br label %244

134:                                              ; preds = %129
  %135 = getelementptr i8, ptr %2, i32 -136
  %136 = load i32, ptr %135, align 8
  %137 = load ptr, ptr %26, align 4
  %138 = getelementptr inbounds %struct.ext4_sb_info, ptr %137, i32 0, i32 8
  %139 = load i32, ptr %138, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  %140 = load ptr, ptr %26, align 4
  %141 = getelementptr inbounds %struct.ext4_sb_info, ptr %140, i32 0, i32 110
  %142 = load i32, ptr %141, align 4
  %143 = shl nuw i32 1, %142
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %187

145:                                              ; preds = %134
  %146 = sub nsw i32 0, %143
  %147 = getelementptr i8, ptr %2, i32 464
  %148 = and i32 %136, %146
  %149 = add i32 %148, %143
  %150 = tail call i32 @llvm.umin.i32(i32 %149, i32 %139) #10
  %151 = icmp ult i32 %148, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %161, %145
  %153 = phi i32 [ %162, %161 ], [ %148, %145 ]
  %154 = tail call ptr @ext4_get_group_desc(ptr noundef %25, i32 noundef %153, ptr noundef null) #10
  %155 = icmp eq ptr %154, null
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  %157 = tail call i32 @ext4_free_inodes_count(ptr noundef %25, ptr noundef nonnull %154) #10
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %176, %156
  %160 = phi i32 [ %173, %176 ], [ %153, %156 ]
  store i32 %160, ptr %13, align 4
  br label %244

161:                                              ; preds = %156, %152
  %162 = add i32 %153, 1
  %163 = icmp eq i32 %162, %150
  br i1 %163, label %164, label %152

164:                                              ; preds = %161, %145
  %165 = load i32, ptr %147, align 8
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %182, label %167

167:                                              ; preds = %164
  %168 = and i32 %165, %146
  %169 = add i32 %168, %143
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 %139) #10
  %171 = icmp ult i32 %168, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %179, %167
  %173 = phi i32 [ %180, %179 ], [ %168, %167 ]
  %174 = tail call ptr @ext4_get_group_desc(ptr noundef %25, i32 noundef %173, ptr noundef null) #10
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = tail call i32 @ext4_free_inodes_count(ptr noundef %25, ptr noundef nonnull %174) #10
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %159

179:                                              ; preds = %176, %172
  %180 = add i32 %173, 1
  %181 = icmp eq i32 %180, %170
  br i1 %181, label %182, label %172

182:                                              ; preds = %179, %167, %164
  %183 = phi i32 [ %149, %164 ], [ %169, %167 ], [ %169, %179 ]
  %184 = icmp ugt i32 %183, %139
  %185 = select i1 %184, i32 0, i32 %183
  store i32 %185, ptr %13, align 4
  %186 = call fastcc i32 @find_group_orlov(ptr noundef %25, ptr noundef nonnull %2, ptr noundef nonnull %13, i16 noundef zeroext %3, ptr noundef null) #10
  br label %244

187:                                              ; preds = %134
  store i32 %136, ptr %13, align 4
  %188 = tail call ptr @ext4_get_group_desc(ptr noundef %25, i32 noundef %136, ptr noundef null) #10
  %189 = icmp eq ptr %188, null
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = tail call i32 @ext4_free_inodes_count(ptr noundef %25, ptr noundef nonnull %188) #10
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = tail call i32 @ext4_free_group_clusters(ptr noundef %25, ptr noundef nonnull %188) #10
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %244

196:                                              ; preds = %193, %190, %187
  %197 = icmp ugt i32 %139, 1
  br i1 %197, label %198, label %221

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, %136
  %202 = urem i32 %201, %139
  br label %203

203:                                              ; preds = %218, %198
  %204 = phi i32 [ %209, %218 ], [ %202, %198 ]
  %205 = phi i32 [ %219, %218 ], [ 1, %198 ]
  %206 = add i32 %205, %204
  %207 = icmp ult i32 %206, %139
  %208 = select i1 %207, i32 0, i32 %139
  %209 = sub i32 %206, %208
  %210 = tail call ptr @ext4_get_group_desc(ptr noundef %25, i32 noundef %209, ptr noundef null) #10
  %211 = icmp eq ptr %210, null
  br i1 %211, label %218, label %212

212:                                              ; preds = %203
  %213 = tail call i32 @ext4_free_inodes_count(ptr noundef %25, ptr noundef nonnull %210) #10
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = tail call i32 @ext4_free_group_clusters(ptr noundef %25, ptr noundef nonnull %210) #10
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %243

218:                                              ; preds = %215, %212, %203
  %219 = shl i32 %205, 1
  %220 = icmp ult i32 %219, %139
  br i1 %220, label %203, label %223

221:                                              ; preds = %196
  store i32 %136, ptr %13, align 4
  %222 = icmp eq i32 %139, 0
  br i1 %222, label %239, label %223

223:                                              ; preds = %221, %218
  br label %224

224:                                              ; preds = %235, %223
  %225 = phi i32 [ %229, %235 ], [ %136, %223 ]
  %226 = phi i32 [ %236, %235 ], [ 0, %223 ]
  %227 = add i32 %225, 1
  %228 = icmp ult i32 %227, %139
  %229 = select i1 %228, i32 %227, i32 0
  %230 = tail call ptr @ext4_get_group_desc(ptr noundef %25, i32 noundef %229, ptr noundef null) #10
  %231 = icmp eq ptr %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %224
  %233 = tail call i32 @ext4_free_inodes_count(ptr noundef %25, ptr noundef nonnull %230) #10
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %232, %224
  %236 = add nuw i32 %226, 1
  %237 = icmp eq i32 %236, %139
  br i1 %237, label %238, label %224

238:                                              ; preds = %235
  store i32 %229, ptr %13, align 4
  br label %239

239:                                              ; preds = %238, %221
  %240 = phi i32 [ %229, %238 ], [ %136, %221 ]
  %241 = getelementptr i8, ptr %2, i32 464
  store i32 %240, ptr %241, align 8
  br label %728

242:                                              ; preds = %232
  store i32 %229, ptr %13, align 4
  br label %244

243:                                              ; preds = %215
  store i32 %209, ptr %13, align 4
  br label %244

244:                                              ; preds = %243, %242, %193, %182, %159, %132, %119
  %245 = phi i32 [ 0, %119 ], [ %133, %132 ], [ 0, %159 ], [ %186, %182 ], [ 0, %193 ], [ 0, %242 ], [ 0, %243 ]
  %246 = load i32, ptr %13, align 4
  %247 = getelementptr i8, ptr %2, i32 464
  store i32 %246, ptr %247, align 8
  %248 = icmp ne i32 %245, -1
  %249 = icmp ne i32 %34, 0
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %251, label %728

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 25
  %253 = icmp slt i32 %10, 1
  br label %254

254:                                              ; preds = %417, %251
  %255 = phi i32 [ %246, %251 ], [ %424, %417 ]
  %256 = phi ptr [ %1, %251 ], [ %420, %417 ]
  %257 = phi ptr [ null, %251 ], [ %419, %417 ]
  %258 = phi i32 [ 0, %251 ], [ %425, %417 ]
  %259 = phi ptr [ null, %251 ], [ %418, %417 ]
  %260 = call ptr @ext4_get_group_desc(ptr noundef %25, i32 noundef %255, ptr noundef nonnull %12) #10
  %261 = icmp eq ptr %260, null
  br i1 %261, label %728, label %262

262:                                              ; preds = %254
  %263 = call i32 @ext4_free_inodes_count(ptr noundef %25, ptr noundef nonnull %260) #10
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %417, label %265

265:                                              ; preds = %262
  %266 = load i16, ptr %252, align 8
  %267 = and i16 %266, 32
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %269, label %294

269:                                              ; preds = %265
  %270 = load i32, ptr %13, align 4
  %271 = load ptr, ptr %26, align 4
  %272 = getelementptr inbounds %struct.ext4_sb_info, ptr %271, i32 0, i32 8
  %273 = load i32, ptr %272, align 32
  %274 = icmp ugt i32 %273, %270
  br i1 %274, label %276, label %275, !prof !14

275:                                              ; preds = %269
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

276:                                              ; preds = %269
  %277 = getelementptr inbounds %struct.ext4_sb_info, ptr %271, i32 0, i32 28
  %278 = load i32, ptr %277, align 64
  %279 = lshr i32 %270, %278
  %280 = getelementptr inbounds %struct.ext4_sb_info, ptr %271, i32 0, i32 7
  %281 = load i32, ptr %280, align 4
  %282 = add i32 %281, -1
  %283 = and i32 %282, %270
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %284 = load ptr, ptr %26, align 4
  %285 = getelementptr inbounds %struct.ext4_sb_info, ptr %284, i32 0, i32 58
  %286 = load volatile ptr, ptr %285, align 4
  %287 = getelementptr ptr, ptr %286, i32 %279
  %288 = load ptr, ptr %287, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %289 = getelementptr ptr, ptr %288, i32 %283
  %290 = load ptr, ptr %289, align 4
  %291 = load volatile i32, ptr %290, align 4
  %292 = and i32 %291, 8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %417

294:                                              ; preds = %276, %265
  %295 = phi ptr [ %259, %265 ], [ %290, %276 ]
  %296 = icmp eq ptr %257, null
  br i1 %296, label %298, label %297

297:                                              ; preds = %294
  call void @__brelse(ptr noundef nonnull %257) #10
  br label %298

298:                                              ; preds = %297, %294
  %299 = load i32, ptr %13, align 4
  %300 = call fastcc ptr @ext4_read_inode_bitmap(ptr noundef %25, i32 noundef %299)
  %301 = load i16, ptr %252, align 8
  %302 = and i16 %301, 32
  %303 = icmp eq i16 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %298
  %305 = load volatile i32, ptr %295, align 4
  %306 = and i32 %305, 8
  %307 = icmp ne i32 %306, 0
  %308 = icmp ugt ptr %300, inttoptr (i32 -4096 to ptr)
  %309 = select i1 %307, i1 true, i1 %308
  br i1 %309, label %417, label %312

310:                                              ; preds = %298
  %311 = icmp ugt ptr %300, inttoptr (i32 -4096 to ptr)
  br i1 %311, label %417, label %312

312:                                              ; preds = %310, %304
  %313 = getelementptr inbounds %struct.buffer_head, ptr %300, i32 0, i32 5
  br label %314

314:                                              ; preds = %412, %312
  %315 = phi ptr [ %350, %412 ], [ %256, %312 ]
  %316 = load i32, ptr %13, align 4
  %317 = call fastcc i32 @find_inode_bit(ptr noundef %25, i32 noundef %316, ptr noundef %300, ptr noundef nonnull %14)
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %417, label %319

319:                                              ; preds = %314
  %320 = load i32, ptr %13, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = load i32, ptr %14, align 4
  %324 = add i32 %323, 1
  %325 = load ptr, ptr %26, align 4
  %326 = getelementptr inbounds %struct.ext4_sb_info, ptr %325, i32 0, i32 30
  %327 = load i32, ptr %326, align 8
  %328 = icmp ult i32 %324, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %322
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1072, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i32 noundef %324) #10
  %330 = load i32, ptr %13, align 4
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef %25, i32 noundef %330, i32 noundef 8) #10
  br label %417

331:                                              ; preds = %322, %319
  %332 = load i16, ptr %252, align 8
  %333 = and i16 %332, 32
  %334 = icmp ne i16 %333, 0
  %335 = icmp ne ptr %315, null
  %336 = select i1 %334, i1 true, i1 %335
  br i1 %336, label %349, label %337

337:                                              ; preds = %331
  br i1 %253, label %338, label %339, !prof !23

338:                                              ; preds = %337
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ialloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1079, 0\0A.popsection", ""() #10, !srcloc !31
  unreachable

339:                                              ; preds = %337
  %340 = load ptr, ptr %24, align 4
  %341 = load ptr, ptr %26, align 4
  %342 = getelementptr inbounds %struct.ext4_sb_info, ptr %341, i32 0, i32 11
  %343 = load i32, ptr %342, align 4
  %344 = shl i32 %343, 3
  %345 = call ptr @__ext4_journal_start_sb(ptr noundef %340, i32 noundef %9, i32 noundef %8, i32 noundef %10, i32 noundef 0, i32 noundef %344) #10
  %346 = icmp ugt ptr %345, inttoptr (i32 -4096 to ptr)
  br i1 %346, label %347, label %349

347:                                              ; preds = %339
  %348 = ptrtoint ptr %345 to i32
  call void @__ext4_std_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1085, i32 noundef %348) #10
  br label %728

349:                                              ; preds = %339, %331
  %350 = phi ptr [ %315, %331 ], [ %345, %339 ]
  %351 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1091, ptr noundef %350, ptr noundef %25, ptr noundef %300, i32 noundef 1) #10
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %349
  call void @__ext4_std_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1093, i32 noundef %351) #10
  br label %728

354:                                              ; preds = %349
  %355 = load i32, ptr %13, align 4
  %356 = load ptr, ptr %26, align 4
  %357 = getelementptr inbounds %struct.ext4_sb_info, ptr %356, i32 0, i32 41
  %358 = load ptr, ptr %357, align 16
  %359 = and i32 %355, 63
  %360 = getelementptr [64 x %struct.bgl_lock], ptr %358, i32 0, i32 %359
  %361 = call i32 @_raw_spin_trylock(ptr noundef %360) #10
  %362 = icmp eq i32 %361, 0
  %363 = load ptr, ptr %26, align 4
  %364 = getelementptr inbounds %struct.ext4_sb_info, ptr %363, i32 0, i32 105
  call void asm sideeffect "dmb ish", "~{memory}"() #10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %364) #10
  br i1 %362, label %370, label %365

365:                                              ; preds = %354
  %366 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %364, ptr %364, i32 0, i32 -1, ptr elementtype(i32) %364) #10, !srcloc !26
  %367 = extractvalue { i32, i32, i32 } %366, 0
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %376, label %369

369:                                              ; preds = %365
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  br label %376

370:                                              ; preds = %354
  %371 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %364, ptr %364, i32 8, i32 1, ptr elementtype(i32) %364) #10, !srcloc !26
  %372 = extractvalue { i32, i32, i32 } %371, 0
  %373 = icmp eq i32 %372, 8
  br i1 %373, label %375, label %374

374:                                              ; preds = %370
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  br label %375

375:                                              ; preds = %374, %370
  call void @_raw_spin_lock(ptr noundef %360) #10
  br label %376

376:                                              ; preds = %375, %369, %365
  %377 = load i32, ptr %14, align 4
  %378 = load ptr, ptr %313, align 4
  %379 = and i32 %377, 31
  %380 = shl nuw i32 1, %379
  %381 = lshr i32 %377, 5
  %382 = getelementptr i32, ptr %378, i32 %381
  %383 = load i32, ptr %382, align 4
  %384 = or i32 %383, %380
  store i32 %384, ptr %382, align 4
  %385 = and i32 %383, %380
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %400, label %387

387:                                              ; preds = %376
  %388 = load i32, ptr %13, align 4
  %389 = call fastcc i32 @find_inode_bit(ptr noundef %25, i32 noundef %388, ptr noundef %300, ptr noundef nonnull %14)
  %390 = icmp eq i32 %389, 0
  %391 = load i32, ptr %14, align 4
  br i1 %390, label %400, label %392

392:                                              ; preds = %387
  %393 = load ptr, ptr %313, align 4
  %394 = and i32 %391, 31
  %395 = shl nuw i32 1, %394
  %396 = lshr i32 %391, 5
  %397 = getelementptr i32, ptr %393, i32 %396
  %398 = load i32, ptr %397, align 4
  %399 = or i32 %398, %395
  store i32 %399, ptr %397, align 4
  br label %400

400:                                              ; preds = %392, %387, %376
  %401 = phi i32 [ %391, %392 ], [ %377, %376 ], [ %391, %387 ]
  %402 = phi i1 [ true, %392 ], [ true, %376 ], [ false, %387 ]
  %403 = load i32, ptr %13, align 4
  %404 = load ptr, ptr %26, align 4
  %405 = getelementptr inbounds %struct.ext4_sb_info, ptr %404, i32 0, i32 41
  %406 = load ptr, ptr %405, align 16
  %407 = and i32 %403, 63
  %408 = getelementptr [64 x %struct.bgl_lock], ptr %406, i32 0, i32 %407
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %409 = load i16, ptr %408, align 4
  %410 = add i16 %409, 1
  store i16 %410, ptr %408, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %411 = add i32 %401, 1
  store i32 %411, ptr %14, align 4
  br i1 %402, label %427, label %412

412:                                              ; preds = %400
  %413 = load ptr, ptr %26, align 4
  %414 = getelementptr inbounds %struct.ext4_sb_info, ptr %413, i32 0, i32 4
  %415 = load i32, ptr %414, align 16
  %416 = icmp ult i32 %411, %415
  br i1 %416, label %314, label %417

417:                                              ; preds = %412, %329, %314, %310, %304, %276, %262
  %418 = phi ptr [ %259, %262 ], [ %295, %329 ], [ %290, %276 ], [ %295, %310 ], [ %295, %304 ], [ %295, %314 ], [ %295, %412 ]
  %419 = phi ptr [ %257, %262 ], [ %300, %329 ], [ %257, %276 ], [ null, %310 ], [ null, %304 ], [ %300, %314 ], [ %300, %412 ]
  %420 = phi ptr [ %256, %262 ], [ %315, %329 ], [ %256, %276 ], [ %256, %310 ], [ %256, %304 ], [ %350, %412 ], [ %315, %314 ]
  %421 = load i32, ptr %13, align 4
  %422 = add i32 %421, 1
  %423 = icmp eq i32 %422, %34
  %424 = select i1 %423, i32 0, i32 %422
  store i32 %424, ptr %13, align 4
  %425 = add nuw i32 %258, 1
  store i32 0, ptr %14, align 4
  %426 = icmp eq i32 %425, %34
  br i1 %426, label %728, label %254

427:                                              ; preds = %400
  %428 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1126, ptr noundef %350, ptr noundef null, ptr noundef %300) #10
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %431, label %430

430:                                              ; preds = %427
  call void @__ext4_std_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1128, i32 noundef %428) #10
  br label %728

431:                                              ; preds = %427
  %432 = load ptr, ptr %12, align 4
  %433 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1134, ptr noundef %350, ptr noundef %25, ptr noundef %432, i32 noundef 1) #10
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %431
  call void @__ext4_std_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1136, i32 noundef %433) #10
  br label %728

436:                                              ; preds = %431
  %437 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %25)
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %486, label %439

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.ext4_group_desc, ptr %260, i32 0, i32 6
  %441 = load i16, ptr %440, align 2
  %442 = and i16 %441, 2
  %443 = icmp eq i16 %442, 0
  br i1 %443, label %486, label %444

444:                                              ; preds = %439
  %445 = load i32, ptr %13, align 4
  %446 = call ptr @ext4_read_block_bitmap(ptr noundef %25, i32 noundef %445) #10
  %447 = icmp ugt ptr %446, inttoptr (i32 -4096 to ptr)
  br i1 %447, label %448, label %450

448:                                              ; preds = %444
  %449 = ptrtoint ptr %446 to i32
  br label %728

450:                                              ; preds = %444
  %451 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1152, ptr noundef %350, ptr noundef %25, ptr noundef %446, i32 noundef 1) #10
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %450
  %454 = icmp eq ptr %446, null
  br i1 %454, label %456, label %455

455:                                              ; preds = %453
  call void @__brelse(ptr noundef nonnull %446) #10
  br label %456

456:                                              ; preds = %455, %453
  call void @__ext4_std_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1155, i32 noundef %451) #10
  br label %728

457:                                              ; preds = %450
  %458 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1160, ptr noundef %350, ptr noundef null, ptr noundef %446) #10
  %459 = load i32, ptr %13, align 4
  call fastcc void @ext4_lock_group(ptr noundef %25, i32 noundef %459)
  %460 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %25)
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %472, label %462

462:                                              ; preds = %457
  %463 = load i16, ptr %440, align 2
  %464 = and i16 %463, 2
  %465 = icmp eq i16 %464, 0
  br i1 %465, label %472, label %466

466:                                              ; preds = %462
  %467 = and i16 %463, -3
  store i16 %467, ptr %440, align 2
  %468 = load i32, ptr %13, align 4
  %469 = call i32 @ext4_free_clusters_after_init(ptr noundef %25, i32 noundef %468, ptr noundef nonnull %260) #10
  call void @ext4_free_group_clusters_set(ptr noundef %25, ptr noundef nonnull %260, i32 noundef %469) #10
  %470 = load i32, ptr %13, align 4
  call void @ext4_block_bitmap_csum_set(ptr noundef %25, i32 noundef %470, ptr noundef nonnull %260, ptr noundef %446) #10
  %471 = load i32, ptr %13, align 4
  call void @ext4_group_desc_csum_set(ptr noundef %25, i32 noundef %471, ptr noundef nonnull %260) #10
  br label %472

472:                                              ; preds = %466, %462, %457
  %473 = load i32, ptr %13, align 4
  %474 = load ptr, ptr %26, align 4
  %475 = getelementptr inbounds %struct.ext4_sb_info, ptr %474, i32 0, i32 41
  %476 = load ptr, ptr %475, align 16
  %477 = and i32 %473, 63
  %478 = getelementptr [64 x %struct.bgl_lock], ptr %476, i32 0, i32 %477
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %479 = load i16, ptr %478, align 4
  %480 = add i16 %479, 1
  store i16 %480, ptr %478, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %481 = icmp eq ptr %446, null
  br i1 %481, label %483, label %482

482:                                              ; preds = %472
  call void @__brelse(ptr noundef nonnull %446) #10
  br label %483

483:                                              ; preds = %482, %472
  %484 = icmp eq i32 %458, 0
  br i1 %484, label %486, label %485

485:                                              ; preds = %483
  call void @__ext4_std_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1177, i32 noundef %458) #10
  br label %728

486:                                              ; preds = %483, %439, %436
  %487 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %25)
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %544, label %489

489:                                              ; preds = %486
  %490 = load i16, ptr %252, align 8
  %491 = and i16 %490, 32
  %492 = icmp eq i16 %491, 0
  br i1 %492, label %493, label %516

493:                                              ; preds = %489
  %494 = load i32, ptr %13, align 4
  %495 = load ptr, ptr %26, align 4
  %496 = getelementptr inbounds %struct.ext4_sb_info, ptr %495, i32 0, i32 8
  %497 = load i32, ptr %496, align 32
  %498 = icmp ugt i32 %497, %494
  br i1 %498, label %500, label %499, !prof !14

499:                                              ; preds = %493
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

500:                                              ; preds = %493
  %501 = getelementptr inbounds %struct.ext4_sb_info, ptr %495, i32 0, i32 28
  %502 = load i32, ptr %501, align 64
  %503 = lshr i32 %494, %502
  %504 = getelementptr inbounds %struct.ext4_sb_info, ptr %495, i32 0, i32 7
  %505 = load i32, ptr %504, align 4
  %506 = add i32 %505, -1
  %507 = and i32 %506, %494
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %508 = load ptr, ptr %26, align 4
  %509 = getelementptr inbounds %struct.ext4_sb_info, ptr %508, i32 0, i32 58
  %510 = load volatile ptr, ptr %509, align 4
  %511 = getelementptr ptr, ptr %510, i32 %503
  %512 = load ptr, ptr %511, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %513 = getelementptr ptr, ptr %512, i32 %507
  %514 = load ptr, ptr %513, align 4
  %515 = getelementptr inbounds %struct.ext4_group_info, ptr %514, i32 0, i32 8
  call void @down_read(ptr noundef %515) #10
  br label %516

516:                                              ; preds = %500, %489
  %517 = phi ptr [ null, %489 ], [ %514, %500 ]
  %518 = load i32, ptr %13, align 4
  call fastcc void @ext4_lock_group(ptr noundef %25, i32 noundef %518)
  %519 = load ptr, ptr %26, align 4
  %520 = getelementptr inbounds %struct.ext4_sb_info, ptr %519, i32 0, i32 4
  %521 = load i32, ptr %520, align 16
  %522 = call i32 @ext4_itable_unused_count(ptr noundef %25, ptr noundef nonnull %260) #10
  %523 = sub i32 %521, %522
  %524 = getelementptr inbounds %struct.ext4_group_desc, ptr %260, i32 0, i32 6
  %525 = load i16, ptr %524, align 2
  %526 = and i16 %525, 1
  %527 = icmp eq i16 %526, 0
  br i1 %527, label %530, label %528

528:                                              ; preds = %516
  %529 = and i16 %525, -2
  store i16 %529, ptr %524, align 2
  br label %530

530:                                              ; preds = %528, %516
  %531 = phi i32 [ 0, %528 ], [ %523, %516 ]
  %532 = icmp ugt i32 %411, %531
  br i1 %532, label %533, label %538

533:                                              ; preds = %530
  %534 = load ptr, ptr %26, align 4
  %535 = getelementptr inbounds %struct.ext4_sb_info, ptr %534, i32 0, i32 4
  %536 = load i32, ptr %535, align 16
  %537 = sub i32 %536, %411
  call void @ext4_itable_unused_set(ptr noundef %25, ptr noundef nonnull %260, i32 noundef %537) #10
  br label %538

538:                                              ; preds = %533, %530
  %539 = load i16, ptr %252, align 8
  %540 = and i16 %539, 32
  %541 = icmp eq i16 %540, 0
  br i1 %541, label %542, label %546

542:                                              ; preds = %538
  %543 = getelementptr inbounds %struct.ext4_group_info, ptr %517, i32 0, i32 8
  call void @up_read(ptr noundef %543) #10
  br label %546

544:                                              ; preds = %486
  %545 = load i32, ptr %13, align 4
  call fastcc void @ext4_lock_group(ptr noundef %25, i32 noundef %545)
  br label %546

546:                                              ; preds = %544, %542, %538
  %547 = call i32 @ext4_free_inodes_count(ptr noundef %25, ptr noundef nonnull %260) #10
  %548 = add i32 %547, -1
  call void @ext4_free_inodes_set(ptr noundef %25, ptr noundef nonnull %260, i32 noundef %548) #10
  %549 = and i32 %35, 61440
  %550 = icmp eq i32 %549, 16384
  br i1 %550, label %551, label %566

551:                                              ; preds = %546
  %552 = call i32 @ext4_used_dirs_count(ptr noundef %25, ptr noundef nonnull %260) #10
  %553 = add i32 %552, 1
  call void @ext4_used_dirs_set(ptr noundef %25, ptr noundef nonnull %260, i32 noundef %553) #10
  %554 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 110
  %555 = load i32, ptr %554, align 4
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %566, label %557

557:                                              ; preds = %551
  %558 = load i32, ptr %13, align 4
  %559 = lshr i32 %558, %555
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %560 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 111
  %561 = load volatile ptr, ptr %560, align 8
  %562 = getelementptr ptr, ptr %561, i32 %559
  %563 = load ptr, ptr %562, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %564 = getelementptr inbounds %struct.flex_groups, ptr %563, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %564) #10, !srcloc !9
  %565 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %564, ptr %564, i32 1, ptr elementtype(i32) %564) #10, !srcloc !22
  br label %566

566:                                              ; preds = %557, %551, %546
  %567 = call fastcc i32 @ext4_has_group_desc_csum(ptr noundef %25)
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %576, label %569

569:                                              ; preds = %566
  %570 = load i32, ptr %13, align 4
  %571 = load ptr, ptr %26, align 4
  %572 = getelementptr inbounds %struct.ext4_sb_info, ptr %571, i32 0, i32 4
  %573 = load i32, ptr %572, align 16
  %574 = lshr i32 %573, 3
  call void @ext4_inode_bitmap_csum_set(ptr noundef %25, i32 noundef %570, ptr noundef nonnull %260, ptr noundef %300, i32 noundef %574) #10
  %575 = load i32, ptr %13, align 4
  call void @ext4_group_desc_csum_set(ptr noundef %25, i32 noundef %575, ptr noundef nonnull %260) #10
  br label %576

576:                                              ; preds = %569, %566
  %577 = load i32, ptr %13, align 4
  %578 = load ptr, ptr %26, align 4
  %579 = getelementptr inbounds %struct.ext4_sb_info, ptr %578, i32 0, i32 41
  %580 = load ptr, ptr %579, align 16
  %581 = and i32 %577, 63
  %582 = getelementptr [64 x %struct.bgl_lock], ptr %580, i32 0, i32 %581
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %583 = load i16, ptr %582, align 4
  %584 = add i16 %583, 1
  store i16 %584, ptr %582, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %585 = load ptr, ptr %12, align 4
  %586 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1233, ptr noundef %350, ptr noundef null, ptr noundef %585) #10
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %589, label %588

588:                                              ; preds = %576
  call void @__ext4_std_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1235, i32 noundef %586) #10
  br label %728

589:                                              ; preds = %576
  %590 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 37
  %591 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %590, i64 noundef -1, i32 noundef %591) #10
  br i1 %550, label %592, label %595

592:                                              ; preds = %589
  %593 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 38
  %594 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %593, i64 noundef 1, i32 noundef %594) #10
  br label %595

595:                                              ; preds = %592, %589
  %596 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 110
  %597 = load i32, ptr %596, align 4
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %608, label %599

599:                                              ; preds = %595
  %600 = load i32, ptr %13, align 4
  %601 = lshr i32 %600, %597
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %602 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 111
  %603 = load volatile ptr, ptr %602, align 8
  %604 = getelementptr ptr, ptr %603, i32 %601
  %605 = load ptr, ptr %604, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %606 = getelementptr inbounds %struct.flex_groups, ptr %605, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %606) #10, !srcloc !9
  %607 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %606, ptr %606, i32 1, ptr elementtype(i32) %606) #10, !srcloc !10
  br label %608

608:                                              ; preds = %599, %595
  %609 = load i32, ptr %13, align 4
  %610 = load ptr, ptr %26, align 4
  %611 = getelementptr inbounds %struct.ext4_sb_info, ptr %610, i32 0, i32 4
  %612 = load i32, ptr %611, align 16
  %613 = mul i32 %612, %609
  %614 = add i32 %613, %411
  %615 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 10
  store i32 %614, ptr %615, align 4
  %616 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 21
  store i64 0, ptr %616, align 8
  %617 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 15
  %618 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 14
  %619 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %15, ptr noundef %52) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %619, ptr noundef nonnull align 8 dereferenceable(16) %15, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %618, ptr noundef align 8 dereferenceable(16) %619, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %617, ptr noundef align 8 dereferenceable(16) %619, i32 16, i1 false)
  %620 = getelementptr i8, ptr %52, i32 400
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %620, ptr noundef align 8 dereferenceable(16) %619, i32 16, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(60) %55, i8 0, i32 60, i1 false)
  %621 = getelementptr i8, ptr %52, i32 -132
  store i32 0, ptr %621, align 4
  %622 = getelementptr i8, ptr %52, i32 -32
  store i64 0, ptr %622, align 8
  %623 = getelementptr i8, ptr %2, i32 -124
  %624 = load i32, ptr %623, align 4
  %625 = and i32 %624, 1644283087
  %626 = and i16 %3, -4096
  switch i16 %626, label %629 [
    i16 16384, label %631
    i16 -32768, label %627
  ]

627:                                              ; preds = %608
  %628 = and i32 %624, 33604815
  br label %631

629:                                              ; preds = %608
  %630 = and i32 %624, 192
  br label %631

631:                                              ; preds = %629, %627, %608
  %632 = phi i32 [ %628, %627 ], [ %630, %629 ], [ %625, %608 ]
  %633 = getelementptr i8, ptr %52, i32 -124
  %634 = or i32 %632, %7
  store i32 %634, ptr %633, align 4
  %635 = getelementptr i8, ptr %52, i32 -144
  store i64 0, ptr %635, align 8
  %636 = getelementptr i8, ptr %52, i32 -148
  store i32 0, ptr %636, align 4
  %637 = load i32, ptr %13, align 4
  %638 = getelementptr i8, ptr %52, i32 -136
  store i32 %637, ptr %638, align 8
  %639 = getelementptr i8, ptr %52, i32 464
  store i32 -1, ptr %639, align 8
  call void @ext4_set_inode_flags(ptr noundef %52, i1 noundef zeroext true) #10
  %640 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 8
  %641 = load ptr, ptr %640, align 4
  %642 = getelementptr inbounds %struct.super_block, ptr %641, i32 0, i32 10
  %643 = load i32, ptr %642, align 4
  %644 = and i32 %643, 144
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %653

646:                                              ; preds = %631
  %647 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 4
  %648 = load i32, ptr %647, align 4
  %649 = and i32 %648, 65
  %650 = icmp eq i32 %649, 0
  %651 = icmp ult ptr %350, inttoptr (i32 4096 to ptr)
  %652 = or i1 %651, %650
  br i1 %652, label %659, label %655

653:                                              ; preds = %631
  %654 = icmp ult ptr %350, inttoptr (i32 4096 to ptr)
  br i1 %654, label %659, label %655

655:                                              ; preds = %653, %646
  %656 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %350, i32 0, i32 7
  %657 = load i32, ptr %656, align 4
  %658 = or i32 %657, 1
  store i32 %658, ptr %656, align 4
  br label %659

659:                                              ; preds = %655, %653, %646
  %660 = call i32 @insert_inode_locked(ptr noundef %52) #10
  %661 = icmp slt i32 %660, 0
  br i1 %661, label %662, label %665

662:                                              ; preds = %659
  %663 = load i32, ptr %615, align 4
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1278, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %663) #10
  %664 = load i32, ptr %13, align 4
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef %25, i32 noundef %664, i32 noundef 8) #10
  br label %728

665:                                              ; preds = %659
  %666 = call i32 @prandom_u32() #10
  %667 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 44
  store i32 %666, ptr %667, align 8
  %668 = call fastcc i32 @ext4_has_metadata_csum(ptr noundef %25)
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %678, label %670

670:                                              ; preds = %665
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  %671 = load i32, ptr %615, align 4
  store i32 %671, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #10
  %672 = load i32, ptr %667, align 8
  store i32 %672, ptr %17, align 4
  %673 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 120
  %674 = load i32, ptr %673, align 4
  %675 = call fastcc i32 @ext4_chksum(ptr noundef %27, i32 noundef %674, ptr noundef nonnull %16)
  %676 = call fastcc i32 @ext4_chksum(ptr noundef %27, i32 noundef %675, ptr noundef nonnull %17)
  %677 = getelementptr i8, ptr %52, i32 528
  store i32 %676, ptr %677, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  br label %678

678:                                              ; preds = %670, %665
  %679 = getelementptr i8, ptr %52, i32 -128
  store i32 0, ptr %679, align 8
  call void @_set_bit(i32 noundef 1, ptr noundef %679) #10
  %680 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 56
  %681 = load i32, ptr %680, align 4
  %682 = trunc i32 %681 to i16
  %683 = getelementptr i8, ptr %52, i32 476
  store i16 %682, ptr %683, align 4
  %684 = getelementptr i8, ptr %52, i32 478
  store i16 0, ptr %684, align 2
  %685 = load ptr, ptr %26, align 4
  %686 = getelementptr inbounds %struct.ext4_sb_info, ptr %685, i32 0, i32 15
  %687 = load ptr, ptr %686, align 4
  %688 = getelementptr inbounds %struct.ext4_super_block, ptr %687, i32 0, i32 29
  %689 = load i32, ptr %688, align 8
  %690 = and i32 %689, 32768
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %703, label %692

692:                                              ; preds = %678
  %693 = load i32, ptr %633, align 4
  %694 = and i32 %693, 33554432
  %695 = icmp eq i32 %694, 0
  %696 = or i1 %550, %695
  br i1 %696, label %697, label %703

697:                                              ; preds = %692
  call void @_set_bit(i32 noundef 7, ptr noundef %679) #10
  %698 = load ptr, ptr %26, align 4
  %699 = getelementptr inbounds %struct.ext4_sb_info, ptr %698, i32 0, i32 15
  %700 = load ptr, ptr %699, align 4
  %701 = getelementptr inbounds %struct.ext4_super_block, ptr %700, i32 0, i32 29
  %702 = load i32, ptr %701, align 8
  br label %703

703:                                              ; preds = %697, %692, %678
  %704 = phi i32 [ %689, %692 ], [ %702, %697 ], [ %689, %678 ]
  %705 = and i32 %704, 64
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %710, label %707

707:                                              ; preds = %703
  %708 = trunc i32 %549 to i16
  switch i16 %708, label %710 [
    i16 -24576, label %709
    i16 -32768, label %709
    i16 16384, label %709
  ]

709:                                              ; preds = %707, %707, %707
  call void @_set_bit(i32 noundef 19, ptr noundef %633) #10
  call void @ext4_ext_tree_init(ptr noundef %350, ptr noundef %52) #10
  br label %710

710:                                              ; preds = %709, %707, %703
  %711 = icmp ult ptr %350, inttoptr (i32 4096 to ptr)
  br i1 %711, label %721, label %712

712:                                              ; preds = %710
  %713 = load ptr, ptr %350, align 4
  %714 = getelementptr inbounds %struct.transaction_s, ptr %713, i32 0, i32 1
  %715 = load i32, ptr %714, align 4
  %716 = getelementptr i8, ptr %52, i32 520
  store i32 %715, ptr %716, align 8
  %717 = load ptr, ptr %350, align 4
  %718 = getelementptr inbounds %struct.transaction_s, ptr %717, i32 0, i32 1
  %719 = load i32, ptr %718, align 4
  %720 = getelementptr i8, ptr %52, i32 524
  store i32 %719, ptr %720, align 4
  br label %721

721:                                              ; preds = %712, %710
  %722 = call i32 @__ext4_mark_inode_dirty(ptr noundef %350, ptr noundef %52, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1343) #10
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %724, label %727

724:                                              ; preds = %721
  call fastcc void @trace_ext4_allocate_inode(ptr noundef %52, ptr noundef nonnull %2, i32 noundef %35)
  %725 = icmp eq ptr %300, null
  br i1 %725, label %738, label %726

726:                                              ; preds = %724
  call void @__brelse(ptr noundef nonnull %300) #10
  br label %738

727:                                              ; preds = %721
  call void @__ext4_std_error(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_new_inode, i32 noundef 1345, i32 noundef %722) #10
  call void @clear_nlink(ptr noundef %52) #10
  call void @unlock_new_inode(ptr noundef %52) #10
  br label %728

728:                                              ; preds = %727, %662, %588, %485, %456, %448, %435, %430, %417, %353, %347, %254, %244, %239, %102
  %729 = phi i32 [ -28, %244 ], [ %351, %353 ], [ %428, %430 ], [ %433, %435 ], [ %586, %588 ], [ -5, %662 ], [ %722, %727 ], [ %348, %347 ], [ -95, %102 ], [ -28, %239 ], [ %458, %485 ], [ %451, %456 ], [ %449, %448 ], [ -5, %254 ], [ -28, %417 ]
  %730 = phi ptr [ null, %244 ], [ %300, %353 ], [ %300, %430 ], [ %300, %435 ], [ %300, %588 ], [ %300, %662 ], [ %300, %727 ], [ %300, %347 ], [ null, %102 ], [ null, %239 ], [ %300, %485 ], [ %300, %456 ], [ %300, %448 ], [ %257, %254 ], [ %419, %417 ]
  %731 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 4
  %732 = load i32, ptr %731, align 4
  %733 = or i32 %732, 32
  store i32 %733, ptr %731, align 4
  call void @iput(ptr noundef %52) #10
  %734 = icmp eq ptr %730, null
  br i1 %734, label %736, label %735

735:                                              ; preds = %728
  call void @__brelse(ptr noundef nonnull %730) #10
  br label %736

736:                                              ; preds = %735, %728
  %737 = inttoptr i32 %729 to ptr
  br label %738

738:                                              ; preds = %736, %726, %724, %51, %23, %19, %11
  %739 = phi ptr [ %737, %736 ], [ inttoptr (i32 -1 to ptr), %19 ], [ inttoptr (i32 -1 to ptr), %11 ], [ inttoptr (i32 -5 to ptr), %23 ], [ inttoptr (i32 -12 to ptr), %51 ], [ %52, %724 ], [ %52, %726 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  ret ptr %739
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_group_orlov(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i16 noundef zeroext %3, ptr noundef readonly %4) unnamed_addr #3 {
  %6 = alloca %struct.dx_hash_info, align 4
  %7 = getelementptr i8, ptr %1, i32 -136
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 16
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 110
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !11
  %19 = icmp sgt i32 %18, 1
  %20 = add i32 %12, -1
  %21 = add i32 %20, %18
  %22 = lshr i32 %21, %17
  %23 = select i1 %19, i32 %22, i32 %12
  %24 = select i1 %19, i32 %17, i32 0
  %25 = lshr i32 %8, %24
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 37, i32 1
  %27 = load volatile i64, ptr %26, align 8
  %28 = tail call i64 @llvm.smax.i64(i64 %27, i64 0) #10
  %29 = trunc i64 %28 to i32
  %30 = udiv i32 %29, %23
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 36, i32 1
  %32 = load volatile i64, ptr %31, align 8
  %33 = tail call i64 @llvm.smax.i64(i64 %32, i64 0) #10
  %34 = icmp eq i32 %23, 0
  %35 = icmp ult i64 %33, 4294967296
  br i1 %35, label %36, label %40, !prof !14

36:                                               ; preds = %5
  %37 = trunc i64 %33 to i32
  %38 = udiv i32 %37, %23
  %39 = zext i32 %38 to i64
  br label %43

40:                                               ; preds = %5
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %33) #12, !srcloc !32
  %42 = extractvalue { i64, i64 } %41, 1
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i64 [ %39, %36 ], [ %42, %40 ]
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 38, i32 1
  %46 = load volatile i64, ptr %45, align 8
  %47 = tail call i64 @llvm.smax.i64(i64 %46, i64 0) #10
  %48 = trunc i64 %47 to i32
  %49 = and i16 %3, -4096
  %50 = icmp eq i16 %49, 16384
  br i1 %50, label %51, label %144

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %53 = load ptr, ptr %52, align 64
  %54 = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %1, i32 -124
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 131072
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %144, label %62

62:                                               ; preds = %57, %51
  %63 = icmp eq ptr %4, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.dx_hash_info, ptr %6, i32 0, i32 2
  store i32 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 33
  %67 = getelementptr inbounds %struct.dx_hash_info, ptr %6, i32 0, i32 3
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.qstr, ptr %4, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.anon.4, ptr %4, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = call i32 @ext4fs_dirhash(ptr noundef %1, ptr noundef %69, i32 noundef %71, ptr noundef nonnull %6) #10
  %73 = load i32, ptr %6, align 4
  br label %76

74:                                               ; preds = %62
  %75 = tail call i32 @prandom_u32() #10
  br label %76

76:                                               ; preds = %74, %64
  %77 = phi i32 [ %73, %64 ], [ %75, %74 ]
  %78 = urem i32 %77, %23
  br i1 %34, label %203, label %79

79:                                               ; preds = %117, %76
  %80 = phi i32 [ %120, %117 ], [ -1, %76 ]
  %81 = phi i32 [ %119, %117 ], [ %15, %76 ]
  %82 = phi i32 [ %118, %117 ], [ %77, %76 ]
  %83 = phi i32 [ %121, %117 ], [ 0, %76 ]
  %84 = add i32 %83, %78
  %85 = urem i32 %84, %23
  br i1 %19, label %86, label %97

86:                                               ; preds = %79
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %87 = load ptr, ptr %9, align 4
  %88 = getelementptr inbounds %struct.ext4_sb_info, ptr %87, i32 0, i32 111
  %89 = load volatile ptr, ptr %88, align 8
  %90 = getelementptr ptr, ptr %89, i32 %85
  %91 = load ptr, ptr %90, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %92 = getelementptr inbounds %struct.flex_groups, ptr %91, i32 0, i32 1
  %93 = load volatile i32, ptr %92, align 4
  %94 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %91, ptr elementtype(i64) %91) #10, !srcloc !33
  %95 = getelementptr inbounds %struct.flex_groups, ptr %91, i32 0, i32 2
  %96 = load volatile i32, ptr %95, align 4
  br label %105

97:                                               ; preds = %79
  %98 = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %85, ptr noundef null) #10
  %99 = icmp eq ptr %98, null
  br i1 %99, label %117, label %100

100:                                              ; preds = %97
  %101 = call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %98) #10
  %102 = call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef nonnull %98) #10
  %103 = zext i32 %102 to i64
  %104 = call i32 @ext4_used_dirs_count(ptr noundef %0, ptr noundef nonnull %98) #10
  br label %105

105:                                              ; preds = %100, %86
  %106 = phi i64 [ %94, %86 ], [ %103, %100 ]
  %107 = phi i32 [ %93, %86 ], [ %101, %100 ]
  %108 = phi i32 [ %96, %86 ], [ %104, %100 ]
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %105
  %111 = icmp uge i32 %108, %81
  %112 = icmp ult i32 %107, %30
  %113 = select i1 %111, i1 true, i1 %112
  %114 = icmp ult i64 %106, %44
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %110, %105, %97
  %118 = phi i32 [ %82, %110 ], [ %85, %116 ], [ %82, %105 ], [ %82, %97 ]
  %119 = phi i32 [ %81, %110 ], [ %108, %116 ], [ %81, %105 ], [ %81, %97 ]
  %120 = phi i32 [ %80, %110 ], [ 0, %116 ], [ %80, %105 ], [ %80, %97 ]
  %121 = add nuw i32 %83, 1
  %122 = icmp eq i32 %121, %23
  br i1 %122, label %123, label %79

123:                                              ; preds = %117
  %124 = icmp eq i32 %120, 0
  br i1 %124, label %125, label %203

125:                                              ; preds = %191, %123
  %126 = phi i32 [ %118, %123 ], [ %171, %191 ]
  %127 = icmp eq i32 %17, 0
  br i1 %127, label %225, label %128

128:                                              ; preds = %125
  %129 = shl i32 %126, %17
  %130 = call i32 @llvm.usub.sat.i32(i32 %12, i32 %129)
  br label %131

131:                                              ; preds = %141, %128
  %132 = phi i32 [ 0, %128 ], [ %142, %141 ]
  %133 = add nuw i32 %132, %129
  %134 = icmp eq i32 %132, %130
  br i1 %134, label %203, label %135

135:                                              ; preds = %131
  %136 = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %133, ptr noundef null) #10
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %136) #10
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %225

141:                                              ; preds = %138, %135
  %142 = add nuw i32 %132, 1
  %143 = icmp eq i32 %142, %18
  br i1 %143, label %203, label %131

144:                                              ; preds = %57, %43
  %145 = udiv i32 %48, %23
  %146 = sdiv i32 %15, 16
  %147 = add i32 %145, %146
  %148 = shl i32 %15, %17
  %149 = sdiv i32 %148, -4
  %150 = add i32 %30, %149
  %151 = tail call i32 @llvm.smax.i32(i32 %150, i32 1)
  %152 = getelementptr i8, ptr %1, i32 464
  %153 = load i32, ptr %152, align 8
  %154 = icmp eq i32 %153, -1
  %155 = xor i1 %19, true
  %156 = select i1 %154, i1 true, i1 %155
  %157 = select i1 %154, i32 %25, i32 %153
  %158 = lshr i32 %153, %17
  %159 = select i1 %156, i32 %157, i32 %158
  br i1 %34, label %203, label %160

160:                                              ; preds = %144
  %161 = trunc i64 %44 to i32
  %162 = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = shl i32 %163, %17
  %165 = lshr i32 %164, 2
  %166 = sub i32 %161, %165
  %167 = sext i32 %166 to i64
  br label %168

168:                                              ; preds = %200, %160
  %169 = phi i32 [ 0, %160 ], [ %201, %200 ]
  %170 = add i32 %169, %159
  %171 = urem i32 %170, %23
  br i1 %19, label %172, label %183

172:                                              ; preds = %168
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %173 = load ptr, ptr %9, align 4
  %174 = getelementptr inbounds %struct.ext4_sb_info, ptr %173, i32 0, i32 111
  %175 = load volatile ptr, ptr %174, align 8
  %176 = getelementptr ptr, ptr %175, i32 %171
  %177 = load ptr, ptr %176, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %178 = getelementptr inbounds %struct.flex_groups, ptr %177, i32 0, i32 1
  %179 = load volatile i32, ptr %178, align 4
  %180 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %177, ptr elementtype(i64) %177) #10, !srcloc !33
  %181 = getelementptr inbounds %struct.flex_groups, ptr %177, i32 0, i32 2
  %182 = load volatile i32, ptr %181, align 4
  br label %191

183:                                              ; preds = %168
  %184 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %171, ptr noundef null) #10
  %185 = icmp eq ptr %184, null
  br i1 %185, label %200, label %186

186:                                              ; preds = %183
  %187 = tail call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %184) #10
  %188 = tail call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef nonnull %184) #10
  %189 = zext i32 %188 to i64
  %190 = tail call i32 @ext4_used_dirs_count(ptr noundef %0, ptr noundef nonnull %184) #10
  br label %191

191:                                              ; preds = %186, %172
  %192 = phi i64 [ %180, %172 ], [ %189, %186 ]
  %193 = phi i32 [ %179, %172 ], [ %187, %186 ]
  %194 = phi i32 [ %182, %172 ], [ %190, %186 ]
  %195 = icmp uge i32 %194, %147
  %196 = icmp ult i32 %193, %151
  %197 = select i1 %195, i1 true, i1 %196
  %198 = icmp ult i64 %192, %167
  %199 = select i1 %197, i1 true, i1 %198
  br i1 %199, label %200, label %125

200:                                              ; preds = %191, %183
  %201 = add nuw i32 %169, 1
  %202 = icmp eq i32 %201, %23
  br i1 %202, label %203, label %168

203:                                              ; preds = %200, %144, %141, %131, %123, %76
  %204 = udiv i32 %29, %12
  %205 = icmp eq i32 %12, 0
  br label %206

206:                                              ; preds = %223, %203
  %207 = phi i32 [ %204, %203 ], [ 0, %223 ]
  %208 = load i32, ptr %7, align 8
  br i1 %205, label %223, label %209

209:                                              ; preds = %220, %206
  %210 = phi i32 [ %221, %220 ], [ 0, %206 ]
  %211 = add i32 %210, %208
  %212 = urem i32 %211, %12
  %213 = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %212, ptr noundef null) #10
  %214 = icmp eq ptr %213, null
  br i1 %214, label %220, label %215

215:                                              ; preds = %209
  %216 = call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %213) #10
  %217 = icmp eq i32 %216, 0
  %218 = icmp ult i32 %216, %207
  %219 = select i1 %217, i1 true, i1 %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %215, %209
  %221 = add nuw i32 %210, 1
  %222 = icmp eq i32 %221, %12
  br i1 %222, label %223, label %209

223:                                              ; preds = %220, %206
  %224 = icmp eq i32 %207, 0
  br i1 %224, label %227, label %206

225:                                              ; preds = %215, %138, %125
  %226 = phi i32 [ %126, %125 ], [ %212, %215 ], [ %133, %138 ]
  store i32 %226, ptr %2, align 4
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi i32 [ 0, %225 ], [ -1, %223 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i32 %228
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_inode_bit(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 4
  %10 = load i32, ptr %9, align 16
  %11 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %3, align 4
  %14 = tail call i32 @_find_next_zero_bit_le(ptr noundef %12, i32 noundef %10, i32 noundef %13) #10
  store i32 %14, ptr %3, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 16
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %4
  %20 = icmp eq ptr %8, null
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %22 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  br i1 %20, label %30, label %91

23:                                               ; preds = %79
  %24 = load ptr, ptr %11, align 4
  %25 = tail call i32 @_find_next_zero_bit_le(ptr noundef %24, i32 noundef %84, i32 noundef %81) #10
  store i32 %25, ptr %3, align 4
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 4
  %28 = load i32, ptr %27, align 16
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %23, %19
  %31 = phi ptr [ %26, %23 ], [ %15, %19 ]
  %32 = phi i32 [ %25, %23 ], [ %14, %19 ]
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %1, ptr noundef null) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %91, label %37, !prof !23

37:                                               ; preds = %30
  %38 = tail call i64 @ext4_inode_table(ptr noundef %0, ptr noundef nonnull %35) #10
  %39 = freeze i32 %32
  %40 = freeze i32 %34
  %41 = sdiv i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = add i64 %38, %42
  %44 = load ptr, ptr %21, align 4
  %45 = load i32, ptr %22, align 16
  %46 = tail call ptr @__find_get_block(ptr noundef %44, i64 noundef %43, i32 noundef %45) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %91, label %48

48:                                               ; preds = %37
  %49 = load volatile i32, ptr %46, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = mul i32 %41, %40
  %54 = sub i32 %39, %53
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 29
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %57, %54
  %59 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 %58
  %62 = getelementptr inbounds %struct.ext4_inode, ptr %61, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = tail call i64 @ktime_get_real_seconds() #10
  %65 = trunc i64 %64 to i32
  %66 = load volatile i32, ptr %46, align 4
  %67 = icmp ne i32 %63, 0
  %68 = sub i32 %63, %65
  %69 = icmp slt i32 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %72, label %71

71:                                               ; preds = %52, %48
  tail call void @__brelse(ptr noundef nonnull %46) #10
  br label %91

72:                                               ; preds = %52
  %73 = and i32 %66, 2
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 -60, i32 -360
  %76 = sub i32 %65, %63
  %77 = add i32 %76, %75
  tail call void @__brelse(ptr noundef nonnull %46) #10
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %91, label %79

79:                                               ; preds = %72
  %80 = load i32, ptr %3, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %3, align 4
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr inbounds %struct.ext4_sb_info, ptr %82, i32 0, i32 4
  %84 = load i32, ptr %83, align 16
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %23, label %86

86:                                               ; preds = %79, %23, %4
  %87 = phi i32 [ %17, %4 ], [ %28, %23 ], [ %84, %79 ]
  %88 = phi i32 [ %10, %4 ], [ %80, %79 ], [ %80, %23 ]
  %89 = icmp ult i32 %88, %87
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 %88, ptr %3, align 4
  br label %91

91:                                               ; preds = %90, %86, %72, %71, %37, %30, %19
  %92 = phi i32 [ 1, %90 ], [ 0, %86 ], [ 1, %71 ], [ 1, %19 ], [ 1, %37 ], [ 1, %30 ], [ 1, %72 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_inode_flags(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_has_metadata_csum(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 119
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %25, !prof !23

17:                                               ; preds = %10
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 3289, i32 noundef 9, ptr noundef null) #10
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_super_block, ptr %20, i32 0, i32 30
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17, %10
  %26 = phi ptr [ %18, %17 ], [ %3, %10 ]
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 119
  %28 = load ptr, ptr %27, align 8
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %25, %17, %1
  %32 = phi i32 [ 0, %17 ], [ %30, %25 ], [ 0, %1 ]
  ret i32 %32
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_chksum(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = alloca %struct.anon.87, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 119
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 64
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %10, label %9, !prof !14

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #10, !srcloc !34
  unreachable

10:                                               ; preds = %3
  store ptr %6, ptr %4, align 8
  %11 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 1
  store i32 %1, ptr %11, align 8
  %12 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef %2, i32 noundef 4) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !14

14:                                               ; preds = %10
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #10, !srcloc !35
  unreachable

15:                                               ; preds = %10
  %16 = load i32, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_allocate_inode(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_allocate_inode, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  %18 = tail call i32 @__traceiter_ext4_allocate_inode(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br label %19

19:                                               ; preds = %17, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ext4_orphan_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 30
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, %1
  %11 = icmp ult i32 %7, %1
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1419, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %1) #10
  br label %94

14:                                               ; preds = %2
  %15 = add i32 %1, -1
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 4
  %17 = load i32, ptr %16, align 16
  %18 = freeze i32 %17
  %19 = udiv i32 %15, %18
  %20 = mul i32 %19, %18
  %21 = sub i32 %15, %20
  %22 = tail call fastcc ptr @ext4_read_inode_bitmap(ptr noundef %0, i32 noundef %19)
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %94, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = lshr i32 %21, 5
  %28 = getelementptr i32, ptr %26, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %21, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %24
  %35 = tail call ptr @__ext4_iget(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1393) #10
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = ptrtoint ptr %35 to i32
  %39 = sub i32 0, %38
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1398, i1 noundef zeroext false, i32 noundef %39, i64 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %38) #10
  %40 = icmp eq ptr %22, null
  br i1 %40, label %94, label %41

41:                                               ; preds = %37
  tail call void @__brelse(ptr noundef nonnull %22) #10
  br label %94

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 11
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @ext4_can_truncate(ptr noundef %35) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46, %42
  %50 = tail call zeroext i1 @is_bad_inode(ptr noundef %35) #10
  br i1 %50, label %58, label %51

51:                                               ; preds = %49
  %52 = getelementptr i8, ptr %35, i32 -148
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, %7
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = icmp eq ptr %22, null
  br i1 %56, label %94, label %57

57:                                               ; preds = %55
  tail call void @__brelse(ptr noundef nonnull %22) #10
  br label %94

58:                                               ; preds = %51, %49, %46
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1419, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %1) #10
  %59 = icmp eq ptr %22, null
  br i1 %59, label %62, label %64

60:                                               ; preds = %24
  tail call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_orphan_get, i32 noundef 1419, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %1) #10
  %61 = icmp eq ptr %22, null
  br i1 %61, label %94, label %64

62:                                               ; preds = %58
  %63 = icmp eq ptr %35, null
  br i1 %63, label %94, label %75

64:                                               ; preds = %60, %58
  %65 = phi ptr [ null, %60 ], [ %35, %58 ]
  %66 = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 3
  %67 = load i64, ptr %66, align 8
  %68 = load ptr, ptr %25, align 4
  %69 = getelementptr i32, ptr %68, i32 %27
  %70 = load volatile i32, ptr %69, align 4
  %71 = lshr i32 %70, %30
  %72 = and i32 %71, 1
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %21, i64 noundef %67, i32 noundef %72) #11
  %74 = icmp eq ptr %65, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %64, %62
  %76 = phi i1 [ false, %64 ], [ true, %62 ]
  %77 = phi ptr [ %65, %64 ], [ %35, %62 ]
  %78 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %77) #10
  %79 = zext i1 %78 to i32
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %79) #11
  %81 = getelementptr i8, ptr %77, i32 -148
  %82 = load i32, ptr %81, align 4
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %82) #11
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %7) #11
  %85 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 11
  %86 = load i32, ptr %85, align 8
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %86) #11
  %88 = load i32, ptr %85, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %75
  %91 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 21
  store i64 0, ptr %91, align 8
  br label %92

92:                                               ; preds = %90, %75
  tail call void @iput(ptr noundef nonnull %77) #10
  br i1 %76, label %94, label %93

93:                                               ; preds = %92, %64
  tail call void @__brelse(ptr noundef nonnull %22) #10
  br label %94

94:                                               ; preds = %93, %92, %62, %60, %57, %55, %41, %37, %14, %13
  %95 = phi ptr [ %22, %14 ], [ %35, %37 ], [ %35, %41 ], [ %35, %55 ], [ %35, %57 ], [ inttoptr (i32 -117 to ptr), %92 ], [ inttoptr (i32 -117 to ptr), %13 ], [ inttoptr (i32 -117 to ptr), %93 ], [ inttoptr (i32 -117 to ptr), %62 ], [ inttoptr (i32 -117 to ptr), %60 ]
  ret ptr %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_can_truncate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_count_free_inodes(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %16, %1
  %8 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %9 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %10 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %9, ptr noundef null) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @ext4_free_inodes_count(ptr noundef %0, ptr noundef nonnull %10) #10
  %14 = add i32 %13, %8
  %15 = tail call i32 @__cond_resched() #10
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i32 [ %14, %12 ], [ %8, %7 ]
  %18 = add nuw i32 %9, 1
  %19 = icmp eq i32 %18, %5
  br i1 %19, label %20, label %7

20:                                               ; preds = %16, %1
  %21 = phi i32 [ 0, %1 ], [ %17, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_count_dirs(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %15, %1
  %8 = phi i32 [ %17, %15 ], [ 0, %1 ]
  %9 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %10 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %8, ptr noundef null) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @ext4_used_dirs_count(ptr noundef %0, ptr noundef nonnull %10) #10
  %14 = add i32 %13, %9
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %14, %12 ], [ %9, %7 ]
  %17 = add nuw i32 %8, 1
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %19, label %7

19:                                               ; preds = %15, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_init_inode_table(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 32
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %11, label %10, !prof !14

10:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3364, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 28
  %13 = load i32, ptr %12, align 64
  %14 = lshr i32 %1, %13
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = and i32 %17, %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 58
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr ptr, ptr %21, i32 %14
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %24 = getelementptr ptr, ptr %23, i32 %18
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !11
  %27 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %130

31:                                               ; preds = %11
  %32 = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %130, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ext4_group_desc, ptr %32, i32 0, i32 6
  %36 = load i16, ptr %35, align 2
  %37 = and i16 %36, 4
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %130

39:                                               ; preds = %34
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 3
  %44 = call ptr @__ext4_journal_start_sb(ptr noundef %0, i32 noundef 1542, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %43) #10
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = ptrtoint ptr %44 to i32
  br label %130

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.ext4_group_info, ptr %25, i32 0, i32 8
  call void @down_write(ptr noundef %49) #10
  %50 = load i16, ptr %35, align 2
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %48
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr inbounds %struct.ext4_sb_info, ptr %54, i32 0, i32 4
  %56 = load i32, ptr %55, align 16
  %57 = call i32 @ext4_itable_unused_count(ptr noundef %0, ptr noundef nonnull %32) #10
  %58 = sub i32 %56, %57
  %59 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, -1
  %62 = add i32 %61, %58
  %63 = udiv i32 %62, %60
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %63, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %53
  %70 = call i32 @ext4_itable_unused_count(ptr noundef %0, ptr noundef nonnull %32) #10
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1565, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %63, i32 noundef %70) #10
  br label %127

71:                                               ; preds = %65
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 4
  %74 = load i32, ptr %73, align 16
  %75 = mul i32 %74, %1
  %76 = add i32 %75, %58
  %77 = icmp eq i32 %63, %67
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.ext4_sb_info, ptr %72, i32 0, i32 30
  %80 = load i32, ptr %79, align 8
  %81 = icmp ult i32 %76, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @ext4_itable_unused_count(ptr noundef %0, ptr noundef nonnull %32) #10
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1581, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %1, i32 noundef %83, i32 noundef %76) #10
  br label %127

84:                                               ; preds = %78, %71, %48
  %85 = phi i32 [ 0, %48 ], [ %63, %78 ], [ %63, %71 ]
  %86 = call i64 @ext4_inode_table(ptr noundef %0, ptr noundef nonnull %32) #10
  %87 = zext i32 %85 to i64
  %88 = add i64 %86, %87
  %89 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = sub i32 %90, %85
  %92 = load ptr, ptr %4, align 4
  %93 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1592, ptr noundef %44, ptr noundef %0, ptr noundef %92, i32 noundef 1) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %84
  %96 = icmp eq i32 %90, %85
  br i1 %96, label %115, label %97, !prof !23

97:                                               ; preds = %95
  %98 = sext i32 %91 to i64
  %99 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %102 = load i8, ptr %101, align 4
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %103, -9
  %105 = zext i32 %104 to i64
  %106 = shl i64 %88, %105
  %107 = shl i64 %98, %105
  %108 = call i32 @blkdev_issue_zeroout(ptr noundef %100, i64 noundef %106, i64 noundef %107, i32 noundef 3136, i32 noundef 0) #10
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %127, label %110

110:                                              ; preds = %97
  %111 = icmp eq i32 %2, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr %99, align 4
  %114 = call i32 @blkdev_issue_flush(ptr noundef %113) #10
  br label %115

115:                                              ; preds = %112, %110, %95
  call fastcc void @ext4_lock_group(ptr noundef %0, i32 noundef %1)
  %116 = load i16, ptr %35, align 2
  %117 = or i16 %116, 4
  store i16 %117, ptr %35, align 2
  call void @ext4_group_desc_csum_set(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %32) #10
  %118 = load ptr, ptr %5, align 4
  %119 = getelementptr inbounds %struct.ext4_sb_info, ptr %118, i32 0, i32 41
  %120 = load ptr, ptr %119, align 16
  %121 = and i32 %1, 63
  %122 = getelementptr [64 x %struct.bgl_lock], ptr %120, i32 0, i32 %121
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %123 = load i16, ptr %122, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %122, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %125 = load ptr, ptr %4, align 4
  %126 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1621, ptr noundef %44, ptr noundef null, ptr noundef %125) #10
  br label %127

127:                                              ; preds = %115, %97, %84, %82, %69
  %128 = phi i32 [ %93, %84 ], [ %126, %115 ], [ %108, %97 ], [ 1, %69 ], [ 1, %82 ]
  call void @up_write(ptr noundef %49) #10
  %129 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_init_inode_table, i32 noundef 1625, ptr noundef %44) #10
  br label %130

130:                                              ; preds = %127, %46, %34, %31, %11
  %131 = phi i32 [ 0, %34 ], [ %47, %46 ], [ %128, %127 ], [ 0, %31 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_free_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ext4_load_inode_bitmap(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_load_inode_bitmap, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  %17 = tail call i32 @__traceiter_ext4_load_inode_bitmap(ptr noundef null, ptr noundef %0, i32 noundef %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_load_inode_bitmap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_bitmap_csum_verify(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_request_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4fs_dirhash(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_free_group_clusters(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_allocate_inode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 2152570966}
!9 = !{i64 445251, i64 2147935222, i64 2147935248, i64 2147935295, i64 2147935317, i64 2147935345, i64 2147935365}
!10 = !{i64 2147948994, i64 2147949020, i64 2147949049, i64 2147949083, i64 2147949114, i64 2147949137}
!11 = !{!"auto-init"}
!12 = !{i64 2154107055}
!13 = !{i64 2154107207}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153823328, i64 2153823808, i64 2153823365, i64 2153823421, i64 2153823455, i64 2153823479, i64 2153823520, i64 2153823541, i64 2153823569, i64 2153823603}
!16 = !{i64 2149216218}
!17 = !{i64 2149216435}
!18 = !{i64 2149063514}
!19 = !{i64 2149059338}
!20 = !{i64 2149059413, i64 2149059440, i64 2149059487, i64 2149059509, i64 2149059537, i64 2149059557}
!21 = !{i64 2149086517}
!22 = !{i64 2147946637, i64 2147946663, i64 2147946692, i64 2147946726, i64 2147946757, i64 2147946780}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2147955099, i64 2147955131, i64 2147955160, i64 2147955194, i64 2147955225, i64 2147955248}
!25 = !{i64 2148056415}
!26 = !{i64 431820, i64 431845, i64 431867, i64 431883, i64 431895, i64 431915, i64 431939, i64 431955, i64 431967}
!27 = !{i64 2147946270}
!28 = !{i64 2153833087}
!29 = !{i64 2154123123}
!30 = !{i64 2154123289}
!31 = !{i64 2156170075, i64 2156170557, i64 2156170112, i64 2156170168, i64 2156170202, i64 2156170226, i64 2156170267, i64 2156170288, i64 2156170316, i64 2156170350}
!32 = !{i64 2147743479, i64 2147743759, i64 2147744093, i64 2147744427}
!33 = !{i64 434865, i64 434886}
!34 = !{i64 2153809704, i64 2153810184, i64 2153809741, i64 2153809797, i64 2153809831, i64 2153809855, i64 2153809896, i64 2153809917, i64 2153809945, i64 2153809979}
!35 = !{i64 2153810782, i64 2153811262, i64 2153810819, i64 2153810875, i64 2153810909, i64 2153810933, i64 2153810974, i64 2153810995, i64 2153811023, i64 2153811057}
!36 = !{i64 2154143857}
!37 = !{i64 2154144039}
!38 = !{i64 2154936977}
!39 = !{i64 2154937151}
