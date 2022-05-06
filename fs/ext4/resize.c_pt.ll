; ModuleID = '/llk/IR/fs/ext4/resize.c_pt.bc'
source_filename = "../fs/ext4/resize.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ext4_rcu_ptr = type { %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_new_flex_group_data = type { ptr, ptr, i32 }
%struct.ext4_new_group_data = type { i32, i64, i64, i64, i32, i16, i16, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.37, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.38, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.39, ptr, %struct.address_space, %struct.list_head, %union.anon.40, i32, i32, ptr, ptr }
%union.anon.37 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.38 = type { %struct.callback_head }
%union.anon.39 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.40 = type { ptr }
%struct.ext4_group_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.flex_groups = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t }

@__func__.ext4_resize_begin = private unnamed_addr constant [18 x i8] c"ext4_resize_begin\00", align 1
@.str = private unnamed_addr constant [45 x i8] c"won't resize using backup superblock at %llu\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"There are errors in the filesystem, so online resizing is not allowed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Online resizing not supported with sparse_super2\00", align 1
@__func__.ext4_group_add = private unnamed_addr constant [15 x i8] c"ext4_group_add\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Can't resize non-sparse filesystem further\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"blocks_count overflow\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"inodes_count overflow\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"No reserved GDT blocks, can't resize\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Error opening resize inode\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"extending last group from %llu to %llu blocks\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"filesystem too large to resize to %llu blocks safely\00", align 1
@__func__.ext4_group_extend = private unnamed_addr constant [18 x i8] c"ext4_group_extend\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"can't shrink FS - resize aborted\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"need to use ext2online to resize further\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"will only finish group (%llu blocks, %u new)\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"can't read last block, resize aborted\00", align 1
@__func__.ext4_resize_fs = private unnamed_addr constant [15 x i8] c"ext4_resize_fs\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"resizing filesystem from %llu to %llu blocks\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"resize would cause inodes_count overflow\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"resize_inode and meta_bg enabled simultaneously\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.20 = private unnamed_addr constant [23 x i8] c"resized to %llu blocks\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"error (%d) occurred during file system resize\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"resized filesystem to %llu\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.verify_group_input = private unnamed_addr constant [19 x i8] c"verify_group_input\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Cannot add at group %u (only %u groups)\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"\017EXT4-fs: adding %s group %u: %u blocks (%d free, %u reserved)\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"no-super\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Last group not full\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Reserved blocks too high (%u)\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Bad blocks count %u\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Cannot read last block (%llu)\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"Block bitmap not in group (block %llu)\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"Inode bitmap not in group (block %llu)\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"Inode table not in group (blocks %llu-%llu)\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Block bitmap same as inode bitmap (%llu)\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"Block bitmap (%llu) in inode table (%llu-%llu)\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Inode bitmap (%llu) in inode table (%llu-%llu)\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"Block bitmap (%llu) in GDT table (%llu-%llu)\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"Inode bitmap (%llu) in GDT table (%llu-%llu)\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"Inode table (%llu-%llu) overlaps GDT table (%llu-%llu)\00", align 1
@__func__.ext4_flex_group_add = private unnamed_addr constant [20 x i8] c"ext4_flex_group_add\00", align 1
@__func__.setup_new_flex_group_blocks = private unnamed_addr constant [28 x i8] c"setup_new_flex_group_blocks\00", align 1
@__func__.bclean = private unnamed_addr constant [7 x i8] c"bclean\00", align 1
@__func__.set_flexbg_block_bitmap = private unnamed_addr constant [24 x i8] c"set_flexbg_block_bitmap\00", align 1
@__func__.ext4_add_new_descs = private unnamed_addr constant [19 x i8] c"ext4_add_new_descs\00", align 1
@__func__.reserve_backup_gdb = private unnamed_addr constant [19 x i8] c"reserve_backup_gdb\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"reserved block %llu not at offset %ld\00", align 1
@__func__.verify_reserved_gdb = private unnamed_addr constant [20 x i8] c"verify_reserved_gdb\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"reserved GDT %llu missing grp %d (%llu)\00", align 1
@__func__.add_new_gdb_meta_bg = private unnamed_addr constant [20 x i8] c"add_new_gdb_meta_bg\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"not enough memory for %lu groups\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"\017EXT4-fs: ext4_add_new_gdb: adding group block %lu\0A\00", align 1
@__func__.add_new_gdb = private unnamed_addr constant [12 x i8] c"add_new_gdb\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"new group %u GDT block %llu not reserved\00", align 1
@__func__.ext4_setup_new_descs = private unnamed_addr constant [21 x i8] c"ext4_setup_new_descs\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1
@.str.46 = private unnamed_addr constant [64 x i8] c"\017EXT4-fs: added group %u:%llu blocks(%llu free %llu reserved)\0A\00", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__func__.update_backups = private unnamed_addr constant [15 x i8] c"update_backups\00", align 1
@.str.47 = private unnamed_addr constant [71 x i8] c"can't update backup for group %u (err %d), forcing fsck on next reboot\00", align 1
@__func__.ext4_group_extend_no_check = private unnamed_addr constant [27 x i8] c"ext4_group_extend_no_check\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"error %d on journal start\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"error %d on journal write access\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"\017EXT4-fs: extended group to %llu blocks\0A\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"Converting file system to meta_bg\00", align 1
@__func__.ext4_convert_meta_bg = private unnamed_addr constant [21 x i8] c"ext4_convert_meta_bg\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"Unexpected non-zero s_reserved_gdt_blocks\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"corrupted/inconsistent resize inode\00", align 1
@.str.54 = private unnamed_addr constant [67 x i8] c"\017EXT4-fs: adding a flex group with %d groups, flexbg size is %d:\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_kvfree_array_rcu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ext4_rcu_ptr, ptr %3, i32 0, i32 1
  store ptr %0, ptr %6, align 8
  tail call void @call_rcu(ptr noundef nonnull %3, ptr noundef nonnull @ext4_rcu_ptr_callback) #11
  br label %8

7:                                                ; preds = %1
  tail call void @synchronize_rcu() #11
  tail call void @kvfree(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_rcu_ptr_callback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ext4_rcu_ptr, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kvfree(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_resize_begin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = tail call zeroext i1 @capable(i32 noundef 24) #11
  br i1 %4, label %5, label %49

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 14
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 3
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  %11 = load i32, ptr %10, align 16
  %12 = zext i32 %11 to i64
  %13 = lshr i64 %9, %12
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ext4_super_block, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp eq i64 %13, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 14
  %23 = load ptr, ptr %22, align 64
  %24 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 3
  %25 = load i64, ptr %24, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_resize_begin, i32 noundef 63, ptr noundef nonnull @.str, i64 noundef %25) #11
  br label %49

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 25
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_resize_begin, i32 noundef 73, ptr noundef nonnull @.str.1) #11
  br label %49

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ext4_super_block, ptr %16, i32 0, i32 28
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  br label %49

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ext4_sb_info, ptr %14, i32 0, i32 48
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #11, !srcloc !8
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #11, !srcloc !9
  %45 = extractvalue { i32, i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %43, %37, %31, %21, %1
  %50 = phi i32 [ -1, %21 ], [ -1, %31 ], [ -95, %37 ], [ -1, %1 ], [ -16, %48 ], [ 0, %43 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_resize_end(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #11, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #11, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_list_backups(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_super_block, ptr %8, i32 0, i32 28
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr %1, align 4
  %15 = call i32 @llvm.umax.i32(i32 %14, i32 3)
  br label %16

16:                                               ; preds = %19, %13
  %17 = phi i32 [ %14, %13 ], [ %23, %19 ]
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %46, label %19

19:                                               ; preds = %16
  %20 = add nsw i32 %17, -1
  %21 = getelementptr %struct.ext4_super_block, ptr %8, i32 0, i32 84, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %17, 1
  store i32 %23, ptr %1, align 4
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %16, label %46

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.ext4_super_block, ptr %8, i32 0, i32 30
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, ptr %1, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %1, align 4
  br label %46

33:                                               ; preds = %25
  %34 = load i32, ptr %2, align 4
  %35 = load i32, ptr %1, align 4
  %36 = icmp ult i32 %34, %35
  %37 = select i1 %36, ptr %2, ptr %1
  %38 = select i1 %36, i32 5, i32 3
  %39 = load i32, ptr %3, align 4
  %40 = load i32, ptr %37, align 4
  %41 = icmp ult i32 %39, %40
  %42 = select i1 %41, ptr %3, ptr %37
  %43 = select i1 %41, i32 7, i32 %38
  %44 = load i32, ptr %42, align 4
  %45 = mul i32 %43, %44
  store i32 %45, ptr %42, align 4
  br label %46

46:                                               ; preds = %33, %30, %19, %16
  %47 = phi i32 [ %44, %33 ], [ %31, %30 ], [ %22, %19 ], [ -1, %16 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_group_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_new_flex_group_data, align 4
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %1, align 8
  %11 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %10) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 37
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i32 [ %16, %13 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 0, ptr %5, align 2
  %19 = load i32, ptr %1, align 8
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = urem i32 %19, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_super_block, ptr %27, i32 0, i32 30
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1669, ptr noundef nonnull @.str.4) #11
  br label %266

33:                                               ; preds = %25, %17
  %34 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 29
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ext4_new_group_data, ptr %1, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = zext i32 %43 to i64
  br label %57

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 50
  %47 = load i32, ptr %46, align 8
  %48 = zext i32 %47 to i64
  %49 = shl nuw i64 %48, 32
  %50 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = zext i32 %51 to i64
  %53 = or i64 %49, %52
  %54 = getelementptr inbounds %struct.ext4_new_group_data, ptr %1, i32 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %45, %38
  %58 = phi i64 [ %41, %38 ], [ %56, %45 ]
  %59 = phi i64 [ %44, %38 ], [ %53, %45 ]
  %60 = phi ptr [ %42, %38 ], [ %54, %45 ]
  %61 = phi i64 [ %41, %38 ], [ %52, %45 ]
  %62 = phi i64 [ 0, %38 ], [ %49, %45 ]
  %63 = add i64 %59, %58
  %64 = or i64 %62, %61
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1675, ptr noundef nonnull @.str.5) #11
  br label %266

67:                                               ; preds = %57
  %68 = load i32, ptr %9, align 8
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 4
  %70 = load i32, ptr %69, align 16
  %71 = xor i32 %68, -1
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1681, ptr noundef nonnull @.str.6) #11
  br label %266

74:                                               ; preds = %67
  %75 = icmp ne i32 %18, 0
  %76 = select i1 %75, i1 true, i1 %24
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 15
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ext4_super_block, ptr %79, i32 0, i32 28
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 37
  %86 = load i16, ptr %85, align 2
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %77
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1689, ptr noundef nonnull @.str.7) #11
  br label %266

89:                                               ; preds = %84
  %90 = tail call ptr @__ext4_iget(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1692) #11
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %6, align 4
  br label %96

94:                                               ; preds = %89
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1694, ptr noundef nonnull @.str.8) #11
  %95 = ptrtoint ptr %90 to i32
  br label %266

96:                                               ; preds = %92, %74
  %97 = phi ptr [ %93, %92 ], [ %20, %74 ]
  %98 = phi ptr [ %90, %92 ], [ null, %74 ]
  %99 = getelementptr inbounds %struct.ext4_sb_info, ptr %97, i32 0, i32 15
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ext4_super_block, ptr %100, i32 0, i32 29
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 128
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.ext4_super_block, ptr %100, i32 0, i32 50
  %107 = load i32, ptr %106, align 8
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  br label %110

110:                                              ; preds = %105, %96
  %111 = phi i64 [ %109, %105 ], [ 0, %96 ]
  %112 = getelementptr inbounds %struct.ext4_super_block, ptr %100, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = zext i32 %113 to i64
  %115 = or i64 %111, %114
  %116 = load i32, ptr %60, align 8
  %117 = zext i32 %116 to i64
  %118 = add i64 %115, %117
  %119 = load i32, ptr %1, align 8
  %120 = getelementptr inbounds %struct.ext4_new_group_data, ptr %1, i32 0, i32 3
  %121 = load i64, ptr %120, align 8
  %122 = getelementptr inbounds %struct.ext4_sb_info, ptr %97, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = zext i32 %123 to i64
  %125 = add i64 %121, %124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !14
  %126 = getelementptr inbounds %struct.ext4_sb_info, ptr %97, i32 0, i32 8
  %127 = load i32, ptr %126, align 32
  %128 = icmp eq i32 %119, %127
  br i1 %128, label %130, label %129

129:                                              ; preds = %110
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 137, ptr noundef nonnull @.str.23, i32 noundef %119, i32 noundef %127) #11
  br label %246

130:                                              ; preds = %110
  %131 = tail call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %119) #11
  %132 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %119) #11
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %6, align 4
  %136 = getelementptr inbounds %struct.ext4_sb_info, ptr %135, i32 0, i32 15
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.ext4_super_block, ptr %137, i32 0, i32 37
  %139 = load i16, ptr %138, align 2
  %140 = zext i16 %139 to i32
  %141 = add i32 %131, 1
  %142 = add i32 %141, %140
  br label %143

143:                                              ; preds = %134, %130
  %144 = phi i32 [ %142, %134 ], [ %131, %130 ]
  %145 = zext i32 %144 to i64
  %146 = add i64 %115, %145
  %147 = load i32, ptr %60, align 8
  %148 = load i32, ptr %122, align 4
  %149 = add i32 %147, -2
  %150 = add i32 %144, %148
  %151 = sub i32 %149, %150
  %152 = getelementptr inbounds %struct.ext4_new_group_data, ptr %1, i32 0, i32 7
  store i32 %151, ptr %152, align 8
  %153 = load ptr, ptr %6, align 4
  %154 = getelementptr inbounds %struct.ext4_sb_info, ptr %153, i32 0, i32 17
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %143
  %159 = load i32, ptr %1, align 8
  %160 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %159) #11
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, ptr @.str.26, ptr @.str.25
  %163 = load i32, ptr %1, align 8
  %164 = load i32, ptr %60, align 8
  %165 = getelementptr inbounds %struct.ext4_new_group_data, ptr %1, i32 0, i32 5
  %166 = load i16, ptr %165, align 4
  %167 = zext i16 %166 to i32
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %162, i32 noundef %163, i32 noundef %164, i32 noundef %151, i32 noundef %167) #12
  br label %169

169:                                              ; preds = %158, %143
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %115, ptr noundef null, ptr noundef nonnull %3) #11
  %170 = load i32, ptr %3, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 155, ptr noundef nonnull @.str.27) #11
  br label %246

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.ext4_new_group_data, ptr %1, i32 0, i32 5
  %175 = load i16, ptr %174, align 4
  %176 = zext i16 %175 to i32
  %177 = load i32, ptr %60, align 8
  %178 = udiv i32 %177, 5
  %179 = icmp ult i32 %178, %176
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 158, ptr noundef nonnull @.str.28, i32 noundef %176) #11
  br label %246

181:                                              ; preds = %173
  %182 = icmp slt i32 %151, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %181
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 161, ptr noundef nonnull @.str.29, i32 noundef %177) #11
  br label %246

184:                                              ; preds = %181
  %185 = add i64 %118, -1
  %186 = call ptr @ext4_sb_bread(ptr noundef %0, i64 noundef %185, i32 noundef 0) #11
  %187 = icmp ugt ptr %186, inttoptr (i32 -4096 to ptr)
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = ptrtoint ptr %186 to i32
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 166, ptr noundef nonnull @.str.30, i64 noundef %185) #11
  br label %247

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.ext4_new_group_data, ptr %1, i32 0, i32 1
  %192 = load i64, ptr %191, align 8
  %193 = icmp uge i64 %192, %115
  %194 = icmp ult i64 %192, %118
  %195 = select i1 %193, i1 %194, i1 false
  br i1 %195, label %197, label %196

196:                                              ; preds = %190
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 169, ptr noundef nonnull @.str.31, i64 noundef %192) #11
  br label %242

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.ext4_new_group_data, ptr %1, i32 0, i32 2
  %199 = load i64, ptr %198, align 8
  %200 = icmp uge i64 %199, %115
  %201 = icmp ult i64 %199, %118
  %202 = select i1 %200, i1 %201, i1 false
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 172, ptr noundef nonnull @.str.32, i64 noundef %199) #11
  br label %242

204:                                              ; preds = %197
  %205 = load i64, ptr %120, align 8
  %206 = icmp uge i64 %205, %115
  %207 = icmp ult i64 %205, %118
  %208 = select i1 %206, i1 %207, i1 false
  %209 = add i64 %125, -1
  br i1 %208, label %210, label %214

210:                                              ; preds = %204
  %211 = icmp uge i64 %209, %115
  %212 = icmp ult i64 %209, %118
  %213 = select i1 %211, i1 %212, i1 false
  br i1 %213, label %215, label %214

214:                                              ; preds = %210, %204
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 176, ptr noundef nonnull @.str.33, i64 noundef %205, i64 noundef %209) #11
  br label %242

215:                                              ; preds = %210
  %216 = icmp eq i64 %199, %192
  br i1 %216, label %217, label %218

217:                                              ; preds = %215
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 179, ptr noundef nonnull @.str.34, i64 noundef %192) #11
  br label %242

218:                                              ; preds = %215
  %219 = icmp uge i64 %192, %205
  %220 = icmp ult i64 %192, %125
  %221 = select i1 %219, i1 %220, i1 false
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 184, ptr noundef nonnull @.str.35, i64 noundef %192, i64 noundef %205, i64 noundef %209) #11
  br label %242

223:                                              ; preds = %218
  %224 = icmp uge i64 %199, %205
  %225 = icmp ult i64 %199, %125
  %226 = select i1 %224, i1 %225, i1 false
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 189, ptr noundef nonnull @.str.36, i64 noundef %199, i64 noundef %205, i64 noundef %209) #11
  br label %242

228:                                              ; preds = %223
  %229 = icmp ult i64 %192, %146
  br i1 %229, label %230, label %232

230:                                              ; preds = %228
  %231 = add i64 %146, -1
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 193, ptr noundef nonnull @.str.37, i64 noundef %192, i64 noundef %115, i64 noundef %231) #11
  br label %242

232:                                              ; preds = %228
  %233 = icmp ult i64 %199, %146
  br i1 %233, label %234, label %236

234:                                              ; preds = %232
  %235 = add i64 %146, -1
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 197, ptr noundef nonnull @.str.38, i64 noundef %199, i64 noundef %115, i64 noundef %235) #11
  br label %242

236:                                              ; preds = %232
  %237 = icmp ult i64 %205, %146
  %238 = icmp ult i64 %209, %146
  %239 = select i1 %237, i1 true, i1 %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = add i64 %146, -1
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 203, ptr noundef nonnull @.str.39, i64 noundef %205, i64 noundef %209, i64 noundef %115, i64 noundef %241) #11
  br label %242

242:                                              ; preds = %240, %236, %234, %230, %227, %222, %217, %214, %203, %196
  %243 = phi i32 [ -22, %196 ], [ -22, %203 ], [ -22, %214 ], [ -22, %217 ], [ -22, %222 ], [ -22, %227 ], [ -22, %230 ], [ -22, %234 ], [ -22, %240 ], [ 0, %236 ]
  %244 = icmp eq ptr %186, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  call void @__brelse(ptr noundef nonnull %186) #11
  br label %247

246:                                              ; preds = %183, %180, %172, %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %264

247:                                              ; preds = %245, %242, %188
  %248 = phi i32 [ %243, %242 ], [ %243, %245 ], [ %189, %188 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %247
  %251 = load i32, ptr %1, align 8
  %252 = add i32 %251, 1
  %253 = call i32 @ext4_alloc_flex_bg_array(ptr noundef %0, i32 noundef %252) #11
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load i32, ptr %1, align 8
  %257 = add i32 %256, 1
  %258 = call i32 @ext4_mb_alloc_groupinfo(ptr noundef %0, i32 noundef %257) #11
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %4, i32 0, i32 2
  store i32 1, ptr %261, align 4
  store ptr %1, ptr %4, align 4
  %262 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %4, i32 0, i32 1
  store ptr %5, ptr %262, align 4
  %263 = call fastcc i32 @ext4_flex_group_add(ptr noundef %0, ptr noundef %98, ptr noundef nonnull %4)
  br label %264

264:                                              ; preds = %260, %255, %250, %247, %246
  %265 = phi i32 [ %248, %247 ], [ %253, %250 ], [ %258, %255 ], [ %263, %260 ], [ -22, %246 ]
  call void @iput(ptr noundef %98) #11
  br label %266

266:                                              ; preds = %264, %94, %88, %73, %66, %32
  %267 = phi i32 [ -22, %66 ], [ -22, %73 ], [ %95, %94 ], [ %265, %264 ], [ -1, %88 ], [ -1, %32 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret i32 %267
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_has_super(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_alloc_flex_bg_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mb_alloc_groupinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_flex_group_add(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.ext4_iloc, align 4
  %5 = alloca %struct.ext4_iloc, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !14
  %13 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %2, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16, !prof !15

16:                                               ; preds = %3
  %17 = load ptr, ptr %2, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !15

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !15

23:                                               ; preds = %19, %16, %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1500, 0\0A.popsection", ""() #11, !srcloc !16
  unreachable

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ext4_super_block, ptr %12, i32 0, i32 37
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.ext4_super_block, ptr %12, i32 0, i32 29
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.ext4_super_block, ptr %12, i32 0, i32 50
  %34 = load i32, ptr %33, align 8
  %35 = zext i32 %34 to i64
  %36 = shl nuw i64 %35, 32
  br label %37

37:                                               ; preds = %32, %24
  %38 = phi i64 [ %36, %32 ], [ 0, %24 ]
  %39 = getelementptr inbounds %struct.ext4_super_block, ptr %12, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = or i64 %38, %41
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %42, ptr noundef nonnull %8, ptr noundef nonnull %7) #11
  %43 = load i32, ptr %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !17

45:                                               ; preds = %37
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1505, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

46:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store i32 1, ptr %6, align 4
  %47 = getelementptr inbounds i32, ptr %6, i32 1
  store i32 1, ptr %47, align 4
  %48 = getelementptr inbounds i32, ptr %6, i32 2
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %48, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %2, align 4
  %55 = load ptr, ptr %20, align 4
  %56 = load i32, ptr %13, align 4
  %57 = icmp ne i32 %56, 0
  %58 = icmp ne ptr %54, null
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %65, !prof !19

60:                                               ; preds = %46
  %61 = load i32, ptr %54, align 8
  %62 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 8
  %63 = load i32, ptr %62, align 32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %66, label %65, !prof !17

65:                                               ; preds = %60, %46
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 528, 0\0A.popsection", ""() #11, !srcloc !20
  unreachable

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 37
  %68 = load i16, ptr %67, align 2
  %69 = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 29
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 16
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  %75 = shl i32 %74, 3
  %76 = call ptr @__ext4_journal_start_sb(ptr noundef %0, i32 noundef 534, i32 noundef 7, i32 noundef 64, i32 noundef 0, i32 noundef %75) #11
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = ptrtoint ptr %76 to i32
  br label %415

80:                                               ; preds = %66
  %81 = load i32, ptr %13, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %54, align 8
  %85 = icmp ult ptr %76, inttoptr (i32 4096 to ptr)
  %86 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %87 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %88 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 16
  %89 = zext i16 %68 to i64
  %90 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 12
  br label %96

92:                                               ; preds = %340, %80
  %93 = phi i32 [ 0, %80 ], [ %343, %340 ]
  %94 = getelementptr inbounds %struct.ext4_new_group_data, ptr %54, i32 0, i32 1
  %95 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 12
  br label %345

96:                                               ; preds = %340, %83
  %97 = phi i32 [ 0, %83 ], [ %341, %340 ]
  %98 = phi i32 [ %84, %83 ], [ %342, %340 ]
  %99 = call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %98) #11
  %100 = zext i32 %98 to i64
  %101 = load ptr, ptr %9, align 4
  %102 = getelementptr inbounds %struct.ext4_sb_info, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = zext i32 %103 to i64
  %105 = mul nuw i64 %104, %100
  %106 = getelementptr inbounds %struct.ext4_sb_info, ptr %101, i32 0, i32 15
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.ext4_super_block, ptr %107, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = zext i32 %109 to i64
  %111 = add nuw i64 %105, %110
  br i1 %72, label %112, label %115

112:                                              ; preds = %96
  %113 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %98) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %192, label %128

115:                                              ; preds = %96
  %116 = getelementptr inbounds %struct.ext4_sb_info, ptr %101, i32 0, i32 28
  %117 = load i32, ptr %116, align 64
  %118 = shl nsw i32 -1, %117
  %119 = and i32 %118, %98
  %120 = add i32 %98, 1
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.ext4_sb_info, ptr %101, i32 0, i32 7
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %98, -1
  %126 = add i32 %125, %124
  %127 = icmp eq i32 %119, %126
  br i1 %127, label %128, label %192

128:                                              ; preds = %122, %115, %112
  %129 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %98) #11
  %130 = icmp eq i32 %99, 0
  br i1 %130, label %176, label %131

131:                                              ; preds = %128
  %132 = sext i32 %129 to i64
  %133 = add i64 %111, %132
  br label %134

134:                                              ; preds = %172, %131
  %135 = phi i64 [ %174, %172 ], [ %133, %131 ]
  %136 = phi i32 [ %173, %172 ], [ 0, %131 ]
  %137 = call i32 @__ext4_journal_ensure_credits(ptr noundef %76, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  br i1 %85, label %146, label %140

140:                                              ; preds = %139
  %141 = call i32 @jbd2__journal_restart(ptr noundef %76, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140, %134
  %144 = phi i32 [ %137, %134 ], [ %141, %140 ]
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %408, label %146

146:                                              ; preds = %143, %140, %139
  %147 = load ptr, ptr %86, align 4
  %148 = load i32, ptr %87, align 16
  %149 = call ptr @__getblk_gfp(ptr noundef %147, i64 noundef %135, i32 noundef %148, i32 noundef 8) #11
  %150 = icmp eq ptr %149, null
  br i1 %150, label %408, label %151, !prof !15

151:                                              ; preds = %146
  %152 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 575, ptr noundef %76, ptr noundef %0, ptr noundef nonnull %149, i32 noundef 1) #11
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  call void @__brelse(ptr noundef nonnull %149) #11
  br label %408

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.buffer_head, ptr %149, i32 0, i32 5
  %157 = load ptr, ptr %156, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %158 = load volatile ptr, ptr %88, align 8
  %159 = getelementptr ptr, ptr %158, i32 %136
  %160 = load ptr, ptr %159, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %161 = getelementptr inbounds %struct.buffer_head, ptr %160, i32 0, i32 5
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.buffer_head, ptr %149, i32 0, i32 4
  %164 = load i32, ptr %163, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %157, ptr align 1 %162, i32 %164, i1 false) #11
  %165 = load volatile i32, ptr %149, align 4
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %155
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %149) #11
  br label %169

169:                                              ; preds = %168, %155
  %170 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 584, ptr noundef %76, ptr noundef null, ptr noundef nonnull %149) #11
  %171 = icmp eq i32 %170, 0
  call void @__brelse(ptr noundef nonnull %149) #11
  br i1 %171, label %172, label %408, !prof !17

172:                                              ; preds = %169
  %173 = add nuw i32 %136, 1
  %174 = add i64 %135, 1
  %175 = icmp eq i32 %173, %99
  br i1 %175, label %176, label %134

176:                                              ; preds = %172, %128
  %177 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %98) #11
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %192, label %179

179:                                              ; preds = %176
  %180 = zext i32 %99 to i64
  %181 = add nuw nsw i64 %180, 1
  %182 = add i64 %181, %111
  %183 = load ptr, ptr %86, align 4
  %184 = load i8, ptr %90, align 4
  %185 = zext i8 %184 to i32
  %186 = add nsw i32 %185, -9
  %187 = zext i32 %186 to i64
  %188 = shl i64 %182, %187
  %189 = shl i64 %89, %187
  %190 = call i32 @blkdev_issue_zeroout(ptr noundef %183, i64 noundef %188, i64 noundef %189, i32 noundef 3136, i32 noundef 0) #11
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %408

192:                                              ; preds = %179, %176, %122, %112
  %193 = getelementptr i16, ptr %55, i32 %97
  %194 = load i16, ptr %193, align 2
  %195 = and i16 %194, 4
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %213, label %197

197:                                              ; preds = %192
  %198 = getelementptr %struct.ext4_new_group_data, ptr %54, i32 %97, i32 3
  %199 = load i64, ptr %198, align 8
  %200 = load i32, ptr %50, align 4
  %201 = zext i32 %200 to i64
  %202 = load ptr, ptr %86, align 4
  %203 = load i8, ptr %90, align 4
  %204 = zext i8 %203 to i32
  %205 = add nsw i32 %204, -9
  %206 = zext i32 %205 to i64
  %207 = shl i64 %199, %206
  %208 = shl i64 %201, %206
  %209 = call i32 @blkdev_issue_zeroout(ptr noundef %202, i64 noundef %207, i64 noundef %208, i32 noundef 3136, i32 noundef 0) #11
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %408

211:                                              ; preds = %197
  %212 = load i16, ptr %193, align 2
  br label %213

213:                                              ; preds = %211, %192
  %214 = phi i16 [ %212, %211 ], [ %194, %192 ]
  %215 = and i16 %214, 2
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %217, label %290

217:                                              ; preds = %213
  %218 = getelementptr %struct.ext4_new_group_data, ptr %54, i32 %97, i32 1
  %219 = load i64, ptr %218, align 8
  %220 = call i32 @__ext4_journal_ensure_credits(ptr noundef %76, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  %221 = icmp slt i32 %220, 1
  br i1 %221, label %226, label %222

222:                                              ; preds = %217
  br i1 %85, label %229, label %223

223:                                              ; preds = %222
  %224 = call i32 @jbd2__journal_restart(ptr noundef %76, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %223, %217
  %227 = phi i32 [ %220, %217 ], [ %224, %223 ]
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %408, label %229

229:                                              ; preds = %226, %223, %222
  %230 = load ptr, ptr %86, align 4
  %231 = load i32, ptr %87, align 16
  %232 = call ptr @__getblk_gfp(ptr noundef %230, i64 noundef %219, i32 noundef %231, i32 noundef 8) #11
  %233 = icmp eq ptr %232, null
  br i1 %233, label %250, label %234, !prof !15

234:                                              ; preds = %229
  %235 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.bclean, i32 noundef 412, ptr noundef %76, ptr noundef %0, ptr noundef nonnull %232, i32 noundef 1) #11
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %234
  call void @__brelse(ptr noundef nonnull %232) #11
  %238 = inttoptr i32 %235 to ptr
  br label %247

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.buffer_head, ptr %232, i32 0, i32 5
  %241 = load ptr, ptr %240, align 4
  %242 = load i32, ptr %87, align 16
  call void @llvm.memset.p0.i32(ptr align 1 %241, i8 0, i32 %242, i1 false) #11
  %243 = load volatile i32, ptr %232, align 4
  %244 = and i32 %243, 1
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %239
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %232) #11
  br label %247

247:                                              ; preds = %246, %239, %237
  %248 = phi ptr [ %238, %237 ], [ %232, %239 ], [ %232, %246 ]
  %249 = icmp ugt ptr %248, inttoptr (i32 -4096 to ptr)
  br i1 %249, label %250, label %253

250:                                              ; preds = %247, %229
  %251 = phi ptr [ %248, %247 ], [ inttoptr (i32 -12 to ptr), %229 ]
  %252 = ptrtoint ptr %251 to i32
  br label %408

253:                                              ; preds = %247
  %254 = call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %98) #11
  %255 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %98) #11
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr %9, align 4
  %259 = getelementptr inbounds %struct.ext4_sb_info, ptr %258, i32 0, i32 15
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.ext4_super_block, ptr %260, i32 0, i32 37
  %262 = load i16, ptr %261, align 2
  %263 = zext i16 %262 to i32
  %264 = add i32 %254, 1
  %265 = add i32 %264, %263
  br label %266

266:                                              ; preds = %257, %253
  %267 = phi i32 [ %265, %257 ], [ %254, %253 ]
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %277, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.buffer_head, ptr %248, i32 0, i32 5
  %271 = load ptr, ptr %270, align 4
  %272 = load i32, ptr %73, align 4
  %273 = add i32 %267, -1
  %274 = add i32 %273, %272
  %275 = load i32, ptr %91, align 16
  %276 = lshr i32 %274, %275
  call void @ext4_set_bits(ptr noundef %271, i32 noundef 0, i32 noundef %276) #11
  br label %277

277:                                              ; preds = %269, %266
  %278 = getelementptr %struct.ext4_new_group_data, ptr %54, i32 %97, i32 4
  %279 = load i32, ptr %278, align 8
  %280 = load i32, ptr %91, align 16
  %281 = lshr i32 %279, %280
  %282 = load i32, ptr %87, align 16
  %283 = shl i32 %282, 3
  %284 = getelementptr inbounds %struct.buffer_head, ptr %248, i32 0, i32 5
  %285 = load ptr, ptr %284, align 4
  call void @ext4_mark_bitmap_end(i32 noundef %281, i32 noundef %283, ptr noundef %285) #11
  %286 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 640, ptr noundef %76, ptr noundef null, ptr noundef %248) #11
  call void @__brelse(ptr noundef nonnull %248) #11
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %408

288:                                              ; preds = %277
  %289 = load i16, ptr %193, align 2
  br label %290

290:                                              ; preds = %288, %213
  %291 = phi i16 [ %289, %288 ], [ %214, %213 ]
  %292 = and i16 %291, 1
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %294, label %340

294:                                              ; preds = %290
  %295 = getelementptr %struct.ext4_new_group_data, ptr %54, i32 %97, i32 2
  %296 = load i64, ptr %295, align 8
  %297 = call i32 @__ext4_journal_ensure_credits(ptr noundef %76, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  %298 = icmp slt i32 %297, 1
  br i1 %298, label %303, label %299

299:                                              ; preds = %294
  br i1 %85, label %306, label %300

300:                                              ; preds = %299
  %301 = call i32 @jbd2__journal_restart(ptr noundef %76, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300, %294
  %304 = phi i32 [ %297, %294 ], [ %301, %300 ]
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %408, label %306

306:                                              ; preds = %303, %300, %299
  %307 = load ptr, ptr %86, align 4
  %308 = load i32, ptr %87, align 16
  %309 = call ptr @__getblk_gfp(ptr noundef %307, i64 noundef %296, i32 noundef %308, i32 noundef 8) #11
  %310 = icmp eq ptr %309, null
  br i1 %310, label %327, label %311, !prof !15

311:                                              ; preds = %306
  %312 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.bclean, i32 noundef 412, ptr noundef %76, ptr noundef %0, ptr noundef nonnull %309, i32 noundef 1) #11
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  call void @__brelse(ptr noundef nonnull %309) #11
  %315 = inttoptr i32 %312 to ptr
  br label %324

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.buffer_head, ptr %309, i32 0, i32 5
  %318 = load ptr, ptr %317, align 4
  %319 = load i32, ptr %87, align 16
  call void @llvm.memset.p0.i32(ptr align 1 %318, i8 0, i32 %319, i1 false) #11
  %320 = load volatile i32, ptr %309, align 4
  %321 = and i32 %320, 1
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %316
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %309) #11
  br label %324

324:                                              ; preds = %323, %316, %314
  %325 = phi ptr [ %315, %314 ], [ %309, %316 ], [ %309, %323 ]
  %326 = icmp ugt ptr %325, inttoptr (i32 -4096 to ptr)
  br i1 %326, label %327, label %330

327:                                              ; preds = %324, %306
  %328 = phi ptr [ %325, %324 ], [ inttoptr (i32 -12 to ptr), %306 ]
  %329 = ptrtoint ptr %328 to i32
  br label %408

330:                                              ; preds = %324
  %331 = load ptr, ptr %9, align 4
  %332 = getelementptr inbounds %struct.ext4_sb_info, ptr %331, i32 0, i32 4
  %333 = load i32, ptr %332, align 16
  %334 = load i32, ptr %87, align 16
  %335 = shl i32 %334, 3
  %336 = getelementptr inbounds %struct.buffer_head, ptr %325, i32 0, i32 5
  %337 = load ptr, ptr %336, align 4
  call void @ext4_mark_bitmap_end(i32 noundef %333, i32 noundef %335, ptr noundef %337) #11
  %338 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 663, ptr noundef %76, ptr noundef null, ptr noundef %325) #11
  call void @__brelse(ptr noundef nonnull %325) #11
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %408

340:                                              ; preds = %330, %290
  %341 = add nuw i32 %97, 1
  %342 = add i32 %98, 1
  %343 = load i32, ptr %13, align 4
  %344 = icmp ult i32 %341, %343
  br i1 %344, label %96, label %92

345:                                              ; preds = %404, %92
  %346 = phi i32 [ %93, %92 ], [ %407, %404 ]
  %347 = phi i32 [ 1, %92 ], [ %406, %404 ]
  %348 = phi i32 [ 0, %92 ], [ %402, %404 ]
  %349 = getelementptr i64, ptr %94, i32 %348
  %350 = load i64, ptr %349, align 8
  %351 = icmp ugt i32 %346, 1
  br i1 %351, label %352, label %387

352:                                              ; preds = %345
  %353 = sext i32 %347 to i64
  br label %354

354:                                              ; preds = %380, %352
  %355 = phi i32 [ %346, %352 ], [ %381, %380 ]
  %356 = phi i64 [ %350, %352 ], [ %384, %380 ]
  %357 = phi i64 [ %350, %352 ], [ %383, %380 ]
  %358 = phi i32 [ 1, %352 ], [ %385, %380 ]
  %359 = phi i32 [ %347, %352 ], [ %382, %380 ]
  %360 = add i64 %357, %353
  %361 = getelementptr %struct.ext4_new_group_data, ptr %54, i32 %358, i32 1
  %362 = getelementptr i64, ptr %361, i32 %348
  %363 = load i64, ptr %362, align 8
  %364 = icmp eq i64 %360, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %354
  %366 = add i32 %359, %347
  br label %380

367:                                              ; preds = %354
  %368 = load i32, ptr %95, align 16
  %369 = zext i32 %368 to i64
  %370 = lshr i64 %356, %369
  %371 = zext i32 %359 to i64
  %372 = add i64 %356, -1
  %373 = add i64 %372, %371
  %374 = lshr i64 %373, %369
  %375 = call fastcc i32 @set_flexbg_block_bitmap(ptr noundef %0, ptr noundef %76, ptr noundef %2, i64 noundef %370, i64 noundef %374) #11
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %408

377:                                              ; preds = %367
  %378 = load i64, ptr %362, align 8
  %379 = load i32, ptr %13, align 4
  br label %380

380:                                              ; preds = %377, %365
  %381 = phi i32 [ %355, %365 ], [ %379, %377 ]
  %382 = phi i32 [ %366, %365 ], [ %347, %377 ]
  %383 = phi i64 [ %360, %365 ], [ %378, %377 ]
  %384 = phi i64 [ %356, %365 ], [ %378, %377 ]
  %385 = add nuw i32 %358, 1
  %386 = icmp ult i32 %385, %381
  br i1 %386, label %354, label %387

387:                                              ; preds = %380, %345
  %388 = phi i32 [ %347, %345 ], [ %382, %380 ]
  %389 = phi i64 [ %350, %345 ], [ %384, %380 ]
  %390 = icmp eq i32 %388, 0
  br i1 %390, label %401, label %391

391:                                              ; preds = %387
  %392 = load i32, ptr %95, align 16
  %393 = zext i32 %392 to i64
  %394 = lshr i64 %389, %393
  %395 = zext i32 %388 to i64
  %396 = add i64 %389, -1
  %397 = add i64 %396, %395
  %398 = lshr i64 %397, %393
  %399 = call fastcc i32 @set_flexbg_block_bitmap(ptr noundef %0, ptr noundef %76, ptr noundef %2, i64 noundef %394, i64 noundef %398) #11
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %391, %387
  %402 = add nuw nsw i32 %348, 1
  %403 = icmp eq i32 %402, 3
  br i1 %403, label %408, label %404

404:                                              ; preds = %401
  %405 = getelementptr [3 x i32], ptr %6, i32 0, i32 %402
  %406 = load i32, ptr %405, align 4
  %407 = load i32, ptr %13, align 4
  br label %345

408:                                              ; preds = %401, %391, %367, %330, %327, %303, %277, %250, %226, %197, %179, %169, %154, %146, %143
  %409 = phi i32 [ %252, %250 ], [ %329, %327 ], [ %152, %154 ], [ %375, %367 ], [ %399, %391 ], [ 0, %401 ], [ -12, %146 ], [ %144, %143 ], [ %170, %169 ], [ %338, %330 ], [ %304, %303 ], [ %286, %277 ], [ %227, %226 ], [ %209, %197 ], [ %190, %179 ]
  %410 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 706, ptr noundef %76) #11
  %411 = icmp eq i32 %410, 0
  %412 = icmp ne i32 %409, 0
  %413 = select i1 %411, i1 true, i1 %412
  %414 = select i1 %413, i32 %409, i32 %410
  br label %415

415:                                              ; preds = %408, %78
  %416 = phi i32 [ %79, %78 ], [ %414, %408 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %1075

418:                                              ; preds = %415
  %419 = load i32, ptr %13, align 4
  %420 = load ptr, ptr %9, align 4
  %421 = getelementptr inbounds %struct.ext4_sb_info, ptr %420, i32 0, i32 7
  %422 = load i32, ptr %421, align 4
  %423 = add i32 %419, -1
  %424 = add i32 %423, %422
  %425 = udiv i32 %424, %422
  %426 = add nuw nsw i32 %27, 4
  %427 = add i32 %426, %425
  %428 = getelementptr inbounds %struct.ext4_sb_info, ptr %420, i32 0, i32 11
  %429 = load i32, ptr %428, align 4
  %430 = shl i32 %429, 3
  %431 = call ptr @__ext4_journal_start_sb(ptr noundef %0, i32 noundef 1521, i32 noundef 7, i32 noundef %427, i32 noundef 0, i32 noundef %430) #11
  %432 = icmp ugt ptr %431, inttoptr (i32 -4096 to ptr)
  br i1 %432, label %433, label %435

433:                                              ; preds = %418
  %434 = ptrtoint ptr %431 to i32
  br label %1075

435:                                              ; preds = %418
  %436 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 14
  %437 = load ptr, ptr %436, align 64
  %438 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_flex_group_add, i32 noundef 1529, ptr noundef %431, ptr noundef %0, ptr noundef %437, i32 noundef 1) #11
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %1024

440:                                              ; preds = %435
  %441 = load ptr, ptr %2, align 4
  %442 = load i32, ptr %441, align 8
  store i32 %442, ptr %8, align 4
  %443 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 8
  %444 = load i32, ptr %443, align 32
  %445 = icmp eq i32 %442, %444
  br i1 %445, label %447, label %446, !prof !17

446:                                              ; preds = %440
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1534, 0\0A.popsection", ""() #11, !srcloc !23
  unreachable

447:                                              ; preds = %440
  %448 = load i32, ptr %13, align 4
  %449 = load ptr, ptr %9, align 4
  %450 = getelementptr inbounds %struct.ext4_sb_info, ptr %449, i32 0, i32 15
  %451 = load ptr, ptr %450, align 4
  %452 = getelementptr inbounds %struct.ext4_super_block, ptr %451, i32 0, i32 29
  %453 = load i32, ptr %452, align 8
  %454 = and i32 %453, 16
  %455 = icmp eq i32 %454, 0
  %456 = icmp eq i32 %448, 0
  br i1 %456, label %1027, label %457

457:                                              ; preds = %447
  %458 = getelementptr inbounds %struct.ext4_super_block, ptr %451, i32 0, i32 37
  %459 = getelementptr inbounds %struct.ext4_sb_info, ptr %449, i32 0, i32 16
  %460 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %461 = getelementptr i8, ptr %1, i32 -156
  %462 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 21
  br label %463

463:                                              ; preds = %863, %457
  %464 = phi i32 [ %442, %457 ], [ %865, %863 ]
  %465 = phi i32 [ 0, %457 ], [ %864, %863 ]
  %466 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %464) #11
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %471, label %468

468:                                              ; preds = %463
  %469 = load i16, ptr %458, align 2
  %470 = zext i16 %469 to i32
  br label %471

471:                                              ; preds = %468, %463
  %472 = phi i32 [ %470, %468 ], [ 0, %463 ]
  %473 = load ptr, ptr %9, align 4
  %474 = getelementptr inbounds %struct.ext4_sb_info, ptr %473, i32 0, i32 7
  %475 = load i32, ptr %474, align 4
  %476 = freeze i32 %475
  %477 = udiv i32 %464, %476
  %478 = mul i32 %477, %476
  %479 = sub i32 %464, %478
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %639, label %481

481:                                              ; preds = %471
  %482 = udiv i32 %464, %475
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %483 = load volatile ptr, ptr %459, align 8
  %484 = getelementptr ptr, ptr %483, i32 %482
  %485 = load ptr, ptr %484, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %486 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_add_new_descs, i32 noundef 1251, ptr noundef %431, ptr noundef %0, ptr noundef %485, i32 noundef 1) #11
  %487 = icmp eq i32 %486, 0
  %488 = icmp ne i32 %472, 0
  %489 = select i1 %487, i1 %488, i1 false
  br i1 %489, label %490, label %860

490:                                              ; preds = %481
  %491 = call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %464) #11
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %863, label %493

493:                                              ; preds = %490
  %494 = load ptr, ptr %460, align 4
  %495 = getelementptr inbounds %struct.super_block, ptr %494, i32 0, i32 27
  %496 = load ptr, ptr %495, align 4
  %497 = getelementptr inbounds %struct.ext4_sb_info, ptr %496, i32 0, i32 15
  %498 = load ptr, ptr %497, align 4
  %499 = getelementptr inbounds %struct.ext4_super_block, ptr %498, i32 0, i32 37
  %500 = load i16, ptr %499, align 2
  %501 = zext i16 %500 to i32
  %502 = getelementptr inbounds %struct.ext4_sb_info, ptr %496, i32 0, i32 12
  %503 = load i32, ptr %502, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #11, !annotation !14
  %504 = shl nuw nsw i32 %501, 2
  %505 = call noalias align 64 ptr @__kmalloc(i32 noundef %504, i32 noundef 3136) #13
  %506 = icmp eq ptr %505, null
  br i1 %506, label %637, label %507

507:                                              ; preds = %493
  %508 = load i32, ptr %461, align 4
  %509 = zext i32 %508 to i64
  %510 = call ptr @ext4_sb_bread(ptr noundef %494, i64 noundef %509, i32 noundef 0) #11
  %511 = icmp ugt ptr %510, inttoptr (i32 -4096 to ptr)
  br i1 %511, label %512, label %514

512:                                              ; preds = %507
  %513 = ptrtoint ptr %510 to i32
  br label %635

514:                                              ; preds = %507
  %515 = getelementptr inbounds %struct.buffer_head, ptr %510, i32 0, i32 5
  %516 = load ptr, ptr %515, align 4
  %517 = getelementptr inbounds %struct.super_block, ptr %494, i32 0, i32 3
  %518 = load i32, ptr %517, align 16
  %519 = lshr i32 %518, 2
  %520 = getelementptr i32, ptr %516, i32 %519
  %521 = icmp eq i16 %500, 0
  br i1 %521, label %582, label %522

522:                                              ; preds = %514
  %523 = load ptr, ptr %495, align 4
  %524 = getelementptr inbounds %struct.ext4_sb_info, ptr %523, i32 0, i32 6
  %525 = load i32, ptr %524, align 8
  %526 = urem i32 %525, %519
  %527 = getelementptr i32, ptr %516, i32 %526
  %528 = getelementptr inbounds %struct.ext4_sb_info, ptr %523, i32 0, i32 14
  %529 = load ptr, ptr %528, align 64
  %530 = getelementptr inbounds %struct.buffer_head, ptr %529, i32 0, i32 3
  %531 = load i64, ptr %530, align 8
  %532 = zext i32 %525 to i64
  %533 = add nuw nsw i64 %532, 1
  %534 = add i64 %533, %531
  br label %535

535:                                              ; preds = %568, %522
  %536 = phi i32 [ %570, %568 ], [ 0, %522 ]
  %537 = phi ptr [ %569, %568 ], [ %527, %522 ]
  %538 = phi i64 [ %571, %568 ], [ %534, %522 ]
  %539 = load i32, ptr %537, align 4
  %540 = zext i32 %539 to i64
  %541 = icmp eq i64 %538, %540
  br i1 %541, label %548, label %542

542:                                              ; preds = %535
  %543 = load ptr, ptr %515, align 4
  %544 = ptrtoint ptr %537 to i32
  %545 = ptrtoint ptr %543 to i32
  %546 = sub i32 %544, %545
  %547 = ashr exact i32 %546, 2
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %494, ptr noundef nonnull @__func__.reserve_backup_gdb, i32 noundef 1038, ptr noundef nonnull @.str.40, i64 noundef %538, i32 noundef %547) #11
  br label %619

548:                                              ; preds = %535
  %549 = call ptr @ext4_sb_bread(ptr noundef %494, i64 noundef %538, i32 noundef 0) #11
  %550 = getelementptr ptr, ptr %505, i32 %536
  store ptr %549, ptr %550, align 4
  %551 = icmp ugt ptr %549, inttoptr (i32 -4096 to ptr)
  br i1 %551, label %552, label %555

552:                                              ; preds = %548
  %553 = getelementptr ptr, ptr %505, i32 %536
  %554 = ptrtoint ptr %549 to i32
  store ptr null, ptr %553, align 4
  br label %619

555:                                              ; preds = %548
  %556 = call fastcc i32 @verify_reserved_gdb(ptr noundef %494, i32 noundef %464, ptr noundef %549) #11
  %557 = icmp slt i32 %556, 0
  br i1 %557, label %558, label %563

558:                                              ; preds = %555
  %559 = getelementptr ptr, ptr %505, i32 %536
  %560 = load ptr, ptr %559, align 4
  %561 = icmp eq ptr %560, null
  br i1 %561, label %619, label %562

562:                                              ; preds = %558
  call void @__brelse(ptr noundef nonnull %560) #11
  br label %619

563:                                              ; preds = %555
  %564 = getelementptr i32, ptr %537, i32 1
  %565 = icmp ult ptr %564, %520
  br i1 %565, label %568, label %566

566:                                              ; preds = %563
  %567 = load ptr, ptr %515, align 4
  br label %568

568:                                              ; preds = %566, %563
  %569 = phi ptr [ %567, %566 ], [ %564, %563 ]
  %570 = add nuw nsw i32 %536, 1
  %571 = add i64 %538, 1
  %572 = icmp eq i32 %570, %501
  br i1 %572, label %576, label %535

573:                                              ; preds = %576
  %574 = add nuw nsw i32 %577, 1
  %575 = icmp eq i32 %574, %501
  br i1 %575, label %582, label %576

576:                                              ; preds = %573, %568
  %577 = phi i32 [ %574, %573 ], [ 0, %568 ]
  %578 = getelementptr ptr, ptr %505, i32 %577
  %579 = load ptr, ptr %578, align 4
  %580 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.reserve_backup_gdb, i32 noundef 1061, ptr noundef %431, ptr noundef %494, ptr noundef %579, i32 noundef 1) #11
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %573, label %619

582:                                              ; preds = %573, %514
  %583 = phi i32 [ 0, %514 ], [ %556, %573 ]
  %584 = call i32 @ext4_reserve_inode_write(ptr noundef %431, ptr noundef %1, ptr noundef nonnull %5) #11
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %619

586:                                              ; preds = %582
  %587 = load ptr, ptr %495, align 4
  %588 = getelementptr inbounds %struct.ext4_sb_info, ptr %587, i32 0, i32 2
  %589 = load i32, ptr %588, align 8
  %590 = mul i32 %589, %464
  br i1 %521, label %609, label %591

591:                                              ; preds = %591, %586
  %592 = phi i32 [ %606, %591 ], [ 0, %586 ]
  %593 = phi i32 [ %607, %591 ], [ 0, %586 ]
  %594 = getelementptr ptr, ptr %505, i32 %593
  %595 = load ptr, ptr %594, align 4
  %596 = getelementptr inbounds %struct.buffer_head, ptr %595, i32 0, i32 5
  %597 = load ptr, ptr %596, align 4
  %598 = getelementptr inbounds %struct.buffer_head, ptr %595, i32 0, i32 3
  %599 = load i64, ptr %598, align 8
  %600 = trunc i64 %599 to i32
  %601 = add i32 %590, %600
  %602 = getelementptr i32, ptr %597, i32 %583
  store i32 %601, ptr %602, align 4
  %603 = load ptr, ptr %594, align 4
  %604 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.reserve_backup_gdb, i32 noundef 1080, ptr noundef %431, ptr noundef null, ptr noundef %603) #11
  %605 = icmp eq i32 %592, 0
  %606 = select i1 %605, i32 %604, i32 %592
  %607 = add nuw nsw i32 %593, 1
  %608 = icmp eq i32 %607, %501
  br i1 %608, label %609, label %591

609:                                              ; preds = %591, %586
  %610 = phi i32 [ 0, %586 ], [ %606, %591 ]
  %611 = load i32, ptr %517, align 16
  %612 = mul i32 %611, %501
  %613 = sub i32 9, %503
  %614 = lshr i32 %612, %613
  %615 = zext i32 %614 to i64
  %616 = load i64, ptr %462, align 8
  %617 = add i64 %616, %615
  store i64 %617, ptr %462, align 8
  %618 = call i32 @ext4_mark_iloc_dirty(ptr noundef %431, ptr noundef %1, ptr noundef nonnull %5) #11
  br label %619

619:                                              ; preds = %609, %582, %576, %562, %558, %552, %542
  %620 = phi i32 [ %536, %542 ], [ %536, %552 ], [ %501, %582 ], [ %501, %609 ], [ %536, %558 ], [ %536, %562 ], [ %501, %576 ]
  %621 = phi i32 [ -22, %542 ], [ %554, %552 ], [ %584, %582 ], [ %610, %609 ], [ %556, %558 ], [ %556, %562 ], [ %580, %576 ]
  %622 = icmp eq i32 %620, 0
  br i1 %622, label %632, label %623

623:                                              ; preds = %630, %619
  %624 = phi i32 [ %625, %630 ], [ %620, %619 ]
  %625 = add nsw i32 %624, -1
  %626 = getelementptr ptr, ptr %505, i32 %625
  %627 = load ptr, ptr %626, align 4
  %628 = icmp eq ptr %627, null
  br i1 %628, label %630, label %629

629:                                              ; preds = %623
  call void @__brelse(ptr noundef nonnull %627) #11
  br label %630

630:                                              ; preds = %629, %623
  %631 = icmp sgt i32 %624, 1
  br i1 %631, label %623, label %632

632:                                              ; preds = %630, %619
  %633 = icmp eq ptr %510, null
  br i1 %633, label %635, label %634

634:                                              ; preds = %632
  call void @__brelse(ptr noundef nonnull %510) #11
  br label %635

635:                                              ; preds = %634, %632, %512
  %636 = phi i32 [ %513, %512 ], [ %621, %632 ], [ %621, %634 ]
  call void @kfree(ptr noundef nonnull %505) #11
  br label %637

637:                                              ; preds = %635, %493
  %638 = phi i32 [ %636, %635 ], [ -12, %493 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %860

639:                                              ; preds = %471
  br i1 %455, label %698, label %640

640:                                              ; preds = %639
  %641 = getelementptr inbounds %struct.ext4_sb_info, ptr %473, i32 0, i32 28
  %642 = load i32, ptr %641, align 64
  %643 = shl nsw i32 -1, %642
  %644 = and i32 %643, %464
  %645 = zext i32 %644 to i64
  %646 = getelementptr inbounds %struct.ext4_sb_info, ptr %473, i32 0, i32 2
  %647 = load i32, ptr %646, align 8
  %648 = zext i32 %647 to i64
  %649 = mul nuw i64 %645, %648
  %650 = getelementptr inbounds %struct.ext4_sb_info, ptr %473, i32 0, i32 15
  %651 = load ptr, ptr %650, align 4
  %652 = getelementptr inbounds %struct.ext4_super_block, ptr %651, i32 0, i32 5
  %653 = load i32, ptr %652, align 4
  %654 = zext i32 %653 to i64
  %655 = add nuw i64 %649, %654
  %656 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %464) #11
  %657 = sext i32 %656 to i64
  %658 = add i64 %655, %657
  %659 = call ptr @ext4_sb_bread(ptr noundef %0, i64 noundef %658, i32 noundef 0) #11
  %660 = icmp ugt ptr %659, inttoptr (i32 -4096 to ptr)
  br i1 %660, label %661, label %663

661:                                              ; preds = %640
  %662 = ptrtoint ptr %659 to i32
  br label %860

663:                                              ; preds = %640
  %664 = add i32 %477, 1
  %665 = shl i32 %664, 2
  %666 = call noalias ptr @kvmalloc_node(i32 noundef %665, i32 noundef 3264, i32 noundef -1) #13
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %672

668:                                              ; preds = %663
  %669 = icmp eq ptr %659, null
  br i1 %669, label %671, label %670

670:                                              ; preds = %668
  call void @__brelse(ptr noundef nonnull %659) #11
  br label %671

671:                                              ; preds = %670, %668
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.add_new_gdb_meta_bg, i32 noundef 962, ptr noundef nonnull @.str.42, i32 noundef %664) #11
  br label %1024

672:                                              ; preds = %663
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %673 = load ptr, ptr %9, align 4
  %674 = getelementptr inbounds %struct.ext4_sb_info, ptr %673, i32 0, i32 16
  %675 = load volatile ptr, ptr %674, align 8
  %676 = getelementptr inbounds %struct.ext4_sb_info, ptr %673, i32 0, i32 6
  %677 = load i32, ptr %676, align 8
  %678 = shl i32 %677, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %666, ptr align 4 %675, i32 %678, i1 false) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %679 = getelementptr ptr, ptr %666, i32 %477
  store ptr %659, ptr %679, align 4
  %680 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.add_new_gdb_meta_bg, i32 noundef 974, ptr noundef %431, ptr noundef %0, ptr noundef %659, i32 noundef 1) #11
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %685, label %682

682:                                              ; preds = %672
  call void @kvfree(ptr noundef nonnull %666) #11
  %683 = icmp eq ptr %659, null
  br i1 %683, label %1024, label %684

684:                                              ; preds = %682
  call void @__brelse(ptr noundef nonnull %659) #11
  br label %1024

685:                                              ; preds = %672
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %686 = load ptr, ptr %9, align 4
  %687 = getelementptr inbounds %struct.ext4_sb_info, ptr %686, i32 0, i32 16
  store volatile ptr %666, ptr %687, align 8
  %688 = load ptr, ptr %9, align 4
  %689 = getelementptr inbounds %struct.ext4_sb_info, ptr %688, i32 0, i32 6
  %690 = load i32, ptr %689, align 8
  %691 = add i32 %690, 1
  store i32 %691, ptr %689, align 8
  %692 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %693 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %692, i32 noundef 3520, i32 noundef 12) #10
  %694 = icmp eq ptr %693, null
  br i1 %694, label %697, label %695

695:                                              ; preds = %685
  %696 = getelementptr inbounds %struct.ext4_rcu_ptr, ptr %693, i32 0, i32 1
  store ptr %675, ptr %696, align 8
  call void @call_rcu(ptr noundef nonnull %693, ptr noundef nonnull @ext4_rcu_ptr_callback) #11
  br label %863

697:                                              ; preds = %685
  call void @synchronize_rcu() #11
  call void @kvfree(ptr noundef %675) #11
  br label %863

698:                                              ; preds = %639
  %699 = load ptr, ptr %460, align 4
  %700 = getelementptr inbounds %struct.super_block, ptr %699, i32 0, i32 27
  %701 = load ptr, ptr %700, align 4
  %702 = getelementptr inbounds %struct.ext4_sb_info, ptr %701, i32 0, i32 15
  %703 = load ptr, ptr %702, align 4
  %704 = getelementptr inbounds %struct.ext4_sb_info, ptr %701, i32 0, i32 7
  %705 = load i32, ptr %704, align 4
  %706 = udiv i32 %464, %705
  %707 = getelementptr inbounds %struct.ext4_sb_info, ptr %701, i32 0, i32 14
  %708 = load ptr, ptr %707, align 64
  %709 = getelementptr inbounds %struct.buffer_head, ptr %708, i32 0, i32 3
  %710 = load i64, ptr %709, align 8
  %711 = zext i32 %706 to i64
  %712 = add nuw nsw i64 %711, 1
  %713 = add i64 %712, %710
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #11
  %714 = getelementptr inbounds %struct.ext4_sb_info, ptr %701, i32 0, i32 17
  %715 = load i32, ptr %714, align 4
  %716 = and i32 %715, 8
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %720, label %718

718:                                              ; preds = %698
  %719 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %706) #12
  br label %720

720:                                              ; preds = %718, %698
  %721 = call ptr @ext4_sb_bread(ptr noundef %699, i64 noundef %713, i32 noundef 0) #11
  %722 = icmp ugt ptr %721, inttoptr (i32 -4096 to ptr)
  br i1 %722, label %723, label %725

723:                                              ; preds = %720
  %724 = ptrtoint ptr %721 to i32
  br label %858

725:                                              ; preds = %720
  %726 = call fastcc i32 @verify_reserved_gdb(ptr noundef %699, i32 noundef %464, ptr noundef %721) #11
  %727 = icmp slt i32 %726, 0
  br i1 %727, label %845, label %728

728:                                              ; preds = %725
  %729 = load i32, ptr %461, align 4
  %730 = zext i32 %729 to i64
  %731 = call ptr @ext4_sb_bread(ptr noundef %699, i64 noundef %730, i32 noundef 0) #11
  %732 = icmp ugt ptr %731, inttoptr (i32 -4096 to ptr)
  br i1 %732, label %733, label %735

733:                                              ; preds = %728
  %734 = ptrtoint ptr %731 to i32
  br label %845

735:                                              ; preds = %728
  %736 = getelementptr inbounds %struct.buffer_head, ptr %731, i32 0, i32 5
  %737 = load ptr, ptr %736, align 4
  %738 = getelementptr inbounds %struct.super_block, ptr %699, i32 0, i32 3
  %739 = load i32, ptr %738, align 16
  %740 = lshr i32 %739, 2
  %741 = urem i32 %706, %740
  %742 = getelementptr i32, ptr %737, i32 %741
  %743 = load i32, ptr %742, align 4
  %744 = zext i32 %743 to i64
  %745 = icmp eq i64 %713, %744
  br i1 %745, label %747, label %746

746:                                              ; preds = %735
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %699, ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 848, ptr noundef nonnull @.str.44, i32 noundef %464, i64 noundef %713) #11
  br label %845

747:                                              ; preds = %735
  %748 = load ptr, ptr %700, align 4
  %749 = getelementptr inbounds %struct.ext4_sb_info, ptr %748, i32 0, i32 14
  %750 = load ptr, ptr %749, align 64
  %751 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 855, ptr noundef %431, ptr noundef %699, ptr noundef %750, i32 noundef 1) #11
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %845, !prof !17

753:                                              ; preds = %747
  %754 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 860, ptr noundef %431, ptr noundef %699, ptr noundef %721, i32 noundef 1) #11
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %845, !prof !17

756:                                              ; preds = %753
  %757 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 865, ptr noundef %431, ptr noundef %699, ptr noundef %731, i32 noundef 1) #11
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %760, label %759, !prof !17

759:                                              ; preds = %756
  call void @__ext4_std_error(ptr noundef %699, ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 867, i32 noundef %757) #11
  br label %845

760:                                              ; preds = %756
  %761 = call i32 @ext4_reserve_inode_write(ptr noundef %431, ptr noundef %1, ptr noundef nonnull %4) #11
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %845, !prof !17

763:                                              ; preds = %760
  %764 = add i32 %706, 1
  %765 = shl i32 %764, 2
  %766 = call noalias ptr @kvmalloc_node(i32 noundef %765, i32 noundef 3264, i32 noundef -1) #13
  %767 = icmp eq ptr %766, null
  br i1 %767, label %768, label %769

768:                                              ; preds = %763
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %699, ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 881, ptr noundef nonnull @.str.42, i32 noundef %764) #11
  br label %845

769:                                              ; preds = %763
  %770 = load i32, ptr %738, align 16
  %771 = lshr i32 %770, 2
  %772 = urem i32 %706, %771
  %773 = getelementptr i32, ptr %737, i32 %772
  store i32 0, ptr %773, align 4
  %774 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 895, ptr noundef %431, ptr noundef null, ptr noundef %731) #11
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %777, label %776, !prof !17

776:                                              ; preds = %769
  call void @__ext4_std_error(ptr noundef %699, ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 897, i32 noundef %774) #11
  br label %845

777:                                              ; preds = %769
  %778 = add nuw i32 %726, 1
  %779 = load i32, ptr %738, align 16
  %780 = mul i32 %779, %778
  %781 = load ptr, ptr %700, align 4
  %782 = getelementptr inbounds %struct.ext4_sb_info, ptr %781, i32 0, i32 12
  %783 = load i32, ptr %782, align 16
  %784 = sub i32 9, %783
  %785 = lshr i32 %780, %784
  %786 = zext i32 %785 to i64
  %787 = load i64, ptr %462, align 8
  %788 = sub i64 %787, %786
  store i64 %788, ptr %462, align 8
  %789 = call i32 @ext4_mark_iloc_dirty(ptr noundef %431, ptr noundef %1, ptr noundef nonnull %4) #11
  %790 = getelementptr inbounds %struct.buffer_head, ptr %721, i32 0, i32 5
  %791 = load ptr, ptr %790, align 4
  %792 = load i32, ptr %738, align 16
  call void @llvm.memset.p0.i32(ptr align 1 %791, i8 0, i32 %792, i1 false) #11
  %793 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 904, ptr noundef %431, ptr noundef null, ptr noundef %721) #11
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %796, label %795, !prof !17

795:                                              ; preds = %777
  call void @__ext4_std_error(ptr noundef %699, ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 906, i32 noundef %793) #11
  store ptr null, ptr %4, align 4
  br label %845

796:                                              ; preds = %777
  %797 = icmp eq ptr %731, null
  br i1 %797, label %799, label %798

798:                                              ; preds = %796
  call void @__brelse(ptr noundef nonnull %731) #11
  br label %799

799:                                              ; preds = %798, %796
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %800 = load ptr, ptr %700, align 4
  %801 = getelementptr inbounds %struct.ext4_sb_info, ptr %800, i32 0, i32 16
  %802 = load volatile ptr, ptr %801, align 8
  %803 = getelementptr inbounds %struct.ext4_sb_info, ptr %800, i32 0, i32 6
  %804 = load i32, ptr %803, align 8
  %805 = shl i32 %804, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %766, ptr align 4 %802, i32 %805, i1 false) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %806 = getelementptr ptr, ptr %766, i32 %706
  store ptr %721, ptr %806, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  %807 = load ptr, ptr %700, align 4
  %808 = getelementptr inbounds %struct.ext4_sb_info, ptr %807, i32 0, i32 16
  store volatile ptr %766, ptr %808, align 8
  %809 = load ptr, ptr %700, align 4
  %810 = getelementptr inbounds %struct.ext4_sb_info, ptr %809, i32 0, i32 6
  %811 = load i32, ptr %810, align 8
  %812 = add i32 %811, 1
  store i32 %812, ptr %810, align 8
  %813 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %814 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %813, i32 noundef 3520, i32 noundef 12) #10
  %815 = icmp eq ptr %814, null
  br i1 %815, label %818, label %816

816:                                              ; preds = %799
  %817 = getelementptr inbounds %struct.ext4_rcu_ptr, ptr %814, i32 0, i32 1
  store ptr %802, ptr %817, align 8
  call void @call_rcu(ptr noundef nonnull %814, ptr noundef nonnull @ext4_rcu_ptr_callback) #11
  br label %819

818:                                              ; preds = %799
  call void @synchronize_rcu() #11
  call void @kvfree(ptr noundef %802) #11
  br label %819

819:                                              ; preds = %818, %816
  %820 = load ptr, ptr %700, align 4
  %821 = getelementptr inbounds %struct.ext4_sb_info, ptr %820, i32 0, i32 14
  %822 = load ptr, ptr %821, align 64
  %823 = load volatile i32, ptr %822, align 4
  %824 = and i32 %823, 4
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %831

826:                                              ; preds = %819
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %822) #11, !srcloc !8
  %827 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %822, ptr %822, i32 4, ptr elementtype(i32) %822) #11, !srcloc !9
  %828 = extractvalue { i32, i32, i32 } %827, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %829 = and i32 %828, 4
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %832, label %831

831:                                              ; preds = %826, %819
  call void @__lock_buffer(ptr noundef %822) #11
  br label %832

832:                                              ; preds = %831, %826
  %833 = getelementptr inbounds %struct.ext4_super_block, ptr %703, i32 0, i32 37
  %834 = load i16, ptr %833, align 2
  %835 = add i16 %834, -1
  store i16 %835, ptr %833, align 2
  call void @ext4_superblock_csum_set(ptr noundef %699) #11
  %836 = load ptr, ptr %700, align 4
  %837 = getelementptr inbounds %struct.ext4_sb_info, ptr %836, i32 0, i32 14
  %838 = load ptr, ptr %837, align 64
  call void @unlock_buffer(ptr noundef %838) #11
  %839 = load ptr, ptr %700, align 4
  %840 = getelementptr inbounds %struct.ext4_sb_info, ptr %839, i32 0, i32 14
  %841 = load ptr, ptr %840, align 64
  %842 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 926, ptr noundef %431, ptr noundef null, ptr noundef %841) #11
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %858, label %844

844:                                              ; preds = %832
  call void @__ext4_std_error(ptr noundef %699, ptr noundef nonnull @__func__.add_new_gdb, i32 noundef 928, i32 noundef %842) #11
  br label %858

845:                                              ; preds = %795, %776, %768, %760, %759, %753, %747, %746, %733, %725
  %846 = phi ptr [ null, %733 ], [ null, %746 ], [ null, %747 ], [ null, %753 ], [ null, %759 ], [ null, %760 ], [ %766, %776 ], [ %766, %795 ], [ null, %768 ], [ null, %725 ]
  %847 = phi ptr [ null, %733 ], [ %731, %746 ], [ %731, %747 ], [ %731, %753 ], [ %731, %759 ], [ %731, %760 ], [ %731, %776 ], [ %731, %795 ], [ %731, %768 ], [ null, %725 ]
  %848 = phi i32 [ %734, %733 ], [ -22, %746 ], [ %751, %747 ], [ %754, %753 ], [ %757, %759 ], [ %761, %760 ], [ %774, %776 ], [ %793, %795 ], [ -12, %768 ], [ %726, %725 ]
  call void @kvfree(ptr noundef %846) #11
  %849 = load ptr, ptr %4, align 4
  %850 = icmp eq ptr %849, null
  br i1 %850, label %852, label %851

851:                                              ; preds = %845
  call void @__brelse(ptr noundef nonnull %849) #11
  br label %852

852:                                              ; preds = %851, %845
  %853 = icmp eq ptr %847, null
  br i1 %853, label %855, label %854

854:                                              ; preds = %852
  call void @__brelse(ptr noundef nonnull %847) #11
  br label %855

855:                                              ; preds = %854, %852
  %856 = icmp eq ptr %721, null
  br i1 %856, label %858, label %857

857:                                              ; preds = %855
  call void @__brelse(ptr noundef nonnull %721) #11
  br label %858

858:                                              ; preds = %857, %855, %844, %832, %723
  %859 = phi i32 [ %724, %723 ], [ %842, %844 ], [ 0, %832 ], [ %848, %855 ], [ %848, %857 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %860

860:                                              ; preds = %858, %661, %637, %481
  %861 = phi i32 [ %638, %637 ], [ %486, %481 ], [ %859, %858 ], [ %662, %661 ]
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %1024

863:                                              ; preds = %860, %697, %695, %490
  %864 = add nuw i32 %465, 1
  %865 = add i32 %464, 1
  %866 = icmp eq i32 %864, %448
  br i1 %866, label %867, label %463

867:                                              ; preds = %863
  %868 = load i32, ptr %13, align 4
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %1027, label %870

870:                                              ; preds = %867
  %871 = load ptr, ptr %20, align 4
  %872 = load ptr, ptr %9, align 4
  %873 = load ptr, ptr %2, align 4
  %874 = getelementptr inbounds %struct.ext4_sb_info, ptr %872, i32 0, i32 16
  %875 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %876 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  br label %877

877:                                              ; preds = %1020, %870
  %878 = phi ptr [ %872, %870 ], [ %1023, %1020 ]
  %879 = phi ptr [ %873, %870 ], [ %1022, %1020 ]
  %880 = phi i32 [ 0, %870 ], [ %1017, %1020 ]
  %881 = phi ptr [ %871, %870 ], [ %1021, %1020 ]
  %882 = load i32, ptr %879, align 8
  %883 = getelementptr inbounds %struct.ext4_sb_info, ptr %878, i32 0, i32 7
  %884 = load i32, ptr %883, align 4
  %885 = freeze i32 %882
  %886 = freeze i32 %884
  %887 = udiv i32 %885, %886
  %888 = mul i32 %887, %886
  %889 = sub i32 %885, %888
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %890 = load volatile ptr, ptr %874, align 8
  %891 = getelementptr ptr, ptr %890, i32 %887
  %892 = load ptr, ptr %891, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %893 = getelementptr inbounds %struct.buffer_head, ptr %892, i32 0, i32 5
  %894 = load ptr, ptr %893, align 4
  %895 = load ptr, ptr %9, align 4
  %896 = load i32, ptr %895, align 64
  %897 = mul i32 %896, %889
  %898 = getelementptr i8, ptr %894, i32 %897
  call void @llvm.memset.p0.i32(ptr align 4 %898, i8 0, i32 %896, i1 false) #11
  %899 = getelementptr inbounds %struct.ext4_new_group_data, ptr %879, i32 0, i32 1
  %900 = load i64, ptr %899, align 8
  call void @ext4_block_bitmap_set(ptr noundef %0, ptr noundef %898, i64 noundef %900) #11
  %901 = getelementptr inbounds %struct.ext4_new_group_data, ptr %879, i32 0, i32 2
  %902 = load i64, ptr %901, align 8
  call void @ext4_inode_bitmap_set(ptr noundef %0, ptr noundef %898, i64 noundef %902) #11
  %903 = load ptr, ptr %9, align 4
  %904 = getelementptr inbounds %struct.ext4_sb_info, ptr %903, i32 0, i32 15
  %905 = load ptr, ptr %904, align 4
  %906 = getelementptr inbounds %struct.ext4_super_block, ptr %905, i32 0, i32 30
  %907 = load i32, ptr %906, align 4
  %908 = and i32 %907, 1024
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %963, label %910

910:                                              ; preds = %877
  %911 = getelementptr inbounds %struct.ext4_sb_info, ptr %903, i32 0, i32 119
  %912 = load ptr, ptr %911, align 8
  %913 = icmp eq ptr %912, null
  %914 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %915 = xor i1 %914, true
  %916 = select i1 %913, i1 %915, i1 false
  br i1 %916, label %917, label %928, !prof !15

917:                                              ; preds = %910
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %918 = load ptr, ptr %9, align 4
  %919 = getelementptr inbounds %struct.ext4_sb_info, ptr %918, i32 0, i32 15
  %920 = load ptr, ptr %919, align 4
  %921 = getelementptr inbounds %struct.ext4_super_block, ptr %920, i32 0, i32 30
  %922 = load i32, ptr %921, align 4
  %923 = and i32 %922, 1024
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %963, label %925

925:                                              ; preds = %917
  %926 = getelementptr inbounds %struct.ext4_sb_info, ptr %918, i32 0, i32 119
  %927 = load ptr, ptr %926, align 8
  br label %928

928:                                              ; preds = %925, %910
  %929 = phi ptr [ %927, %925 ], [ %912, %910 ]
  %930 = icmp eq ptr %929, null
  br i1 %930, label %963, label %931

931:                                              ; preds = %928
  %932 = load i64, ptr %901, align 8
  %933 = load ptr, ptr %875, align 4
  %934 = load i32, ptr %876, align 16
  %935 = call ptr @__getblk_gfp(ptr noundef %933, i64 noundef %932, i32 noundef %934, i32 noundef 8) #11
  %936 = icmp eq ptr %935, null
  br i1 %936, label %962, label %937, !prof !15

937:                                              ; preds = %931
  %938 = call i32 @bh_uptodate_or_lock(ptr noundef nonnull %935) #11
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %940, label %943

940:                                              ; preds = %937
  %941 = call i32 @ext4_read_bh(ptr noundef nonnull %935, i32 noundef 0, ptr noundef null) #11
  %942 = icmp slt i32 %941, 0
  br i1 %942, label %959, label %943

943:                                              ; preds = %940, %937
  %944 = load ptr, ptr %9, align 4
  %945 = getelementptr inbounds %struct.ext4_sb_info, ptr %944, i32 0, i32 4
  %946 = load i32, ptr %945, align 16
  %947 = lshr i32 %946, 3
  call void @ext4_inode_bitmap_csum_set(ptr noundef %0, i32 noundef %882, ptr noundef %898, ptr noundef nonnull %935, i32 noundef %947) #11
  call void @__brelse(ptr noundef nonnull %935) #11
  %948 = load i64, ptr %899, align 8
  %949 = load ptr, ptr %875, align 4
  %950 = load i32, ptr %876, align 16
  %951 = call ptr @__getblk_gfp(ptr noundef %949, i64 noundef %948, i32 noundef %950, i32 noundef 8) #11
  %952 = icmp eq ptr %951, null
  br i1 %952, label %962, label %953, !prof !15

953:                                              ; preds = %943
  %954 = call i32 @bh_uptodate_or_lock(ptr noundef nonnull %951) #11
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %961

956:                                              ; preds = %953
  %957 = call i32 @ext4_read_bh(ptr noundef nonnull %951, i32 noundef 0, ptr noundef null) #11
  %958 = icmp slt i32 %957, 0
  br i1 %958, label %959, label %961

959:                                              ; preds = %956, %940
  %960 = phi ptr [ %951, %956 ], [ %935, %940 ]
  call void @__brelse(ptr noundef nonnull %960) #11
  br label %962

961:                                              ; preds = %956, %953
  call void @ext4_block_bitmap_csum_set(ptr noundef %0, i32 noundef %882, ptr noundef %898, ptr noundef nonnull %951) #11
  call void @__brelse(ptr noundef nonnull %951) #11
  br label %963

962:                                              ; preds = %959, %943, %931
  call void @__ext4_std_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_setup_new_descs, i32 noundef 1341, i32 noundef -5) #11
  br label %1024

963:                                              ; preds = %961, %928, %917, %877
  %964 = getelementptr inbounds %struct.ext4_new_group_data, ptr %879, i32 0, i32 3
  %965 = load i64, ptr %964, align 8
  call void @ext4_inode_table_set(ptr noundef %0, ptr noundef %898, i64 noundef %965) #11
  %966 = getelementptr inbounds %struct.ext4_new_group_data, ptr %879, i32 0, i32 7
  %967 = load i32, ptr %966, align 8
  call void @ext4_free_group_clusters_set(ptr noundef %0, ptr noundef %898, i32 noundef %967) #11
  %968 = load ptr, ptr %9, align 4
  %969 = getelementptr inbounds %struct.ext4_sb_info, ptr %968, i32 0, i32 4
  %970 = load i32, ptr %969, align 16
  call void @ext4_free_inodes_set(ptr noundef %0, ptr noundef %898, i32 noundef %970) #11
  %971 = load ptr, ptr %9, align 4
  %972 = getelementptr inbounds %struct.ext4_sb_info, ptr %971, i32 0, i32 15
  %973 = load ptr, ptr %972, align 4
  %974 = getelementptr inbounds %struct.ext4_super_block, ptr %973, i32 0, i32 30
  %975 = load i32, ptr %974, align 4
  %976 = and i32 %975, 16
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %978, label %1003

978:                                              ; preds = %963
  %979 = and i32 %975, 1024
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1007, label %981

981:                                              ; preds = %978
  %982 = getelementptr inbounds %struct.ext4_sb_info, ptr %971, i32 0, i32 119
  %983 = load ptr, ptr %982, align 8
  %984 = icmp eq ptr %983, null
  %985 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %986 = xor i1 %985, true
  %987 = select i1 %984, i1 %986, i1 false
  br i1 %987, label %988, label %999, !prof !15

988:                                              ; preds = %981
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %989 = load ptr, ptr %9, align 4
  %990 = getelementptr inbounds %struct.ext4_sb_info, ptr %989, i32 0, i32 15
  %991 = load ptr, ptr %990, align 4
  %992 = getelementptr inbounds %struct.ext4_super_block, ptr %991, i32 0, i32 30
  %993 = load i32, ptr %992, align 4
  %994 = and i32 %993, 1024
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1007, label %996

996:                                              ; preds = %988
  %997 = getelementptr inbounds %struct.ext4_sb_info, ptr %989, i32 0, i32 119
  %998 = load ptr, ptr %997, align 8
  br label %999

999:                                              ; preds = %996, %981
  %1000 = phi ptr [ %989, %996 ], [ %971, %981 ]
  %1001 = phi ptr [ %998, %996 ], [ %983, %981 ]
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1007, label %1003

1003:                                             ; preds = %999, %963
  %1004 = phi ptr [ %971, %963 ], [ %1000, %999 ]
  %1005 = getelementptr inbounds %struct.ext4_sb_info, ptr %1004, i32 0, i32 4
  %1006 = load i32, ptr %1005, align 16
  call void @ext4_itable_unused_set(ptr noundef %0, ptr noundef %898, i32 noundef %1006) #11
  br label %1007

1007:                                             ; preds = %1003, %999, %988, %978
  %1008 = load i16, ptr %881, align 2
  %1009 = getelementptr inbounds %struct.ext4_group_desc, ptr %898, i32 0, i32 6
  store i16 %1008, ptr %1009, align 2
  call void @ext4_group_desc_csum_set(ptr noundef %0, i32 noundef %882, ptr noundef %898) #11
  %1010 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_setup_new_descs, i32 noundef 1355, ptr noundef %431, ptr noundef null, ptr noundef %892) #11
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1013, label %1012, !prof !17

1012:                                             ; preds = %1007
  call void @__ext4_std_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_setup_new_descs, i32 noundef 1357, i32 noundef %1010) #11
  br label %1024

1013:                                             ; preds = %1007
  %1014 = call i32 @ext4_mb_add_groupinfo(ptr noundef %0, i32 noundef %882, ptr noundef %898) #11
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1016, label %1024

1016:                                             ; preds = %1013
  %1017 = add nuw i32 %880, 1
  %1018 = load i32, ptr %13, align 4
  %1019 = icmp ult i32 %1017, %1018
  br i1 %1019, label %1020, label %1027

1020:                                             ; preds = %1016
  %1021 = getelementptr i16, ptr %881, i32 1
  %1022 = getelementptr %struct.ext4_new_group_data, ptr %879, i32 1
  %1023 = load ptr, ptr %9, align 4
  br label %877

1024:                                             ; preds = %1013, %1012, %962, %860, %684, %682, %671, %435
  %1025 = phi i32 [ -5, %962 ], [ %1010, %1012 ], [ %680, %684 ], [ %680, %682 ], [ -12, %671 ], [ %438, %435 ], [ %1014, %1013 ], [ %861, %860 ]
  %1026 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_flex_group_add, i32 noundef 1549, ptr noundef %431) #11
  br label %1075

1027:                                             ; preds = %1016, %867, %447
  call fastcc void @ext4_update_super(ptr noundef %0, ptr noundef %2)
  %1028 = load ptr, ptr %436, align 64
  %1029 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_flex_group_add, i32 noundef 1546, ptr noundef %431, ptr noundef null, ptr noundef %1028) #11
  %1030 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_flex_group_add, i32 noundef 1549, ptr noundef %431) #11
  %1031 = icmp eq i32 %1029, 0
  br i1 %1031, label %1032, label %1075

1032:                                             ; preds = %1027
  %1033 = icmp eq i32 %1030, 0
  br i1 %1033, label %1034, label %1075

1034:                                             ; preds = %1032
  %1035 = load i32, ptr %8, align 4
  %1036 = load ptr, ptr %9, align 4
  %1037 = getelementptr inbounds %struct.ext4_sb_info, ptr %1036, i32 0, i32 7
  %1038 = load i32, ptr %1037, align 4
  %1039 = udiv i32 %1035, %1038
  %1040 = load i32, ptr %13, align 4
  %1041 = add i32 %1035, -1
  %1042 = add i32 %1041, %1040
  %1043 = udiv i32 %1042, %1038
  %1044 = getelementptr inbounds %struct.ext4_sb_info, ptr %1036, i32 0, i32 15
  %1045 = load ptr, ptr %1044, align 4
  %1046 = getelementptr inbounds %struct.ext4_super_block, ptr %1045, i32 0, i32 29
  %1047 = load i32, ptr %1046, align 8
  %1048 = lshr i32 %1047, 4
  %1049 = and i32 %1048, 1
  %1050 = load ptr, ptr %436, align 64
  %1051 = getelementptr inbounds %struct.buffer_head, ptr %1050, i32 0, i32 3
  %1052 = load i64, ptr %1051, align 8
  call fastcc void @update_backups(ptr noundef %0, i64 noundef %1052, ptr noundef %12, i32 noundef 1024, i32 noundef 0)
  %1053 = icmp sgt i32 %1039, %1043
  br i1 %1053, label %1075, label %1054

1054:                                             ; preds = %1034
  %1055 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 16
  br label %1056

1056:                                             ; preds = %1071, %1054
  %1057 = phi i64 [ 0, %1054 ], [ %1072, %1071 ]
  %1058 = phi i32 [ %1039, %1054 ], [ %1073, %1071 ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %1059 = load volatile ptr, ptr %1055, align 8
  %1060 = getelementptr ptr, ptr %1059, i32 %1058
  %1061 = load ptr, ptr %1060, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %1062 = getelementptr inbounds %struct.buffer_head, ptr %1061, i32 0, i32 3
  %1063 = load i64, ptr %1062, align 8
  %1064 = icmp eq i64 %1057, %1063
  br i1 %1064, label %1071, label %1065

1065:                                             ; preds = %1056
  %1066 = getelementptr inbounds %struct.buffer_head, ptr %1061, i32 0, i32 5
  %1067 = load ptr, ptr %1066, align 4
  %1068 = getelementptr inbounds %struct.buffer_head, ptr %1061, i32 0, i32 4
  %1069 = load i32, ptr %1068, align 8
  call fastcc void @update_backups(ptr noundef %0, i64 noundef %1063, ptr noundef %1067, i32 noundef %1069, i32 noundef %1049)
  %1070 = load i64, ptr %1062, align 8
  br label %1071

1071:                                             ; preds = %1065, %1056
  %1072 = phi i64 [ %1070, %1065 ], [ %1057, %1056 ]
  %1073 = add i32 %1058, 1
  %1074 = icmp sgt i32 %1073, %1043
  br i1 %1074, label %1075, label %1056

1075:                                             ; preds = %1071, %1034, %1032, %1027, %1024, %433, %415
  %1076 = phi i32 [ %416, %415 ], [ %434, %433 ], [ %1030, %1032 ], [ %1025, %1024 ], [ %1029, %1027 ], [ 0, %1034 ], [ 0, %1071 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret i32 %1076
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_group_extend(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !14
  %6 = getelementptr inbounds %struct.ext4_super_block, ptr %1, i32 0, i32 29
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ext4_super_block, ptr %1, i32 0, i32 50
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i64 [ %14, %10 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.ext4_super_block, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = or i64 %16, %19
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef %20, i64 noundef %2) #11
  br label %28

28:                                               ; preds = %27, %15
  %29 = icmp eq i64 %2, 0
  %30 = icmp eq i64 %20, %2
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %76, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -9
  %37 = zext i32 %36 to i64
  %38 = lshr i64 -1, %37
  %39 = icmp ult i64 %38, %2
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, i64 noundef %2) #11
  br label %76

41:                                               ; preds = %32
  %42 = icmp ugt i64 %20, %2
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1816, ptr noundef nonnull @.str.12) #11
  br label %76

44:                                               ; preds = %41
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %20, ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  %45 = load i32, ptr %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1824, ptr noundef nonnull @.str.13) #11
  br label %76

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 4
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = sub i32 %51, %45
  %53 = sext i32 %52 to i64
  %54 = add i64 %20, %53
  %55 = icmp ult i64 %54, %20
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1831, ptr noundef nonnull @.str.5) #11
  br label %76

57:                                               ; preds = %48
  %58 = icmp ugt i64 %54, %2
  %59 = trunc i64 %2 to i32
  %60 = sub i32 %59, %18
  %61 = select i1 %58, i32 %60, i32 %52
  %62 = sext i32 %61 to i64
  %63 = add i64 %20, %62
  %64 = icmp ult i64 %63, %2
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1840, ptr noundef nonnull @.str.14, i64 noundef %63, i32 noundef %61) #11
  br label %66

66:                                               ; preds = %65, %57
  %67 = add i64 %63, -1
  %68 = call ptr @ext4_sb_bread(ptr noundef %0, i64 noundef %67, i32 noundef 0) #11
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1845, ptr noundef nonnull @.str.15) #11
  br label %76

71:                                               ; preds = %66
  %72 = icmp eq ptr %68, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  call void @__brelse(ptr noundef nonnull %68) #11
  br label %74

74:                                               ; preds = %73, %71
  %75 = call fastcc i32 @ext4_group_extend_no_check(ptr noundef %0, i64 noundef %20, i32 noundef %61)
  br label %76

76:                                               ; preds = %74, %70, %56, %47, %43, %40, %28
  %77 = phi i32 [ -22, %40 ], [ -22, %43 ], [ -1, %47 ], [ -22, %56 ], [ -28, %70 ], [ %75, %74 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_get_group_no_and_offset(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_group_extend_no_check(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 3
  %11 = tail call ptr @__ext4_journal_start_sb(ptr noundef %0, i32 noundef 1734, i32 noundef 7, i32 noundef 3, i32 noundef 0, i32 noundef %10) #11
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = ptrtoint ptr %11 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1737, ptr noundef nonnull @.str.48, i32 noundef %14) #11
  br label %111

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 14
  %18 = load ptr, ptr %17, align 64
  %19 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1743, ptr noundef %11, ptr noundef %0, ptr noundef %18, i32 noundef 1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1745, ptr noundef nonnull @.str.49, i32 noundef %19) #11
  br label %73

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 14
  %25 = load ptr, ptr %24, align 64
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #11, !srcloc !8
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 4, ptr elementtype(i32) %25) #11, !srcloc !9
  %31 = extractvalue { i32, i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %22
  tail call void @__lock_buffer(ptr noundef %25) #11
  br label %35

35:                                               ; preds = %34, %29
  %36 = sext i32 %2 to i64
  %37 = add i64 %36, %1
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = lshr i64 %37, 32
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 29
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 52
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  %51 = shl nuw i64 %50, 32
  br label %52

52:                                               ; preds = %47, %35
  %53 = phi i64 [ %51, %47 ], [ 0, %35 ]
  %54 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = zext i32 %55 to i64
  %57 = or i64 %53, %56
  %58 = add i64 %57, %36
  %59 = trunc i64 %58 to i32
  store i32 %59, ptr %54, align 4
  %60 = lshr i64 %58, 32
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 52
  store i32 %61, ptr %62, align 8
  tail call void @ext4_superblock_csum_set(ptr noundef %0) #11
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 14
  %65 = load ptr, ptr %64, align 64
  tail call void @unlock_buffer(ptr noundef %65) #11
  %66 = tail call i32 @ext4_group_add_blocks(ptr noundef %11, ptr noundef %0, i64 noundef %1, i32 noundef %2) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %69, i32 0, i32 14
  %71 = load ptr, ptr %70, align 64
  %72 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1760, ptr noundef %11, ptr noundef null, ptr noundef %71) #11
  br label %73

73:                                               ; preds = %68, %52, %21
  %74 = phi i32 [ %19, %21 ], [ %66, %52 ], [ 0, %68 ]
  %75 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1764, ptr noundef %11) #11
  %76 = icmp eq i32 %75, 0
  %77 = icmp ne i32 %74, 0
  %78 = select i1 %76, i1 true, i1 %77
  %79 = select i1 %78, i32 %74, i32 %75
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %73
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr inbounds %struct.ext4_sb_info, ptr %82, i32 0, i32 17
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 29
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 128
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  %94 = load i32, ptr %93, align 8
  %95 = zext i32 %94 to i64
  %96 = shl nuw i64 %95, 32
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi i64 [ %96, %92 ], [ 0, %87 ]
  %99 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = zext i32 %100 to i64
  %102 = or i64 %98, %101
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i64 noundef %102) #12
  %104 = load ptr, ptr %4, align 4
  br label %105

105:                                              ; preds = %97, %81
  %106 = phi ptr [ %104, %97 ], [ %82, %81 ]
  %107 = getelementptr inbounds %struct.ext4_sb_info, ptr %106, i32 0, i32 14
  %108 = load ptr, ptr %107, align 64
  %109 = getelementptr inbounds %struct.buffer_head, ptr %108, i32 0, i32 3
  %110 = load i64, ptr %109, align 8
  tail call fastcc void @update_backups(ptr noundef %0, i64 noundef %110, ptr noundef %7, i32 noundef 1024, i32 noundef 0)
  br label %111

111:                                              ; preds = %105, %73, %13
  %112 = phi i32 [ %14, %13 ], [ 0, %105 ], [ %79, %73 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_resize_fs(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !14
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 110
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = add i64 %1, -1
  %16 = tail call ptr @ext4_sb_bread(ptr noundef %0, i64 noundef %15, i32 noundef 0) #11
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 1975, ptr noundef nonnull @.str.15) #11
  br label %909

19:                                               ; preds = %2
  %20 = icmp eq ptr %16, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void @__brelse(ptr noundef nonnull %16) #11
  br label %22

22:                                               ; preds = %21, %19
  %23 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 29
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 1
  %25 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 50
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 8
  %27 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 37
  %28 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 5
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 5
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 11
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 12
  %32 = icmp ugt i32 %13, 26
  %33 = shl nuw i32 48, %13
  %34 = shl nuw nsw i32 %14, 1
  %35 = add i32 %14, -1
  %36 = icmp sgt i32 %14, 1
  %37 = select i1 %36, i16 -3, i16 -1
  %38 = sub i32 0, %14
  br label %39

39:                                               ; preds = %876, %22
  %40 = phi i64 [ %1, %22 ], [ %877, %876 ]
  %41 = phi i32 [ 0, %22 ], [ %878, %876 ]
  br label %42

42:                                               ; preds = %333, %39
  %43 = phi i64 [ %40, %39 ], [ %334, %333 ]
  %44 = load i32, ptr %23, align 8
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %25, align 8
  %49 = zext i32 %48 to i64
  %50 = shl nuw i64 %49, 32
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi i64 [ %50, %47 ], [ 0, %42 ]
  %53 = load i32, ptr %24, align 4
  %54 = zext i32 %53 to i64
  %55 = or i64 %52, %54
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i64 noundef %55, i64 noundef %43) #11
  %56 = icmp ult i64 %43, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 1988, ptr noundef nonnull @.str.12) #11
  br label %909

58:                                               ; preds = %51
  %59 = icmp eq i64 %43, %55
  br i1 %59, label %909, label %60

60:                                               ; preds = %58
  %61 = add i64 %43, -1
  %62 = call i32 @ext4_get_group_number(ptr noundef %0, i64 noundef %61) #11
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 4
  %65 = load i32, ptr %64, align 16
  %66 = udiv i32 -1, %65
  %67 = icmp ult i32 %62, %66
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 1998, ptr noundef nonnull @.str.18) #11
  br label %909

69:                                               ; preds = %60
  %70 = add i64 %55, -1
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %70, ptr noundef nonnull %7, ptr noundef nonnull %6) #11
  %71 = load ptr, ptr %8, align 4
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %62
  %75 = udiv i32 %74, %73
  %76 = load i32, ptr %26, align 32
  %77 = add i32 %73, -1
  %78 = add i32 %77, %76
  %79 = udiv i32 %78, %73
  %80 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 15
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.ext4_super_block, ptr %81, i32 0, i32 29
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 16
  %85 = icmp ne i32 %84, 0
  %86 = getelementptr inbounds %struct.ext4_super_block, ptr %81, i32 0, i32 28
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %116, label %90

90:                                               ; preds = %69
  br i1 %85, label %91, label %92

91:                                               ; preds = %90
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 2011, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.19) #11
  br label %909

92:                                               ; preds = %90
  %93 = load i16, ptr %27, align 2
  %94 = zext i16 %93 to i32
  %95 = add i32 %79, %94
  %96 = icmp ugt i32 %75, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = mul i32 %95, %73
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.ext4_sb_info, ptr %71, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = zext i32 %101 to i64
  %103 = mul nuw i64 %102, %99
  %104 = load i32, ptr %28, align 4
  %105 = zext i32 %104 to i64
  %106 = add nuw i64 %103, %105
  %107 = add i32 %98, -1
  br label %108

108:                                              ; preds = %97, %92
  %109 = phi i64 [ %106, %97 ], [ %43, %92 ]
  %110 = phi i32 [ %107, %97 ], [ %62, %92 ]
  %111 = phi i64 [ %43, %97 ], [ 0, %92 ]
  %112 = call ptr @__ext4_iget(ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 2028) #11
  %113 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 2030, ptr noundef nonnull @.str.8) #11
  %115 = ptrtoint ptr %112 to i32
  br label %909

116:                                              ; preds = %108, %69
  %117 = phi i64 [ %109, %108 ], [ %43, %69 ]
  %118 = phi ptr [ %112, %108 ], [ null, %69 ]
  %119 = phi i32 [ %110, %108 ], [ %62, %69 ]
  %120 = phi i64 [ %111, %108 ], [ 0, %69 ]
  %121 = icmp ne ptr %118, null
  %122 = select i1 %121, i1 true, i1 %85
  %123 = xor i1 %122, true
  %124 = icmp eq i64 %117, %55
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %126, label %282

126:                                              ; preds = %116
  %127 = load ptr, ptr %8, align 4
  %128 = getelementptr inbounds %struct.ext4_sb_info, ptr %127, i32 0, i32 15
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %118, i32 -208
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.51) #11
  %131 = icmp eq ptr %118, null
  br i1 %131, label %209, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.ext4_super_block, ptr %129, i32 0, i32 37
  %134 = load i16, ptr %133, align 2
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1879, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.52) #11
  br label %889

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.inode, ptr %118, i32 0, i32 21
  %139 = load i64, ptr %138, align 8
  %140 = getelementptr inbounds %struct.inode, ptr %118, i32 0, i32 19
  %141 = load i8, ptr %140, align 2
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds %struct.ext4_sb_info, ptr %127, i32 0, i32 12
  %144 = load i32, ptr %143, align 16
  %145 = add i32 %144, -9
  %146 = add i32 %145, %142
  %147 = shl nuw i32 1, %146
  %148 = sext i32 %147 to i64
  %149 = icmp eq i64 %139, %148
  br i1 %149, label %150, label %274

150:                                              ; preds = %137
  %151 = getelementptr i8, ptr %118, i32 -156
  %152 = load i32, ptr %130, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %274

154:                                              ; preds = %150
  %155 = getelementptr i8, ptr %118, i32 -204
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %274

158:                                              ; preds = %154
  %159 = getelementptr i8, ptr %118, i32 -200
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %274

162:                                              ; preds = %158
  %163 = getelementptr i8, ptr %118, i32 -196
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %274

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %118, i32 -192
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %274

170:                                              ; preds = %166
  %171 = getelementptr i8, ptr %118, i32 -188
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %274

174:                                              ; preds = %170
  %175 = getelementptr i8, ptr %118, i32 -184
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %274

178:                                              ; preds = %174
  %179 = getelementptr i8, ptr %118, i32 -180
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %274

182:                                              ; preds = %178
  %183 = getelementptr i8, ptr %118, i32 -176
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %274

186:                                              ; preds = %182
  %187 = getelementptr i8, ptr %118, i32 -172
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %274

190:                                              ; preds = %186
  %191 = getelementptr i8, ptr %118, i32 -168
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %274

194:                                              ; preds = %190
  %195 = getelementptr i8, ptr %118, i32 -164
  %196 = load i32, ptr %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %274

198:                                              ; preds = %194
  %199 = getelementptr i8, ptr %118, i32 -160
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %274

202:                                              ; preds = %198
  %203 = load i32, ptr %151, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %274, label %205

205:                                              ; preds = %202
  %206 = getelementptr i8, ptr %118, i32 -152
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %274

209:                                              ; preds = %205, %126
  %210 = phi i32 [ 1, %126 ], [ 4, %205 ]
  %211 = load ptr, ptr %8, align 4
  %212 = getelementptr inbounds %struct.ext4_sb_info, ptr %211, i32 0, i32 11
  %213 = load i32, ptr %212, align 4
  %214 = shl i32 %213, 3
  %215 = call ptr @__ext4_journal_start_sb(ptr noundef %0, i32 noundef 1900, i32 noundef 7, i32 noundef %210, i32 noundef 0, i32 noundef %214) #11
  %216 = icmp ugt ptr %215, inttoptr (i32 -4096 to ptr)
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = ptrtoint ptr %215 to i32
  br label %275

219:                                              ; preds = %209
  %220 = getelementptr inbounds %struct.ext4_sb_info, ptr %127, i32 0, i32 14
  %221 = load ptr, ptr %220, align 64
  %222 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1906, ptr noundef %215, ptr noundef %0, ptr noundef %221, i32 noundef 1) #11
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %272

224:                                              ; preds = %219
  %225 = load ptr, ptr %220, align 64
  %226 = load volatile i32, ptr %225, align 4
  %227 = and i32 %226, 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %225) #11, !srcloc !8
  %230 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %225, ptr %225, i32 4, ptr elementtype(i32) %225) #11, !srcloc !9
  %231 = extractvalue { i32, i32, i32 } %230, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %232 = and i32 %231, 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %229, %224
  call void @__lock_buffer(ptr noundef %225) #11
  br label %235

235:                                              ; preds = %234, %229
  %236 = load ptr, ptr %8, align 4
  %237 = getelementptr inbounds %struct.ext4_sb_info, ptr %236, i32 0, i32 15
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.ext4_super_block, ptr %238, i32 0, i32 28
  %240 = load i32, ptr %239, align 4
  %241 = and i32 %240, -17
  store i32 %241, ptr %239, align 4
  call void @ext4_update_dynamic_rev(ptr noundef %0) #11
  %242 = load ptr, ptr %8, align 4
  %243 = getelementptr inbounds %struct.ext4_sb_info, ptr %242, i32 0, i32 15
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.ext4_super_block, ptr %244, i32 0, i32 29
  %246 = load i32, ptr %245, align 8
  %247 = or i32 %246, 16
  store i32 %247, ptr %245, align 8
  %248 = getelementptr inbounds %struct.ext4_sb_info, ptr %127, i32 0, i32 8
  %249 = load i32, ptr %248, align 32
  %250 = load ptr, ptr %8, align 4
  %251 = getelementptr inbounds %struct.ext4_sb_info, ptr %250, i32 0, i32 7
  %252 = load i32, ptr %251, align 4
  %253 = add i32 %249, -1
  %254 = add i32 %253, %252
  %255 = udiv i32 %254, %252
  %256 = load ptr, ptr %128, align 4
  %257 = getelementptr inbounds %struct.ext4_super_block, ptr %256, i32 0, i32 47
  store i32 %255, ptr %257, align 4
  call void @ext4_superblock_csum_set(ptr noundef %0) #11
  %258 = load ptr, ptr %220, align 64
  call void @unlock_buffer(ptr noundef %258) #11
  %259 = load ptr, ptr %220, align 64
  %260 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1918, ptr noundef %215, ptr noundef null, ptr noundef %259) #11
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %235
  call void @__ext4_std_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1920, i32 noundef %260) #11
  br label %272

263:                                              ; preds = %235
  br i1 %131, label %272, label %264

264:                                              ; preds = %263
  %265 = getelementptr i8, ptr %118, i32 -156
  %266 = load i32, ptr %265, align 4
  %267 = zext i32 %266 to i64
  call void @ext4_free_blocks(ptr noundef %215, ptr noundef nonnull %118, ptr noundef null, i64 noundef %267, i32 noundef 1, i32 noundef 3) #11
  store i32 0, ptr %265, align 4
  %268 = getelementptr inbounds %struct.inode, ptr %118, i32 0, i32 21
  store i64 0, ptr %268, align 8
  %269 = call i32 @__ext4_mark_inode_dirty(ptr noundef %215, ptr noundef nonnull %118, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1932) #11
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %264
  call void @__ext4_std_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1934, i32 noundef %269) #11
  br label %272

272:                                              ; preds = %271, %264, %263, %262, %219
  %273 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1938, ptr noundef %215) #11
  br label %275

274:                                              ; preds = %205, %202, %198, %194, %190, %186, %182, %178, %174, %170, %166, %162, %158, %154, %150, %137
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1944, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.53) #11
  br label %889

275:                                              ; preds = %272, %217
  %276 = phi i32 [ %218, %217 ], [ %273, %272 ]
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %885

278:                                              ; preds = %275
  br i1 %121, label %279, label %280

279:                                              ; preds = %278
  call void @iput(ptr noundef nonnull %118) #11
  br label %280

280:                                              ; preds = %279, %278
  %281 = icmp eq i64 %120, 0
  br i1 %281, label %282, label %333

282:                                              ; preds = %280, %116
  %283 = phi ptr [ null, %280 ], [ %118, %116 ]
  %284 = zext i32 %119 to i64
  %285 = load ptr, ptr %8, align 4
  %286 = getelementptr inbounds %struct.ext4_sb_info, ptr %285, i32 0, i32 2
  %287 = load i32, ptr %286, align 8
  %288 = zext i32 %287 to i64
  %289 = mul nuw i64 %288, %284
  %290 = getelementptr inbounds %struct.ext4_sb_info, ptr %285, i32 0, i32 15
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.ext4_super_block, ptr %291, i32 0, i32 5
  %293 = load i32, ptr %292, align 4
  %294 = zext i32 %293 to i64
  %295 = call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %119) #11
  %296 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %119) #11
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %307, label %298

298:                                              ; preds = %282
  %299 = load ptr, ptr %8, align 4
  %300 = getelementptr inbounds %struct.ext4_sb_info, ptr %299, i32 0, i32 15
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr inbounds %struct.ext4_super_block, ptr %301, i32 0, i32 37
  %303 = load i16, ptr %302, align 2
  %304 = zext i16 %303 to i32
  %305 = add i32 %295, 1
  %306 = add i32 %305, %304
  br label %307

307:                                              ; preds = %298, %282
  %308 = phi i32 [ %306, %298 ], [ %295, %282 ]
  %309 = sext i32 %308 to i64
  %310 = load i32, ptr %29, align 4
  %311 = zext i32 %310 to i64
  %312 = load i32, ptr %30, align 4
  %313 = zext i32 %312 to i64
  %314 = add nuw i64 %289, 2
  %315 = add nuw i64 %314, %294
  %316 = add i64 %315, %309
  %317 = add i64 %316, %311
  %318 = add i64 %317, %313
  %319 = icmp ult i64 %318, %117
  br i1 %319, label %338, label %320

320:                                              ; preds = %307
  %321 = load ptr, ptr %8, align 4
  %322 = getelementptr inbounds %struct.ext4_sb_info, ptr %321, i32 0, i32 2
  %323 = load i32, ptr %322, align 8
  %324 = zext i32 %323 to i64
  %325 = mul nuw i64 %324, %284
  %326 = getelementptr inbounds %struct.ext4_sb_info, ptr %321, i32 0, i32 15
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr inbounds %struct.ext4_super_block, ptr %327, i32 0, i32 5
  %329 = load i32, ptr %328, align 4
  %330 = zext i32 %329 to i64
  %331 = add nuw i64 %325, %330
  %332 = icmp eq ptr %283, null
  br i1 %332, label %333, label %335

333:                                              ; preds = %320, %280
  %334 = phi i64 [ %120, %280 ], [ %331, %320 ]
  br label %42

335:                                              ; preds = %872, %320
  %336 = phi i64 [ %120, %872 ], [ %331, %320 ]
  %337 = phi i32 [ %870, %872 ], [ %41, %320 ]
  call void @iput(ptr noundef nonnull %283) #11
  br label %876

338:                                              ; preds = %307
  %339 = load i32, ptr %7, align 4
  %340 = icmp eq i32 %119, %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = trunc i64 %117 to i32
  %343 = sub i32 %342, %53
  br label %353

344:                                              ; preds = %338
  %345 = load ptr, ptr %8, align 4
  %346 = getelementptr inbounds %struct.ext4_sb_info, ptr %345, i32 0, i32 3
  %347 = load i32, ptr %346, align 4
  %348 = load i32, ptr %6, align 4
  %349 = xor i32 %348, -1
  %350 = add i32 %347, %349
  %351 = load i32, ptr %31, align 16
  %352 = shl i32 %350, %351
  br label %353

353:                                              ; preds = %344, %341
  %354 = phi i32 [ %343, %341 ], [ %352, %344 ]
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = call fastcc i32 @ext4_group_extend_no_check(ptr noundef %0, i64 noundef %55, i32 noundef %354)
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %885

359:                                              ; preds = %356, %353
  %360 = load i32, ptr %23, align 8
  %361 = and i32 %360, 128
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load i32, ptr %25, align 8
  %365 = zext i32 %364 to i64
  %366 = shl nuw i64 %365, 32
  br label %367

367:                                              ; preds = %363, %359
  %368 = phi i64 [ %366, %363 ], [ 0, %359 ]
  %369 = load i32, ptr %24, align 4
  %370 = zext i32 %369 to i64
  %371 = or i64 %368, %370
  %372 = icmp eq i64 %371, %117
  br i1 %372, label %885, label %373

373:                                              ; preds = %367
  %374 = add i32 %119, 1
  %375 = call i32 @ext4_alloc_flex_bg_array(ptr noundef %0, i32 noundef %374) #11
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %885

377:                                              ; preds = %373
  %378 = call i32 @ext4_mb_alloc_groupinfo(ptr noundef %0, i32 noundef %374) #11
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %885

380:                                              ; preds = %377
  %381 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %382 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %381, i32 noundef 3136, i32 noundef 12) #10
  %383 = icmp eq ptr %382, null
  br i1 %383, label %885, label %384

384:                                              ; preds = %380
  br i1 %32, label %883, label %385

385:                                              ; preds = %384
  %386 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %382, i32 0, i32 2
  store i32 %14, ptr %386, align 8
  %387 = call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3136) #13
  store ptr %387, ptr %382, align 8
  %388 = icmp eq ptr %387, null
  br i1 %388, label %883, label %389

389:                                              ; preds = %385
  %390 = call noalias align 64 ptr @__kmalloc(i32 noundef %34, i32 noundef 3136) #13
  %391 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %382, i32 0, i32 1
  store ptr %390, ptr %391, align 4
  %392 = icmp eq ptr %390, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %389
  %394 = add i64 %117, -1
  br label %396

395:                                              ; preds = %389
  call void @kfree(ptr noundef nonnull %387) #11
  br label %883

396:                                              ; preds = %866, %393
  %397 = phi i32 [ %600, %866 ], [ %41, %393 ]
  %398 = load ptr, ptr %8, align 4
  %399 = getelementptr inbounds %struct.ext4_sb_info, ptr %398, i32 0, i32 15
  %400 = load ptr, ptr %399, align 4
  %401 = load ptr, ptr %382, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !14
  %402 = getelementptr inbounds %struct.ext4_sb_info, ptr %398, i32 0, i32 3
  %403 = load i32, ptr %402, align 4
  %404 = getelementptr inbounds %struct.ext4_super_block, ptr %400, i32 0, i32 29
  %405 = load i32, ptr %404, align 8
  %406 = and i32 %405, 128
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %413, label %408

408:                                              ; preds = %396
  %409 = getelementptr inbounds %struct.ext4_super_block, ptr %400, i32 0, i32 50
  %410 = load i32, ptr %409, align 8
  %411 = zext i32 %410 to i64
  %412 = shl nuw i64 %411, 32
  br label %413

413:                                              ; preds = %408, %396
  %414 = phi i64 [ %412, %408 ], [ 0, %396 ]
  %415 = getelementptr inbounds %struct.ext4_super_block, ptr %400, i32 0, i32 1
  %416 = load i32, ptr %415, align 4
  %417 = zext i32 %416 to i64
  %418 = or i64 %414, %417
  %419 = icmp eq i64 %418, %117
  br i1 %419, label %577, label %420

420:                                              ; preds = %413
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %418, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %421 = load i32, ptr %5, align 4
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %424, label %423, !prof !17

423:                                              ; preds = %420
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1602, 0\0A.popsection", ""() #11, !srcloc !26
  unreachable

424:                                              ; preds = %420
  call void @ext4_get_group_no_and_offset(ptr noundef %0, i64 noundef %394, ptr noundef nonnull %3, ptr noundef nonnull %5) #11
  %425 = load i32, ptr %4, align 4
  %426 = or i32 %425, %35
  %427 = load i32, ptr %3, align 4
  %428 = call i32 @llvm.umin.i32(i32 %426, i32 %427) #11
  %429 = sub i32 1, %425
  %430 = add i32 %428, %429
  store i32 %430, ptr %386, align 8
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %517, label %432

432:                                              ; preds = %513, %424
  %433 = phi i32 [ %514, %513 ], [ %425, %424 ]
  %434 = phi i32 [ %510, %513 ], [ 0, %424 ]
  %435 = add i32 %434, %433
  %436 = getelementptr %struct.ext4_new_group_data, ptr %401, i32 %434
  store i32 %435, ptr %436, align 8
  %437 = load ptr, ptr %8, align 4
  %438 = getelementptr inbounds %struct.ext4_sb_info, ptr %437, i32 0, i32 2
  %439 = load i32, ptr %438, align 8
  %440 = getelementptr %struct.ext4_new_group_data, ptr %401, i32 %434, i32 4
  store i32 %439, ptr %440, align 8
  %441 = load i32, ptr %4, align 4
  %442 = add i32 %441, %434
  %443 = call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %442) #11
  %444 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %442) #11
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %455, label %446

446:                                              ; preds = %432
  %447 = load ptr, ptr %8, align 4
  %448 = getelementptr inbounds %struct.ext4_sb_info, ptr %447, i32 0, i32 15
  %449 = load ptr, ptr %448, align 4
  %450 = getelementptr inbounds %struct.ext4_super_block, ptr %449, i32 0, i32 37
  %451 = load i16, ptr %450, align 2
  %452 = zext i16 %451 to i32
  %453 = add i32 %443, 1
  %454 = add i32 %453, %452
  br label %455

455:                                              ; preds = %446, %432
  %456 = phi i32 [ %454, %446 ], [ %443, %432 ]
  %457 = trunc i32 %456 to i16
  %458 = getelementptr %struct.ext4_new_group_data, ptr %401, i32 %434, i32 6
  store i16 %457, ptr %458, align 2
  %459 = load ptr, ptr %8, align 4
  %460 = getelementptr inbounds %struct.ext4_sb_info, ptr %459, i32 0, i32 3
  %461 = load i32, ptr %460, align 4
  %462 = getelementptr %struct.ext4_new_group_data, ptr %401, i32 %434, i32 7
  store i32 %461, ptr %462, align 8
  %463 = load ptr, ptr %8, align 4
  %464 = getelementptr inbounds %struct.ext4_sb_info, ptr %463, i32 0, i32 15
  %465 = load ptr, ptr %464, align 4
  %466 = getelementptr inbounds %struct.ext4_super_block, ptr %465, i32 0, i32 30
  %467 = load i32, ptr %466, align 4
  %468 = and i32 %467, 16
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %494

470:                                              ; preds = %455
  %471 = and i32 %467, 1024
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %506, label %473

473:                                              ; preds = %470
  %474 = getelementptr inbounds %struct.ext4_sb_info, ptr %463, i32 0, i32 119
  %475 = load ptr, ptr %474, align 8
  %476 = icmp eq ptr %475, null
  %477 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %478 = xor i1 %477, true
  %479 = select i1 %476, i1 %478, i1 false
  br i1 %479, label %480, label %491, !prof !15

480:                                              ; preds = %473
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %481 = load ptr, ptr %8, align 4
  %482 = getelementptr inbounds %struct.ext4_sb_info, ptr %481, i32 0, i32 15
  %483 = load ptr, ptr %482, align 4
  %484 = getelementptr inbounds %struct.ext4_super_block, ptr %483, i32 0, i32 30
  %485 = load i32, ptr %484, align 4
  %486 = and i32 %485, 1024
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %506, label %488

488:                                              ; preds = %480
  %489 = getelementptr inbounds %struct.ext4_sb_info, ptr %481, i32 0, i32 119
  %490 = load ptr, ptr %489, align 8
  br label %491

491:                                              ; preds = %488, %473
  %492 = phi ptr [ %490, %488 ], [ %475, %473 ]
  %493 = icmp eq ptr %492, null
  br i1 %493, label %506, label %494

494:                                              ; preds = %491, %455
  %495 = load ptr, ptr %391, align 4
  %496 = getelementptr i16, ptr %495, i32 %434
  store i16 3, ptr %496, align 2
  %497 = load ptr, ptr %8, align 4
  %498 = getelementptr inbounds %struct.ext4_sb_info, ptr %497, i32 0, i32 17
  %499 = load i32, ptr %498, align 4
  %500 = icmp sgt i32 %499, -1
  br i1 %500, label %501, label %509

501:                                              ; preds = %494
  %502 = load ptr, ptr %391, align 4
  %503 = getelementptr i16, ptr %502, i32 %434
  %504 = load i16, ptr %503, align 2
  %505 = or i16 %504, 4
  store i16 %505, ptr %503, align 2
  br label %509

506:                                              ; preds = %491, %480, %470
  %507 = load ptr, ptr %391, align 4
  %508 = getelementptr i16, ptr %507, i32 %434
  store i16 4, ptr %508, align 2
  br label %509

509:                                              ; preds = %506, %501, %494
  %510 = add nuw i32 %434, 1
  %511 = load i32, ptr %386, align 8
  %512 = icmp ult i32 %510, %511
  br i1 %512, label %513, label %515

513:                                              ; preds = %509
  %514 = load i32, ptr %4, align 4
  br label %432

515:                                              ; preds = %509
  %516 = load i32, ptr %3, align 4
  br label %517

517:                                              ; preds = %515, %424
  %518 = phi i32 [ %427, %424 ], [ %516, %515 ]
  %519 = phi i32 [ -1, %424 ], [ %434, %515 ]
  %520 = icmp eq i32 %428, %518
  br i1 %520, label %521, label %558

521:                                              ; preds = %517
  %522 = load ptr, ptr %8, align 4
  %523 = getelementptr inbounds %struct.ext4_sb_info, ptr %522, i32 0, i32 15
  %524 = load ptr, ptr %523, align 4
  %525 = getelementptr inbounds %struct.ext4_super_block, ptr %524, i32 0, i32 30
  %526 = load i32, ptr %525, align 4
  %527 = and i32 %526, 16
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %553

529:                                              ; preds = %521
  %530 = and i32 %526, 1024
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %558, label %532

532:                                              ; preds = %529
  %533 = getelementptr inbounds %struct.ext4_sb_info, ptr %522, i32 0, i32 119
  %534 = load ptr, ptr %533, align 8
  %535 = icmp eq ptr %534, null
  %536 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %537 = xor i1 %536, true
  %538 = select i1 %535, i1 %537, i1 false
  br i1 %538, label %539, label %550, !prof !15

539:                                              ; preds = %532
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  %540 = load ptr, ptr %8, align 4
  %541 = getelementptr inbounds %struct.ext4_sb_info, ptr %540, i32 0, i32 15
  %542 = load ptr, ptr %541, align 4
  %543 = getelementptr inbounds %struct.ext4_super_block, ptr %542, i32 0, i32 30
  %544 = load i32, ptr %543, align 4
  %545 = and i32 %544, 1024
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %558, label %547

547:                                              ; preds = %539
  %548 = getelementptr inbounds %struct.ext4_sb_info, ptr %540, i32 0, i32 119
  %549 = load ptr, ptr %548, align 8
  br label %550

550:                                              ; preds = %547, %532
  %551 = phi ptr [ %549, %547 ], [ %534, %532 ]
  %552 = icmp eq ptr %551, null
  br i1 %552, label %558, label %553

553:                                              ; preds = %550, %521
  %554 = load ptr, ptr %391, align 4
  %555 = getelementptr i16, ptr %554, i32 %519
  %556 = load i16, ptr %555, align 2
  %557 = and i16 %556, -3
  store i16 %557, ptr %555, align 2
  br label %558

558:                                              ; preds = %553, %550, %539, %529, %517
  %559 = load i32, ptr %3, align 4
  %560 = icmp eq i32 %428, %559
  br i1 %560, label %561, label %578

561:                                              ; preds = %558
  %562 = load i32, ptr %5, align 4
  %563 = add i32 %403, -1
  %564 = icmp eq i32 %562, %563
  br i1 %564, label %578, label %565

565:                                              ; preds = %561
  %566 = add i32 %562, 1
  %567 = getelementptr inbounds %struct.ext4_sb_info, ptr %398, i32 0, i32 12
  %568 = load i32, ptr %567, align 16
  %569 = shl i32 %566, %568
  %570 = getelementptr %struct.ext4_new_group_data, ptr %401, i32 %519, i32 4
  store i32 %569, ptr %570, align 8
  %571 = load i32, ptr %5, align 4
  %572 = getelementptr %struct.ext4_new_group_data, ptr %401, i32 %519, i32 7
  %573 = load i32, ptr %572, align 8
  %574 = sub i32 1, %403
  %575 = add i32 %574, %571
  %576 = add i32 %575, %573
  store i32 %576, ptr %572, align 8
  br label %578

577:                                              ; preds = %413
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %869

578:                                              ; preds = %565, %561, %558
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %579 = load volatile i32, ptr @jiffies, align 64
  %580 = sub i32 %579, %397
  %581 = icmp ugt i32 %580, 1000
  br i1 %581, label %582, label %599

582:                                              ; preds = %578
  %583 = icmp eq i32 %397, 0
  br i1 %583, label %597, label %584

584:                                              ; preds = %582
  %585 = load i32, ptr %23, align 8
  %586 = and i32 %585, 128
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %592, label %588

588:                                              ; preds = %584
  %589 = load i32, ptr %25, align 8
  %590 = zext i32 %589 to i64
  %591 = shl nuw i64 %590, 32
  br label %592

592:                                              ; preds = %588, %584
  %593 = phi i64 [ %591, %588 ], [ 0, %584 ]
  %594 = load i32, ptr %24, align 4
  %595 = zext i32 %594 to i64
  %596 = or i64 %593, %595
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.20, i64 noundef %596) #11
  br label %597

597:                                              ; preds = %592, %582
  %598 = load volatile i32, ptr @jiffies, align 64
  br label %599

599:                                              ; preds = %597, %578
  %600 = phi i32 [ %598, %597 ], [ %397, %578 ]
  %601 = load ptr, ptr %382, align 8
  %602 = load i32, ptr %386, align 8
  %603 = icmp eq i32 %602, 0
  %604 = icmp eq ptr %601, null
  %605 = select i1 %603, i1 true, i1 %604, !prof !15
  br i1 %605, label %606, label %607, !prof !15

606:                                              ; preds = %599
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #11, !srcloc !27
  unreachable

607:                                              ; preds = %599
  %608 = load i32, ptr %601, align 8
  %609 = add i32 %608, %602
  %610 = add i32 %609, -1
  %611 = xor i32 %608, %610
  %612 = and i32 %611, %38
  %613 = icmp ne i32 %612, 0
  %614 = select i1 %36, i1 %613, i1 false
  br i1 %614, label %617, label %615, !prof !15

615:                                              ; preds = %607
  %616 = icmp ult i32 %608, %609
  br i1 %616, label %624, label %869

617:                                              ; preds = %607
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 306, 0\0A.popsection", ""() #11, !srcloc !28
  unreachable

618:                                              ; preds = %781, %751
  %619 = phi i32 [ %747, %751 ], [ %836, %781 ]
  %620 = phi i32 [ %626, %751 ], [ %835, %781 ]
  %621 = load i32, ptr %601, align 8
  %622 = add i32 %621, %619
  %623 = icmp ult i32 %714, %622
  br i1 %623, label %624, label %869

624:                                              ; preds = %618, %615
  %625 = phi i32 [ %621, %618 ], [ %608, %615 ]
  %626 = phi i32 [ %620, %618 ], [ 0, %615 ]
  %627 = phi i32 [ %749, %618 ], [ 0, %615 ]
  %628 = phi i32 [ %722, %618 ], [ 0, %615 ]
  %629 = phi i32 [ %714, %618 ], [ %608, %615 ]
  br label %630

630:                                              ; preds = %635, %624
  %631 = phi i32 [ %625, %624 ], [ %638, %635 ]
  %632 = phi i32 [ %627, %624 ], [ %637, %635 ]
  %633 = phi i32 [ %628, %624 ], [ %722, %635 ]
  %634 = phi i32 [ %629, %624 ], [ %714, %635 ]
  br label %647

635:                                              ; preds = %758, %724
  %636 = phi i32 [ %720, %724 ], [ %776, %758 ]
  %637 = phi i32 [ %632, %724 ], [ %775, %758 ]
  %638 = load i32, ptr %601, align 8
  %639 = add i32 %638, %636
  %640 = icmp ult i32 %714, %639
  br i1 %640, label %630, label %869

641:                                              ; preds = %726, %717
  %642 = phi i32 [ %715, %717 ], [ %744, %726 ]
  %643 = phi i32 [ %649, %717 ], [ %743, %726 ]
  %644 = load i32, ptr %601, align 8
  %645 = add i32 %644, %642
  %646 = icmp ult i32 %714, %645
  br i1 %646, label %647, label %869

647:                                              ; preds = %641, %630
  %648 = phi i32 [ %631, %630 ], [ %644, %641 ]
  %649 = phi i32 [ %633, %630 ], [ %643, %641 ]
  %650 = phi i32 [ %634, %630 ], [ %714, %641 ]
  %651 = zext i32 %650 to i64
  %652 = load ptr, ptr %8, align 4
  %653 = getelementptr inbounds %struct.ext4_sb_info, ptr %652, i32 0, i32 2
  %654 = load i32, ptr %653, align 8
  %655 = zext i32 %654 to i64
  %656 = mul nuw i64 %655, %651
  %657 = getelementptr inbounds %struct.ext4_sb_info, ptr %652, i32 0, i32 15
  %658 = load ptr, ptr %657, align 4
  %659 = getelementptr inbounds %struct.ext4_super_block, ptr %658, i32 0, i32 5
  %660 = load i32, ptr %659, align 4
  %661 = zext i32 %660 to i64
  %662 = add nuw i64 %656, %661
  %663 = sub i32 %650, %648
  %664 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %663, i32 4
  %665 = load i32, ptr %664, align 8
  %666 = zext i32 %665 to i64
  %667 = add nuw i64 %662, %666
  %668 = call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %650) #11
  %669 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %650) #11
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %680, label %671

671:                                              ; preds = %647
  %672 = load ptr, ptr %8, align 4
  %673 = getelementptr inbounds %struct.ext4_sb_info, ptr %672, i32 0, i32 15
  %674 = load ptr, ptr %673, align 4
  %675 = getelementptr inbounds %struct.ext4_super_block, ptr %674, i32 0, i32 37
  %676 = load i16, ptr %675, align 2
  %677 = zext i16 %676 to i32
  %678 = add i32 %668, 1
  %679 = add i32 %678, %677
  br label %680

680:                                              ; preds = %671, %647
  %681 = phi i32 [ %679, %671 ], [ %668, %647 ]
  %682 = zext i32 %681 to i64
  %683 = add nuw i64 %662, %682
  %684 = add nuw i32 %650, 1
  %685 = icmp ult i32 %650, %610
  br i1 %685, label %686, label %712

686:                                              ; preds = %704, %680
  %687 = phi i32 [ %710, %704 ], [ %684, %680 ]
  %688 = phi i64 [ %709, %704 ], [ %667, %680 ]
  %689 = call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %687) #11
  %690 = call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %687) #11
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %701, label %692

692:                                              ; preds = %686
  %693 = load ptr, ptr %8, align 4
  %694 = getelementptr inbounds %struct.ext4_sb_info, ptr %693, i32 0, i32 15
  %695 = load ptr, ptr %694, align 4
  %696 = getelementptr inbounds %struct.ext4_super_block, ptr %695, i32 0, i32 37
  %697 = load i16, ptr %696, align 2
  %698 = zext i16 %697 to i32
  %699 = add i32 %689, 1
  %700 = add i32 %699, %698
  br label %701

701:                                              ; preds = %692, %686
  %702 = phi i32 [ %700, %692 ], [ %689, %686 ]
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %712

704:                                              ; preds = %701
  %705 = sub i32 %687, %648
  %706 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %705, i32 4
  %707 = load i32, ptr %706, align 8
  %708 = zext i32 %707 to i64
  %709 = add i64 %688, %708
  %710 = add i32 %687, 1
  %711 = icmp ugt i32 %710, %610
  br i1 %711, label %712, label %686

712:                                              ; preds = %704, %701, %680
  %713 = phi i64 [ %667, %680 ], [ %709, %704 ], [ %688, %701 ]
  %714 = phi i32 [ %684, %680 ], [ %710, %704 ], [ %687, %701 ]
  %715 = load i32, ptr %386, align 8
  %716 = icmp ult i32 %649, %715
  br i1 %716, label %717, label %719

717:                                              ; preds = %712
  %718 = icmp ult i64 %683, %713
  br i1 %718, label %728, label %641

719:                                              ; preds = %728, %712
  %720 = phi i32 [ %744, %728 ], [ %715, %712 ]
  %721 = phi i64 [ %731, %728 ], [ %683, %712 ]
  %722 = phi i32 [ %743, %728 ], [ %649, %712 ]
  %723 = icmp ult i32 %632, %720
  br i1 %723, label %724, label %746

724:                                              ; preds = %719
  %725 = icmp ult i64 %721, %713
  br i1 %725, label %760, label %635

726:                                              ; preds = %728
  %727 = icmp ult i64 %731, %713
  br i1 %727, label %728, label %641

728:                                              ; preds = %726, %717
  %729 = phi i64 [ %731, %726 ], [ %683, %717 ]
  %730 = phi i32 [ %743, %726 ], [ %649, %717 ]
  %731 = add nuw i64 %729, 1
  %732 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %730, i32 1
  store i64 %729, ptr %732, align 8
  %733 = call i32 @ext4_get_group_number(ptr noundef %0, i64 noundef %729) #11
  %734 = load i32, ptr %601, align 8
  %735 = sub i32 %733, %734
  %736 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %735, i32 6
  %737 = load i16, ptr %736, align 2
  %738 = add i16 %737, 1
  store i16 %738, ptr %736, align 2
  %739 = load ptr, ptr %391, align 4
  %740 = getelementptr i16, ptr %739, i32 %735
  %741 = load i16, ptr %740, align 2
  %742 = and i16 %741, %37
  store i16 %742, ptr %740, align 2
  %743 = add nuw i32 %730, 1
  %744 = load i32, ptr %386, align 8
  %745 = icmp ult i32 %743, %744
  br i1 %745, label %726, label %719

746:                                              ; preds = %760, %719
  %747 = phi i32 [ %776, %760 ], [ %720, %719 ]
  %748 = phi i64 [ %763, %760 ], [ %721, %719 ]
  %749 = phi i32 [ %775, %760 ], [ %632, %719 ]
  %750 = icmp ult i32 %626, %747
  br i1 %750, label %751, label %778

751:                                              ; preds = %746
  %752 = load ptr, ptr %8, align 4
  %753 = getelementptr inbounds %struct.ext4_sb_info, ptr %752, i32 0, i32 5
  %754 = load i32, ptr %753, align 4
  %755 = zext i32 %754 to i64
  %756 = add i64 %748, %755
  %757 = icmp ugt i64 %756, %713
  br i1 %757, label %618, label %789

758:                                              ; preds = %760
  %759 = icmp ult i64 %763, %713
  br i1 %759, label %760, label %635

760:                                              ; preds = %758, %724
  %761 = phi i64 [ %763, %758 ], [ %721, %724 ]
  %762 = phi i32 [ %775, %758 ], [ %632, %724 ]
  %763 = add nuw i64 %761, 1
  %764 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %762, i32 2
  store i64 %761, ptr %764, align 8
  %765 = call i32 @ext4_get_group_number(ptr noundef %0, i64 noundef %761) #11
  %766 = load i32, ptr %601, align 8
  %767 = sub i32 %765, %766
  %768 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %767, i32 6
  %769 = load i16, ptr %768, align 2
  %770 = add i16 %769, 1
  store i16 %770, ptr %768, align 2
  %771 = load ptr, ptr %391, align 4
  %772 = getelementptr i16, ptr %771, i32 %767
  %773 = load i16, ptr %772, align 2
  %774 = and i16 %773, %37
  store i16 %774, ptr %772, align 2
  %775 = add nuw i32 %762, 1
  %776 = load i32, ptr %386, align 8
  %777 = icmp ult i32 %775, %776
  br i1 %777, label %758, label %746

778:                                              ; preds = %825, %746
  %779 = phi i32 [ %836, %825 ], [ %747, %746 ]
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %857, label %838

781:                                              ; preds = %825
  %782 = load ptr, ptr %8, align 4
  %783 = getelementptr inbounds %struct.ext4_sb_info, ptr %782, i32 0, i32 5
  %784 = load i32, ptr %783, align 4
  %785 = zext i32 %784 to i64
  %786 = add i64 %791, %785
  %787 = add i64 %786, %785
  %788 = icmp ugt i64 %787, %713
  br i1 %788, label %618, label %789

789:                                              ; preds = %781, %751
  %790 = phi i64 [ %787, %781 ], [ %756, %751 ]
  %791 = phi i64 [ %786, %781 ], [ %748, %751 ]
  %792 = phi i32 [ %835, %781 ], [ %626, %751 ]
  %793 = phi i32 [ %784, %781 ], [ %754, %751 ]
  %794 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %792, i32 3
  store i64 %791, ptr %794, align 8
  %795 = call i32 @ext4_get_group_number(ptr noundef %0, i64 noundef %791) #11
  %796 = add i32 %795, 1
  %797 = zext i32 %796 to i64
  %798 = load ptr, ptr %8, align 4
  %799 = getelementptr inbounds %struct.ext4_sb_info, ptr %798, i32 0, i32 2
  %800 = load i32, ptr %799, align 8
  %801 = zext i32 %800 to i64
  %802 = mul nuw i64 %801, %797
  %803 = getelementptr inbounds %struct.ext4_sb_info, ptr %798, i32 0, i32 15
  %804 = load ptr, ptr %803, align 4
  %805 = getelementptr inbounds %struct.ext4_super_block, ptr %804, i32 0, i32 5
  %806 = load i32, ptr %805, align 4
  %807 = zext i32 %806 to i64
  %808 = add nuw i64 %802, %807
  %809 = load i32, ptr %601, align 8
  %810 = sub i32 %795, %809
  %811 = icmp ugt i64 %790, %808
  br i1 %811, label %812, label %825

812:                                              ; preds = %789
  %813 = load ptr, ptr %391, align 4
  %814 = add i32 %810, 1
  %815 = getelementptr i16, ptr %813, i32 %814
  %816 = load i16, ptr %815, align 2
  %817 = and i16 %816, %37
  store i16 %817, ptr %815, align 2
  %818 = sub i64 %790, %808
  %819 = trunc i64 %818 to i32
  %820 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %814, i32 6
  %821 = load i16, ptr %820, align 2
  %822 = trunc i64 %818 to i16
  %823 = add i16 %821, %822
  store i16 %823, ptr %820, align 2
  %824 = sub i32 %793, %819
  br label %825

825:                                              ; preds = %812, %789
  %826 = phi i32 [ %824, %812 ], [ %793, %789 ]
  %827 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %810, i32 6
  %828 = load i16, ptr %827, align 2
  %829 = trunc i32 %826 to i16
  %830 = add i16 %828, %829
  store i16 %830, ptr %827, align 2
  %831 = load ptr, ptr %391, align 4
  %832 = getelementptr i16, ptr %831, i32 %810
  %833 = load i16, ptr %832, align 2
  %834 = and i16 %833, %37
  store i16 %834, ptr %832, align 2
  %835 = add nuw i32 %792, 1
  %836 = load i32, ptr %386, align 8
  %837 = icmp ult i32 %835, %836
  br i1 %837, label %781, label %778

838:                                              ; preds = %838, %778
  %839 = phi i32 [ %854, %838 ], [ 0, %778 ]
  %840 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %839, i32 6
  %841 = load i16, ptr %840, align 2
  %842 = zext i16 %841 to i32
  %843 = load ptr, ptr %8, align 4
  %844 = getelementptr inbounds %struct.ext4_sb_info, ptr %843, i32 0, i32 11
  %845 = load i32, ptr %844, align 4
  %846 = add nsw i32 %842, -1
  %847 = add i32 %846, %845
  %848 = getelementptr inbounds %struct.ext4_sb_info, ptr %843, i32 0, i32 12
  %849 = load i32, ptr %848, align 16
  %850 = lshr i32 %847, %849
  %851 = getelementptr %struct.ext4_new_group_data, ptr %601, i32 %839, i32 7
  %852 = load i32, ptr %851, align 8
  %853 = sub i32 %852, %850
  store i32 %853, ptr %851, align 8
  %854 = add nuw i32 %839, 1
  %855 = load i32, ptr %386, align 8
  %856 = icmp ult i32 %854, %855
  br i1 %856, label %838, label %857

857:                                              ; preds = %838, %778
  %858 = phi i32 [ 0, %778 ], [ %855, %838 ]
  %859 = load ptr, ptr %8, align 4
  %860 = getelementptr inbounds %struct.ext4_sb_info, ptr %859, i32 0, i32 17
  %861 = load i32, ptr %860, align 4
  %862 = and i32 %861, 8
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %866, label %864

864:                                              ; preds = %857
  %865 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %858, i32 noundef %14) #12
  br label %866

866:                                              ; preds = %864, %857
  %867 = call fastcc i32 @ext4_flex_group_add(ptr noundef %0, ptr noundef %283, ptr noundef nonnull %382)
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %396, label %879, !prof !17

869:                                              ; preds = %641, %635, %618, %615, %577
  %870 = phi i32 [ %397, %577 ], [ %600, %641 ], [ %600, %635 ], [ %600, %618 ], [ %600, %615 ]
  %871 = icmp eq i64 %120, 0
  br i1 %871, label %879, label %872

872:                                              ; preds = %869
  %873 = load ptr, ptr %391, align 4
  call void @kfree(ptr noundef %873) #11
  %874 = load ptr, ptr %382, align 8
  call void @kfree(ptr noundef %874) #11
  call void @kfree(ptr noundef nonnull %382) #11
  %875 = icmp eq ptr %283, null
  br i1 %875, label %876, label %335

876:                                              ; preds = %872, %335
  %877 = phi i64 [ %336, %335 ], [ %120, %872 ]
  %878 = phi i32 [ %337, %335 ], [ %870, %872 ]
  br label %39

879:                                              ; preds = %869, %866
  %880 = phi i32 [ %867, %866 ], [ 0, %869 ]
  %881 = load ptr, ptr %391, align 4
  call void @kfree(ptr noundef %881) #11
  %882 = load ptr, ptr %382, align 8
  call void @kfree(ptr noundef %882) #11
  br label %883

883:                                              ; preds = %879, %395, %385, %384
  %884 = phi i32 [ %880, %879 ], [ -12, %395 ], [ -12, %385 ], [ -12, %384 ]
  call void @kfree(ptr noundef nonnull %382) #11
  br label %885

885:                                              ; preds = %883, %380, %377, %373, %367, %356, %275
  %886 = phi i32 [ %884, %883 ], [ %276, %275 ], [ %378, %377 ], [ %375, %373 ], [ 0, %367 ], [ %357, %356 ], [ -12, %380 ]
  %887 = phi ptr [ %283, %883 ], [ %118, %275 ], [ %283, %380 ], [ %283, %377 ], [ %283, %373 ], [ %283, %367 ], [ %283, %356 ]
  %888 = icmp eq ptr %887, null
  br i1 %888, label %892, label %889

889:                                              ; preds = %885, %274, %136
  %890 = phi ptr [ %887, %885 ], [ %118, %136 ], [ %118, %274 ]
  %891 = phi i32 [ %886, %885 ], [ -1, %136 ], [ -22, %274 ]
  call void @iput(ptr noundef nonnull %890) #11
  br label %892

892:                                              ; preds = %889, %885
  %893 = phi i32 [ %891, %889 ], [ %886, %885 ]
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %896, label %895

895:                                              ; preds = %892
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 2136, ptr noundef nonnull @.str.21, i32 noundef %893) #11
  br label %896

896:                                              ; preds = %895, %892
  %897 = load i32, ptr %23, align 8
  %898 = and i32 %897, 128
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %904, label %900

900:                                              ; preds = %896
  %901 = load i32, ptr %25, align 8
  %902 = zext i32 %901 to i64
  %903 = shl nuw i64 %902, 32
  br label %904

904:                                              ; preds = %900, %896
  %905 = phi i64 [ %903, %900 ], [ 0, %896 ]
  %906 = load i32, ptr %24, align 4
  %907 = zext i32 %906 to i64
  %908 = or i64 %905, %907
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.22, i64 noundef %908) #11
  br label %909

909:                                              ; preds = %904, %114, %91, %68, %58, %57, %18
  %910 = phi i32 [ -28, %18 ], [ -22, %57 ], [ -22, %68 ], [ -22, %91 ], [ %115, %114 ], [ %893, %904 ], [ 0, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %910
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_group_number(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_update_super(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq ptr %3, null
  %12 = select i1 %10, i1 true, i1 %11, !prof !15
  br i1 %12, label %16, label %13, !prof !15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 12
  %15 = load i32, ptr %14, align 16
  br label %17

16:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1390, 0\0A.popsection", ""() #11, !srcloc !29
  unreachable

17:                                               ; preds = %17, %13
  %18 = phi i64 [ 0, %13 ], [ %24, %17 ]
  %19 = phi i64 [ 0, %13 ], [ %29, %17 ]
  %20 = phi i32 [ 0, %13 ], [ %30, %17 ]
  %21 = getelementptr %struct.ext4_new_group_data, ptr %3, i32 %20, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = zext i32 %22 to i64
  %24 = add i64 %18, %23
  %25 = getelementptr %struct.ext4_new_group_data, ptr %3, i32 %20, i32 7
  %26 = load i32, ptr %25, align 8
  %27 = shl i32 %26, %15
  %28 = zext i32 %27 to i64
  %29 = add i64 %19, %28
  %30 = add nuw i32 %20, 1
  %31 = icmp eq i32 %30, %9
  br i1 %31, label %32, label %17

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 29
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = zext i32 %39 to i64
  br label %54

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 51
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %43 to i64
  %45 = shl nuw i64 %44, 32
  %46 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = zext i32 %47 to i64
  %49 = or i64 %45, %48
  %50 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  %51 = load i32, ptr %50, align 8
  %52 = zext i32 %51 to i64
  %53 = shl nuw i64 %52, 32
  br label %54

54:                                               ; preds = %41, %37
  %55 = phi i64 [ %49, %41 ], [ %40, %37 ]
  %56 = phi ptr [ %46, %41 ], [ %38, %37 ]
  %57 = phi i64 [ %53, %41 ], [ 0, %37 ]
  %58 = mul i64 %55, 100
  %59 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = zext i32 %60 to i64
  %62 = or i64 %57, %61
  %63 = tail call i64 @div64_u64(i64 noundef %58, i64 noundef %62) #11
  %64 = mul i64 %63, %24
  %65 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %64, i32 0) #14, !srcloc !30
  %66 = extractvalue { i64, i32 } %65, 0
  %67 = extractvalue { i64, i32 } %65, 1
  %68 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %64, i64 %66, i32 %67) #14, !srcloc !31
  %69 = extractvalue { i64, i32 } %68, 0
  %70 = lshr i64 %69, 6
  %71 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 14
  %72 = load ptr, ptr %71, align 64
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %54
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #11, !srcloc !8
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 4, ptr elementtype(i32) %72) #11, !srcloc !9
  %78 = extractvalue { i32, i32, i32 } %77, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76, %54
  tail call void @__lock_buffer(ptr noundef %72) #11
  br label %82

82:                                               ; preds = %81, %76
  %83 = load i32, ptr %33, align 8
  %84 = and i32 %83, 128
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  %88 = load i32, ptr %87, align 8
  %89 = zext i32 %88 to i64
  %90 = shl nuw i64 %89, 32
  %91 = load i32, ptr %59, align 4
  %92 = zext i32 %91 to i64
  %93 = or i64 %90, %92
  %94 = add i64 %93, %24
  %95 = trunc i64 %94 to i32
  store i32 %95, ptr %59, align 4
  %96 = lshr i64 %94, 32
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 52
  %99 = load i32, ptr %98, align 8
  %100 = zext i32 %99 to i64
  %101 = shl nuw i64 %100, 32
  br label %109

102:                                              ; preds = %82
  %103 = load i32, ptr %59, align 4
  %104 = zext i32 %103 to i64
  %105 = add i64 %24, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, ptr %59, align 4
  %107 = lshr i64 %105, 32
  %108 = trunc i64 %107 to i32
  br label %109

109:                                              ; preds = %102, %86
  %110 = phi i32 [ %108, %102 ], [ %97, %86 ]
  %111 = phi i64 [ 0, %102 ], [ %101, %86 ]
  %112 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  store i32 %110, ptr %112, align 8
  %113 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = zext i32 %114 to i64
  %116 = or i64 %111, %115
  %117 = add i64 %116, %29
  %118 = trunc i64 %117 to i32
  store i32 %118, ptr %113, align 4
  %119 = lshr i64 %117, 32
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 52
  store i32 %120, ptr %121, align 8
  %122 = load ptr, ptr %4, align 4
  %123 = getelementptr inbounds %struct.ext4_sb_info, ptr %122, i32 0, i32 4
  %124 = load i32, ptr %123, align 16
  %125 = load i32, ptr %8, align 4
  %126 = mul i32 %125, %124
  %127 = load i32, ptr %7, align 4
  %128 = add i32 %127, %126
  store i32 %128, ptr %7, align 4
  %129 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 4
  %130 = load ptr, ptr %4, align 4
  %131 = getelementptr inbounds %struct.ext4_sb_info, ptr %130, i32 0, i32 4
  %132 = load i32, ptr %131, align 16
  %133 = load i32, ptr %8, align 4
  %134 = mul i32 %133, %132
  %135 = load i32, ptr %129, align 4
  %136 = add i32 %135, %134
  store i32 %136, ptr %129, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !32
  %137 = load i32, ptr %8, align 4
  %138 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 8
  %139 = load i32, ptr %138, align 32
  %140 = add i32 %139, %137
  store i32 %140, ptr %138, align 32
  %141 = load ptr, ptr %4, align 4
  %142 = getelementptr inbounds %struct.ext4_sb_info, ptr %141, i32 0, i32 2
  %143 = load i32, ptr %142, align 8
  %144 = udiv i32 -1, %143
  %145 = tail call i32 @llvm.umin.i32(i32 %140, i32 %144)
  %146 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 9
  store i32 %145, ptr %146, align 4
  %147 = load i32, ptr %33, align 8
  %148 = and i32 %147, 128
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %109
  %151 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 51
  %152 = load i32, ptr %151, align 4
  %153 = zext i32 %152 to i64
  %154 = shl nuw i64 %153, 32
  br label %155

155:                                              ; preds = %150, %109
  %156 = phi i64 [ %154, %150 ], [ 0, %109 ]
  %157 = load i32, ptr %56, align 8
  %158 = zext i32 %157 to i64
  %159 = or i64 %156, %158
  %160 = add i64 %159, %70
  %161 = trunc i64 %160 to i32
  store i32 %161, ptr %56, align 8
  %162 = lshr i64 %160, 32
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 51
  store i32 %163, ptr %164, align 4
  tail call void @ext4_superblock_csum_set(ptr noundef %0) #11
  %165 = load ptr, ptr %71, align 64
  tail call void @unlock_buffer(ptr noundef %165) #11
  %166 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 36
  %167 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 11
  %168 = load i32, ptr %167, align 4
  %169 = zext i32 %168 to i64
  %170 = add i64 %29, -1
  %171 = add i64 %170, %169
  %172 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 12
  %173 = load i32, ptr %172, align 16
  %174 = zext i32 %173 to i64
  %175 = lshr i64 %171, %174
  %176 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %166, i64 noundef %175, i32 noundef %176) #11
  %177 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 37
  %178 = load ptr, ptr %4, align 4
  %179 = getelementptr inbounds %struct.ext4_sb_info, ptr %178, i32 0, i32 4
  %180 = load i32, ptr %179, align 16
  %181 = load i32, ptr %8, align 4
  %182 = mul i32 %181, %180
  %183 = zext i32 %182 to i64
  %184 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %177, i64 noundef %183, i32 noundef %184) #11
  %185 = load ptr, ptr %4, align 4
  %186 = getelementptr inbounds %struct.ext4_sb_info, ptr %185, i32 0, i32 15
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.ext4_super_block, ptr %187, i32 0, i32 29
  %189 = load i32, ptr %188, align 8
  %190 = and i32 %189, 512
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %217, label %192

192:                                              ; preds = %155
  %193 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 110
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %217, label %196

196:                                              ; preds = %192
  %197 = load i32, ptr %3, align 8
  %198 = lshr i32 %197, %194
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %199 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 111
  %200 = load volatile ptr, ptr %199, align 8
  %201 = getelementptr ptr, ptr %200, i32 %198
  %202 = load ptr, ptr %201, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %203 = load i32, ptr %167, align 4
  %204 = zext i32 %203 to i64
  %205 = add i64 %170, %204
  %206 = load i32, ptr %172, align 16
  %207 = zext i32 %206 to i64
  %208 = lshr i64 %205, %207
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %202) #11, !srcloc !8
  %209 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %202, ptr %202, i64 %208, ptr elementtype(i64) %202) #11, !srcloc !33
  %210 = load ptr, ptr %4, align 4
  %211 = getelementptr inbounds %struct.ext4_sb_info, ptr %210, i32 0, i32 4
  %212 = load i32, ptr %211, align 16
  %213 = load i32, ptr %8, align 4
  %214 = mul i32 %213, %212
  %215 = getelementptr inbounds %struct.flex_groups, ptr %202, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %215) #11, !srcloc !8
  %216 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %215, ptr %215, i32 %214, ptr elementtype(i32) %215) #11, !srcloc !34
  br label %217

217:                                              ; preds = %196, %192, %155
  %218 = tail call i32 @ext4_calculate_overhead(ptr noundef %0) #11
  %219 = load ptr, ptr %4, align 4
  %220 = getelementptr inbounds %struct.ext4_sb_info, ptr %219, i32 0, i32 17
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %221, 8
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %217
  %225 = load i32, ptr %8, align 4
  %226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %225, i64 noundef %24, i64 noundef %29, i64 noundef %70) #12
  br label %227

227:                                              ; preds = %224, %217
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_backups(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 5, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store i32 7, ptr %8, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 16
  %15 = sub i32 %14, %3
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 3
  %19 = tail call ptr @__ext4_journal_start_sb(ptr noundef %0, i32 noundef 1129, i32 noundef 7, i32 noundef 64, i32 noundef 0, i32 noundef %18) #11
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = ptrtoint ptr %19 to i32
  br label %215

23:                                               ; preds = %5
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %23
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.ext4_sb_info, ptr %26, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 28
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = getelementptr %struct.ext4_super_block, ptr %28, i32 0, i32 84, i32 0
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = getelementptr %struct.ext4_super_block, ptr %28, i32 0, i32 84, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 -1, i32 %39
  br label %49

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 30
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 2, ptr %6, align 4
  br label %52

48:                                               ; preds = %42
  store i32 3, ptr %6, align 4
  br label %52

49:                                               ; preds = %37, %33
  %50 = phi i32 [ 2, %33 ], [ 3, %37 ]
  %51 = phi i32 [ %35, %33 ], [ %41, %37 ]
  store i32 %50, ptr %6, align 4
  br label %52

52:                                               ; preds = %49, %48, %47
  %53 = phi i32 [ 1, %48 ], [ 1, %47 ], [ %51, %49 ]
  %54 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 8
  %55 = load i32, ptr %54, align 32
  br label %66

56:                                               ; preds = %23
  %57 = tail call i32 @ext4_get_group_number(ptr noundef %0, i64 noundef %1) #11
  %58 = add i32 %57, 1
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr inbounds %struct.ext4_sb_info, ptr %59, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %57, -1
  %63 = add i32 %62, %61
  %64 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 8
  %65 = load i32, ptr %64, align 32
  br label %66

66:                                               ; preds = %56, %52
  %67 = phi i32 [ %55, %52 ], [ %65, %56 ]
  %68 = phi i32 [ %55, %52 ], [ %63, %56 ]
  %69 = phi i32 [ %53, %52 ], [ %58, %56 ]
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 8
  %71 = icmp ult i32 %69, %67
  br i1 %71, label %72, label %207

72:                                               ; preds = %66
  %73 = icmp ult ptr %19, inttoptr (i32 4096 to ptr)
  %74 = sext i32 %12 to i64
  %75 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %76 = icmp eq i32 %14, %3
  br label %77

77:                                               ; preds = %203, %72
  %78 = phi i32 [ %69, %72 ], [ %204, %203 ]
  %79 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %19, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  br i1 %73, label %88, label %82

82:                                               ; preds = %81
  %83 = tail call i32 @jbd2__journal_restart(ptr noundef %19, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82, %77
  %86 = phi i32 [ %79, %77 ], [ %83, %82 ]
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %207, label %88

88:                                               ; preds = %85, %82, %81
  %89 = zext i32 %78 to i64
  br i1 %24, label %90, label %93

90:                                               ; preds = %88
  %91 = mul nsw i64 %89, %74
  %92 = add i64 %91, %1
  br label %108

93:                                               ; preds = %88
  %94 = load ptr, ptr %9, align 4
  %95 = getelementptr inbounds %struct.ext4_sb_info, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = zext i32 %96 to i64
  %98 = mul nuw i64 %97, %89
  %99 = getelementptr inbounds %struct.ext4_sb_info, ptr %94, i32 0, i32 15
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ext4_super_block, ptr %100, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = zext i32 %102 to i64
  %104 = add nuw i64 %98, %103
  %105 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %78) #11
  %106 = sext i32 %105 to i64
  %107 = add i64 %104, %106
  br label %108

108:                                              ; preds = %93, %90
  %109 = phi i64 [ %92, %90 ], [ %107, %93 ]
  %110 = load ptr, ptr %75, align 4
  %111 = load i32, ptr %13, align 16
  %112 = tail call ptr @__getblk_gfp(ptr noundef %110, i64 noundef %109, i32 noundef %111, i32 noundef 8) #11
  %113 = icmp eq ptr %112, null
  br i1 %113, label %207, label %114, !prof !15

114:                                              ; preds = %108
  %115 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.update_backups, i32 noundef 1169, ptr noundef %19, ptr noundef %0, ptr noundef nonnull %112, i32 noundef 1) #11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %207

117:                                              ; preds = %114
  %118 = load volatile i32, ptr %112, align 4
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %112) #11, !srcloc !8
  %122 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %112, ptr nonnull %112, i32 4, ptr nonnull elementtype(i32) %112) #11, !srcloc !9
  %123 = extractvalue { i32, i32, i32 } %122, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %124 = and i32 %123, 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121, %117
  tail call void @__lock_buffer(ptr noundef nonnull %112) #11
  br label %127

127:                                              ; preds = %126, %121
  %128 = getelementptr inbounds %struct.buffer_head, ptr %112, i32 0, i32 5
  %129 = load ptr, ptr %128, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %129, ptr align 1 %2, i32 %3, i1 false)
  br i1 %76, label %133, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %128, align 4
  %132 = getelementptr i8, ptr %131, i32 %3
  tail call void @llvm.memset.p0.i32(ptr align 1 %132, i8 0, i32 %15, i1 false)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load volatile i32, ptr %112, align 4
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %112) #11
  br label %138

138:                                              ; preds = %137, %133
  tail call void @unlock_buffer(ptr noundef nonnull %112) #11
  %139 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.update_backups, i32 noundef 1177, ptr noundef %19, ptr noundef null, ptr noundef nonnull %112) #11
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141, !prof !17

141:                                              ; preds = %138
  tail call void @__ext4_std_error(ptr noundef %0, ptr noundef nonnull @__func__.update_backups, i32 noundef 1179, i32 noundef %139) #11
  br label %142

142:                                              ; preds = %141, %138
  tail call void @__brelse(ptr noundef nonnull %112) #11
  br i1 %24, label %143, label %198

143:                                              ; preds = %142
  %144 = load ptr, ptr %9, align 4
  %145 = getelementptr inbounds %struct.ext4_sb_info, ptr %144, i32 0, i32 15
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.ext4_super_block, ptr %146, i32 0, i32 28
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 512
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %177, label %151

151:                                              ; preds = %143
  %152 = load i32, ptr %6, align 4
  %153 = tail call i32 @llvm.umax.i32(i32 %152, i32 3) #11
  %154 = icmp ugt i32 %152, 2
  br i1 %154, label %200, label %171

155:                                              ; preds = %171
  %156 = icmp eq i32 %175, %153
  br i1 %156, label %200, label %157

157:                                              ; preds = %155
  %158 = getelementptr %struct.ext4_super_block, ptr %146, i32 0, i32 84, i32 %152
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %152, 2
  %161 = icmp eq i32 %159, 0
  br i1 %161, label %162, label %200

162:                                              ; preds = %157
  %163 = icmp eq i32 %160, %153
  br i1 %163, label %200, label %164

164:                                              ; preds = %162
  %165 = getelementptr %struct.ext4_super_block, ptr %146, i32 0, i32 84, i32 %175
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %152, 3
  %168 = icmp eq i32 %166, 0
  %169 = select i1 %168, i32 %153, i32 %167
  %170 = select i1 %168, i32 -1, i32 %166
  br label %200

171:                                              ; preds = %151
  %172 = add nsw i32 %152, -1
  %173 = getelementptr %struct.ext4_super_block, ptr %146, i32 0, i32 84, i32 %172
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %152, 1
  %176 = icmp eq i32 %174, 0
  br i1 %176, label %155, label %200

177:                                              ; preds = %143
  %178 = getelementptr inbounds %struct.ext4_super_block, ptr %146, i32 0, i32 30
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32, ptr %6, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %6, align 4
  br label %203

185:                                              ; preds = %177
  %186 = load i32, ptr %7, align 4
  %187 = load i32, ptr %6, align 4
  %188 = icmp ult i32 %186, %187
  %189 = select i1 %188, ptr %7, ptr %6
  %190 = select i1 %188, i32 5, i32 3
  %191 = load i32, ptr %8, align 4
  %192 = load i32, ptr %189, align 4
  %193 = icmp ult i32 %191, %192
  %194 = select i1 %193, ptr %8, ptr %189
  %195 = select i1 %193, i32 7, i32 %190
  %196 = load i32, ptr %194, align 4
  %197 = mul i32 %195, %196
  store i32 %197, ptr %194, align 4
  br label %203

198:                                              ; preds = %142
  %199 = icmp eq i32 %78, %68
  br i1 %199, label %207, label %203

200:                                              ; preds = %171, %164, %162, %157, %155, %151
  %201 = phi i32 [ %152, %151 ], [ %153, %155 ], [ %175, %171 ], [ %160, %157 ], [ %153, %162 ], [ %169, %164 ]
  %202 = phi i32 [ -1, %151 ], [ -1, %155 ], [ %174, %171 ], [ %159, %157 ], [ -1, %162 ], [ %170, %164 ]
  store i32 %201, ptr %6, align 4
  br label %203

203:                                              ; preds = %200, %198, %185, %182
  %204 = phi i32 [ %68, %198 ], [ %196, %185 ], [ %183, %182 ], [ %202, %200 ]
  %205 = load i32, ptr %70, align 32
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %77, label %207

207:                                              ; preds = %203, %198, %114, %108, %85, %66
  %208 = phi i32 [ %69, %66 ], [ %68, %198 ], [ %78, %114 ], [ %78, %108 ], [ %78, %85 ], [ %204, %203 ]
  %209 = phi i32 [ 0, %66 ], [ %139, %198 ], [ %115, %114 ], [ -12, %108 ], [ %86, %85 ], [ %139, %203 ]
  %210 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.update_backups, i32 noundef 1189, ptr noundef %19) #11
  %211 = icmp eq i32 %210, 0
  %212 = icmp ne i32 %209, 0
  %213 = select i1 %211, i1 true, i1 %212
  %214 = select i1 %213, i32 %209, i32 %210
  br label %215

215:                                              ; preds = %207, %21
  %216 = phi i32 [ 1, %21 ], [ %208, %207 ]
  %217 = phi i32 [ %22, %21 ], [ %214, %207 ]
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %230, label %219

219:                                              ; preds = %215
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.update_backups, i32 noundef 1205, ptr noundef nonnull @.str.47, i32 noundef %216, i32 noundef %217) #11
  %220 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 25
  %221 = load i16, ptr %220, align 8
  %222 = and i16 %221, -2
  store i16 %222, ptr %220, align 8
  %223 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 15
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.ext4_super_block, ptr %224, i32 0, i32 16
  %226 = load i16, ptr %225, align 2
  %227 = and i16 %226, -2
  store i16 %227, ptr %225, align 2
  %228 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 14
  %229 = load ptr, ptr %228, align 64
  tail call void @mark_buffer_dirty(ptr noundef %229) #11
  br label %230

230:                                              ; preds = %219, %215
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_num_gdb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mark_bitmap_end(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_flexbg_block_bitmap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = sub i64 %4, %3
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %91, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 12
  %14 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %2, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %2, i32 0, i32 2
  %16 = icmp ult ptr %1, inttoptr (i32 4096 to ptr)
  %17 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %18 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  br label %19

19:                                               ; preds = %86, %11
  %20 = phi i64 [ %3, %11 ], [ %89, %86 ]
  %21 = phi i32 [ %9, %11 ], [ %87, %86 ]
  %22 = load i32, ptr %13, align 16
  %23 = zext i32 %22 to i64
  %24 = shl i64 %20, %23
  %25 = tail call i32 @ext4_get_group_number(ptr noundef %0, i64 noundef %24) #11
  %26 = zext i32 %25 to i64
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = zext i32 %29 to i64
  %31 = mul nuw i64 %30, %26
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ext4_super_block, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = add nuw i64 %31, %36
  %38 = load i32, ptr %13, align 16
  %39 = zext i32 %38 to i64
  %40 = lshr i64 %37, %39
  %41 = load ptr, ptr %2, align 4
  %42 = load i32, ptr %41, align 8
  %43 = sub i32 %25, %42
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = sub i64 %20, %40
  %47 = trunc i64 %46 to i32
  %48 = sub i32 %45, %47
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 %21)
  %50 = load ptr, ptr %14, align 4
  %51 = getelementptr i16, ptr %50, i32 %43
  %52 = load i16, ptr %51, align 2
  %53 = and i16 %52, 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %19
  %56 = load i32, ptr %15, align 4
  %57 = icmp ugt i32 %56, 1
  br i1 %57, label %58, label %86, !prof !15

58:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 465, 0\0A.popsection", ""() #11, !srcloc !35
  unreachable

59:                                               ; preds = %19
  %60 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %1, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  br i1 %16, label %69, label %63

63:                                               ; preds = %62
  %64 = tail call i32 @jbd2__journal_restart(ptr noundef %1, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %60, %59 ], [ %64, %63 ]
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %66, %63, %62
  %70 = load ptr, ptr %2, align 4
  %71 = getelementptr %struct.ext4_new_group_data, ptr %70, i32 %43, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = load ptr, ptr %17, align 4
  %74 = load i32, ptr %18, align 16
  %75 = tail call ptr @__getblk_gfp(ptr noundef %73, i64 noundef %72, i32 noundef %74, i32 noundef 8) #11
  %76 = icmp eq ptr %75, null
  br i1 %76, label %91, label %77, !prof !15

77:                                               ; preds = %69
  %78 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.set_flexbg_block_bitmap, i32 noundef 479, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %75, i32 noundef 1) #11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void @__brelse(ptr noundef nonnull %75) #11
  br label %91

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  tail call void @ext4_set_bits(ptr noundef %83, i32 noundef %47, i32 noundef %49) #11
  %84 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.set_flexbg_block_bitmap, i32 noundef 488, ptr noundef %1, ptr noundef null, ptr noundef nonnull %75) #11
  tail call void @__brelse(ptr noundef nonnull %75) #11
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81, %55
  %87 = sub i32 %21, %49
  %88 = zext i32 %49 to i64
  %89 = add i64 %20, %88
  %90 = icmp eq i32 %87, 0
  br i1 %90, label %91, label %19

91:                                               ; preds = %86, %81, %80, %69, %66, %5
  %92 = phi i32 [ %78, %80 ], [ 0, %5 ], [ 0, %86 ], [ %67, %66 ], [ -12, %69 ], [ %84, %81 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @verify_reserved_gdb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %8 = load i64, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 7, ptr %6, align 4
  %9 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 28
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 30
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 2
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  br label %22

22:                                               ; preds = %88, %3
  %23 = phi ptr [ %10, %3 ], [ %89, %88 ]
  %24 = phi i32 [ 0, %3 ], [ %90, %88 ]
  br i1 %18, label %49, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %4, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 3) #11
  %28 = icmp ugt i32 %26, 2
  br i1 %28, label %94, label %43

29:                                               ; preds = %43
  %30 = icmp eq i32 %47, %27
  br i1 %30, label %94, label %31

31:                                               ; preds = %29
  %32 = getelementptr %struct.ext4_super_block, ptr %14, i32 0, i32 84, i32 %26
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %26, 2
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = icmp eq i32 %34, %27
  br i1 %37, label %94, label %38

38:                                               ; preds = %36
  %39 = getelementptr %struct.ext4_super_block, ptr %14, i32 0, i32 84, i32 %47
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %26, 3
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %94, label %69

43:                                               ; preds = %25
  %44 = add nsw i32 %26, -1
  %45 = getelementptr %struct.ext4_super_block, ptr %14, i32 0, i32 84, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %26, 1
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %29, label %69

49:                                               ; preds = %22
  %50 = load i32, ptr %19, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, ptr %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %4, align 4
  br label %72

56:                                               ; preds = %49
  %57 = load i32, ptr %5, align 4
  %58 = load i32, ptr %4, align 4
  %59 = icmp ult i32 %57, %58
  %60 = select i1 %59, ptr %5, ptr %4
  %61 = select i1 %59, i32 5, i32 3
  %62 = load i32, ptr %6, align 4
  %63 = load i32, ptr %60, align 4
  %64 = icmp ult i32 %62, %63
  %65 = select i1 %64, ptr %6, ptr %60
  %66 = select i1 %64, i32 7, i32 %61
  %67 = load i32, ptr %65, align 4
  %68 = mul i32 %66, %67
  store i32 %68, ptr %65, align 4
  br label %72

69:                                               ; preds = %43, %38, %31
  %70 = phi i32 [ %46, %43 ], [ %33, %31 ], [ %40, %38 ]
  %71 = phi i32 [ %47, %43 ], [ %34, %31 ], [ %41, %38 ]
  store i32 %71, ptr %4, align 4
  br label %72

72:                                               ; preds = %69, %56, %53
  %73 = phi i32 [ %67, %56 ], [ %54, %53 ], [ %70, %69 ]
  %74 = icmp ult i32 %73, %1
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load i32, ptr %23, align 4
  %77 = zext i32 %76 to i64
  %78 = load i32, ptr %20, align 8
  %79 = mul i32 %78, %73
  %80 = zext i32 %79 to i64
  %81 = add i64 %8, %80
  %82 = icmp eq i64 %81, %77
  br i1 %82, label %88, label %83

83:                                               ; preds = %75
  %84 = zext i32 %73 to i64
  %85 = zext i32 %78 to i64
  %86 = mul nuw i64 %85, %84
  %87 = add i64 %86, %8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %0, ptr noundef nonnull @__func__.verify_reserved_gdb, i32 noundef 784, ptr noundef nonnull @.str.41, i64 noundef %8, i32 noundef %73, i64 noundef %87) #11
  br label %94

88:                                               ; preds = %75
  %89 = getelementptr i32, ptr %23, i32 1
  %90 = add nuw nsw i32 %24, 1
  %91 = load i32, ptr %21, align 16
  %92 = lshr i32 %91, 2
  %93 = icmp ult i32 %24, %92
  br i1 %93, label %22, label %94

94:                                               ; preds = %88, %83, %72, %38, %36, %29, %25
  %95 = phi i32 [ -22, %83 ], [ %24, %36 ], [ %24, %29 ], [ %24, %38 ], [ %24, %25 ], [ %24, %72 ], [ -27, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_reserve_inode_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_block_bitmap_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_bitmap_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_table_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_group_clusters_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_inodes_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_itable_unused_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_group_desc_csum_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mb_add_groupinfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_bitmap_csum_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_block_bitmap_csum_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bh_uptodate_or_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_calculate_overhead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_group_add_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_update_dynamic_rev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

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
!8 = !{i64 818030, i64 2148308001, i64 2148308027, i64 2148308074, i64 2148308096, i64 2148308124, i64 2148308144}
!9 = !{i64 2148327878, i64 2148327910, i64 2148327939, i64 2148327973, i64 2148328004, i64 2148328027}
!10 = !{i64 2148429218}
!11 = !{i64 2148428183}
!12 = !{i64 2148326337, i64 2148326369, i64 2148326398, i64 2148326432, i64 2148326463, i64 2148326486}
!13 = !{i64 2153833884}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2153917275, i64 2153917757, i64 2153917312, i64 2153917368, i64 2153917402, i64 2153917426, i64 2153917467, i64 2153917488, i64 2153917516, i64 2153917550}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2153918338, i64 2153918820, i64 2153918375, i64 2153918431, i64 2153918465, i64 2153918489, i64 2153918530, i64 2153918551, i64 2153918579, i64 2153918613}
!19 = !{!"branch_weights", i32 4000000, i32 4001}
!20 = !{i64 2153850746, i64 2153851227, i64 2153850783, i64 2153850839, i64 2153850873, i64 2153850897, i64 2153850938, i64 2153850959, i64 2153850987, i64 2153851021}
!21 = !{i64 2149383868}
!22 = !{i64 2149384085}
!23 = !{i64 2153919825, i64 2153920307, i64 2153919862, i64 2153919918, i64 2153919952, i64 2153919976, i64 2153920017, i64 2153920038, i64 2153920066, i64 2153920100}
!24 = !{i64 2153885967}
!25 = !{i64 2153872017}
!26 = !{i64 2153925447, i64 2153925929, i64 2153925484, i64 2153925540, i64 2153925574, i64 2153925598, i64 2153925639, i64 2153925660, i64 2153925688, i64 2153925722}
!27 = !{i64 2153842856, i64 2153843337, i64 2153842893, i64 2153842949, i64 2153842983, i64 2153843007, i64 2153843048, i64 2153843069, i64 2153843097, i64 2153843131}
!28 = !{i64 2153844039, i64 2153844520, i64 2153844076, i64 2153844132, i64 2153844166, i64 2153844190, i64 2153844231, i64 2153844252, i64 2153844280, i64 2153844314}
!29 = !{i64 2153901597, i64 2153902079, i64 2153901634, i64 2153901690, i64 2153901724, i64 2153901748, i64 2153901789, i64 2153901810, i64 2153901838, i64 2153901872}
!30 = !{i64 683269, i64 683296, i64 683318, i64 683346}
!31 = !{i64 683677, i64 683704, i64 683737, i64 683758, i64 683785, i64 683811}
!32 = !{i64 2153908310}
!33 = !{i64 2148330648, i64 2148330676, i64 2148330710, i64 2148330744, i64 2148330778, i64 2148330814, i64 2148330837}
!34 = !{i64 2148319416, i64 2148319442, i64 2148319471, i64 2148319505, i64 2148319536, i64 2148319559}
!35 = !{i64 2153848592, i64 2153849073, i64 2153848629, i64 2153848685, i64 2153848719, i64 2153848743, i64 2153848784, i64 2153848805, i64 2153848833, i64 2153848867}
