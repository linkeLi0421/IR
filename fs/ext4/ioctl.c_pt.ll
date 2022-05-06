; ModuleID = '/llk/IR/fs/ext4/ioctl.c_pt.bc'
source_filename = "../fs/ext4/ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.anon.73 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.jbd2_journal_handle = type { %union.anon.74, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.74 = type { ptr }
%struct.fiemap = type { i64, i64, i32, i32, i32, i32, [0 x %struct.fiemap_extent] }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%struct.fiemap_extent_info = type { i32, i32, i32, ptr }
%struct.getfsmap_info = type { ptr, ptr, i32, i32 }
%struct.ext4_fsmap_head = type { i32, i32, i32, i32, [2 x %struct.ext4_fsmap] }
%struct.ext4_fsmap = type { %struct.list_head, i32, i32, i64, i64, i64 }
%struct.fsmap_head = type { i32, i32, i32, i32, [6 x i64], [2 x %struct.fsmap], [0 x %struct.fsmap] }
%struct.fsmap = type { i32, i32, i64, i64, i64, i64, [3 x i64] }
%struct.move_extent = type { i32, i32, i64, i64, i64, i64 }
%struct.ext4_new_group_data = type { i32, i64, i64, i64, i32, i16, i16, i32 }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@__func__.ext4_ioctl_setflags = private unnamed_addr constant [20 x i8] c"ext4_ioctl_setflags\00", align 1
@__func__.__ext4_ioctl = private unnamed_addr constant [13 x i8] c"__ext4_ioctl\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Setting inode version is not supported with metadata_csum enabled.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Online resizing not supported with bigalloc\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Online defrag not supported with bigalloc\00", align 1
@__tracepoint_ext4_getfsmap_low_key = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_ext4_getfsmap_high_key = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_getfsmap_mapping = external dso_local global %struct.tracepoint, align 4
@__func__.swap_inode_boot_loader = private unnamed_addr constant [23 x i8] c"swap_inode_boot_loader\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"couldn't mark inode #%lu dirty (err %d)\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\011\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"shut down requested (%d)\00", align 1
@__tracepoint_ext4_shutdown = external dso_local global %struct.tracepoint, align 4
@ext4_ioctl_checkpoint._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ext4_ioctl_checkpoint = private unnamed_addr constant [22 x i8] c"ext4_ioctl_checkpoint\00", align 1
@.str.12 = private unnamed_addr constant [83 x i8] c"\016warning: checkpointing journal with EXT4_IOC_CHECKPOINT_FLAG_ZEROOUT can be slow\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"Can't modify superblock whileperforming online resize\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Failed to update primary superblock\00", align 1
@__func__.ext4_update_superblocks_fn = private unnamed_addr constant [27 x i8] c"ext4_update_superblocks_fn\00", align 1
@__func__.ext4_update_primary_sb = private unnamed_addr constant [23 x i8] c"ext4_update_primary_sb\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"previous I/O error to superblock detected\00", align 1
@__tracepoint_ext4_update_sb = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_update_backup_sb = private unnamed_addr constant [22 x i8] c"ext4_update_backup_sb\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Invalid checksum for backup superblock %llu\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_reset_inode_seed(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.73, align 8
  %3 = alloca %struct.anon.73, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 30
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %67, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 119
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %38, !prof !8

27:                                               ; preds = %20
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ext4_super_block, ptr %30, i32 0, i32 30
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 119
  %37 = load ptr, ptr %36, align 8
  br label %38

38:                                               ; preds = %35, %20
  %39 = phi ptr [ %37, %35 ], [ %22, %20 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %67, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 120
  %43 = load i32, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !9
  %44 = load ptr, ptr %21, align 8
  %45 = load i32, ptr %44, align 64
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %48, label %47, !prof !10

47:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

48:                                               ; preds = %41
  store ptr %44, ptr %3, align 8
  %49 = getelementptr inbounds %struct.anon.73, ptr %3, i32 0, i32 1
  store i32 %43, ptr %49, align 8
  %50 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 4) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !10

52:                                               ; preds = %48
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #9, !srcloc !12
  unreachable

53:                                               ; preds = %48
  %54 = load i32, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #9, !annotation !9
  %55 = load ptr, ptr %21, align 8
  %56 = load i32, ptr %55, align 64
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %59, label %58, !prof !10

58:                                               ; preds = %53
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

59:                                               ; preds = %53
  store ptr %55, ptr %2, align 8
  %60 = getelementptr inbounds %struct.anon.73, ptr %2, i32 0, i32 1
  store i32 %54, ptr %60, align 8
  %61 = call i32 @crypto_shash_update(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 4) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63, !prof !10

63:                                               ; preds = %59
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #9, !srcloc !12
  unreachable

64:                                               ; preds = %59
  %65 = load i32, ptr %60, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %66 = getelementptr i8, ptr %0, i32 528
  store i32 %65, ptr %66, align 8
  br label %67

67:                                               ; preds = %64, %38, %27, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_fileattr_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -124
  %6 = load i32, ptr %5, align 4
  %7 = load i16, ptr %4, align 8
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, -32768
  %10 = select i1 %9, i32 1381752831, i32 1918623743
  %11 = and i32 %10, %6
  tail call void @fileattr_fill_flags(ptr noundef %1, i32 noundef %11) #9
  %12 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_super_block, ptr %17, i32 0, i32 30
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 8192
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = getelementptr i8, ptr %4, i32 532
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fileattr, ptr %1, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_fileattr_set(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ext4_iloc, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, -1918623744
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %204

11:                                               ; preds = %3
  %12 = and i32 %8, 1649131775
  %13 = load i16, ptr %7, align 8
  %14 = and i16 %13, -4096
  switch i16 %14, label %15 [
    i16 16384, label %20
    i16 -32768, label %16
  ]

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ 192, %15 ], [ 38322431, %11 ]
  %18 = and i32 %8, %17
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %20, label %204

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %7, i32 -124
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %8, 16
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  br label %50

31:                                               ; preds = %20
  %32 = xor i32 %24, %12
  %33 = and i32 %32, -17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %204

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 27
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ext4_super_block, ptr %41, i32 0, i32 30
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 8192
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = getelementptr i8, ptr %7, i32 532
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %22
  br i1 %49, label %50, label %204

50:                                               ; preds = %46, %35, %28
  %51 = phi ptr [ %30, %28 ], [ %37, %35 ], [ %37, %46 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #9, !annotation !9
  %52 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %53 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 32
  %56 = icmp ne i32 %55, 0
  %57 = load i32, ptr %23, align 4
  %58 = and i32 %57, 2097152
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %56, i1 %59, i1 false
  br i1 %60, label %195, label %61

61:                                               ; preds = %50
  %62 = xor i32 %57, %12
  %63 = and i32 %62, 16384
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call zeroext i1 @capable(i32 noundef 24) #9
  br i1 %66, label %67, label %195

67:                                               ; preds = %65, %61
  %68 = load i16, ptr %7, align 8
  %69 = and i16 %68, -4096
  %70 = icmp eq i16 %69, 16384
  %71 = and i32 %57, -268435457
  %72 = select i1 %70, i32 %71, i32 %57
  %73 = and i32 %8, 33554432
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = and i32 %72, 269502464
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %195

78:                                               ; preds = %75
  %79 = getelementptr i8, ptr %7, i32 -128
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 1024
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %195

83:                                               ; preds = %78, %67
  %84 = and i32 %8, 16384
  %85 = icmp eq i32 %84, 0
  %86 = and i32 %72, 33554432
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %89, label %195

89:                                               ; preds = %83
  %90 = and i32 %62, 524288
  %91 = icmp eq i32 %90, 0
  %92 = xor i1 %91, true
  %93 = and i32 %62, 1073741824
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 27
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.ext4_sb_info, ptr %97, i32 0, i32 15
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.ext4_super_block, ptr %99, i32 0, i32 29
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 131072
  %103 = icmp eq i32 %102, 0
  %104 = xor i1 %70, true
  %105 = select i1 %103, i1 true, i1 %104
  %106 = select i1 %103, i32 -95, i32 -20
  br i1 %105, label %195, label %107

107:                                              ; preds = %95
  %108 = tail call zeroext i1 @ext4_empty_dir(ptr noundef %7) #9
  br i1 %108, label %109, label %195

109:                                              ; preds = %107
  %110 = load i16, ptr %7, align 8
  br label %111

111:                                              ; preds = %109, %89
  %112 = phi i16 [ %110, %109 ], [ %68, %89 ]
  %113 = and i16 %112, -4096
  %114 = icmp eq i16 %113, -32768
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load i32, ptr %53, align 4
  %117 = and i32 %116, 8
  %118 = icmp ne i32 %117, 0
  %119 = icmp eq i32 %25, 0
  %120 = or i1 %119, %118
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  tail call void @inode_dio_wait(ptr noundef %7) #9
  %122 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %123 = load ptr, ptr %122, align 8
  %124 = tail call i32 @filemap_write_and_wait_range(ptr noundef %123, i64 noundef 0, i64 noundef 9223372036854775807) #9
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %195

126:                                              ; preds = %121, %115, %111
  %127 = load ptr, ptr %52, align 4
  %128 = getelementptr inbounds %struct.super_block, ptr %127, i32 0, i32 27
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.ext4_sb_info, ptr %129, i32 0, i32 11
  %131 = load i32, ptr %130, align 4
  %132 = shl i32 %131, 3
  %133 = tail call ptr @__ext4_journal_start_sb(ptr noundef %127, i32 noundef 643, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %132) #9
  %134 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = ptrtoint ptr %133 to i32
  br label %197

137:                                              ; preds = %126
  %138 = load ptr, ptr %52, align 4
  %139 = getelementptr inbounds %struct.super_block, ptr %138, i32 0, i32 10
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 16
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, ptr %53, align 4
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  %147 = icmp ult ptr %133, inttoptr (i32 4096 to ptr)
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %155, label %151

149:                                              ; preds = %137
  %150 = icmp ult ptr %133, inttoptr (i32 4096 to ptr)
  br i1 %150, label %155, label %151

151:                                              ; preds = %149, %143
  %152 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %133, i32 0, i32 7
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %153, 1
  store i32 %154, ptr %152, align 4
  br label %155

155:                                              ; preds = %151, %149, %143
  %156 = call i32 @ext4_reserve_inode_write(ptr noundef %133, ptr noundef %7, ptr noundef nonnull %4) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ioctl_setflags, i32 noundef 674, ptr noundef %133) #9
  br label %195

160:                                              ; preds = %155
  call fastcc void @ext4_dax_dontcache(ptr noundef %7, i32 noundef %12) #9
  br label %161

161:                                              ; preds = %172, %160
  %162 = phi i32 [ 0, %160 ], [ %173, %172 ]
  %163 = phi i32 [ 1, %160 ], [ %174, %172 ]
  %164 = and i32 %163, 1649131775
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %161
  switch i32 %163, label %167 [
    i32 524288, label %172
    i32 16384, label %172
  ]

167:                                              ; preds = %166
  %168 = and i32 %163, %12
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  call void @_set_bit(i32 noundef %162, ptr noundef %23) #9
  br label %172

171:                                              ; preds = %167
  call void @_clear_bit(i32 noundef %162, ptr noundef %23) #9
  br label %172

172:                                              ; preds = %171, %170, %166, %166, %161
  %173 = add nuw nsw i32 %162, 1
  %174 = shl i32 %163, 1
  %175 = icmp eq i32 %173, 32
  br i1 %175, label %176, label %161

176:                                              ; preds = %172
  call void @ext4_set_inode_flags(ptr noundef %7, i1 noundef zeroext false) #9
  %177 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %7) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %177, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %178 = call i32 @ext4_mark_iloc_dirty(ptr noundef %133, ptr noundef %7, ptr noundef nonnull %4) #9
  %179 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ioctl_setflags, i32 noundef 674, ptr noundef %133) #9
  %180 = icmp eq i32 %178, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %176
  br i1 %64, label %186, label %182

182:                                              ; preds = %181
  %183 = call i32 @ext4_change_inode_journal_flag(ptr noundef %7, i32 noundef %84) #9
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i1 %92, i1 false
  br i1 %185, label %188, label %197

186:                                              ; preds = %181
  br i1 %91, label %187, label %188

187:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %200

188:                                              ; preds = %186, %182
  %189 = and i32 %8, 524288
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %188
  %192 = call i32 @ext4_ext_migrate(ptr noundef %7) #9
  br label %197

193:                                              ; preds = %188
  %194 = call i32 @ext4_ind_migrate(ptr noundef %7) #9
  br label %197

195:                                              ; preds = %176, %158, %121, %107, %95, %83, %78, %75, %65, %50
  %196 = phi i32 [ -1, %50 ], [ -95, %75 ], [ -95, %78 ], [ %156, %158 ], [ -39, %107 ], [ %106, %95 ], [ -95, %83 ], [ -1, %65 ], [ %124, %121 ], [ %178, %176 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  br label %204

197:                                              ; preds = %193, %191, %182, %135
  %198 = phi i32 [ %136, %135 ], [ %192, %191 ], [ %194, %193 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197, %187
  %201 = load i32, ptr %21, align 4
  %202 = icmp eq i32 %201, 0
  %203 = select i1 %202, i32 0, i32 -95
  br label %204

204:                                              ; preds = %200, %197, %195, %46, %31, %16, %3
  %205 = phi i32 [ -95, %3 ], [ -95, %16 ], [ %198, %197 ], [ %203, %200 ], [ -1, %31 ], [ -1, %46 ], [ %196, %195 ]
  ret i32 %205
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [17 x i8], align 1
  %9 = alloca [17 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.fiemap, align 8
  %12 = alloca %struct.fiemap_extent_info, align 4
  %13 = alloca %struct.getfsmap_info, align 4
  %14 = alloca %struct.ext4_fsmap_head, align 8
  %15 = alloca %struct.fsmap_head, align 8
  %16 = alloca %struct.ext4_iloc, align 4
  %17 = alloca %struct.timespec64, align 8
  %18 = alloca %struct.move_extent, align 8
  %19 = alloca %struct.ext4_new_group_data, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.fstrim_range, align 8
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.vfsmount, ptr %27, i32 0, i32 3
  %29 = load volatile ptr, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  switch i32 %1, label %1350 [
    i32 -1061136325, label %30
    i32 -2147195389, label %145
    i32 -2147191295, label %145
    i32 1074030084, label %155
    i32 1074034178, label %155
    i32 1074030087, label %231
    i32 -1071094257, label %282
    i32 1076389384, label %351
    i32 26121, label %451
    i32 26124, label %459
    i32 26129, label %466
    i32 1074292240, label %627
    i32 -1072146311, label %725
    i32 26130, label %779
    i32 -2146671085, label %1351
    i32 1074816532, label %1351
    i32 1074554389, label %1351
    i32 -1073125866, label %1351
    i32 -1068472809, label %1351
    i32 -1069521384, label %1351
    i32 -1069521383, label %1351
    i32 -1065327078, label %1351
    i32 -2146408933, label %1351
    i32 26152, label %781
    i32 1074030121, label %784
    i32 -1071618518, label %807
    i32 -2147198851, label %851
    i32 1082156677, label %1351
    i32 -1073453434, label %1351
    i32 -1071094137, label %1351
    i32 1074030123, label %920
    i32 -2130668495, label %996
    i32 1090556978, label %1032
  ]

30:                                               ; preds = %3
  %31 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9
  %32 = getelementptr inbounds i8, ptr %13, i32 8
  store i64 0, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %14) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %14, i8 0, i32 96, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %15) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %15, i8 0, i32 192, i1 false) #9, !annotation !9
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 192, i32 -1090519040) #10
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44, !prof !10

36:                                               ; preds = %30
  %37 = tail call ptr @llvm.thread.pointer() #9
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #11, !srcloc !14
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %42 = call i32 @arm_copy_from_user(ptr noundef nonnull %15, ptr noundef %31, i32 noundef 192) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !10

44:                                               ; preds = %36, %30
  %45 = phi i32 [ %42, %36 ], [ 192, %30 ]
  %46 = sub i32 192, %45
  %47 = getelementptr i8, ptr %15, i32 %46
  call void @llvm.memset.p0.i32(ptr align 1 %47, i8 0, i32 %45, i1 false) #9
  br label %143

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 4
  %50 = call ptr @memchr_inv(ptr noundef %49, i32 noundef 0, i32 noundef 48) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %143

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 5
  %54 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 5, i32 0, i32 6
  %55 = call ptr @memchr_inv(ptr noundef %54, i32 noundef 0, i32 noundef 24) #9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %143

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 5, i32 1
  %59 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 5, i32 1, i32 6
  %60 = call ptr @memchr_inv(ptr noundef %59, i32 noundef 0, i32 noundef 24) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %143

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 5, i32 0, i32 4
  %64 = load i64, ptr %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %143

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 5, i32 1, i32 4
  %68 = load i64, ptr %67, align 8
  switch i64 %68, label %143 [
    i64 0, label %69
    i64 -1, label %69
  ]

69:                                               ; preds = %66, %66
  %70 = load i32, ptr %15, align 8
  store i32 %70, ptr %14, align 8
  %71 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %14, i32 0, i32 2
  store i32 %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %14, i32 0, i32 4
  call void @ext4_fsmap_to_internal(ptr noundef %25, ptr noundef %74, ptr noundef %53) #9
  %75 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %14, i32 0, i32 4, i32 1
  call void @ext4_fsmap_to_internal(ptr noundef %25, ptr noundef %75, ptr noundef %58) #9
  %76 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_low_key, i32 0, i32 1), align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 5
  %82 = getelementptr i32, ptr @__cpu_online_mask, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %80, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %78
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %89 = call i32 @__traceiter_ext4_getfsmap_low_key(ptr noundef null, ptr noundef %25, ptr noundef %74) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %90

90:                                               ; preds = %88, %78, %69
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_high_key, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 5
  %97 = getelementptr i32, ptr @__cpu_online_mask, i32 %96
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %95, 31
  %100 = shl nuw i32 1, %99
  %101 = and i32 %100, %98
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %93
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %104 = call i32 @__traceiter_ext4_getfsmap_high_key(ptr noundef null, ptr noundef %25, ptr noundef %75) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %105

105:                                              ; preds = %103, %93, %90
  store ptr %25, ptr %13, align 4
  %106 = getelementptr inbounds %struct.getfsmap_info, ptr %13, i32 0, i32 1
  store ptr %31, ptr %106, align 4
  %107 = call i32 @ext4_getfsmap(ptr noundef %25, ptr noundef nonnull %14, ptr noundef nonnull @ext4_getfsmap_format, ptr noundef nonnull %13) #9
  %108 = icmp ult i32 %107, 2
  br i1 %108, label %109, label %143

109:                                              ; preds = %105
  %110 = icmp ne i32 %107, 1
  %111 = load i32, ptr %32, align 4
  %112 = icmp ne i32 %111, 0
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.getfsmap_info, ptr %13, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %116, 32
  store i32 %117, ptr %115, align 4
  %118 = load ptr, ptr %106, align 4
  %119 = add i32 %111, -1
  %120 = getelementptr %struct.fsmap_head, ptr %118, i32 0, i32 6, i32 %119, i32 1
  %121 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %120, i32 4, i32 -1090519040) #10, !srcloc !21
  %122 = extractvalue { i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %114
  %125 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #11, !srcloc !14
  %126 = and i32 %125, -13
  %127 = or i32 %126, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %128 = call i32 @arm_copy_to_user(ptr noundef %120, ptr noundef %115, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %124, %109
  %131 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %14, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 3
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.ext4_fsmap_head, ptr %14, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.fsmap_head, ptr %15, i32 0, i32 1
  store i32 %135, ptr %136, align 4
  %137 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #11, !srcloc !14
  %138 = and i32 %137, -13
  %139 = or i32 %138, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %139) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %140 = call i32 @arm_copy_to_user(ptr noundef %31, ptr noundef nonnull %15, i32 noundef 192) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %137) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 0, i32 -14
  br label %143

143:                                              ; preds = %130, %124, %114, %105, %66, %62, %57, %52, %48, %44
  %144 = phi i32 [ -22, %57 ], [ -22, %52 ], [ -22, %48 ], [ -22, %66 ], [ -22, %62 ], [ %107, %105 ], [ -14, %124 ], [ -14, %44 ], [ -14, %114 ], [ %142, %130 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  br label %1351

145:                                              ; preds = %3, %3
  %146 = inttoptr i32 %2 to ptr
  %147 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 44
  %148 = load i32, ptr %147, align 8
  %149 = tail call ptr @llvm.thread.pointer() #9
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %151 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %150) #11, !srcloc !14
  %152 = and i32 %151, -13
  %153 = or i32 %152, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %154 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %146, i32 %148, i32 -1090519041) #9, !srcloc !22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %151) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  br label %1351

155:                                              ; preds = %3, %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i32 12, i1 false) #9, !annotation !9
  %156 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %29, ptr noundef %23) #9
  br i1 %156, label %157, label %229

157:                                              ; preds = %155
  %158 = load ptr, ptr %24, align 4
  %159 = getelementptr inbounds %struct.super_block, ptr %158, i32 0, i32 27
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.ext4_sb_info, ptr %160, i32 0, i32 15
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.ext4_super_block, ptr %162, i32 0, i32 30
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 1024
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %189, label %167

167:                                              ; preds = %157
  %168 = getelementptr inbounds %struct.ext4_sb_info, ptr %160, i32 0, i32 119
  %169 = load ptr, ptr %168, align 8
  %170 = icmp eq ptr %169, null
  %171 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %172 = xor i1 %171, true
  %173 = select i1 %170, i1 %172, i1 false
  br i1 %173, label %174, label %185, !prof !8

174:                                              ; preds = %167
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %175 = load ptr, ptr %159, align 4
  %176 = getelementptr inbounds %struct.ext4_sb_info, ptr %175, i32 0, i32 15
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.ext4_super_block, ptr %177, i32 0, i32 30
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 1024
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.ext4_sb_info, ptr %175, i32 0, i32 119
  %184 = load ptr, ptr %183, align 8
  br label %185

185:                                              ; preds = %182, %167
  %186 = phi ptr [ %184, %182 ], [ %169, %167 ]
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %25, ptr noundef nonnull @__func__.__ext4_ioctl, i32 noundef 1176, ptr noundef nonnull @.str.1) #9
  br label %229

189:                                              ; preds = %185, %174, %157
  %190 = tail call i32 @mnt_want_write_file(ptr noundef %0) #9
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %229

192:                                              ; preds = %189
  %193 = inttoptr i32 %2 to ptr
  %194 = tail call ptr @llvm.thread.pointer() #9
  %195 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 3
  %196 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %195) #11, !srcloc !14
  %197 = and i32 %196, -13
  %198 = or i32 %197, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %198) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %199 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %193, i32 -1090519041) #9, !srcloc !23
  %200 = extractvalue { i32, i32 } %199, 0
  %201 = extractvalue { i32, i32 } %199, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %196) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %202 = icmp eq i32 %200, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %192
  %204 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 24
  tail call void @down_write(ptr noundef %204) #9
  %205 = load ptr, ptr %24, align 4
  %206 = getelementptr inbounds %struct.super_block, ptr %205, i32 0, i32 27
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.ext4_sb_info, ptr %207, i32 0, i32 11
  %209 = load i32, ptr %208, align 4
  %210 = shl i32 %209, 3
  %211 = tail call ptr @__ext4_journal_start_sb(ptr noundef %205, i32 noundef 1189, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %210) #9
  %212 = icmp ugt ptr %211, inttoptr (i32 -4096 to ptr)
  br i1 %212, label %213, label %215

213:                                              ; preds = %203
  %214 = ptrtoint ptr %211 to i32
  br label %225

215:                                              ; preds = %203
  %216 = call i32 @ext4_reserve_inode_write(ptr noundef %211, ptr noundef %23, ptr noundef nonnull %16) #9
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %17, ptr noundef %23) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %219, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 16, i1 false) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #9
  %220 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 44
  store i32 %201, ptr %220, align 8
  %221 = call i32 @ext4_mark_iloc_dirty(ptr noundef %211, ptr noundef %23, ptr noundef nonnull %16) #9
  br label %222

222:                                              ; preds = %218, %215
  %223 = phi i32 [ %221, %218 ], [ %216, %215 ]
  %224 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.__ext4_ioctl, i32 noundef 1200, ptr noundef %211) #9
  br label %225

225:                                              ; preds = %222, %213
  %226 = phi i32 [ %214, %213 ], [ %223, %222 ]
  call void @up_write(ptr noundef %204) #9
  br label %227

227:                                              ; preds = %225, %192
  %228 = phi i32 [ %226, %225 ], [ -14, %192 ]
  call void @mnt_drop_write_file(ptr noundef %0) #9
  br label %229

229:                                              ; preds = %227, %189, %188, %155
  %230 = phi i32 [ -25, %188 ], [ %228, %227 ], [ -1, %155 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #9
  br label %1351

231:                                              ; preds = %3
  %232 = tail call i32 @ext4_resize_begin(ptr noundef %25) #9
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %1351

234:                                              ; preds = %231
  %235 = inttoptr i32 %2 to ptr
  %236 = tail call ptr @llvm.thread.pointer() #9
  %237 = getelementptr inbounds %struct.thread_info, ptr %236, i32 0, i32 3
  %238 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %237) #11, !srcloc !14
  %239 = and i32 %238, -13
  %240 = or i32 %239, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %240) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %241 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %235, i32 -1090519041) #9, !srcloc !24
  %242 = extractvalue { i32, i64 } %241, 0
  %243 = extractvalue { i32, i64 } %241, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %238) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %244 = and i64 %243, 4294967295
  %245 = icmp eq i32 %242, 0
  br i1 %245, label %246, label %280

246:                                              ; preds = %234
  %247 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.ext4_sb_info, ptr %248, i32 0, i32 15
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.ext4_super_block, ptr %250, i32 0, i32 30
  %252 = load i32, ptr %251, align 4
  %253 = and i32 %252, 512
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %246
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #9
  br label %280

256:                                              ; preds = %246
  %257 = tail call i32 @mnt_want_write_file(ptr noundef %0) #9
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %280

259:                                              ; preds = %256
  %260 = load ptr, ptr %247, align 4
  %261 = getelementptr inbounds %struct.ext4_sb_info, ptr %260, i32 0, i32 15
  %262 = load ptr, ptr %261, align 4
  %263 = tail call i32 @ext4_group_extend(ptr noundef %25, ptr noundef %262, i64 noundef %244) #9
  %264 = load ptr, ptr %247, align 4
  %265 = getelementptr inbounds %struct.ext4_sb_info, ptr %264, i32 0, i32 47
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %276, label %268

268:                                              ; preds = %259
  tail call void @jbd2_journal_lock_updates(ptr noundef nonnull %266) #9
  %269 = load ptr, ptr %247, align 4
  %270 = getelementptr inbounds %struct.ext4_sb_info, ptr %269, i32 0, i32 47
  %271 = load ptr, ptr %270, align 4
  %272 = tail call i32 @jbd2_journal_flush(ptr noundef %271, i32 noundef 0) #9
  %273 = load ptr, ptr %247, align 4
  %274 = getelementptr inbounds %struct.ext4_sb_info, ptr %273, i32 0, i32 47
  %275 = load ptr, ptr %274, align 4
  tail call void @jbd2_journal_unlock_updates(ptr noundef %275) #9
  br label %276

276:                                              ; preds = %268, %259
  %277 = phi i32 [ %272, %268 ], [ 0, %259 ]
  %278 = icmp eq i32 %263, 0
  %279 = select i1 %278, i32 %277, i32 %263
  tail call void @mnt_drop_write_file(ptr noundef %0) #9
  br label %280

280:                                              ; preds = %276, %256, %255, %234
  %281 = phi i32 [ -95, %255 ], [ %257, %256 ], [ %279, %276 ], [ -14, %234 ]
  tail call void @ext4_resize_end(ptr noundef %25) #9
  br label %1351

282:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %18, i8 0, i32 40, i1 false) #9, !annotation !9
  %283 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %284 = load i32, ptr %283, align 8
  %285 = and i32 %284, 3
  %286 = icmp eq i32 %285, 3
  br i1 %286, label %287, label %349

287:                                              ; preds = %282
  %288 = inttoptr i32 %2 to ptr
  %289 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %288, i32 40, i32 -1090519040) #10
  %290 = extractvalue { i32, i32 } %289, 0
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %300, !prof !10

292:                                              ; preds = %287
  %293 = tail call ptr @llvm.thread.pointer() #9
  %294 = getelementptr inbounds %struct.thread_info, ptr %293, i32 0, i32 3
  %295 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %294) #11, !srcloc !14
  %296 = and i32 %295, -13
  %297 = or i32 %296, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %297) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %298 = call i32 @arm_copy_from_user(ptr noundef nonnull %18, ptr noundef %288, i32 noundef 40) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %295) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %304, label %300, !prof !10

300:                                              ; preds = %292, %287
  %301 = phi i32 [ %298, %292 ], [ 40, %287 ]
  %302 = sub i32 40, %301
  %303 = getelementptr i8, ptr %18, i32 %302
  call void @llvm.memset.p0.i32(ptr align 1 %303, i8 0, i32 %301, i1 false) #9
  br label %349

304:                                              ; preds = %292
  %305 = getelementptr inbounds %struct.move_extent, ptr %18, i32 0, i32 5
  store i64 0, ptr %305, align 8
  %306 = getelementptr inbounds %struct.move_extent, ptr %18, i32 0, i32 1
  %307 = load i32, ptr %306, align 4
  %308 = call i32 @__fdget(i32 noundef %307) #9, !noalias !25
  %309 = and i32 %308, -4
  %310 = inttoptr i32 %309 to ptr
  %311 = icmp eq i32 %309, 0
  br i1 %311, label %349, label %312

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.file, ptr %310, i32 0, i32 8
  %314 = load i32, ptr %313, align 8
  %315 = and i32 %314, 2
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %344, label %317

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr inbounds %struct.ext4_sb_info, ptr %319, i32 0, i32 15
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.ext4_super_block, ptr %321, i32 0, i32 30
  %323 = load i32, ptr %322, align 4
  %324 = and i32 %323, 512
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %327, label %326

326:                                              ; preds = %317
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #9
  br label %344

327:                                              ; preds = %317
  %328 = call i32 @mnt_want_write_file(ptr noundef %0) #9
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %344

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.move_extent, ptr %18, i32 0, i32 2
  %332 = load i64, ptr %331, align 8
  %333 = getelementptr inbounds %struct.move_extent, ptr %18, i32 0, i32 3
  %334 = load i64, ptr %333, align 8
  %335 = getelementptr inbounds %struct.move_extent, ptr %18, i32 0, i32 4
  %336 = load i64, ptr %335, align 8
  %337 = call i32 @ext4_move_extents(ptr noundef %0, ptr noundef nonnull %310, i64 noundef %332, i64 noundef %334, i64 noundef %336, ptr noundef %305) #9
  call void @mnt_drop_write_file(ptr noundef %0) #9
  %338 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %294) #11, !srcloc !14
  %339 = and i32 %338, -13
  %340 = or i32 %339, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %340) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %341 = call i32 @arm_copy_to_user(ptr noundef %288, ptr noundef nonnull %18, i32 noundef 40) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %338) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %342 = icmp eq i32 %341, 0
  %343 = select i1 %342, i32 %337, i32 -14
  br label %344

344:                                              ; preds = %330, %327, %326, %312
  %345 = phi i32 [ -95, %326 ], [ %328, %327 ], [ -9, %312 ], [ %343, %330 ]
  %346 = and i32 %308, 1
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %344
  call void @fput(ptr noundef nonnull %310) #9
  br label %349

349:                                              ; preds = %348, %344, %304, %300, %282
  %350 = phi i32 [ -9, %282 ], [ -9, %304 ], [ %345, %344 ], [ %345, %348 ], [ -14, %300 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #9
  br label %1351

351:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %19, i8 0, i32 48, i1 false) #9, !annotation !9
  %352 = inttoptr i32 %2 to ptr
  %353 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %352, i32 48, i32 -1090519040) #10, !srcloc !28
  %354 = extractvalue { i32, i32 } %353, 0
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %364, !prof !10

356:                                              ; preds = %351
  %357 = tail call ptr @llvm.thread.pointer() #9
  %358 = getelementptr inbounds %struct.thread_info, ptr %357, i32 0, i32 3
  %359 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %358) #11, !srcloc !14
  %360 = and i32 %359, -13
  %361 = or i32 %360, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %361) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %362 = call i32 @arm_copy_from_user(ptr noundef nonnull %19, ptr noundef %352, i32 noundef 48) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %359) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %368, label %364, !prof !10

364:                                              ; preds = %356, %351
  %365 = phi i32 [ %362, %356 ], [ 48, %351 ]
  %366 = sub i32 48, %365
  %367 = getelementptr i8, ptr %19, i32 %366
  call void @llvm.memset.p0.i32(ptr align 1 %367, i8 0, i32 %365, i1 false) #9
  br label %449

368:                                              ; preds = %356
  %369 = load ptr, ptr %22, align 8
  %370 = getelementptr inbounds %struct.inode, ptr %369, i32 0, i32 8
  %371 = load ptr, ptr %370, align 4
  %372 = call i32 @ext4_resize_begin(ptr noundef %371) #9
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %449

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.super_block, ptr %371, i32 0, i32 27
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr inbounds %struct.ext4_sb_info, ptr %376, i32 0, i32 15
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr inbounds %struct.ext4_super_block, ptr %378, i32 0, i32 30
  %380 = load i32, ptr %379, align 4
  %381 = and i32 %380, 512
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %374
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %371, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #9
  br label %447

384:                                              ; preds = %374
  %385 = call i32 @mnt_want_write_file(ptr noundef %0) #9
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %447

387:                                              ; preds = %384
  %388 = call i32 @ext4_group_add(ptr noundef %371, ptr noundef nonnull %19) #9
  %389 = load ptr, ptr %375, align 4
  %390 = getelementptr inbounds %struct.ext4_sb_info, ptr %389, i32 0, i32 47
  %391 = load ptr, ptr %390, align 4
  %392 = icmp eq ptr %391, null
  br i1 %392, label %401, label %393

393:                                              ; preds = %387
  call void @jbd2_journal_lock_updates(ptr noundef nonnull %391) #9
  %394 = load ptr, ptr %375, align 4
  %395 = getelementptr inbounds %struct.ext4_sb_info, ptr %394, i32 0, i32 47
  %396 = load ptr, ptr %395, align 4
  %397 = call i32 @jbd2_journal_flush(ptr noundef %396, i32 noundef 0) #9
  %398 = load ptr, ptr %375, align 4
  %399 = getelementptr inbounds %struct.ext4_sb_info, ptr %398, i32 0, i32 47
  %400 = load ptr, ptr %399, align 4
  call void @jbd2_journal_unlock_updates(ptr noundef %400) #9
  br label %401

401:                                              ; preds = %393, %387
  %402 = phi i32 [ %397, %393 ], [ 0, %387 ]
  %403 = icmp eq i32 %388, 0
  %404 = select i1 %403, i32 %402, i32 %388
  call void @mnt_drop_write_file(ptr noundef %0) #9
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %447

406:                                              ; preds = %401
  %407 = load ptr, ptr %375, align 4
  %408 = getelementptr inbounds %struct.ext4_sb_info, ptr %407, i32 0, i32 15
  %409 = load ptr, ptr %408, align 4
  %410 = getelementptr inbounds %struct.ext4_super_block, ptr %409, i32 0, i32 30
  %411 = load i32, ptr %410, align 4
  %412 = and i32 %411, 16
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %439

414:                                              ; preds = %406
  %415 = and i32 %411, 1024
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %447, label %417

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.ext4_sb_info, ptr %407, i32 0, i32 119
  %419 = load ptr, ptr %418, align 8
  %420 = icmp eq ptr %419, null
  %421 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %422 = xor i1 %421, true
  %423 = select i1 %420, i1 %422, i1 false
  br i1 %423, label %424, label %435, !prof !8

424:                                              ; preds = %417
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %425 = load ptr, ptr %375, align 4
  %426 = getelementptr inbounds %struct.ext4_sb_info, ptr %425, i32 0, i32 15
  %427 = load ptr, ptr %426, align 4
  %428 = getelementptr inbounds %struct.ext4_super_block, ptr %427, i32 0, i32 30
  %429 = load i32, ptr %428, align 4
  %430 = and i32 %429, 1024
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %447, label %432

432:                                              ; preds = %424
  %433 = getelementptr inbounds %struct.ext4_sb_info, ptr %425, i32 0, i32 119
  %434 = load ptr, ptr %433, align 8
  br label %435

435:                                              ; preds = %432, %417
  %436 = phi ptr [ %425, %432 ], [ %407, %417 ]
  %437 = phi ptr [ %434, %432 ], [ %419, %417 ]
  %438 = icmp eq ptr %437, null
  br i1 %438, label %447, label %439

439:                                              ; preds = %435, %406
  %440 = phi ptr [ %407, %406 ], [ %436, %435 ]
  %441 = getelementptr inbounds %struct.ext4_sb_info, ptr %440, i32 0, i32 17
  %442 = load i32, ptr %441, align 4
  %443 = icmp sgt i32 %442, -1
  br i1 %443, label %447, label %444

444:                                              ; preds = %439
  %445 = load i32, ptr %19, align 8
  %446 = call i32 @ext4_register_li_request(ptr noundef %371, i32 noundef %445) #9
  br label %447

447:                                              ; preds = %444, %439, %435, %424, %414, %401, %384, %383
  %448 = phi i32 [ -95, %383 ], [ %385, %384 ], [ %404, %401 ], [ %446, %444 ], [ 0, %439 ], [ 0, %435 ], [ 0, %424 ], [ 0, %414 ]
  call void @ext4_resize_end(ptr noundef %371) #9
  br label %449

449:                                              ; preds = %447, %368, %364
  %450 = phi i32 [ -14, %364 ], [ %448, %447 ], [ %372, %368 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #9
  br label %1351

451:                                              ; preds = %3
  %452 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %29, ptr noundef %23) #9
  br i1 %452, label %453, label %1351

453:                                              ; preds = %451
  %454 = tail call i32 @mnt_want_write_file(ptr noundef %0) #9
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %1351

456:                                              ; preds = %453
  %457 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 24
  tail call void @down_write(ptr noundef %457) #9
  %458 = tail call i32 @ext4_ext_migrate(ptr noundef %23) #9
  tail call void @up_write(ptr noundef %457) #9
  tail call void @mnt_drop_write_file(ptr noundef %0) #9
  br label %1351

459:                                              ; preds = %3
  %460 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %29, ptr noundef %23) #9
  br i1 %460, label %461, label %1351

461:                                              ; preds = %459
  %462 = tail call i32 @mnt_want_write_file(ptr noundef %0) #9
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %1351

464:                                              ; preds = %461
  %465 = tail call i32 @ext4_alloc_da_blocks(ptr noundef %23) #9
  tail call void @mnt_drop_write_file(ptr noundef %0) #9
  br label %1351

466:                                              ; preds = %3
  %467 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %468 = load i32, ptr %467, align 8
  %469 = and i32 %468, 2
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %1351, label %471

471:                                              ; preds = %466
  %472 = tail call i32 @mnt_want_write_file(ptr noundef %0) #9
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %1351

474:                                              ; preds = %471
  %475 = tail call ptr @__ext4_iget(ptr noundef %25, i32 noundef 5, i32 noundef 1, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 369) #9
  %476 = icmp ugt ptr %475, inttoptr (i32 -4096 to ptr)
  br i1 %476, label %477, label %479

477:                                              ; preds = %474
  %478 = ptrtoint ptr %475 to i32
  br label %625

479:                                              ; preds = %474
  %480 = getelementptr i8, ptr %475, i32 -208
  tail call void @lock_two_nondirectories(ptr noundef %23, ptr noundef %475) #9
  %481 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 11
  %482 = load i32, ptr %481, align 8
  %483 = icmp eq i32 %482, 1
  br i1 %483, label %484, label %623

484:                                              ; preds = %479
  %485 = load i16, ptr %23, align 8
  %486 = and i16 %485, -4096
  %487 = icmp eq i16 %486, -32768
  br i1 %487, label %488, label %623

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 4
  %490 = load i32, ptr %489, align 4
  %491 = and i32 %490, 16640
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %623

493:                                              ; preds = %488
  %494 = getelementptr i8, ptr %23, i32 -124
  %495 = load i32, ptr %494, align 4
  %496 = and i32 %495, 16384
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %623

498:                                              ; preds = %493
  %499 = load volatile i32, ptr %494, align 4
  %500 = and i32 %499, 268435456
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %506, label %502

502:                                              ; preds = %498
  %503 = getelementptr i8, ptr %23, i32 478
  %504 = load i16, ptr %503, align 2
  %505 = icmp eq i16 %504, 0
  br i1 %505, label %506, label %623

506:                                              ; preds = %502, %498
  %507 = load ptr, ptr %24, align 4
  %508 = getelementptr inbounds %struct.super_block, ptr %507, i32 0, i32 10
  %509 = load i32, ptr %508, align 4
  %510 = and i32 %509, 1
  %511 = icmp eq i32 %510, 0
  %512 = and i32 %490, 12
  %513 = icmp eq i32 %512, 0
  %514 = select i1 %511, i1 %513, i1 false
  br i1 %514, label %515, label %623

515:                                              ; preds = %506
  %516 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %29, ptr noundef %23) #9
  br i1 %516, label %517, label %623

517:                                              ; preds = %515
  %518 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %518, label %519, label %623

519:                                              ; preds = %517
  %520 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 9
  %521 = load ptr, ptr %520, align 8
  %522 = getelementptr inbounds %struct.address_space, ptr %521, i32 0, i32 2
  tail call void @down_write(ptr noundef %522) #9
  %523 = load ptr, ptr %520, align 8
  %524 = tail call i32 @filemap_write_and_wait_range(ptr noundef %523, i64 noundef 0, i64 noundef 9223372036854775807) #9
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %619

526:                                              ; preds = %519
  %527 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 9
  %528 = load ptr, ptr %527, align 8
  %529 = tail call i32 @filemap_write_and_wait_range(ptr noundef %528, i64 noundef 0, i64 noundef 9223372036854775807) #9
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %619

531:                                              ; preds = %526
  tail call void @inode_dio_wait(ptr noundef %23) #9
  tail call void @inode_dio_wait(ptr noundef %475) #9
  %532 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 41
  tail call void @truncate_inode_pages(ptr noundef %532, i64 noundef 0) #9
  %533 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 41
  tail call void @truncate_inode_pages(ptr noundef %533, i64 noundef 0) #9
  %534 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 8
  %535 = load ptr, ptr %534, align 4
  %536 = getelementptr inbounds %struct.super_block, ptr %535, i32 0, i32 27
  %537 = load ptr, ptr %536, align 4
  %538 = getelementptr inbounds %struct.ext4_sb_info, ptr %537, i32 0, i32 11
  %539 = load i32, ptr %538, align 4
  %540 = shl i32 %539, 3
  %541 = tail call ptr @__ext4_journal_start_sb(ptr noundef %535, i32 noundef 409, i32 noundef 9, i32 noundef 2, i32 noundef 0, i32 noundef %540) #9
  %542 = icmp ugt ptr %541, inttoptr (i32 -4096 to ptr)
  br i1 %542, label %619, label %543

543:                                              ; preds = %531
  tail call void @ext4_fc_mark_ineligible(ptr noundef %25, i32 noundef 4, ptr noundef %541) #9
  tail call void @ext4_double_down_write_data_sem(ptr noundef %23, ptr noundef %475) #9
  %544 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 11
  %545 = load i32, ptr %544, align 8
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %570

547:                                              ; preds = %543
  tail call void @set_nlink(ptr noundef %475, i32 noundef 1) #9
  %548 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 2
  store i32 0, ptr %548, align 4
  %549 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 3
  store i32 0, ptr %549, align 8
  %550 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 4
  store i32 0, ptr %550, align 4
  %551 = getelementptr i8, ptr %475, i32 -124
  store i32 0, ptr %551, align 4
  %552 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %552) #9, !srcloc !29
  %553 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %552, ptr %552, i64 2) #9, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %554 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 22
  %555 = load i32, ptr %554, align 4
  %556 = add i32 %555, 1
  store i32 %556, ptr %554, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !32
  %557 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 13
  store i64 0, ptr %557, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !33
  %558 = load i32, ptr %554, align 4
  %559 = add i32 %558, 1
  store i32 %559, ptr %554, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  store i16 -32768, ptr %475, align 8
  %560 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %561 = load ptr, ptr %560, align 4
  %562 = getelementptr inbounds %struct.ext4_sb_info, ptr %561, i32 0, i32 15
  %563 = load ptr, ptr %562, align 4
  %564 = getelementptr inbounds %struct.ext4_super_block, ptr %563, i32 0, i32 29
  %565 = load i32, ptr %564, align 8
  %566 = and i32 %565, 64
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %569, label %568

568:                                              ; preds = %547
  tail call void @_set_bit(i32 noundef 19, ptr noundef %551) #9
  tail call void @ext4_ext_tree_init(ptr noundef %541, ptr noundef %475) #9
  br label %570

569:                                              ; preds = %547
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(60) %480, i8 0, i32 60, i1 false) #9
  br label %570

570:                                              ; preds = %569, %568, %543
  %571 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 21
  %572 = load i64, ptr %571, align 8
  %573 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 18
  %574 = load i16, ptr %573, align 4
  %575 = zext i16 %574 to i64
  %576 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 21
  %577 = load i64, ptr %576, align 8
  %578 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 18
  %579 = load i16, ptr %578, align 4
  %580 = zext i16 %579 to i64
  %581 = sub i64 %572, %577
  %582 = shl i64 %581, 9
  %583 = sub nsw i64 %575, %580
  %584 = add i64 %583, %582
  tail call fastcc void @swap_inode_data(ptr noundef %23, ptr noundef %475) #9
  %585 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 16
  %586 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %23) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %586, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %585, ptr noundef align 8 dereferenceable(16) %586, i32 16, i1 false) #9
  %587 = call i32 @prandom_u32() #9
  %588 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 44
  store i32 %587, ptr %588, align 8
  %589 = call i32 @prandom_u32() #9
  %590 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 44
  store i32 %589, ptr %590, align 8
  call void @ext4_reset_inode_seed(ptr noundef %23) #9
  call void @ext4_reset_inode_seed(ptr noundef %475) #9
  call void @ext4_discard_preallocations(ptr noundef %23, i32 noundef 0) #9
  %591 = call i32 @__ext4_mark_inode_dirty(ptr noundef %541, ptr noundef %23, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 454) #9
  %592 = icmp slt i32 %591, 0
  br i1 %592, label %593, label %598

593:                                              ; preds = %570
  %594 = load ptr, ptr %24, align 4
  %595 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 10
  %596 = load i32, ptr %595, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %594, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 459, ptr noundef nonnull @.str.9, i32 noundef %596, i32 noundef %591) #9
  call fastcc void @swap_inode_data(ptr noundef %23, ptr noundef %475) #9
  %597 = call i32 @__ext4_mark_inode_dirty(ptr noundef %541, ptr noundef %23, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 462) #9
  br label %616

598:                                              ; preds = %570
  %599 = load i64, ptr %576, align 8
  %600 = load i16, ptr %578, align 4
  %601 = load i64, ptr %571, align 8
  store i64 %601, ptr %576, align 8
  %602 = load i16, ptr %573, align 4
  store i16 %602, ptr %578, align 4
  %603 = call i32 @__ext4_mark_inode_dirty(ptr noundef %541, ptr noundef %475, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 470) #9
  %604 = icmp slt i32 %603, 0
  br i1 %604, label %605, label %611

605:                                              ; preds = %598
  %606 = load ptr, ptr %534, align 4
  %607 = getelementptr inbounds %struct.inode, ptr %475, i32 0, i32 10
  %608 = load i32, ptr %607, align 4
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %606, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 475, ptr noundef nonnull @.str.9, i32 noundef %608, i32 noundef %603) #9
  store i64 %599, ptr %576, align 8
  store i16 %600, ptr %578, align 4
  call fastcc void @swap_inode_data(ptr noundef %23, ptr noundef %475) #9
  %609 = call i32 @__ext4_mark_inode_dirty(ptr noundef %541, ptr noundef %23, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 491) #9
  %610 = call i32 @__ext4_mark_inode_dirty(ptr noundef %541, ptr noundef %475, ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 492) #9
  br label %616

611:                                              ; preds = %598
  %612 = icmp sgt i64 %584, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %611
  call void @inode_sub_bytes(ptr noundef %23, i64 noundef %584) #9
  call void @__mark_inode_dirty(ptr noundef %23, i32 noundef 1) #9
  br label %616

614:                                              ; preds = %611
  %615 = sub i64 0, %584
  call void @inode_add_bytes(ptr noundef %23, i64 noundef %615) #9
  call void @__mark_inode_dirty(ptr noundef %23, i32 noundef 7) #9
  br label %616

616:                                              ; preds = %614, %613, %605, %593
  %617 = phi i32 [ %591, %593 ], [ %603, %605 ], [ %603, %613 ], [ 0, %614 ]
  %618 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.swap_inode_boot_loader, i32 noundef 496, ptr noundef %541) #9
  call void @ext4_double_up_write_data_sem(ptr noundef %23, ptr noundef %475) #9
  br label %619

619:                                              ; preds = %616, %531, %526, %519
  %620 = phi i32 [ %524, %519 ], [ %529, %526 ], [ %617, %616 ], [ -22, %531 ]
  %621 = load ptr, ptr %520, align 8
  %622 = getelementptr inbounds %struct.address_space, ptr %621, i32 0, i32 2
  call void @up_write(ptr noundef %622) #9
  br label %623

623:                                              ; preds = %619, %517, %515, %506, %502, %493, %488, %484, %479
  %624 = phi i32 [ %620, %619 ], [ -22, %502 ], [ -22, %493 ], [ -22, %488 ], [ -22, %484 ], [ -22, %479 ], [ -1, %517 ], [ -1, %515 ], [ -1, %506 ]
  call void @unlock_two_nondirectories(ptr noundef %23, ptr noundef %475) #9
  call void @iput(ptr noundef %475) #9
  br label %625

625:                                              ; preds = %623, %477
  %626 = phi i32 [ %478, %477 ], [ %624, %623 ]
  call void @mnt_drop_write_file(ptr noundef %0) #9
  br label %1351

627:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #9
  store i64 0, ptr %20, align 8, !annotation !9
  %628 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %629 = load ptr, ptr %628, align 4
  %630 = getelementptr inbounds %struct.ext4_sb_info, ptr %629, i32 0, i32 8
  %631 = load i32, ptr %630, align 32
  %632 = inttoptr i32 %2 to ptr
  %633 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %632, i32 8, i32 -1090519040) #10, !srcloc !28
  %634 = extractvalue { i32, i32 } %633, 0
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %636, label %644, !prof !10

636:                                              ; preds = %627
  %637 = tail call ptr @llvm.thread.pointer() #9
  %638 = getelementptr inbounds %struct.thread_info, ptr %637, i32 0, i32 3
  %639 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %638) #11, !srcloc !14
  %640 = and i32 %639, -13
  %641 = or i32 %640, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %641) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %642 = call i32 @arm_copy_from_user(ptr noundef nonnull %20, ptr noundef %632, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %639) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %648, label %644, !prof !10

644:                                              ; preds = %636, %627
  %645 = phi i32 [ %642, %636 ], [ 8, %627 ]
  %646 = sub i32 8, %645
  %647 = getelementptr i8, ptr %20, i32 %646
  call void @llvm.memset.p0.i32(ptr align 1 %647, i8 0, i32 %645, i1 false) #9
  br label %723

648:                                              ; preds = %636
  %649 = call i32 @ext4_resize_begin(ptr noundef %25) #9
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %723

651:                                              ; preds = %648
  %652 = call i32 @mnt_want_write_file(ptr noundef %0) #9
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %721

654:                                              ; preds = %651
  %655 = load i64, ptr %20, align 8
  %656 = call i32 @ext4_resize_fs(ptr noundef %25, i64 noundef %655) #9
  %657 = load ptr, ptr %628, align 4
  %658 = getelementptr inbounds %struct.ext4_sb_info, ptr %657, i32 0, i32 47
  %659 = load ptr, ptr %658, align 4
  %660 = icmp eq ptr %659, null
  br i1 %660, label %672, label %661

661:                                              ; preds = %654
  call void @ext4_fc_mark_ineligible(ptr noundef %25, i32 noundef 5, ptr noundef null) #9
  %662 = load ptr, ptr %628, align 4
  %663 = getelementptr inbounds %struct.ext4_sb_info, ptr %662, i32 0, i32 47
  %664 = load ptr, ptr %663, align 4
  call void @jbd2_journal_lock_updates(ptr noundef %664) #9
  %665 = load ptr, ptr %628, align 4
  %666 = getelementptr inbounds %struct.ext4_sb_info, ptr %665, i32 0, i32 47
  %667 = load ptr, ptr %666, align 4
  %668 = call i32 @jbd2_journal_flush(ptr noundef %667, i32 noundef 0) #9
  %669 = load ptr, ptr %628, align 4
  %670 = getelementptr inbounds %struct.ext4_sb_info, ptr %669, i32 0, i32 47
  %671 = load ptr, ptr %670, align 4
  call void @jbd2_journal_unlock_updates(ptr noundef %671) #9
  br label %672

672:                                              ; preds = %661, %654
  %673 = phi i32 [ %668, %661 ], [ 0, %654 ]
  %674 = icmp eq i32 %656, 0
  %675 = select i1 %674, i32 %673, i32 %656
  call void @mnt_drop_write_file(ptr noundef %0) #9
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %721

677:                                              ; preds = %672
  %678 = load ptr, ptr %628, align 4
  %679 = getelementptr inbounds %struct.ext4_sb_info, ptr %678, i32 0, i32 8
  %680 = load i32, ptr %679, align 32
  %681 = icmp ult i32 %631, %680
  br i1 %681, label %682, label %721

682:                                              ; preds = %677
  %683 = getelementptr inbounds %struct.ext4_sb_info, ptr %678, i32 0, i32 15
  %684 = load ptr, ptr %683, align 4
  %685 = getelementptr inbounds %struct.ext4_super_block, ptr %684, i32 0, i32 30
  %686 = load i32, ptr %685, align 4
  %687 = and i32 %686, 16
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %714

689:                                              ; preds = %682
  %690 = and i32 %686, 1024
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %721, label %692

692:                                              ; preds = %689
  %693 = getelementptr inbounds %struct.ext4_sb_info, ptr %678, i32 0, i32 119
  %694 = load ptr, ptr %693, align 8
  %695 = icmp eq ptr %694, null
  %696 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %697 = xor i1 %696, true
  %698 = select i1 %695, i1 %697, i1 false
  br i1 %698, label %699, label %710, !prof !8

699:                                              ; preds = %692
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %700 = load ptr, ptr %628, align 4
  %701 = getelementptr inbounds %struct.ext4_sb_info, ptr %700, i32 0, i32 15
  %702 = load ptr, ptr %701, align 4
  %703 = getelementptr inbounds %struct.ext4_super_block, ptr %702, i32 0, i32 30
  %704 = load i32, ptr %703, align 4
  %705 = and i32 %704, 1024
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %721, label %707

707:                                              ; preds = %699
  %708 = getelementptr inbounds %struct.ext4_sb_info, ptr %700, i32 0, i32 119
  %709 = load ptr, ptr %708, align 8
  br label %710

710:                                              ; preds = %707, %692
  %711 = phi ptr [ %700, %707 ], [ %678, %692 ]
  %712 = phi ptr [ %709, %707 ], [ %694, %692 ]
  %713 = icmp eq ptr %712, null
  br i1 %713, label %721, label %714

714:                                              ; preds = %710, %682
  %715 = phi ptr [ %678, %682 ], [ %711, %710 ]
  %716 = getelementptr inbounds %struct.ext4_sb_info, ptr %715, i32 0, i32 17
  %717 = load i32, ptr %716, align 4
  %718 = icmp sgt i32 %717, -1
  br i1 %718, label %721, label %719

719:                                              ; preds = %714
  %720 = call i32 @ext4_register_li_request(ptr noundef %25, i32 noundef %631) #9
  br label %721

721:                                              ; preds = %719, %714, %710, %699, %689, %677, %672, %651
  %722 = phi i32 [ %652, %651 ], [ %675, %672 ], [ %720, %719 ], [ 0, %714 ], [ 0, %710 ], [ 0, %677 ], [ 0, %699 ], [ 0, %689 ]
  call void @ext4_resize_end(ptr noundef %25) #9
  br label %723

723:                                              ; preds = %721, %648, %644
  %724 = phi i32 [ %722, %721 ], [ %649, %648 ], [ -14, %644 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #9
  br label %1351

725:                                              ; preds = %3
  %726 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 20
  %727 = load ptr, ptr %726, align 4
  %728 = getelementptr inbounds %struct.block_device, ptr %727, i32 0, i32 18
  %729 = load ptr, ptr %728, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i32 24, i1 false) #9, !annotation !9
  %730 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %730, label %731, label %777

731:                                              ; preds = %725
  %732 = getelementptr inbounds %struct.request_queue, ptr %729, i32 0, i32 11
  %733 = load volatile i32, ptr %732, align 4
  %734 = and i32 %733, 256
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %777, label %736

736:                                              ; preds = %731
  %737 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %738 = load ptr, ptr %737, align 4
  %739 = getelementptr inbounds %struct.ext4_sb_info, ptr %738, i32 0, i32 17
  %740 = load i32, ptr %739, align 4
  %741 = and i32 %740, 256
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %750, label %743

743:                                              ; preds = %736
  %744 = getelementptr inbounds %struct.ext4_sb_info, ptr %738, i32 0, i32 15
  %745 = load ptr, ptr %744, align 4
  %746 = getelementptr inbounds %struct.ext4_super_block, ptr %745, i32 0, i32 28
  %747 = load i32, ptr %746, align 4
  %748 = and i32 %747, 4
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %777

750:                                              ; preds = %743, %736
  %751 = inttoptr i32 %2 to ptr
  %752 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %751, i32 24, i32 -1090519040) #10
  %753 = extractvalue { i32, i32 } %752, 0
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %763, !prof !10

755:                                              ; preds = %750
  %756 = tail call ptr @llvm.thread.pointer() #9
  %757 = getelementptr inbounds %struct.thread_info, ptr %756, i32 0, i32 3
  %758 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %757) #11, !srcloc !14
  %759 = and i32 %758, -13
  %760 = or i32 %759, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %760) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %761 = call i32 @arm_copy_from_user(ptr noundef nonnull %21, ptr noundef %751, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %758) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %767, label %763, !prof !10

763:                                              ; preds = %755, %750
  %764 = phi i32 [ %761, %755 ], [ 24, %750 ]
  %765 = sub i32 24, %764
  %766 = getelementptr i8, ptr %21, i32 %765
  call void @llvm.memset.p0.i32(ptr align 1 %766, i8 0, i32 %764, i1 false) #9
  br label %777

767:                                              ; preds = %755
  %768 = call i32 @ext4_trim_fs(ptr noundef %25, ptr noundef nonnull %21) #9
  %769 = icmp slt i32 %768, 0
  br i1 %769, label %777, label %770

770:                                              ; preds = %767
  %771 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %757) #11, !srcloc !14
  %772 = and i32 %771, -13
  %773 = or i32 %772, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %773) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %774 = call i32 @arm_copy_to_user(ptr noundef %751, ptr noundef nonnull %21, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %771) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %775 = icmp eq i32 %774, 0
  %776 = select i1 %775, i32 0, i32 -14
  br label %777

777:                                              ; preds = %770, %767, %763, %743, %731, %725
  %778 = phi i32 [ -1, %725 ], [ -95, %731 ], [ -30, %743 ], [ %768, %767 ], [ -14, %763 ], [ %776, %770 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #9
  br label %1351

779:                                              ; preds = %3
  %780 = tail call i32 @ext4_ext_precache(ptr noundef %23) #9
  br label %1351

781:                                              ; preds = %3
  %782 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %29, ptr noundef %23) #9
  br i1 %782, label %783, label %1351

783:                                              ; preds = %781
  tail call void @ext4_clear_inode_es(ptr noundef %23) #9
  br label %1351

784:                                              ; preds = %3
  %785 = getelementptr i8, ptr %23, i32 -128
  %786 = load volatile i32, ptr %785, align 4
  %787 = lshr i32 %786, 8
  %788 = and i32 %787, 1
  %789 = load volatile i32, ptr %785, align 4
  %790 = and i32 %789, 2
  %791 = or i32 %790, %788
  %792 = load volatile i32, ptr %785, align 4
  %793 = lshr i32 %792, 4
  %794 = and i32 %793, 4
  %795 = or i32 %791, %794
  %796 = load volatile i32, ptr %785, align 4
  %797 = lshr i32 %796, 1
  %798 = and i32 %797, 8
  %799 = or i32 %795, %798
  %800 = inttoptr i32 %2 to ptr
  %801 = tail call ptr @llvm.thread.pointer() #9
  %802 = getelementptr inbounds %struct.thread_info, ptr %801, i32 0, i32 3
  %803 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %802) #11, !srcloc !14
  %804 = and i32 %803, -13
  %805 = or i32 %804, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %805) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %806 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %800, i32 %799, i32 -1090519041) #9, !srcloc !35
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %803) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  br label %1351

807:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i32 32, i1 false) #9, !annotation !9
  %808 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9
  %809 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 0, ptr %809, align 4
  %810 = load ptr, ptr %22, align 8
  %811 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %808, i32 32, i32 -1090519040) #10
  %812 = extractvalue { i32, i32 } %811, 0
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %822, !prof !10

814:                                              ; preds = %807
  %815 = tail call ptr @llvm.thread.pointer() #9
  %816 = getelementptr inbounds %struct.thread_info, ptr %815, i32 0, i32 3
  %817 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %816) #11, !srcloc !14
  %818 = and i32 %817, -13
  %819 = or i32 %818, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %819) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %820 = call i32 @arm_copy_from_user(ptr noundef nonnull %11, ptr noundef %808, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %817) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %826, label %822, !prof !10

822:                                              ; preds = %814, %807
  %823 = phi i32 [ %820, %814 ], [ 32, %807 ]
  %824 = sub i32 32, %823
  %825 = getelementptr i8, ptr %11, i32 %824
  call void @llvm.memset.p0.i32(ptr align 1 %825, i8 0, i32 %823, i1 false) #9
  br label %849

826:                                              ; preds = %814
  %827 = getelementptr inbounds %struct.fiemap, ptr %11, i32 0, i32 4
  %828 = load i32, ptr %827, align 8
  %829 = icmp ugt i32 %828, 76695844
  br i1 %829, label %849, label %830

830:                                              ; preds = %826
  %831 = getelementptr inbounds %struct.fiemap, ptr %11, i32 0, i32 2
  %832 = load i32, ptr %831, align 8
  store i32 %832, ptr %12, align 4
  %833 = getelementptr inbounds %struct.fiemap_extent_info, ptr %12, i32 0, i32 2
  store i32 %828, ptr %833, align 4
  %834 = getelementptr inbounds %struct.fiemap, ptr %808, i32 0, i32 6
  %835 = getelementptr inbounds %struct.fiemap_extent_info, ptr %12, i32 0, i32 3
  store ptr %834, ptr %835, align 4
  %836 = load i64, ptr %11, align 8
  %837 = getelementptr inbounds %struct.fiemap, ptr %11, i32 0, i32 1
  %838 = load i64, ptr %837, align 8
  %839 = call i32 @ext4_get_es_cache(ptr noundef %810, ptr noundef nonnull %12, i64 noundef %836, i64 noundef %838) #9
  %840 = load i32, ptr %12, align 4
  store i32 %840, ptr %831, align 8
  %841 = load i32, ptr %809, align 4
  %842 = getelementptr inbounds %struct.fiemap, ptr %11, i32 0, i32 3
  store i32 %841, ptr %842, align 4
  %843 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %816) #11, !srcloc !14
  %844 = and i32 %843, -13
  %845 = or i32 %844, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %845) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %846 = call i32 @arm_copy_to_user(ptr noundef %808, ptr noundef nonnull %11, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %843) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %847 = icmp eq i32 %846, 0
  %848 = select i1 %847, i32 %839, i32 -14
  br label %849

849:                                              ; preds = %830, %826, %822
  %850 = phi i32 [ -22, %826 ], [ -14, %822 ], [ %848, %830 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #9
  br label %1351

851:                                              ; preds = %3
  %852 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %853 = load ptr, ptr %852, align 4
  %854 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %854, label %855, label %1351

855:                                              ; preds = %851
  %856 = inttoptr i32 %2 to ptr
  %857 = tail call ptr @llvm.thread.pointer() #9
  %858 = getelementptr inbounds %struct.thread_info, ptr %857, i32 0, i32 3
  %859 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %858) #11, !srcloc !14
  %860 = and i32 %859, -13
  %861 = or i32 %860, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %861) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %862 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %856, i32 -1090519041) #9, !srcloc !36
  %863 = extractvalue { i32, i32 } %862, 0
  %864 = extractvalue { i32, i32 } %862, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %859) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %865 = icmp eq i32 %863, 0
  br i1 %865, label %866, label %1351

866:                                              ; preds = %855
  %867 = icmp ugt i32 %864, 2
  br i1 %867, label %1351, label %868

868:                                              ; preds = %866
  %869 = getelementptr inbounds %struct.ext4_sb_info, ptr %853, i32 0, i32 48
  %870 = load volatile i32, ptr %869, align 4
  %871 = and i32 %870, 2
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %1351

873:                                              ; preds = %868
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %25, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %864) #9
  %874 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_shutdown, i32 0, i32 1), align 4
  %875 = icmp sgt i32 %874, 0
  br i1 %875, label %876, label %888

876:                                              ; preds = %873
  %877 = getelementptr inbounds %struct.thread_info, ptr %857, i32 0, i32 2
  %878 = load i32, ptr %877, align 8
  %879 = lshr i32 %878, 5
  %880 = getelementptr i32, ptr @__cpu_online_mask, i32 %879
  %881 = load volatile i32, ptr %880, align 4
  %882 = and i32 %878, 31
  %883 = shl nuw i32 1, %882
  %884 = and i32 %883, %881
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %888, label %886

886:                                              ; preds = %876
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %887 = tail call i32 @__traceiter_ext4_shutdown(ptr noundef null, ptr noundef %25, i32 noundef %864) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  br label %888

888:                                              ; preds = %886, %876, %873
  switch i32 %864, label %1351 [
    i32 0, label %889
    i32 1, label %895
    i32 2, label %906
  ]

889:                                              ; preds = %888
  %890 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 20
  %891 = load ptr, ptr %890, align 4
  %892 = tail call i32 @freeze_bdev(ptr noundef %891) #9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %869) #9
  %893 = load ptr, ptr %890, align 4
  %894 = tail call i32 @thaw_bdev(ptr noundef %893) #9
  br label %915

895:                                              ; preds = %888
  tail call void @_set_bit(i32 noundef 1, ptr noundef %869) #9
  %896 = getelementptr inbounds %struct.ext4_sb_info, ptr %853, i32 0, i32 47
  %897 = load ptr, ptr %896, align 4
  %898 = icmp eq ptr %897, null
  br i1 %898, label %915, label %899

899:                                              ; preds = %895
  %900 = load i32, ptr %897, align 8
  %901 = and i32 %900, 2
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %903, label %915

903:                                              ; preds = %899
  %904 = tail call i32 @ext4_force_commit(ptr noundef %25) #9
  %905 = load ptr, ptr %896, align 4
  tail call void @jbd2_journal_abort(ptr noundef %905, i32 noundef -108) #9
  br label %915

906:                                              ; preds = %888
  tail call void @_set_bit(i32 noundef 1, ptr noundef %869) #9
  %907 = getelementptr inbounds %struct.ext4_sb_info, ptr %853, i32 0, i32 47
  %908 = load ptr, ptr %907, align 4
  %909 = icmp eq ptr %908, null
  br i1 %909, label %915, label %910

910:                                              ; preds = %906
  %911 = load i32, ptr %908, align 8
  %912 = and i32 %911, 2
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %914, label %915

914:                                              ; preds = %910
  tail call void @jbd2_journal_abort(ptr noundef nonnull %908, i32 noundef -108) #9
  br label %915

915:                                              ; preds = %914, %910, %906, %903, %899, %895, %889
  %916 = load ptr, ptr %852, align 4
  %917 = getelementptr inbounds %struct.ext4_sb_info, ptr %916, i32 0, i32 17
  %918 = load i32, ptr %917, align 4
  %919 = and i32 %918, -1073741825
  store i32 %919, ptr %917, align 4
  br label %1351

920:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4
  %921 = load ptr, ptr %22, align 8
  %922 = getelementptr inbounds %struct.inode, ptr %921, i32 0, i32 8
  %923 = load ptr, ptr %922, align 4
  %924 = inttoptr i32 %2 to ptr
  %925 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %924, i32 4, i32 -1090519040) #10, !srcloc !28
  %926 = extractvalue { i32, i32 } %925, 0
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %936, !prof !10

928:                                              ; preds = %920
  %929 = tail call ptr @llvm.thread.pointer() #9
  %930 = getelementptr inbounds %struct.thread_info, ptr %929, i32 0, i32 3
  %931 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %930) #11, !srcloc !14
  %932 = and i32 %931, -13
  %933 = or i32 %932, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %933) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %934 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %924, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %931) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %940, label %936, !prof !10

936:                                              ; preds = %928, %920
  %937 = phi i32 [ %934, %928 ], [ 4, %920 ]
  %938 = sub i32 4, %937
  %939 = getelementptr i8, ptr %10, i32 %938
  call void @llvm.memset.p0.i32(ptr align 1 %939, i8 0, i32 %937, i1 false) #9
  br label %994

940:                                              ; preds = %928
  %941 = call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %941, label %942, label %994

942:                                              ; preds = %940
  %943 = load i32, ptr %10, align 4
  %944 = icmp ult i32 %943, 8
  br i1 %944, label %945, label %994

945:                                              ; preds = %942
  %946 = and i32 %943, 1
  %947 = icmp eq i32 %946, 0
  %948 = and i32 %943, 2
  %949 = icmp eq i32 %948, 0
  %950 = and i32 %943, 3
  %951 = icmp eq i32 %950, 3
  br i1 %951, label %994, label %952

952:                                              ; preds = %945
  %953 = getelementptr inbounds %struct.super_block, ptr %923, i32 0, i32 27
  %954 = load ptr, ptr %953, align 4
  %955 = getelementptr inbounds %struct.ext4_sb_info, ptr %954, i32 0, i32 47
  %956 = load ptr, ptr %955, align 4
  %957 = icmp eq ptr %956, null
  br i1 %957, label %994, label %958

958:                                              ; preds = %952
  %959 = getelementptr inbounds %struct.journal_s, ptr %956, i32 0, i32 32
  %960 = load ptr, ptr %959, align 4
  %961 = getelementptr inbounds %struct.block_device, ptr %960, i32 0, i32 18
  %962 = load ptr, ptr %961, align 4
  %963 = icmp eq ptr %962, null
  br i1 %963, label %994, label %964

964:                                              ; preds = %958
  br i1 %947, label %970, label %965

965:                                              ; preds = %964
  %966 = getelementptr inbounds %struct.request_queue, ptr %962, i32 0, i32 11
  %967 = load volatile i32, ptr %966, align 4
  %968 = and i32 %967, 256
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %994, label %970

970:                                              ; preds = %965, %964
  %971 = and i32 %943, 4
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %994

973:                                              ; preds = %970
  %974 = xor i1 %947, true
  %975 = zext i1 %974 to i32
  br i1 %949, label %982, label %976

976:                                              ; preds = %973
  %977 = or i32 %975, 2
  %978 = call i32 @___ratelimit(ptr noundef nonnull @ext4_ioctl_checkpoint._rs, ptr noundef nonnull @__func__.ext4_ioctl_checkpoint) #9
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %982, label %980

980:                                              ; preds = %976
  %981 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %982

982:                                              ; preds = %980, %976, %973
  %983 = phi i32 [ %977, %980 ], [ %977, %976 ], [ %975, %973 ]
  %984 = load ptr, ptr %953, align 4
  %985 = getelementptr inbounds %struct.ext4_sb_info, ptr %984, i32 0, i32 47
  %986 = load ptr, ptr %985, align 4
  call void @jbd2_journal_lock_updates(ptr noundef %986) #9
  %987 = load ptr, ptr %953, align 4
  %988 = getelementptr inbounds %struct.ext4_sb_info, ptr %987, i32 0, i32 47
  %989 = load ptr, ptr %988, align 4
  %990 = call i32 @jbd2_journal_flush(ptr noundef %989, i32 noundef %983) #9
  %991 = load ptr, ptr %953, align 4
  %992 = getelementptr inbounds %struct.ext4_sb_info, ptr %991, i32 0, i32 47
  %993 = load ptr, ptr %992, align 4
  call void @jbd2_journal_unlock_updates(ptr noundef %993) #9
  br label %994

994:                                              ; preds = %982, %970, %965, %958, %952, %945, %942, %940, %936
  %995 = phi i32 [ %990, %982 ], [ -1, %940 ], [ -22, %945 ], [ -22, %942 ], [ -19, %952 ], [ -6, %958 ], [ -95, %965 ], [ 0, %970 ], [ -14, %936 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  br label %1351

996:                                              ; preds = %3
  %997 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %998 = load ptr, ptr %997, align 4
  %999 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %9) #9
  %1000 = getelementptr inbounds %struct.ext4_sb_info, ptr %998, i32 0, i32 14
  %1001 = getelementptr inbounds i8, ptr %9, i32 16
  store i8 0, ptr %1001, align 1
  %1002 = load ptr, ptr %1000, align 64
  %1003 = load volatile i32, ptr %1002, align 4
  %1004 = and i32 %1003, 4
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %1011

1006:                                             ; preds = %996
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1002) #9, !srcloc !29
  %1007 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1002, ptr %1002, i32 4, ptr elementtype(i32) %1002) #9, !srcloc !39
  %1008 = extractvalue { i32, i32, i32 } %1007, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  %1009 = and i32 %1008, 4
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1012, label %1011

1011:                                             ; preds = %1006, %996
  tail call void @__lock_buffer(ptr noundef %1002) #9
  br label %1012

1012:                                             ; preds = %1011, %1006
  %1013 = getelementptr inbounds %struct.ext4_sb_info, ptr %998, i32 0, i32 15
  %1014 = load ptr, ptr %1013, align 4
  %1015 = getelementptr inbounds %struct.ext4_super_block, ptr %1014, i32 0, i32 32
  %1016 = call ptr @strncpy(ptr noundef nonnull %9, ptr noundef %1015, i32 noundef 16) #9
  %1017 = load ptr, ptr %1000, align 64
  call void @unlock_buffer(ptr noundef %1017) #9
  %1018 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %999, i32 17, i32 -1090519040) #10, !srcloc !21
  %1019 = extractvalue { i32, i32 } %1018, 0
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1021, label %1030

1021:                                             ; preds = %1012
  %1022 = tail call ptr @llvm.thread.pointer() #9
  %1023 = getelementptr inbounds %struct.thread_info, ptr %1022, i32 0, i32 3
  %1024 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1023) #11, !srcloc !14
  %1025 = and i32 %1024, -13
  %1026 = or i32 %1025, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1026) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %1027 = call i32 @arm_copy_to_user(ptr noundef %999, ptr noundef nonnull %9, i32 noundef 17) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1024) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %1028 = icmp eq i32 %1027, 0
  %1029 = select i1 %1028, i32 0, i32 -14
  br label %1030

1030:                                             ; preds = %1021, %1012
  %1031 = phi i32 [ -14, %1012 ], [ %1029, %1021 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %9) #9
  br label %1351

1032:                                             ; preds = %3
  %1033 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %8, i8 0, i32 17, i1 false) #9, !annotation !9
  %1034 = load ptr, ptr %22, align 8
  %1035 = getelementptr inbounds %struct.inode, ptr %1034, i32 0, i32 8
  %1036 = load ptr, ptr %1035, align 4
  %1037 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %1037, label %1038, label %1348

1038:                                             ; preds = %1032
  %1039 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1033, i32 17, i32 -1090519040) #10, !srcloc !28
  %1040 = extractvalue { i32, i32 } %1039, 0
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1050, !prof !10

1042:                                             ; preds = %1038
  %1043 = tail call ptr @llvm.thread.pointer() #9
  %1044 = getelementptr inbounds %struct.thread_info, ptr %1043, i32 0, i32 3
  %1045 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1044) #11, !srcloc !14
  %1046 = and i32 %1045, -13
  %1047 = or i32 %1046, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1047) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %1048 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %1033, i32 noundef 17) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1045) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1054, label %1050, !prof !10

1050:                                             ; preds = %1042, %1038
  %1051 = phi i32 [ %1048, %1042 ], [ 17, %1038 ]
  %1052 = sub i32 17, %1051
  %1053 = getelementptr i8, ptr %8, i32 %1052
  call void @llvm.memset.p0.i32(ptr align 1 %1053, i8 0, i32 %1051, i1 false) #9
  br label %1348

1054:                                             ; preds = %1042
  %1055 = call i32 @strnlen(ptr noundef nonnull %8, i32 noundef 17) #9
  %1056 = icmp ugt i32 %1055, 16
  br i1 %1056, label %1348, label %1057

1057:                                             ; preds = %1054
  %1058 = getelementptr i8, ptr %8, i32 %1055
  %1059 = sub nuw nsw i32 16, %1055
  call void @llvm.memset.p0.i32(ptr align 1 %1058, i8 0, i32 %1059, i1 false) #9
  %1060 = call i32 @mnt_want_write_file(ptr noundef %0) #9
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1062, label %1348

1062:                                             ; preds = %1057
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 5, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 7, ptr %7, align 4
  %1063 = getelementptr inbounds %struct.super_block, ptr %1036, i32 0, i32 27
  %1064 = load ptr, ptr %1063, align 4
  %1065 = getelementptr inbounds %struct.ext4_sb_info, ptr %1064, i32 0, i32 48
  %1066 = load volatile i32, ptr %1065, align 4
  %1067 = and i32 %1066, 1
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1069, label %1074

1069:                                             ; preds = %1062
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1065) #9, !srcloc !29
  %1070 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1065, ptr %1065, i32 1, ptr elementtype(i32) %1065) #9, !srcloc !39
  %1071 = extractvalue { i32, i32, i32 } %1070, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  %1072 = and i32 %1071, 1
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1075, label %1074

1074:                                             ; preds = %1069, %1062
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %1036, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13) #9
  br label %1346

1075:                                             ; preds = %1069
  %1076 = load ptr, ptr %1063, align 4
  %1077 = getelementptr inbounds %struct.ext4_sb_info, ptr %1076, i32 0, i32 11
  %1078 = load i32, ptr %1077, align 4
  %1079 = shl i32 %1078, 3
  %1080 = call ptr @__ext4_journal_start_sb(ptr noundef %1036, i32 noundef 206, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef %1079) #9
  %1081 = icmp ugt ptr %1080, inttoptr (i32 -4096 to ptr)
  br i1 %1081, label %1082, label %1084

1082:                                             ; preds = %1075
  %1083 = ptrtoint ptr %1080 to i32
  br label %1343

1084:                                             ; preds = %1075
  %1085 = load ptr, ptr %1063, align 4
  %1086 = getelementptr inbounds %struct.ext4_sb_info, ptr %1085, i32 0, i32 14
  %1087 = load ptr, ptr %1086, align 64
  %1088 = getelementptr inbounds %struct.ext4_sb_info, ptr %1085, i32 0, i32 15
  %1089 = load ptr, ptr %1088, align 4
  %1090 = getelementptr inbounds %struct.buffer_head, ptr %1087, i32 0, i32 3
  %1091 = load i64, ptr %1090, align 8
  %1092 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_update_sb, i32 0, i32 1), align 4
  %1093 = icmp sgt i32 %1092, 0
  br i1 %1093, label %1094, label %1106

1094:                                             ; preds = %1084
  %1095 = getelementptr inbounds %struct.thread_info, ptr %1043, i32 0, i32 2
  %1096 = load i32, ptr %1095, align 8
  %1097 = lshr i32 %1096, 5
  %1098 = getelementptr i32, ptr @__cpu_online_mask, i32 %1097
  %1099 = load volatile i32, ptr %1098, align 4
  %1100 = and i32 %1096, 31
  %1101 = shl nuw i32 1, %1100
  %1102 = and i32 %1101, %1099
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1106, label %1104

1104:                                             ; preds = %1094
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  %1105 = call i32 @__traceiter_ext4_update_sb(ptr noundef null, ptr noundef %1036, i64 noundef %1091, i32 noundef 1) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  br label %1106

1106:                                             ; preds = %1104, %1094, %1084
  %1107 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_update_primary_sb, i32 noundef 60, ptr noundef %1080, ptr noundef %1036, ptr noundef %1087, i32 noundef 1) #9
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1109, label %1141

1109:                                             ; preds = %1106
  %1110 = load volatile i32, ptr %1087, align 4
  %1111 = and i32 %1110, 4
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1113, label %1118

1113:                                             ; preds = %1109
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1087) #9, !srcloc !29
  %1114 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1087, ptr %1087, i32 4, ptr elementtype(i32) %1087) #9, !srcloc !39
  %1115 = extractvalue { i32, i32, i32 } %1114, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  %1116 = and i32 %1115, 4
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1119, label %1118

1118:                                             ; preds = %1113, %1109
  call void @__lock_buffer(ptr noundef %1087) #9
  br label %1119

1119:                                             ; preds = %1118, %1113
  %1120 = getelementptr inbounds %struct.ext4_super_block, ptr %1089, i32 0, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1120, ptr noundef nonnull align 1 dereferenceable(16) %8, i32 16, i1 false) #9
  call void @ext4_superblock_csum_set(ptr noundef %1036) #9
  call void @unlock_buffer(ptr noundef %1087) #9
  %1121 = load volatile i32, ptr %1087, align 4
  %1122 = and i32 %1121, 1024
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1124, label %1128

1124:                                             ; preds = %1119
  %1125 = load volatile i32, ptr %1087, align 4
  %1126 = and i32 %1125, 1
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1128, label %1135

1128:                                             ; preds = %1124, %1119
  %1129 = getelementptr inbounds %struct.ext4_sb_info, ptr %1085, i32 0, i32 45
  %1130 = load ptr, ptr %1129, align 4
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %1130, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #9
  call void @_clear_bit(i32 noundef 10, ptr noundef %1087) #9
  %1131 = load volatile i32, ptr %1087, align 4
  %1132 = and i32 %1131, 1
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1134, label %1135

1134:                                             ; preds = %1128
  call void @_set_bit(i32 noundef 0, ptr noundef %1087) #9
  br label %1135

1135:                                             ; preds = %1134, %1128, %1124
  %1136 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_update_primary_sb, i32 noundef 76, ptr noundef %1080, ptr noundef null, ptr noundef %1087) #9
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1138, label %1141

1138:                                             ; preds = %1135
  %1139 = call i32 @sync_dirty_buffer(ptr noundef %1087) #9
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1143, label %1141

1141:                                             ; preds = %1138, %1135, %1106
  %1142 = phi i32 [ %1139, %1138 ], [ %1136, %1135 ], [ %1107, %1106 ]
  call void @__ext4_std_error(ptr noundef %1036, ptr noundef nonnull @__func__.ext4_update_primary_sb, i32 noundef 81, i32 noundef %1142) #9
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %1036, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.14) #9
  br label %1333

1143:                                             ; preds = %1138
  %1144 = getelementptr inbounds %struct.ext4_sb_info, ptr %1064, i32 0, i32 14
  %1145 = load ptr, ptr %1144, align 64
  %1146 = getelementptr inbounds %struct.buffer_head, ptr %1145, i32 0, i32 3
  %1147 = load i64, ptr %1146, align 8
  %1148 = call i32 @ext4_get_group_number(ptr noundef %1036, i64 noundef %1147) #9
  %1149 = load ptr, ptr %1063, align 4
  %1150 = getelementptr inbounds %struct.ext4_sb_info, ptr %1149, i32 0, i32 8
  %1151 = load i32, ptr %1150, align 32
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !43
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1333, label %1153

1153:                                             ; preds = %1143
  %1154 = getelementptr inbounds %struct.super_block, ptr %1036, i32 0, i32 3
  %1155 = getelementptr inbounds %struct.thread_info, ptr %1043, i32 0, i32 2
  br label %1156

1156:                                             ; preds = %1328, %1153
  %1157 = phi i32 [ 0, %1153 ], [ %1331, %1328 ]
  %1158 = phi i32 [ 0, %1153 ], [ %1330, %1328 ]
  %1159 = phi ptr [ %1080, %1153 ], [ %1329, %1328 ]
  %1160 = icmp eq i32 %1157, %1148
  br i1 %1160, label %1328, label %1161

1161:                                             ; preds = %1156
  %1162 = call i32 @ext4_bg_has_super(ptr noundef %1036, i32 noundef %1157) #9
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1319, label %1164

1164:                                             ; preds = %1161
  %1165 = icmp eq i32 %1157, 0
  br i1 %1165, label %1166, label %1173

1166:                                             ; preds = %1164
  %1167 = load i32, ptr %1154, align 16
  %1168 = freeze i32 %1167
  %1169 = udiv i32 1024, %1168
  %1170 = mul i32 %1169, %1168
  %1171 = sub i32 1024, %1170
  %1172 = zext i32 %1169 to i64
  br label %1186

1173:                                             ; preds = %1164
  %1174 = zext i32 %1157 to i64
  %1175 = load ptr, ptr %1063, align 4
  %1176 = getelementptr inbounds %struct.ext4_sb_info, ptr %1175, i32 0, i32 2
  %1177 = load i32, ptr %1176, align 8
  %1178 = zext i32 %1177 to i64
  %1179 = mul nuw i64 %1178, %1174
  %1180 = getelementptr inbounds %struct.ext4_sb_info, ptr %1175, i32 0, i32 15
  %1181 = load ptr, ptr %1180, align 4
  %1182 = getelementptr inbounds %struct.ext4_super_block, ptr %1181, i32 0, i32 5
  %1183 = load i32, ptr %1182, align 4
  %1184 = zext i32 %1183 to i64
  %1185 = add nuw i64 %1179, %1184
  br label %1186

1186:                                             ; preds = %1173, %1166
  %1187 = phi i64 [ %1172, %1166 ], [ %1185, %1173 ]
  %1188 = phi i32 [ %1171, %1166 ], [ 0, %1173 ]
  %1189 = icmp eq ptr %1159, null
  %1190 = xor i1 %1189, true
  %1191 = zext i1 %1190 to i32
  %1192 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_update_sb, i32 0, i32 1), align 4
  %1193 = icmp sgt i32 %1192, 0
  br i1 %1193, label %1194, label %1205

1194:                                             ; preds = %1186
  %1195 = load i32, ptr %1155, align 8
  %1196 = lshr i32 %1195, 5
  %1197 = getelementptr i32, ptr @__cpu_online_mask, i32 %1196
  %1198 = load volatile i32, ptr %1197, align 4
  %1199 = and i32 %1195, 31
  %1200 = shl nuw i32 1, %1199
  %1201 = and i32 %1200, %1198
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1205, label %1203

1203:                                             ; preds = %1194
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  %1204 = call i32 @__traceiter_ext4_update_sb(ptr noundef null, ptr noundef %1036, i64 noundef %1187, i32 noundef %1191) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  br label %1205

1205:                                             ; preds = %1203, %1194, %1186
  %1206 = call ptr @ext4_sb_bread(ptr noundef %1036, i64 noundef %1187, i32 noundef 0) #9
  %1207 = icmp ugt ptr %1206, inttoptr (i32 -4096 to ptr)
  br i1 %1207, label %1208, label %1210

1208:                                             ; preds = %1205
  %1209 = ptrtoint ptr %1206 to i32
  br label %1314

1210:                                             ; preds = %1205
  br i1 %1189, label %1214, label %1211

1211:                                             ; preds = %1210
  %1212 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_update_backup_sb, i32 noundef 129, ptr noundef nonnull %1159, ptr noundef %1036, ptr noundef %1206, i32 noundef 1) #9
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1214, label %1307

1214:                                             ; preds = %1211, %1210
  %1215 = getelementptr inbounds %struct.buffer_head, ptr %1206, i32 0, i32 5
  %1216 = load ptr, ptr %1215, align 4
  %1217 = getelementptr i8, ptr %1216, i32 %1188
  %1218 = load volatile i32, ptr %1206, align 4
  %1219 = and i32 %1218, 4
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1221, label %1226

1221:                                             ; preds = %1214
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1206) #9, !srcloc !29
  %1222 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1206, ptr %1206, i32 4, ptr elementtype(i32) %1206) #9, !srcloc !39
  %1223 = extractvalue { i32, i32, i32 } %1222, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  %1224 = and i32 %1223, 4
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1227, label %1226

1226:                                             ; preds = %1221, %1214
  call void @__lock_buffer(ptr noundef %1206) #9
  br label %1227

1227:                                             ; preds = %1226, %1221
  %1228 = load ptr, ptr %1063, align 4
  %1229 = getelementptr inbounds %struct.ext4_sb_info, ptr %1228, i32 0, i32 15
  %1230 = load ptr, ptr %1229, align 4
  %1231 = getelementptr inbounds %struct.ext4_super_block, ptr %1230, i32 0, i32 30
  %1232 = load i32, ptr %1231, align 4
  %1233 = and i32 %1232, 1024
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1262, label %1235

1235:                                             ; preds = %1227
  %1236 = getelementptr inbounds %struct.ext4_sb_info, ptr %1228, i32 0, i32 119
  %1237 = load ptr, ptr %1236, align 8
  %1238 = icmp eq ptr %1237, null
  %1239 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %1240 = xor i1 %1239, true
  %1241 = select i1 %1238, i1 %1240, i1 false
  br i1 %1241, label %1242, label %1253, !prof !8

1242:                                             ; preds = %1235
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %1243 = load ptr, ptr %1063, align 4
  %1244 = getelementptr inbounds %struct.ext4_sb_info, ptr %1243, i32 0, i32 15
  %1245 = load ptr, ptr %1244, align 4
  %1246 = getelementptr inbounds %struct.ext4_super_block, ptr %1245, i32 0, i32 30
  %1247 = load i32, ptr %1246, align 4
  %1248 = and i32 %1247, 1024
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1262, label %1250

1250:                                             ; preds = %1242
  %1251 = getelementptr inbounds %struct.ext4_sb_info, ptr %1243, i32 0, i32 119
  %1252 = load ptr, ptr %1251, align 8
  br label %1253

1253:                                             ; preds = %1250, %1235
  %1254 = phi ptr [ %1252, %1250 ], [ %1237, %1235 ]
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1262, label %1256

1256:                                             ; preds = %1253
  %1257 = getelementptr inbounds %struct.ext4_super_block, ptr %1217, i32 0, i32 102
  %1258 = load i32, ptr %1257, align 4
  %1259 = call i32 @ext4_superblock_csum(ptr noundef %1036, ptr noundef %1217) #9
  %1260 = icmp eq i32 %1258, %1259
  br i1 %1260, label %1262, label %1261

1261:                                             ; preds = %1256
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %1036, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16, i64 noundef %1187) #9
  call void @unlock_buffer(ptr noundef %1206) #9
  br label %1307

1262:                                             ; preds = %1256, %1253, %1242, %1227
  %1263 = getelementptr inbounds %struct.ext4_super_block, ptr %1217, i32 0, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1263, ptr noundef nonnull align 1 dereferenceable(16) %8, i32 16, i1 false) #9
  %1264 = load ptr, ptr %1063, align 4
  %1265 = getelementptr inbounds %struct.ext4_sb_info, ptr %1264, i32 0, i32 15
  %1266 = load ptr, ptr %1265, align 4
  %1267 = getelementptr inbounds %struct.ext4_super_block, ptr %1266, i32 0, i32 30
  %1268 = load i32, ptr %1267, align 4
  %1269 = and i32 %1268, 1024
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1295, label %1271

1271:                                             ; preds = %1262
  %1272 = getelementptr inbounds %struct.ext4_sb_info, ptr %1264, i32 0, i32 119
  %1273 = load ptr, ptr %1272, align 8
  %1274 = icmp eq ptr %1273, null
  %1275 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %1276 = xor i1 %1275, true
  %1277 = select i1 %1274, i1 %1276, i1 false
  br i1 %1277, label %1278, label %1289, !prof !8

1278:                                             ; preds = %1271
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #9
  %1279 = load ptr, ptr %1063, align 4
  %1280 = getelementptr inbounds %struct.ext4_sb_info, ptr %1279, i32 0, i32 15
  %1281 = load ptr, ptr %1280, align 4
  %1282 = getelementptr inbounds %struct.ext4_super_block, ptr %1281, i32 0, i32 30
  %1283 = load i32, ptr %1282, align 4
  %1284 = and i32 %1283, 1024
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1295, label %1286

1286:                                             ; preds = %1278
  %1287 = getelementptr inbounds %struct.ext4_sb_info, ptr %1279, i32 0, i32 119
  %1288 = load ptr, ptr %1287, align 8
  br label %1289

1289:                                             ; preds = %1286, %1271
  %1290 = phi ptr [ %1288, %1286 ], [ %1273, %1271 ]
  %1291 = icmp eq ptr %1290, null
  br i1 %1291, label %1295, label %1292

1292:                                             ; preds = %1289
  %1293 = call i32 @ext4_superblock_csum(ptr noundef %1036, ptr noundef %1217) #9
  %1294 = getelementptr inbounds %struct.ext4_super_block, ptr %1217, i32 0, i32 102
  store i32 %1293, ptr %1294, align 4
  br label %1295

1295:                                             ; preds = %1292, %1289, %1278, %1262
  %1296 = load volatile i32, ptr %1206, align 4
  %1297 = and i32 %1296, 1
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1299, label %1300

1299:                                             ; preds = %1295
  call void @_set_bit(i32 noundef 0, ptr noundef %1206) #9
  br label %1300

1300:                                             ; preds = %1299, %1295
  call void @unlock_buffer(ptr noundef %1206) #9
  br i1 %1189, label %1304, label %1301

1301:                                             ; preds = %1300
  %1302 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_update_backup_sb, i32 noundef 154, ptr noundef nonnull %1159, ptr noundef null, ptr noundef %1206) #9
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1305, label %1307

1304:                                             ; preds = %1300
  call void @mark_buffer_dirty(ptr noundef %1206) #9
  br label %1305

1305:                                             ; preds = %1304, %1301
  %1306 = call i32 @sync_dirty_buffer(ptr noundef %1206) #9
  br label %1307

1307:                                             ; preds = %1305, %1301, %1261, %1211
  %1308 = phi i32 [ %1212, %1211 ], [ -74, %1261 ], [ %1302, %1301 ], [ %1306, %1305 ]
  %1309 = icmp eq ptr %1206, null
  br i1 %1309, label %1311, label %1310

1310:                                             ; preds = %1307
  call void @__brelse(ptr noundef nonnull %1206) #9
  br label %1311

1311:                                             ; preds = %1310, %1307
  %1312 = icmp eq i32 %1308, 0
  br i1 %1312, label %1319, label %1313

1313:                                             ; preds = %1311
  call void @__ext4_std_error(ptr noundef %1036, ptr noundef nonnull @__func__.ext4_update_backup_sb, i32 noundef 165, i32 noundef %1308) #9
  br label %1314

1314:                                             ; preds = %1313, %1208
  %1315 = phi i32 [ %1209, %1208 ], [ %1308, %1313 ]
  %1316 = icmp slt i32 %1315, 0
  br i1 %1316, label %1317, label %1319

1317:                                             ; preds = %1314
  %1318 = icmp eq i32 %1315, -74
  br i1 %1318, label %1328, label %1333

1319:                                             ; preds = %1314, %1311, %1161
  %1320 = phi i32 [ %1315, %1314 ], [ 1, %1311 ], [ 0, %1161 ]
  %1321 = add i32 %1320, %1158
  %1322 = icmp ne ptr %1159, null
  %1323 = icmp sgt i32 %1321, 1
  %1324 = select i1 %1322, i1 %1323, i1 false
  br i1 %1324, label %1325, label %1328

1325:                                             ; preds = %1319
  %1326 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_update_superblocks_fn, i32 noundef 251, ptr noundef nonnull %1159) #9
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1328, label %1343

1328:                                             ; preds = %1325, %1319, %1317, %1156
  %1329 = phi ptr [ %1159, %1156 ], [ %1159, %1317 ], [ %1159, %1319 ], [ null, %1325 ]
  %1330 = phi i32 [ %1158, %1156 ], [ %1158, %1317 ], [ %1321, %1319 ], [ %1321, %1325 ]
  %1331 = call i32 @ext4_list_backups(ptr noundef %1036, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %1332 = icmp ult i32 %1331, %1151
  br i1 %1332, label %1156, label %1333

1333:                                             ; preds = %1328, %1317, %1143, %1141
  %1334 = phi ptr [ %1080, %1141 ], [ %1080, %1143 ], [ %1159, %1317 ], [ %1329, %1328 ]
  %1335 = phi i32 [ %1142, %1141 ], [ 0, %1143 ], [ %1315, %1317 ], [ 0, %1328 ]
  %1336 = icmp eq ptr %1334, null
  br i1 %1336, label %1343, label %1337

1337:                                             ; preds = %1333
  %1338 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_update_superblocks_fn, i32 noundef 262, ptr noundef nonnull %1334) #9
  %1339 = icmp eq i32 %1338, 0
  %1340 = icmp ne i32 %1335, 0
  %1341 = select i1 %1339, i1 true, i1 %1340
  %1342 = select i1 %1341, i32 %1335, i32 %1338
  br label %1343

1343:                                             ; preds = %1337, %1333, %1325, %1082
  %1344 = phi i32 [ %1083, %1082 ], [ %1335, %1333 ], [ %1342, %1337 ], [ %1326, %1325 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !44
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1065) #9, !srcloc !29
  %1345 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1065, ptr %1065, i32 1, ptr elementtype(i32) %1065) #9, !srcloc !45
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !46
  br label %1346

1346:                                             ; preds = %1343, %1074
  %1347 = phi i32 [ -16, %1074 ], [ %1344, %1343 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @mnt_drop_write_file(ptr noundef %0) #9
  br label %1348

1348:                                             ; preds = %1346, %1057, %1054, %1050, %1032
  %1349 = phi i32 [ %1347, %1346 ], [ -1, %1032 ], [ -22, %1054 ], [ %1060, %1057 ], [ -14, %1050 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %8) #9
  br label %1351

1350:                                             ; preds = %3
  br label %1351

1351:                                             ; preds = %1350, %1348, %1030, %994, %915, %888, %868, %866, %855, %851, %849, %784, %783, %781, %779, %777, %723, %625, %471, %466, %464, %461, %459, %456, %453, %451, %449, %349, %280, %231, %229, %145, %143, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %1352 = phi i32 [ -25, %1350 ], [ %1349, %1348 ], [ %1031, %1030 ], [ %995, %994 ], [ %850, %849 ], [ %806, %784 ], [ 0, %783 ], [ %780, %779 ], [ %778, %777 ], [ %724, %723 ], [ %450, %449 ], [ %350, %349 ], [ %230, %229 ], [ %154, %145 ], [ %144, %143 ], [ %281, %280 ], [ %232, %231 ], [ %458, %456 ], [ -13, %451 ], [ %454, %453 ], [ %465, %464 ], [ -13, %459 ], [ %462, %461 ], [ %626, %625 ], [ -9, %466 ], [ %472, %471 ], [ -95, %3 ], [ -13, %781 ], [ 0, %915 ], [ -1, %851 ], [ -14, %855 ], [ -22, %866 ], [ 0, %868 ], [ -22, %888 ], [ -95, %3 ], [ -95, %3 ], [ -95, %3 ], [ -95, %3 ], [ -95, %3 ], [ -95, %3 ], [ -95, %3 ], [ -95, %3 ], [ -95, %3 ], [ -95, %3 ], [ -95, %3 ]
  ret i32 %1352
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ext4_empty_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_reserve_inode_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_dax_dontcache(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i16, ptr %0, align 8
  %4 = and i16 %3, -4096
  %5 = icmp eq i16 %4, 16384
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 18
  %12 = load i32, ptr %11, align 16
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %0, i32 -124
  %17 = load i32, ptr %16, align 4
  %18 = xor i32 %17, %1
  %19 = and i32 %18, 33554432
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void @d_mark_dontcache(ptr noundef %0) #9
  br label %22

22:                                               ; preds = %21, %15, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_inode_flags(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_change_inode_journal_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_migrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ind_migrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_mark_dontcache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_resize_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_group_extend(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_lock_updates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_unlock_updates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_resize_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_move_extents(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_alloc_da_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_resize_fs(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fc_mark_ineligible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_register_li_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_trim_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_precache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_clear_inode_es(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fsmap_to_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_getfsmap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_getfsmap_format(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.fsmap, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !9
  %4 = load ptr, ptr %1, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_getfsmap_mapping, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %19 = tail call i32 @__traceiter_ext4_getfsmap_mapping(ptr noundef null, ptr noundef %4, ptr noundef %0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !48
  %20 = load ptr, ptr %1, align 4
  br label %21

21:                                               ; preds = %18, %7, %2
  %22 = phi ptr [ %4, %2 ], [ %4, %7 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.ext4_fsmap, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.getfsmap_info, ptr %1, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  call void @ext4_fsmap_from_internal(ptr noundef %22, ptr noundef nonnull %3, ptr noundef %0) #9
  %26 = getelementptr inbounds %struct.getfsmap_info, ptr %1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.getfsmap_info, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = getelementptr %struct.fsmap_head, ptr %27, i32 0, i32 6, i32 %29
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 64, i32 -1090519040) #10, !srcloc !21
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = tail call ptr @llvm.thread.pointer() #9
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #11, !srcloc !14
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %41 = call i32 @arm_copy_to_user(ptr noundef %31, ptr noundef nonnull %3, i32 noundef 64) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 0, i32 -14
  br label %44

44:                                               ; preds = %35, %21
  %45 = phi i32 [ -14, %21 ], [ %43, %35 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_getfsmap_low_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_getfsmap_high_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_fsmap_from_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_getfsmap_mapping(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_group_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_double_down_write_data_sem(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @swap_inode_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr i8, ptr %0, i32 -208
  %6 = getelementptr i8, ptr %1, i32 -208
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 33
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %7, align 8
  store i64 %8, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dereferenceable(16) %11, i32 16, i1 false)
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %11, ptr noundef align 8 dereferenceable(16) %12, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) %13, i32 16, i1 false)
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %13, ptr noundef align 8 dereferenceable(16) %14, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  br label %15

15:                                               ; preds = %15, %2
  %16 = phi i32 [ 60, %2 ], [ %19, %15 ]
  %17 = phi ptr [ %6, %2 ], [ %23, %15 ]
  %18 = phi ptr [ %5, %2 ], [ %22, %15 ]
  %19 = add nsw i32 %16, -1
  %20 = load i8, ptr %18, align 1
  %21 = load i8, ptr %17, align 1
  store i8 %21, ptr %18, align 1
  store i8 %20, ptr %17, align 1
  %22 = getelementptr i8, ptr %18, i32 1
  %23 = getelementptr i8, ptr %17, i32 1
  %24 = icmp eq i32 %19, 0
  br i1 %24, label %25, label %15

25:                                               ; preds = %15
  %26 = getelementptr i8, ptr %0, i32 -124
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 786432
  %29 = getelementptr i8, ptr %1, i32 -124
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 786432
  %32 = and i32 %27, -786433
  %33 = or i32 %31, %32
  store i32 %33, ptr %26, align 4
  %34 = load i32, ptr %29, align 4
  %35 = and i32 %34, -786433
  %36 = or i32 %35, %28
  store i32 %36, ptr %29, align 4
  %37 = getelementptr i8, ptr %0, i32 -32
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr i8, ptr %1, i32 -32
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %37, align 8
  store i64 %38, ptr %39, align 8
  %41 = tail call i32 @ext4_es_remove_extent(ptr noundef %0, i32 noundef 0, i32 noundef -1) #9
  %42 = tail call i32 @ext4_es_remove_extent(ptr noundef %1, i32 noundef 0, i32 noundef -1) #9
  %43 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %44 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %45

45:                                               ; preds = %53, %25
  %46 = load volatile i32, ptr %43, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %49, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !50
  %50 = load volatile i32, ptr %43, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %49

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %46, %45 ], [ %50, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !51
  %55 = load i64, ptr %44, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !52
  %56 = load volatile i32, ptr %43, align 4
  %57 = icmp eq i32 %56, %54
  br i1 %57, label %58, label %45

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %60 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %61

61:                                               ; preds = %69, %58
  %62 = load volatile i32, ptr %59, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %65, %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !50
  %66 = load volatile i32, ptr %59, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %65

69:                                               ; preds = %65, %61
  %70 = phi i32 [ %62, %61 ], [ %66, %65 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !51
  %71 = load i64, ptr %60, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !52
  %72 = load volatile i32, ptr %59, align 4
  %73 = icmp eq i32 %72, %70
  br i1 %73, label %74, label %61

74:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %75 = load i32, ptr %43, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %43, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !32
  store i64 %71, ptr %44, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !33
  %77 = load i32, ptr %43, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %43, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %79 = load i32, ptr %59, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %59, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !32
  store i64 %55, ptr %60, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !33
  %81 = load i32, ptr %59, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %59, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_double_up_write_data_sem(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_es_cache(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_force_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_shutdown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_group_number(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_list_backups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_update_sb(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_has_super(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_superblock_csum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153853530, i64 2153854010, i64 2153853567, i64 2153853623, i64 2153853657, i64 2153853681, i64 2153853722, i64 2153853743, i64 2153853771, i64 2153853805}
!12 = !{i64 2153854608, i64 2153855088, i64 2153854645, i64 2153854701, i64 2153854735, i64 2153854759, i64 2153854800, i64 2153854821, i64 2153854849, i64 2153854883}
!13 = !{i64 2151228693}
!14 = !{i64 3497169}
!15 = !{i64 3497366}
!16 = !{i64 2150982645}
!17 = !{i64 2155797752}
!18 = !{i64 2155797924}
!19 = !{i64 2155814833}
!20 = !{i64 2155815007}
!21 = !{i64 2151001635, i64 2151001660}
!22 = !{i64 2156169737, i64 2156170017, i64 2156170351, i64 2156170685}
!23 = !{i64 2156182568, i64 2156182848, i64 2156183182, i64 2156183516}
!24 = !{i64 2156194361, i64 2156194641, i64 2156194975, i64 2156195309}
!25 = !{!26}
!26 = distinct !{!26, !27, !"fdget: argument 0"}
!27 = distinct !{!27, !"fdget"}
!28 = !{i64 2151001057, i64 2151001082}
!29 = !{i64 867398, i64 2148357369, i64 2148357395, i64 2148357442, i64 2148357464, i64 2148357492, i64 2148357512}
!30 = !{i64 857257, i64 857277, i64 857305, i64 857335, i64 857351}
!31 = !{i64 2151321821}
!32 = !{i64 2149514725}
!33 = !{i64 2149515026}
!34 = !{i64 2151329379}
!35 = !{i64 2156219544, i64 2156219824, i64 2156220158, i64 2156220492}
!36 = !{i64 2156150203, i64 2156150483, i64 2156150817, i64 2156151151}
!37 = !{i64 2155852508}
!38 = !{i64 2155852664}
!39 = !{i64 2148377246, i64 2148377278, i64 2148377307, i64 2148377341, i64 2148377372, i64 2148377395}
!40 = !{i64 2148478586}
!41 = !{i64 2156100738}
!42 = !{i64 2156100910}
!43 = !{i64 2153876913}
!44 = !{i64 2148477551}
!45 = !{i64 2148375705, i64 2148375737, i64 2148375766, i64 2148375800, i64 2148375831, i64 2148375854}
!46 = !{i64 2156122801}
!47 = !{i64 2155831929}
!48 = !{i64 2155832101}
!49 = !{i64 2151320039}
!50 = !{i64 2151319881}
!51 = !{i64 2151320183}
!52 = !{i64 2149514426}
