; ModuleID = '/llk/IR/fs/ext4/fast_commit.c_pt.bc'
source_filename = "../fs/ext4/fast_commit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
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
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
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
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__track_dentry_update_args = type { ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.ext4_fc_dentry_update = type { i32, i32, i32, %struct.qstr, [36 x i8], %struct.list_head }
%struct.anon = type { i32, i32 }
%struct.anon.78 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.ext4_fc_tl = type { i16, i16 }
%struct.ext4_fc_tail = type { i32, i32 }
%struct.ext4_fc_head = type { i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.ext4_fc_alloc_region = type { i32, i64, i32, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.dentry_info_args = type { i32, i32, i32, i32, ptr }
%struct.ext4_extent = type { i32, i16, i16, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_inode = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, %union.anon.79, [15 x i32], i32, i32, i32, i32, %union.anon.83, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { i32 }
%union.anon.83 = type { %struct.anon.85 }
%struct.anon.85 = type { i16, i16, i16, i16, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ext4_fc_add_range = type { i32, [12 x i8] }
%struct.ext4_fc_del_range = type { i32, i32, i32 }
%struct.ext4_fc_inode = type { i32, [0 x i8] }
%struct.ext4_fc_dentry_info = type { i32, i32, [0 x i8] }
%struct.ext4_ext_path = type { i64, i16, i16, ptr, ptr, ptr, ptr }

@ext4_fc_init_inode.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&ei->i_fc_wait\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fs/ext4/fast_commit.c\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"fc stats:\0A%ld commits\0A%ld ineligible\0A%ld numblks\0A%lluus avg_commit_time\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Ineligible reasons:\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\22%s\22:\09%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ext4_fc_dentry_update\00", align 1
@ext4_fc_dentry_cachep = internal unnamed_addr global ptr null, align 4
@__tracepoint_ext4_fc_track_unlink = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_ext4_fc_track_link = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_fc_track_create = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_fc_track_inode = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_fc_track_range = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_fc_commit_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_fc_commit_stop = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_fc_replay_scan = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_fc_set_bitmaps_and_counters = private unnamed_addr constant [33 x i8] c"ext4_fc_set_bitmaps_and_counters\00", align 1
@__func__.ext4_fc_replay_link = private unnamed_addr constant [20 x i8] c"ext4_fc_replay_link\00", align 1
@__func__.ext4_fc_replay_link_internal = private unnamed_addr constant [29 x i8] c"ext4_fc_replay_link_internal\00", align 1
@__func__.ext4_fc_replay_unlink = private unnamed_addr constant [22 x i8] c"ext4_fc_replay_unlink\00", align 1
@__func__.ext4_fc_replay_add_range = private unnamed_addr constant [25 x i8] c"ext4_fc_replay_add_range\00", align 1
@__func__.ext4_fc_replay_create = private unnamed_addr constant [22 x i8] c"ext4_fc_replay_create\00", align 1
@__func__.ext4_fc_replay_del_range = private unnamed_addr constant [25 x i8] c"ext4_fc_replay_del_range\00", align 1
@__func__.ext4_fc_replay_inode = private unnamed_addr constant [21 x i8] c"ext4_fc_replay_inode\00", align 1
@__tracepoint_ext4_fc_replay = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_fc_stats = external dso_local global %struct.tracepoint, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Extended attributes changed\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Cross rename\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Journal flag changed\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Insufficient memory\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Swap boot\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Resize\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Dir renamed\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Falloc range op\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Data journalling\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"FC Commit Failed\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_init_inode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -80
  store i32 0, ptr %2, align 8
  %3 = getelementptr i8, ptr %0, i32 -76
  store i32 0, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 -128
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 -88
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 -84
  store ptr %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 -68
  tail call void @__init_waitqueue_head(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @ext4_fc_init_inode.__key) #12
  %8 = getelementptr i8, ptr %0, i32 -72
  store volatile i32 0, ptr %8, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_start_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_bit_queue_entry, align 4
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 18
  %8 = load i32, ptr %7, align 16
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %58, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 25
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 -128
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 160
  call void @_raw_spin_lock(ptr noundef %18) #12
  %19 = getelementptr i8, ptr %0, i32 -88
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %49, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 2
  %25 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1
  %26 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 1
  %27 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 2
  %28 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 3
  %29 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 3, i32 1
  br label %30

30:                                               ; preds = %34, %22
  %31 = load volatile i32, ptr %17, align 4
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  store ptr %17, ptr %2, align 4
  store i32 11, ptr %23, align 4
  store i32 0, ptr %24, align 4
  store i32 0, ptr %25, align 4
  %35 = tail call ptr @llvm.thread.pointer() #12
  store ptr %35, ptr %26, align 4
  store ptr @wake_bit_function, ptr %27, align 4
  store ptr %28, ptr %28, align 4
  store ptr %28, ptr %29, align 4
  %36 = call ptr @bit_waitqueue(ptr noundef %17, i32 noundef 11) #12
  call void @prepare_to_wait(ptr noundef %36, ptr noundef %25, i32 noundef 2) #12
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 27
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 160
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %41 = load i16, ptr %40, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %40, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  call void @schedule() #12
  call void @finish_wait(ptr noundef %36, ptr noundef %25) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 27
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 160
  call void @_raw_spin_lock(ptr noundef %46) #12
  %47 = load volatile ptr, ptr %19, align 4
  %48 = icmp eq ptr %47, %19
  br i1 %48, label %49, label %30

49:                                               ; preds = %34, %30, %16
  %50 = getelementptr i8, ptr %0, i32 -72
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #12, !srcloc !12
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #12, !srcloc !13
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 27
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ext4_sb_info, ptr %54, i32 0, i32 160
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %56 = load i16, ptr %55, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %58

58:                                               ; preds = %49, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_stop_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 18
  %7 = load i32, ptr %6, align 16
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 25
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 -72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #12, !srcloc !12
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #12, !srcloc !15
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -68
  tail call void @__wake_up(ptr noundef %21, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %22

22:                                               ; preds = %20, %15, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_del(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_bit_queue_entry, align 4
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 18
  %8 = load i32, ptr %7, align 16
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 25
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 160
  call void @_raw_spin_lock(ptr noundef %17) #12
  %18 = getelementptr i8, ptr %0, i32 -88
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %35, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %0, i32 -128
  %23 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 2
  %25 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1
  %26 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 1
  %27 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 2
  %28 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 3
  %29 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 3, i32 1
  %30 = load volatile i32, ptr %22, align 4
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %21
  %34 = tail call ptr @llvm.thread.pointer() #12
  br label %46

35:                                               ; preds = %46, %16
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 27
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ext4_sb_info, ptr %38, i32 0, i32 160
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %40 = load i16, ptr %39, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %39, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %71

42:                                               ; preds = %46
  %43 = load volatile i32, ptr %22, align 4
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %42, %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  store ptr %22, ptr %2, align 4
  store i32 11, ptr %23, align 4
  store i32 0, ptr %24, align 4
  store i32 0, ptr %25, align 4
  store ptr %34, ptr %26, align 4
  store ptr @wake_bit_function, ptr %27, align 4
  store ptr %28, ptr %28, align 4
  store ptr %28, ptr %29, align 4
  %47 = call ptr @bit_waitqueue(ptr noundef %22, i32 noundef 11) #12
  call void @prepare_to_wait(ptr noundef %47, ptr noundef %25, i32 noundef 2) #12
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 27
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 160
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %52 = load i16, ptr %51, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %51, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  call void @schedule() #12
  call void @finish_wait(ptr noundef %47, ptr noundef %25) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 27
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ext4_sb_info, ptr %56, i32 0, i32 160
  call void @_raw_spin_lock(ptr noundef %57) #12
  %58 = load volatile ptr, ptr %18, align 4
  %59 = icmp eq ptr %58, %18
  br i1 %59, label %35, label %42

60:                                               ; preds = %42, %21
  %61 = phi ptr [ %19, %21 ], [ %58, %42 ]
  %62 = getelementptr i8, ptr %0, i32 -84
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  store volatile ptr %61, ptr %63, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %62, align 4
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 27
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ext4_sb_info, ptr %67, i32 0, i32 160
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %69 = load i16, ptr %68, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %68, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %71

71:                                               ; preds = %60, %35, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_mark_ineligible(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 18
  %7 = load i32, ptr %6, align 16
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 25
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 2, ptr noundef %16) #12
  %17 = icmp eq ptr %2, null
  %18 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.transaction_s, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  br label %43

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 47
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.journal_s, ptr %26, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %27) #12
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.journal_s, ptr %28, i32 0, i32 10
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.transaction_s, ptr %30, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i32 [ %34, %32 ], [ 0, %24 ]
  %37 = getelementptr inbounds %struct.journal_s, ptr %28, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #12, !srcloc !12
  %38 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %37) #12, !srcloc !18
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  br label %42

42:                                               ; preds = %41, %35
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  br label %43

43:                                               ; preds = %42, %20
  %44 = phi i32 [ %36, %42 ], [ %23, %20 ]
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 160
  tail call void @_raw_spin_lock(ptr noundef %45) #12
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 163
  %47 = load i32, ptr %46, align 8
  %48 = icmp ult i32 %47, %44
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 %44, ptr %46, align 8
  br label %50

50:                                               ; preds = %49, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %51 = load i16, ptr %45, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %53 = icmp sgt i32 %1, 9
  br i1 %53, label %54, label %55, !prof !20

54:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 329, i32 noundef 9, ptr noundef null) #12
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 162
  %57 = getelementptr [10 x i32], ptr %56, i32 0, i32 %1
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  br label %60

60:                                               ; preds = %55, %10, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ext4_fc_track_unlink(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__track_dentry_update_args, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %struct.__track_dentry_update_args, ptr %4, i32 0, i32 1
  store i32 5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 18
  %11 = load i32, ptr %10, align 16
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 25
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.transaction_s, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %1, i32 -56
  tail call void @mutex_lock(ptr noundef %28) #12
  %29 = getelementptr i8, ptr %1, i32 520
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %1, i32 -80
  store i32 0, ptr %33, align 8
  %34 = getelementptr i8, ptr %1, i32 -76
  store i32 0, ptr %34, align 4
  store i32 %27, ptr %29, align 8
  br label %35

35:                                               ; preds = %32, %24
  %36 = call fastcc i32 @__track_dentry_update(ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %31) #12, !callees !21
  tail call void @mutex_unlock(ptr noundef %28) #12
  br label %37

37:                                               ; preds = %35, %19, %14, %3
  %38 = phi i32 [ -95, %14 ], [ -95, %3 ], [ -22, %19 ], [ %36, %35 ]
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_unlink, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = tail call ptr @llvm.thread.pointer() #12
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %53 = tail call i32 @__traceiter_ext4_fc_track_unlink(ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %38) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %54

54:                                               ; preds = %52, %41, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__track_dentry_update(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -56
  tail call void @mutex_unlock(ptr noundef %9) #12
  %10 = load ptr, ptr @ext4_fc_dentry_cachep, align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef 3136) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 4
  tail call void @ext4_fc_mark_ineligible(ptr noundef %14, i32 noundef 3, ptr noundef null)
  br label %69

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.__track_dentry_update_args, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %11, align 8
  %18 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %11, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %11, i32 0, i32 2
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4
  %29 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, 36
  br i1 %31, label %32, label %43

32:                                               ; preds = %15
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3136) #13
  %34 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %11, i32 0, i32 3, i32 1
  store ptr %33, ptr %34, align 8
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr @ext4_fc_dentry_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef nonnull %11) #12
  %38 = load ptr, ptr %5, align 4
  tail call void @ext4_fc_mark_ineligible(ptr noundef %38, i32 noundef 3, ptr noundef null)
  br label %69

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = load i32, ptr %29, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %33, ptr align 1 %41, i32 %42, i1 false)
  br label %48

43:                                               ; preds = %15
  %44 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %11, i32 0, i32 4
  %45 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, i32 1
  %46 = load ptr, ptr %45, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %44, ptr align 1 %46, i32 %30, i1 false)
  %47 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %11, i32 0, i32 3, i32 1
  store ptr %44, ptr %47, align 8
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, ptr %29, align 4
  %50 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %11, i32 0, i32 3
  %51 = getelementptr inbounds %struct.anon, ptr %50, i32 0, i32 1
  store i32 %49, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 160
  tail call void @_raw_spin_lock(ptr noundef %52) #12
  %53 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 47
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 768
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %11, i32 0, i32 5
  %59 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 158
  %60 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 158, i32 0, i32 1
  %61 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 158, i32 1
  %62 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 158, i32 1, i32 1
  %63 = select i1 %57, ptr %60, ptr %62
  %64 = select i1 %57, ptr %59, ptr %61
  %65 = load ptr, ptr %63, align 4
  store ptr %58, ptr %63, align 4
  store ptr %64, ptr %58, align 4
  %66 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %11, i32 0, i32 5, i32 1
  store ptr %65, ptr %66, align 8
  store volatile ptr %58, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %67 = load i16, ptr %52, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %69

69:                                               ; preds = %48, %36, %13
  %70 = phi i32 [ 0, %48 ], [ -12, %36 ], [ -12, %13 ]
  tail call void @mutex_lock(ptr noundef %9) #12
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_unlink(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  tail call void @__ext4_fc_track_unlink(ptr noundef %0, ptr noundef %4, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ext4_fc_track_link(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__track_dentry_update_args, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %struct.__track_dentry_update_args, ptr %4, i32 0, i32 1
  store i32 4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 18
  %11 = load i32, ptr %10, align 16
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 25
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.transaction_s, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %1, i32 -56
  tail call void @mutex_lock(ptr noundef %28) #12
  %29 = getelementptr i8, ptr %1, i32 520
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %1, i32 -80
  store i32 0, ptr %33, align 8
  %34 = getelementptr i8, ptr %1, i32 -76
  store i32 0, ptr %34, align 4
  store i32 %27, ptr %29, align 8
  br label %35

35:                                               ; preds = %32, %24
  %36 = call fastcc i32 @__track_dentry_update(ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %31) #12, !callees !21
  tail call void @mutex_unlock(ptr noundef %28) #12
  br label %37

37:                                               ; preds = %35, %19, %14, %3
  %38 = phi i32 [ -95, %14 ], [ -95, %3 ], [ -22, %19 ], [ %36, %35 ]
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_link, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = tail call ptr @llvm.thread.pointer() #12
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %53 = tail call i32 @__traceiter_ext4_fc_track_link(ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %38) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  br label %54

54:                                               ; preds = %52, %41, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_link(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  tail call void @__ext4_fc_track_link(ptr noundef %0, ptr noundef %4, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ext4_fc_track_create(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.__track_dentry_update_args, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %struct.__track_dentry_update_args, ptr %4, i32 0, i32 1
  store i32 3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 18
  %11 = load i32, ptr %10, align 16
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 25
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.transaction_s, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %1, i32 -56
  tail call void @mutex_lock(ptr noundef %28) #12
  %29 = getelementptr i8, ptr %1, i32 520
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %1, i32 -80
  store i32 0, ptr %33, align 8
  %34 = getelementptr i8, ptr %1, i32 -76
  store i32 0, ptr %34, align 4
  store i32 %27, ptr %29, align 8
  br label %35

35:                                               ; preds = %32, %24
  %36 = call fastcc i32 @__track_dentry_update(ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %31) #12, !callees !21
  tail call void @mutex_unlock(ptr noundef %28) #12
  br label %37

37:                                               ; preds = %35, %19, %14, %3
  %38 = phi i32 [ -95, %14 ], [ -95, %3 ], [ -22, %19 ], [ %36, %35 ]
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_create, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = tail call ptr @llvm.thread.pointer() #12
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %53 = tail call i32 @__traceiter_ext4_fc_track_create(ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %38) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  br label %54

54:                                               ; preds = %52, %41, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_create(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  tail call void @__ext4_fc_track_create(ptr noundef %0, ptr noundef %4, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_inode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  %5 = icmp eq i16 %4, 16384
  br i1 %5, label %79, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @ext4_inode_journal_mode(ptr noundef %1) #12
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %13, label %12

12:                                               ; preds = %6
  tail call void @ext4_fc_mark_ineligible(ptr noundef %11, i32 noundef 8, ptr noundef %0)
  br label %79

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 18
  %17 = load i32, ptr %16, align 16
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 25
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 32
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 19
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %25
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.transaction_s, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %1, i32 -56
  tail call void @mutex_lock(ptr noundef %34) #12
  %35 = getelementptr i8, ptr %1, i32 520
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = getelementptr i8, ptr %1, i32 -80
  store i32 0, ptr %39, align 8
  %40 = getelementptr i8, ptr %1, i32 -76
  store i32 %33, ptr %35, align 8
  store i32 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi i32 [ 0, %38 ], [ -17, %30 ]
  tail call void @mutex_unlock(ptr noundef %34) #12
  %43 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 160
  tail call void @_raw_spin_lock(ptr noundef %43) #12
  %44 = getelementptr i8, ptr %1, i32 -88
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 47
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 768
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr %struct.ext4_sb_info, ptr %15, i32 0, i32 157, i32 1
  %54 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 157
  %55 = select i1 %52, ptr %54, ptr %53
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  store ptr %44, ptr %56, align 4
  store ptr %55, ptr %44, align 4
  %58 = getelementptr i8, ptr %1, i32 -84
  store ptr %57, ptr %58, align 4
  store volatile ptr %44, ptr %57, align 4
  br label %59

59:                                               ; preds = %47, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %60 = load i16, ptr %43, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %62

62:                                               ; preds = %59, %25, %20, %13
  %63 = phi i32 [ %42, %59 ], [ -95, %20 ], [ -95, %13 ], [ -22, %25 ]
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_inode, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = tail call ptr @llvm.thread.pointer() #12
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %78 = tail call i32 @__traceiter_ext4_fc_track_inode(ptr noundef null, ptr noundef %1, i32 noundef %63) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  br label %79

79:                                               ; preds = %77, %66, %62, %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_track_range(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, -4096
  %7 = icmp eq i16 %6, 16384
  br i1 %7, label %111, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 18
  %14 = load i32, ptr %13, align 16
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %94, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 25
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 32
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 19
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %94

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.transaction_s, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %1, i32 -56
  tail call void @mutex_lock(ptr noundef %31) #12
  %32 = getelementptr i8, ptr %1, i32 520
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 27
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 30
  %42 = load i32, ptr %41, align 8
  %43 = icmp ult i32 %37, %42
  br i1 %43, label %73, label %55

44:                                               ; preds = %27
  %45 = getelementptr i8, ptr %1, i32 -80
  store i32 0, ptr %45, align 8
  %46 = getelementptr i8, ptr %1, i32 -76
  store i32 0, ptr %46, align 4
  store i32 %30, ptr %32, align 8
  %47 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 30
  %53 = load i32, ptr %52, align 8
  %54 = icmp ult i32 %48, %53
  br i1 %54, label %73, label %68

55:                                               ; preds = %35
  %56 = getelementptr i8, ptr %1, i32 -80
  %57 = getelementptr i8, ptr %1, i32 -76
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %56, align 8
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 %2) #12
  store i32 %62, ptr %56, align 8
  %63 = add i32 %58, -1
  %64 = add i32 %63, %61
  %65 = tail call i32 @llvm.umax.i32(i32 %64, i32 %3) #12
  %66 = sub i32 1, %62
  %67 = add i32 %66, %65
  store i32 %67, ptr %57, align 4
  br label %73

68:                                               ; preds = %55, %44
  %69 = phi ptr [ %56, %55 ], [ %45, %44 ]
  store i32 %2, ptr %69, align 8
  %70 = sub i32 1, %2
  %71 = add i32 %70, %3
  %72 = getelementptr i8, ptr %1, i32 -76
  store i32 %71, ptr %72, align 4
  br label %73

73:                                               ; preds = %68, %60, %44, %35
  %74 = phi i32 [ -125, %35 ], [ 0, %68 ], [ 0, %60 ], [ -125, %44 ]
  tail call void @mutex_unlock(ptr noundef %31) #12
  %75 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 160
  tail call void @_raw_spin_lock(ptr noundef %75) #12
  %76 = getelementptr i8, ptr %1, i32 -88
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 47
  %81 = load ptr, ptr %80, align 4
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 768
  %84 = icmp eq i32 %83, 0
  %85 = getelementptr %struct.ext4_sb_info, ptr %12, i32 0, i32 157, i32 1
  %86 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 157
  %87 = select i1 %84, ptr %86, ptr %85
  %88 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  store ptr %76, ptr %88, align 4
  store ptr %87, ptr %76, align 4
  %90 = getelementptr i8, ptr %1, i32 -84
  store ptr %89, ptr %90, align 4
  store volatile ptr %76, ptr %89, align 4
  br label %91

91:                                               ; preds = %79, %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %92 = load i16, ptr %75, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %94

94:                                               ; preds = %91, %22, %17, %8
  %95 = phi i32 [ %74, %91 ], [ -95, %17 ], [ -95, %8 ], [ -22, %22 ]
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_track_range, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = tail call ptr @llvm.thread.pointer() #12
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = lshr i32 %101, 5
  %103 = getelementptr i32, ptr @__cpu_online_mask, i32 %102
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %101, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %98
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %110 = tail call i32 @__traceiter_ext4_fc_track_range(ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %95) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  br label %111

111:                                              ; preds = %109, %98, %94, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_fc_commit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.anon.78, align 8
  %4 = alloca %struct.anon.78, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_fc_tl, align 4
  %7 = alloca %struct.ext4_fc_tail, align 8
  %8 = alloca %struct.wait_queue_entry, align 4
  %9 = alloca %struct.ext4_fc_head, align 8
  %10 = alloca %struct.blk_plug, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 69
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 156
  %19 = load volatile i32, ptr %18, align 4
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_start, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = tail call ptr @llvm.thread.pointer() #12
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !32
  %34 = tail call i32 @__traceiter_ext4_fc_commit_start(ptr noundef null, ptr noundef %13) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  br label %35

35:                                               ; preds = %33, %22, %2
  %36 = tail call i64 @ktime_get() #12
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %37, i32 0, i32 18
  %39 = load i32, ptr %38, align 16
  %40 = and i32 %39, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 43
  br label %46

44:                                               ; preds = %35
  %45 = tail call i32 @jbd2_complete_transaction(ptr noundef %0, i32 noundef %1) #12
  br label %418

46:                                               ; preds = %51, %42
  %47 = tail call i32 @jbd2_fc_begin_commit(ptr noundef %0, i32 noundef %1) #12
  switch i32 %47, label %74 [
    i32 -114, label %48
    i32 0, label %99
  ]

48:                                               ; preds = %46
  %49 = load volatile i32, ptr %18, align 4
  %50 = icmp sgt i32 %49, %19
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %43, align 4
  %53 = icmp ult i32 %52, %1
  br i1 %53, label %46, label %54

54:                                               ; preds = %51, %48
  %55 = load ptr, ptr %14, align 4
  %56 = getelementptr inbounds %struct.ext4_sb_info, ptr %55, i32 0, i32 162, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_stop, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %418

61:                                               ; preds = %54
  %62 = tail call ptr @llvm.thread.pointer() #12
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %418, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %73 = tail call i32 @__traceiter_ext4_fc_commit_stop(ptr noundef null, ptr noundef %13, i32 noundef 0, i32 noundef 2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %418

74:                                               ; preds = %46
  %75 = load ptr, ptr %14, align 4
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %75, i32 0, i32 162, i32 3
  %77 = load i32, ptr %76, align 8
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 8
  %79 = getelementptr inbounds %struct.ext4_sb_info, ptr %75, i32 0, i32 162, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_stop, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %74
  %85 = tail call ptr @llvm.thread.pointer() #12
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %84
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %96 = tail call i32 @__traceiter_ext4_fc_commit_stop(ptr noundef null, ptr noundef %13, i32 noundef 0, i32 noundef 3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %97

97:                                               ; preds = %95, %84, %74
  %98 = tail call i32 @jbd2_complete_transaction(ptr noundef %0, i32 noundef %1) #12
  br label %418

99:                                               ; preds = %46
  %100 = load ptr, ptr %14, align 4
  %101 = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 19
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %387

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 159
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %12, align 4
  %109 = getelementptr inbounds %struct.super_block, ptr %108, i32 0, i32 27
  %110 = load ptr, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  store i64 0, ptr %9, align 8, !annotation !36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 24, i1 false) #12, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store i32 0, ptr %11, align 4
  %111 = getelementptr inbounds %struct.ext4_sb_info, ptr %110, i32 0, i32 160
  tail call void @_raw_spin_lock(ptr noundef %111) #12
  %112 = getelementptr inbounds %struct.ext4_sb_info, ptr %110, i32 0, i32 157
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %112
  br i1 %114, label %148, label %115

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.wait_queue_entry, ptr %8, i32 0, i32 1
  %117 = getelementptr inbounds %struct.wait_queue_entry, ptr %8, i32 0, i32 2
  %118 = getelementptr inbounds %struct.wait_queue_entry, ptr %8, i32 0, i32 3
  %119 = getelementptr inbounds %struct.wait_queue_entry, ptr %8, i32 0, i32 3, i32 1
  br label %120

120:                                              ; preds = %145, %115
  %121 = phi ptr [ %113, %115 ], [ %146, %145 ]
  %122 = getelementptr i8, ptr %121, i32 -40
  call void @_set_bit(i32 noundef 11, ptr noundef %122) #12
  %123 = getelementptr i8, ptr %121, i32 16
  %124 = load volatile i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %120
  %127 = tail call ptr @llvm.thread.pointer() #12
  %128 = getelementptr i8, ptr %121, i32 20
  br label %129

129:                                              ; preds = %135, %126
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4
  store ptr %127, ptr %116, align 4
  store ptr @autoremove_wake_function, ptr %117, align 4
  store ptr %118, ptr %118, align 4
  store ptr %118, ptr %119, align 4
  call void @prepare_to_wait(ptr noundef %128, ptr noundef nonnull %8, i32 noundef 2) #12
  %130 = load volatile i32, ptr %123, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %133 = load i16, ptr %111, align 4
  %134 = add i16 %133, 1
  store i16 %134, ptr %111, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  call void @schedule() #12
  call void @_raw_spin_lock(ptr noundef %111) #12
  br label %135

135:                                              ; preds = %132, %129
  call void @finish_wait(ptr noundef %128, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #12
  %136 = load volatile i32, ptr %123, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %129

138:                                              ; preds = %135, %120
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %139 = load i16, ptr %111, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr %111, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %141 = getelementptr i8, ptr %121, i32 480
  %142 = load ptr, ptr %141, align 8
  %143 = call i32 @jbd2_submit_inode_data(ptr noundef %142) #12
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %338

145:                                              ; preds = %138
  call void @_raw_spin_lock(ptr noundef %111) #12
  %146 = load ptr, ptr %121, align 4
  %147 = icmp eq ptr %146, %112
  br i1 %147, label %148, label %120

148:                                              ; preds = %145, %105
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %149 = load i16, ptr %111, align 4
  %150 = add i16 %149, 1
  store i16 %150, ptr %111, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %151 = load ptr, ptr %12, align 4
  %152 = getelementptr inbounds %struct.super_block, ptr %151, i32 0, i32 27
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.ext4_sb_info, ptr %153, i32 0, i32 160
  call void @_raw_spin_lock(ptr noundef %154) #12
  %155 = getelementptr inbounds %struct.ext4_sb_info, ptr %153, i32 0, i32 157
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %155
  br i1 %157, label %175, label %158

158:                                              ; preds = %173, %148
  %159 = phi ptr [ %160, %173 ], [ %156, %148 ]
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr i8, ptr %159, i32 -40
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %162, 2048
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %158
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %166 = load i16, ptr %154, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %154, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %168 = getelementptr i8, ptr %159, i32 480
  %169 = load ptr, ptr %168, align 8
  %170 = call i32 @jbd2_wait_inode_data(ptr noundef %0, ptr noundef %169) #12
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %338

172:                                              ; preds = %165
  call void @_raw_spin_lock(ptr noundef %154) #12
  br label %173

173:                                              ; preds = %172, %158
  %174 = icmp eq ptr %160, %155
  br i1 %174, label %175, label %158

175:                                              ; preds = %173, %148
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %176 = load i16, ptr %154, align 4
  %177 = add i16 %176, 1
  store i16 %177, ptr %154, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %178 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 32
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %179, %181
  br i1 %182, label %185, label %183

183:                                              ; preds = %175
  %184 = call i32 @blkdev_issue_flush(ptr noundef %179) #12
  br label %185

185:                                              ; preds = %183, %175
  call void @blk_start_plug(ptr noundef nonnull %10) #12
  %186 = getelementptr inbounds %struct.ext4_sb_info, ptr %110, i32 0, i32 159
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  store i32 0, ptr %9, align 8
  %190 = getelementptr inbounds %struct.ext4_sb_info, ptr %110, i32 0, i32 47
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.journal_s, ptr %191, i32 0, i32 10
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.transaction_s, ptr %193, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds %struct.ext4_fc_head, ptr %9, i32 0, i32 1
  store i32 %195, ptr %196, align 4
  %197 = call fastcc zeroext i1 @ext4_fc_add_tlv(ptr noundef %108, i16 noundef zeroext 9, i16 noundef zeroext 8, ptr noundef nonnull %9, ptr noundef nonnull %11) #12
  br i1 %197, label %198, label %336

198:                                              ; preds = %189, %185
  call void @_raw_spin_lock(ptr noundef %111) #12
  %199 = load ptr, ptr %12, align 4
  %200 = getelementptr inbounds %struct.super_block, ptr %199, i32 0, i32 27
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.ext4_sb_info, ptr %201, i32 0, i32 158
  %203 = load volatile ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, %202
  br i1 %204, label %249, label %205

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.ext4_sb_info, ptr %201, i32 0, i32 160
  %207 = getelementptr inbounds %struct.ext4_sb_info, ptr %201, i32 0, i32 157
  br label %208

208:                                              ; preds = %243, %205
  %209 = phi ptr [ %203, %205 ], [ %211, %243 ]
  %210 = getelementptr i8, ptr %209, i32 -68
  %211 = load ptr, ptr %209, align 4
  %212 = load i32, ptr %210, align 8
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %218, label %214

214:                                              ; preds = %208
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %215 = load i16, ptr %206, align 4
  %216 = add i16 %215, 1
  store i16 %216, ptr %206, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %217 = call fastcc zeroext i1 @ext4_fc_add_dentry_tlv(ptr noundef %199, ptr noundef nonnull %11, ptr noundef %210) #12
  br i1 %217, label %242, label %245

218:                                              ; preds = %208
  %219 = getelementptr i8, ptr %209, i32 -60
  br label %220

220:                                              ; preds = %224, %218
  %221 = phi ptr [ %207, %218 ], [ %222, %224 ]
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, %207
  br i1 %223, label %243, label %224

224:                                              ; preds = %220
  %225 = getelementptr i8, ptr %222, i32 124
  %226 = load i32, ptr %225, align 4
  %227 = load i32, ptr %219, align 8
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %220

229:                                              ; preds = %224
  %230 = getelementptr i8, ptr %222, i32 88
  %231 = icmp eq ptr %230, null
  br i1 %231, label %243, label %232

232:                                              ; preds = %229
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %233 = load i16, ptr %206, align 4
  %234 = add i16 %233, 1
  store i16 %234, ptr %206, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %235 = call fastcc i32 @ext4_fc_write_inode(ptr noundef nonnull %230, ptr noundef nonnull %11) #12
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  %238 = call fastcc i32 @ext4_fc_write_inode_data(ptr noundef nonnull %230, ptr noundef nonnull %11) #12
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = call fastcc zeroext i1 @ext4_fc_add_dentry_tlv(ptr noundef %199, ptr noundef nonnull %11, ptr noundef %210) #12
  br i1 %241, label %242, label %245

242:                                              ; preds = %240, %214
  call void @_raw_spin_lock(ptr noundef %206) #12
  br label %243

243:                                              ; preds = %242, %229, %220
  %244 = icmp eq ptr %211, %202
  br i1 %244, label %249, label %208

245:                                              ; preds = %240, %237, %232, %214
  %246 = phi i32 [ %235, %232 ], [ %238, %237 ], [ -28, %214 ], [ -28, %240 ]
  call void @_raw_spin_lock(ptr noundef %206) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %247 = load i16, ptr %111, align 4
  %248 = add i16 %247, 1
  store i16 %248, ptr %111, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %336

249:                                              ; preds = %243, %198
  %250 = load ptr, ptr %112, align 4
  %251 = icmp eq ptr %250, %112
  br i1 %251, label %271, label %252

252:                                              ; preds = %268, %249
  %253 = phi ptr [ %269, %268 ], [ %250, %249 ]
  %254 = getelementptr i8, ptr %253, i32 88
  %255 = getelementptr i8, ptr %253, i32 -40
  %256 = load volatile i32, ptr %255, align 4
  %257 = and i32 %256, 2048
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %268, label %259

259:                                              ; preds = %252
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %260 = load i16, ptr %111, align 4
  %261 = add i16 %260, 1
  store i16 %261, ptr %111, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %262 = call fastcc i32 @ext4_fc_write_inode_data(ptr noundef %254, ptr noundef nonnull %11) #12
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %336

264:                                              ; preds = %259
  %265 = call fastcc i32 @ext4_fc_write_inode(ptr noundef %254, ptr noundef nonnull %11) #12
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %336

267:                                              ; preds = %264
  call void @_raw_spin_lock(ptr noundef %111) #12
  br label %268

268:                                              ; preds = %267, %252
  %269 = load ptr, ptr %253, align 4
  %270 = icmp eq ptr %269, %112
  br i1 %270, label %271, label %252

271:                                              ; preds = %268, %249
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %272 = load i16, ptr %111, align 4
  %273 = add i16 %272, 1
  store i16 %273, ptr %111, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %274 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 %274, ptr %5, align 4
  %275 = load ptr, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 8, ptr %6, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store i64 0, ptr %7, align 8, !annotation !36
  %276 = getelementptr inbounds %struct.ext4_sb_info, ptr %275, i32 0, i32 47
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.journal_s, ptr %277, i32 0, i32 33
  %279 = load i32, ptr %278, align 8
  %280 = call fastcc ptr @ext4_fc_reserve_space(ptr noundef %108, i32 noundef 12, ptr noundef nonnull %5) #12
  %281 = icmp eq ptr %280, null
  br i1 %281, label %334, label %282

282:                                              ; preds = %271
  %283 = getelementptr inbounds %struct.ext4_sb_info, ptr %275, i32 0, i32 159
  %284 = load i32, ptr %283, align 4
  %285 = urem i32 %284, %279
  %286 = xor i32 %285, -1
  %287 = add i32 %279, %286
  %288 = trunc i32 %287 to i16
  %289 = add i16 %288, 8
  %290 = getelementptr inbounds %struct.ext4_fc_tl, ptr %6, i32 0, i32 1
  store i16 %289, ptr %290, align 2
  %291 = add i32 %284, -1
  %292 = add i32 %279, -1
  %293 = or i32 %291, %292
  %294 = add i32 %293, 1
  store i32 %294, ptr %283, align 4
  %295 = load ptr, ptr %109, align 4
  %296 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #12, !annotation !36
  %297 = getelementptr inbounds %struct.ext4_sb_info, ptr %295, i32 0, i32 119
  %298 = load ptr, ptr %297, align 8
  %299 = load i32, ptr %298, align 64
  %300 = icmp eq i32 %299, 4
  br i1 %300, label %302, label %301, !prof !37

301:                                              ; preds = %282
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

302:                                              ; preds = %282
  store ptr %298, ptr %4, align 8
  %303 = getelementptr inbounds %struct.anon.78, ptr %4, i32 0, i32 1
  store i32 %296, ptr %303, align 8
  %304 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 4) #12
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %307, label %306, !prof !37

306:                                              ; preds = %302
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

307:                                              ; preds = %302
  %308 = load i32, ptr %303, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  store i32 %308, ptr %5, align 4
  %309 = load i32, ptr %6, align 4
  store i32 %309, ptr %280, align 1
  %310 = getelementptr i8, ptr %280, i32 4
  %311 = load ptr, ptr %276, align 4
  %312 = getelementptr inbounds %struct.journal_s, ptr %311, i32 0, i32 10
  %313 = load ptr, ptr %312, align 8
  %314 = getelementptr inbounds %struct.transaction_s, ptr %313, i32 0, i32 1
  %315 = load i32, ptr %314, align 4
  store i32 %315, ptr %7, align 8
  %316 = load ptr, ptr %109, align 4
  %317 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #12, !annotation !36
  %318 = getelementptr inbounds %struct.ext4_sb_info, ptr %316, i32 0, i32 119
  %319 = load ptr, ptr %318, align 8
  %320 = load i32, ptr %319, align 64
  %321 = icmp eq i32 %320, 4
  br i1 %321, label %323, label %322, !prof !37

322:                                              ; preds = %307
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

323:                                              ; preds = %307
  store ptr %319, ptr %3, align 8
  %324 = getelementptr inbounds %struct.anon.78, ptr %3, i32 0, i32 1
  store i32 %317, ptr %324, align 8
  %325 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef nonnull %7, i32 noundef 4) #12
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %328, label %327, !prof !37

327:                                              ; preds = %323
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

328:                                              ; preds = %323
  %329 = load i32, ptr %324, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  store i32 %329, ptr %5, align 4
  %330 = load i32, ptr %7, align 8
  store i32 %330, ptr %310, align 1
  %331 = getelementptr i8, ptr %280, i32 8
  %332 = load i32, ptr %5, align 4
  %333 = getelementptr inbounds %struct.ext4_fc_tail, ptr %7, i32 0, i32 1
  store i32 %332, ptr %333, align 4
  store i32 %332, ptr %331, align 1
  call fastcc void @ext4_fc_submit_bh(ptr noundef %108, i1 noundef zeroext true) #12
  br label %334

334:                                              ; preds = %328, %271
  %335 = phi i32 [ 0, %328 ], [ -28, %271 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %336

336:                                              ; preds = %334, %264, %259, %245, %189
  %337 = phi i32 [ %246, %245 ], [ %335, %334 ], [ -28, %189 ], [ %262, %259 ], [ %265, %264 ]
  call void @blk_finish_plug(ptr noundef nonnull %10) #12
  br label %338

338:                                              ; preds = %336, %165, %138
  %339 = phi i32 [ %337, %336 ], [ %170, %165 ], [ %143, %138 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %390, label %341

341:                                              ; preds = %338
  %342 = add i32 %17, -1
  %343 = add i32 %342, %107
  %344 = udiv i32 %343, %17
  %345 = load i32, ptr %106, align 4
  %346 = add i32 %342, %345
  %347 = udiv i32 %346, %17
  %348 = sub i32 %347, %344
  %349 = call i32 @jbd2_fc_wait_bufs(ptr noundef %0, i32 noundef %348) #12
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %390, label %351

351:                                              ; preds = %341
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #12, !srcloc !12
  %352 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #12, !srcloc !13
  %353 = call i32 @jbd2_fc_end_commit(ptr noundef %0) #12
  %354 = call i64 @ktime_get() #12
  %355 = sub i64 %354, %36
  %356 = load ptr, ptr %14, align 4
  %357 = getelementptr inbounds %struct.ext4_sb_info, ptr %356, i32 0, i32 162, i32 1
  %358 = load i32, ptr %357, align 8
  %359 = add i32 %358, 1
  store i32 %359, ptr %357, align 8
  %360 = getelementptr inbounds %struct.ext4_sb_info, ptr %356, i32 0, i32 162, i32 5
  %361 = load i32, ptr %360, align 8
  %362 = add i32 %361, %348
  store i32 %362, ptr %360, align 8
  %363 = getelementptr inbounds %struct.ext4_sb_info, ptr %356, i32 0, i32 162, i32 6
  %364 = load i64, ptr %363, align 8
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %370, label %366, !prof !20

366:                                              ; preds = %351
  %367 = mul i64 %364, 3
  %368 = add i64 %367, %355
  %369 = lshr i64 %368, 2
  br label %370

370:                                              ; preds = %366, %351
  %371 = phi i64 [ %369, %366 ], [ %355, %351 ]
  store i64 %371, ptr %363, align 8
  %372 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_stop, i32 0, i32 1), align 4
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %374, label %418

374:                                              ; preds = %370
  %375 = tail call ptr @llvm.thread.pointer() #12
  %376 = getelementptr inbounds %struct.thread_info, ptr %375, i32 0, i32 2
  %377 = load i32, ptr %376, align 8
  %378 = lshr i32 %377, 5
  %379 = getelementptr i32, ptr @__cpu_online_mask, i32 %378
  %380 = load volatile i32, ptr %379, align 4
  %381 = and i32 %377, 31
  %382 = shl nuw i32 1, %381
  %383 = and i32 %382, %380
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %418, label %385

385:                                              ; preds = %374
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %386 = call i32 @__traceiter_ext4_fc_commit_stop(ptr noundef null, ptr noundef %13, i32 noundef %348, i32 noundef 0) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %418

387:                                              ; preds = %99
  %388 = tail call i32 @jbd2_fc_end_commit_fallback(ptr noundef %0) #12
  %389 = load ptr, ptr %14, align 4
  br label %396

390:                                              ; preds = %341, %338
  %391 = call i32 @jbd2_fc_end_commit_fallback(ptr noundef %0) #12
  %392 = load ptr, ptr %14, align 4
  %393 = getelementptr inbounds %struct.ext4_sb_info, ptr %392, i32 0, i32 162, i32 3
  %394 = load i32, ptr %393, align 8
  %395 = add i32 %394, 1
  store i32 %395, ptr %393, align 8
  br label %396

396:                                              ; preds = %390, %387
  %397 = phi ptr [ %392, %390 ], [ %389, %387 ]
  %398 = phi i32 [ %391, %390 ], [ %388, %387 ]
  %399 = phi i32 [ 3, %390 ], [ 1, %387 ]
  %400 = getelementptr inbounds %struct.ext4_sb_info, ptr %397, i32 0, i32 162, i32 2
  %401 = load i32, ptr %400, align 4
  %402 = add i32 %401, 1
  store i32 %402, ptr %400, align 4
  %403 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_commit_stop, i32 0, i32 1), align 4
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %418

405:                                              ; preds = %396
  %406 = tail call ptr @llvm.thread.pointer() #12
  %407 = getelementptr inbounds %struct.thread_info, ptr %406, i32 0, i32 2
  %408 = load i32, ptr %407, align 8
  %409 = lshr i32 %408, 5
  %410 = getelementptr i32, ptr @__cpu_online_mask, i32 %409
  %411 = load volatile i32, ptr %410, align 4
  %412 = and i32 %408, 31
  %413 = shl nuw i32 1, %412
  %414 = and i32 %413, %411
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %418, label %416

416:                                              ; preds = %405
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %417 = call i32 @__traceiter_ext4_fc_commit_stop(ptr noundef null, ptr noundef %13, i32 noundef 0, i32 noundef %399) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %418

418:                                              ; preds = %416, %405, %396, %385, %374, %370, %97, %72, %61, %54, %44
  %419 = phi i32 [ %98, %97 ], [ %45, %44 ], [ 0, %54 ], [ 0, %61 ], [ 0, %72 ], [ %353, %370 ], [ %353, %374 ], [ %353, %385 ], [ %398, %396 ], [ %398, %405 ], [ %398, %416 ]
  ret i32 %419
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_complete_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_begin_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_wait_bufs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_end_commit_fallback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_fc_record_regions(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %5, 0
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 164, i32 7
  %11 = load i32, ptr %10, align 4
  br i1 %9, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 164, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 %14, ptr %10, align 4
  br label %17

17:                                               ; preds = %16, %12, %6
  %18 = phi i32 [ %14, %16 ], [ %11, %12 ], [ %11, %6 ]
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 164, i32 7
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 164, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 164, i32 5
  %25 = load ptr, ptr %24, align 4
  br label %35

26:                                               ; preds = %17
  %27 = add i32 %18, 4
  store i32 %27, ptr %20, align 4
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 164, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = mul i32 %27, 24
  %31 = tail call noalias ptr @krealloc(ptr noundef %29, i32 noundef %30, i32 noundef 3264) #14
  store ptr %31, ptr %28, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %19, align 4
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi i32 [ %18, %23 ], [ %34, %33 ]
  %37 = phi ptr [ %25, %23 ], [ %31, %33 ]
  %38 = add i32 %36, 1
  store i32 %38, ptr %19, align 4
  %39 = getelementptr %struct.ext4_fc_alloc_region, ptr %37, i32 %36
  %40 = getelementptr %struct.ext4_fc_alloc_region, ptr %37, i32 %36, i32 2
  store i32 %1, ptr %40, align 8
  store i32 %2, ptr %39, align 8
  %41 = getelementptr %struct.ext4_fc_alloc_region, ptr %37, i32 %36, i32 1
  store i64 %3, ptr %41, align 8
  %42 = getelementptr %struct.ext4_fc_alloc_region, ptr %37, i32 %36, i32 3
  store i32 %4, ptr %42, align 4
  br i1 %9, label %47, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 164, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %43, %35, %26
  %48 = phi i32 [ -12, %26 ], [ 0, %43 ], [ 0, %35 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @ext4_fc_replay_check_excluded(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 164, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 164, i32 5
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %29, %8
  %12 = phi i1 [ true, %8 ], [ %31, %29 ]
  %13 = phi i32 [ 0, %8 ], [ %30, %29 ]
  %14 = getelementptr %struct.ext4_fc_alloc_region, ptr %10, i32 %13, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = getelementptr %struct.ext4_fc_alloc_region, ptr %10, i32 %13, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.ext4_fc_alloc_region, ptr %10, i32 %13, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = icmp ugt i64 %23, %1
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = sext i32 %19 to i64
  %27 = add i64 %23, %26
  %28 = icmp ugt i64 %27, %1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %21, %17, %11
  %30 = add nuw nsw i32 %13, 1
  %31 = icmp slt i32 %30, %6
  %32 = icmp eq i32 %30, %6
  br i1 %32, label %33, label %11

33:                                               ; preds = %29, %25, %2
  %34 = phi i1 [ false, %2 ], [ %31, %29 ], [ %12, %25 ]
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_replay_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 25
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -33
  store i16 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 164, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 164, i32 9
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ext4_fc_init(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 73
  store ptr @ext4_fc_replay, ptr %3, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 18
  %7 = load i32, ptr %6, align 16
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 72
  store ptr @ext4_fc_cleanup, ptr %11, align 8
  br label %12

12:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_fc_replay(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.ext4_iloc, align 4
  %7 = alloca %struct.ext4_map_blocks, align 8
  %8 = alloca %struct.dentry_info_args, align 4
  %9 = alloca %struct.ext4_extent, align 4
  %10 = alloca %struct.ext4_map_blocks, align 8
  %11 = alloca ptr, align 4
  %12 = alloca %struct.qstr, align 8
  %13 = alloca %struct.dentry_info_args, align 4
  %14 = alloca %struct.anon.78, align 8
  %15 = alloca %struct.anon.78, align 8
  %16 = alloca %struct.anon.78, align 8
  %17 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 69
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 164
  %22 = icmp eq i32 %2, 0
  %23 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 164, i32 2
  br i1 %22, label %24, label %198

24:                                               ; preds = %5
  store i32 0, ptr %23, align 4
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 164
  %29 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = getelementptr i8, ptr %33, i32 -1
  %35 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 164, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 164, i32 3
  store i32 0, ptr %28, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %39, i8 0, i64 24, i1 false) #12
  %40 = load i16, ptr %30, align 2
  %41 = icmp eq i16 %40, 9
  br i1 %41, label %42, label %820

42:                                               ; preds = %38, %24
  %43 = icmp eq i32 %36, %3
  br i1 %43, label %44, label %181

44:                                               ; preds = %42
  %45 = add i32 %3, 1
  store i32 %45, ptr %35, align 4
  %46 = icmp ult ptr %30, %34
  br i1 %46, label %47, label %181

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 164, i32 3
  %49 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 164, i32 4
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 119
  %51 = getelementptr inbounds %struct.anon.78, ptr %14, i32 0, i32 1
  %52 = getelementptr inbounds %struct.anon.78, ptr %15, i32 0, i32 1
  %53 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 164, i32 7
  %54 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 164, i32 8
  %55 = getelementptr inbounds %struct.anon.78, ptr %16, i32 0, i32 1
  br label %56

56:                                               ; preds = %177, %47
  %57 = phi ptr [ %30, %47 ], [ %179, %177 ]
  %58 = load i16, ptr %57, align 1
  %59 = getelementptr inbounds i8, ptr %57, i32 2
  %60 = load i16, ptr %59, align 1
  %61 = getelementptr i8, ptr %57, i32 4
  switch i16 %58, label %169 [
    i16 1, label %62
    i16 2, label %106
    i16 4, label %106
    i16 5, label %106
    i16 3, label %106
    i16 6, label %106
    i16 7, label %106
    i16 8, label %122
    i16 9, label %146
  ]

62:                                               ; preds = %56
  %63 = load i32, ptr %61, align 1
  %64 = getelementptr i8, ptr %57, i32 8
  %65 = load i32, ptr %64, align 1
  %66 = getelementptr i8, ptr %57, i32 12
  %67 = load i16, ptr %66, align 1
  %68 = getelementptr i8, ptr %57, i32 14
  %69 = load i16, ptr %68, align 1
  %70 = getelementptr i8, ptr %57, i32 16
  %71 = load i32, ptr %70, align 1
  %72 = zext i32 %71 to i64
  %73 = zext i16 %69 to i64
  %74 = shl nuw nsw i64 %73, 32
  %75 = or i64 %74, %72
  %76 = zext i16 %67 to i32
  %77 = icmp ult i16 %67, -32767
  %78 = add nsw i32 %76, -32768
  %79 = select i1 %77, i32 %76, i32 %78
  %80 = load ptr, ptr %26, align 4
  %81 = getelementptr inbounds %struct.ext4_sb_info, ptr %80, i32 0, i32 164, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ext4_sb_info, ptr %80, i32 0, i32 164, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %89, label %86

86:                                               ; preds = %62
  %87 = getelementptr inbounds %struct.ext4_sb_info, ptr %80, i32 0, i32 164, i32 5
  %88 = load ptr, ptr %87, align 4
  br label %98

89:                                               ; preds = %62
  %90 = add i32 %82, 4
  store i32 %90, ptr %83, align 4
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %80, i32 0, i32 164, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = mul i32 %90, 24
  %94 = call noalias ptr @krealloc(ptr noundef %92, i32 noundef %93, i32 noundef 3264) #14
  store ptr %94, ptr %91, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %181, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %81, align 4
  br label %98

98:                                               ; preds = %96, %86
  %99 = phi i32 [ %82, %86 ], [ %97, %96 ]
  %100 = phi ptr [ %88, %86 ], [ %94, %96 ]
  %101 = add i32 %99, 1
  store i32 %101, ptr %81, align 4
  %102 = getelementptr %struct.ext4_fc_alloc_region, ptr %100, i32 %99
  %103 = getelementptr %struct.ext4_fc_alloc_region, ptr %100, i32 %99, i32 2
  store i32 %63, ptr %103, align 8
  store i32 %65, ptr %102, align 8
  %104 = getelementptr %struct.ext4_fc_alloc_region, ptr %100, i32 %99, i32 1
  store i64 %75, ptr %104, align 8
  %105 = getelementptr %struct.ext4_fc_alloc_region, ptr %100, i32 %99, i32 3
  store i32 %79, ptr %105, align 4
  br label %106

106:                                              ; preds = %98, %56, %56, %56, %56, %56, %56
  %107 = load i32, ptr %48, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %48, align 4
  %109 = load i32, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i32 16, i1 false) #12, !annotation !36
  %110 = load ptr, ptr %50, align 8
  %111 = load i32, ptr %110, align 64
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %114, label %113, !prof !37

113:                                              ; preds = %106
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

114:                                              ; preds = %106
  %115 = zext i16 %60 to i32
  %116 = add nuw nsw i32 %115, 4
  store ptr %110, ptr %16, align 8
  store i32 %109, ptr %55, align 8
  %117 = call i32 @crypto_shash_update(ptr noundef nonnull %16, ptr noundef %57, i32 noundef %116) #12
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119, !prof !37

119:                                              ; preds = %114
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

120:                                              ; preds = %114
  %121 = load i32, ptr %55, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #12
  store i32 %121, ptr %49, align 4
  br label %177

122:                                              ; preds = %56
  %123 = load i32, ptr %48, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %48, align 4
  %125 = load i32, ptr %61, align 1
  %126 = getelementptr i8, ptr %57, i32 8
  %127 = load i32, ptr %126, align 1
  %128 = load i32, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i32 16, i1 false) #12, !annotation !36
  %129 = load ptr, ptr %50, align 8
  %130 = load i32, ptr %129, align 64
  %131 = icmp eq i32 %130, 4
  br i1 %131, label %133, label %132, !prof !37

132:                                              ; preds = %122
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

133:                                              ; preds = %122
  store ptr %129, ptr %15, align 8
  store i32 %128, ptr %52, align 8
  %134 = call i32 @crypto_shash_update(ptr noundef nonnull %15, ptr noundef %57, i32 noundef 8) #12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136, !prof !37

136:                                              ; preds = %133
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

137:                                              ; preds = %133
  %138 = load i32, ptr %52, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #12
  %139 = icmp eq i32 %125, %4
  %140 = icmp eq i32 %127, %138
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %173, label %142

142:                                              ; preds = %137
  %143 = load i32, ptr %28, align 4
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i32 -74, i32 0
  store i32 0, ptr %49, align 4
  br label %181

146:                                              ; preds = %56
  %147 = load i32, ptr %61, align 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %181

149:                                              ; preds = %146
  %150 = getelementptr i8, ptr %57, i32 8
  %151 = load i32, ptr %150, align 1
  %152 = icmp eq i32 %151, %4
  br i1 %152, label %153, label %181

153:                                              ; preds = %149
  %154 = load i32, ptr %48, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %48, align 4
  %156 = load i32, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i32 16, i1 false) #12, !annotation !36
  %157 = load ptr, ptr %50, align 8
  %158 = load i32, ptr %157, align 64
  %159 = icmp eq i32 %158, 4
  br i1 %159, label %161, label %160, !prof !37

160:                                              ; preds = %153
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

161:                                              ; preds = %153
  %162 = zext i16 %60 to i32
  %163 = add nuw nsw i32 %162, 4
  store ptr %157, ptr %14, align 8
  store i32 %156, ptr %51, align 8
  %164 = call i32 @crypto_shash_update(ptr noundef nonnull %14, ptr noundef %57, i32 noundef %163) #12
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166, !prof !37

166:                                              ; preds = %161
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

167:                                              ; preds = %161
  %168 = load i32, ptr %51, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #12
  store i32 %168, ptr %49, align 4
  br label %177

169:                                              ; preds = %56
  %170 = load i32, ptr %28, align 4
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i32 -125, i32 0
  br label %181

173:                                              ; preds = %137
  %174 = load i32, ptr %48, align 4
  store i32 %174, ptr %28, align 4
  %175 = load i32, ptr %53, align 4
  store i32 %175, ptr %54, align 4
  store i32 0, ptr %49, align 4
  %176 = zext i16 %60 to i32
  br label %177

177:                                              ; preds = %173, %167, %120
  %178 = phi i32 [ %115, %120 ], [ %162, %167 ], [ %176, %173 ]
  %179 = getelementptr i8, ptr %61, i32 %178
  %180 = icmp ult ptr %179, %34
  br i1 %180, label %56, label %181

181:                                              ; preds = %177, %169, %149, %146, %142, %89, %44, %42
  %182 = phi i32 [ -117, %42 ], [ %145, %142 ], [ %172, %169 ], [ 1, %44 ], [ -12, %89 ], [ 0, %149 ], [ -95, %146 ], [ 1, %177 ]
  %183 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay_scan, i32 0, i32 1), align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %820

185:                                              ; preds = %181
  %186 = tail call ptr @llvm.thread.pointer() #12
  %187 = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 2
  %188 = load i32, ptr %187, align 8
  %189 = lshr i32 %188, 5
  %190 = getelementptr i32, ptr @__cpu_online_mask, i32 %189
  %191 = load volatile i32, ptr %190, align 4
  %192 = and i32 %188, 31
  %193 = shl nuw i32 1, %192
  %194 = and i32 %193, %191
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %820, label %196

196:                                              ; preds = %185
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !40
  %197 = call i32 @__traceiter_ext4_fc_replay_scan(ptr noundef null, ptr noundef %25, i32 noundef %182, i32 noundef %3) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !41
  br label %820

198:                                              ; preds = %5
  %199 = load i32, ptr %23, align 4
  %200 = icmp eq i32 %199, %2
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  store i32 %2, ptr %23, align 4
  %202 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 25
  %203 = load i16, ptr %202, align 8
  %204 = or i16 %203, 32
  store i16 %204, ptr %202, align 8
  br label %205

205:                                              ; preds = %201, %198
  %206 = load i32, ptr %21, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  tail call fastcc void @ext4_fc_set_bitmaps_and_counters(ptr noundef %18)
  br label %820

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 33
  %213 = load i32, ptr %212, align 8
  %214 = getelementptr i8, ptr %211, i32 %213
  %215 = getelementptr i8, ptr %214, i32 -1
  %216 = icmp ult ptr %211, %215
  br i1 %216, label %217, label %820

217:                                              ; preds = %209
  %218 = getelementptr inbounds %struct.ext4_iloc, ptr %6, i32 0, i32 1
  %219 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 20
  %220 = getelementptr inbounds %struct.ext4_map_blocks, ptr %7, i32 0, i32 1
  %221 = getelementptr inbounds %struct.ext4_map_blocks, ptr %7, i32 0, i32 2
  %222 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 2
  %223 = getelementptr inbounds i8, ptr %8, i32 12
  %224 = getelementptr inbounds %struct.dentry_info_args, ptr %8, i32 0, i32 2
  %225 = getelementptr inbounds %struct.dentry_info_args, ptr %8, i32 0, i32 4
  %226 = getelementptr inbounds %struct.dentry_info_args, ptr %8, i32 0, i32 1
  %227 = getelementptr inbounds %struct.ext4_map_blocks, ptr %10, i32 0, i32 1
  %228 = getelementptr inbounds %struct.ext4_map_blocks, ptr %10, i32 0, i32 2
  %229 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 3
  %230 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 2
  %231 = getelementptr inbounds %struct.ext4_extent, ptr %9, i32 0, i32 1
  %232 = getelementptr inbounds %struct.qstr, ptr %12, i32 0, i32 1
  %233 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %234 = getelementptr inbounds i8, ptr %13, i32 12
  %235 = getelementptr inbounds %struct.dentry_info_args, ptr %13, i32 0, i32 2
  %236 = getelementptr inbounds %struct.dentry_info_args, ptr %13, i32 0, i32 4
  %237 = getelementptr inbounds %struct.dentry_info_args, ptr %13, i32 0, i32 1
  br label %239

238:                                              ; preds = %817
  call fastcc void @ext4_fc_set_bitmaps_and_counters(ptr noundef %18)
  br label %820

239:                                              ; preds = %817, %217
  %240 = phi ptr [ %211, %217 ], [ %815, %817 ]
  %241 = phi i32 [ %206, %217 ], [ %818, %817 ]
  %242 = load i32, ptr %240, align 1
  %243 = lshr i32 %242, 16
  %244 = getelementptr i8, ptr %240, i32 4
  %245 = trunc i32 %242 to i16
  %246 = add i32 %241, -1
  store i32 %246, ptr %21, align 4
  switch i16 %245, label %794 [
    i16 4, label %247
    i16 5, label %275
    i16 1, label %310
    i16 3, label %463
    i16 2, label %511
    i16 6, label %622
    i16 7, label %758
    i16 8, label %774
    i16 9, label %814
  ]

247:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #12
  store i32 0, ptr %234, align 4, !annotation !36
  %248 = load i32, ptr %244, align 1
  %249 = getelementptr i8, ptr %240, i32 8
  %250 = load i32, ptr %249, align 1
  store i32 %248, ptr %13, align 4
  store i32 %250, ptr %235, align 4
  %251 = getelementptr i8, ptr %240, i32 12
  store ptr %251, ptr %236, align 4
  %252 = add nsw i32 %243, -8
  store i32 %252, ptr %237, align 4
  %253 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %247
  %256 = tail call ptr @llvm.thread.pointer() #12
  %257 = getelementptr inbounds %struct.thread_info, ptr %256, i32 0, i32 2
  %258 = load i32, ptr %257, align 8
  %259 = lshr i32 %258, 5
  %260 = getelementptr i32, ptr @__cpu_online_mask, i32 %259
  %261 = load volatile i32, ptr %260, align 4
  %262 = and i32 %258, 31
  %263 = shl nuw i32 1, %262
  %264 = and i32 %263, %261
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %255
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %267 = call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %18, i32 noundef 4, i32 noundef %250, i32 noundef %248, i32 noundef %252) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %268

268:                                              ; preds = %266, %255, %247
  %269 = call ptr @__ext4_iget(ptr noundef %18, i32 noundef %250, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_link, i32 noundef 1388) #12
  %270 = icmp ugt ptr %269, inttoptr (i32 -4096 to ptr)
  br i1 %270, label %273, label %271

271:                                              ; preds = %268
  %272 = call fastcc i32 @ext4_fc_replay_link_internal(ptr noundef %18, ptr noundef nonnull %13, ptr noundef %269) #12
  call void @iput(ptr noundef %269) #12
  br label %273

273:                                              ; preds = %271, %268
  %274 = phi i32 [ %272, %271 ], [ 0, %268 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #12
  br label %811

275:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i32 16, i1 false) #12, !annotation !36
  %276 = load i32, ptr %244, align 1
  %277 = getelementptr i8, ptr %240, i32 8
  %278 = load i32, ptr %277, align 1
  %279 = getelementptr i8, ptr %240, i32 12
  %280 = add nsw i32 %243, -8
  %281 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %275
  %284 = tail call ptr @llvm.thread.pointer() #12
  %285 = getelementptr inbounds %struct.thread_info, ptr %284, i32 0, i32 2
  %286 = load i32, ptr %285, align 8
  %287 = lshr i32 %286, 5
  %288 = getelementptr i32, ptr @__cpu_online_mask, i32 %287
  %289 = load volatile i32, ptr %288, align 4
  %290 = and i32 %286, 31
  %291 = shl nuw i32 1, %290
  %292 = and i32 %291, %289
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %283
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %295 = call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %18, i32 noundef 5, i32 noundef %278, i32 noundef %276, i32 noundef %280) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %296

296:                                              ; preds = %294, %283, %275
  store ptr %279, ptr %232, align 8
  store i32 %280, ptr %233, align 4
  %297 = call ptr @__ext4_iget(ptr noundef %18, i32 noundef %278, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_unlink, i32 noundef 1294) #12
  %298 = icmp ugt ptr %297, inttoptr (i32 -4096 to ptr)
  br i1 %298, label %308, label %299

299:                                              ; preds = %296
  %300 = call ptr @__ext4_iget(ptr noundef %18, i32 noundef %276, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_unlink, i32 noundef 1302) #12
  %301 = icmp ugt ptr %300, inttoptr (i32 -4096 to ptr)
  br i1 %301, label %306, label %302

302:                                              ; preds = %299
  %303 = call i32 @__ext4_unlink(ptr noundef null, ptr noundef %300, ptr noundef nonnull %12, ptr noundef %297) #12
  %304 = icmp eq i32 %303, -2
  %305 = select i1 %304, i32 0, i32 %303
  call void @iput(ptr noundef %300) #12
  br label %306

306:                                              ; preds = %302, %299
  %307 = phi i32 [ %305, %302 ], [ 0, %299 ]
  call void @iput(ptr noundef %297) #12
  br label %308

308:                                              ; preds = %306, %296
  %309 = phi i32 [ 0, %296 ], [ %307, %306 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  br label %811

310:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false) #12, !annotation !36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i32 24, i1 false) #12, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store ptr null, ptr %11, align 4
  %311 = load i32, ptr %244, align 1
  %312 = getelementptr i8, ptr %240, i32 8
  %313 = load i32, ptr %312, align 1
  %314 = getelementptr i8, ptr %240, i32 12
  %315 = load i16, ptr %314, align 1
  %316 = getelementptr i8, ptr %240, i32 14
  %317 = load i16, ptr %316, align 1
  %318 = getelementptr i8, ptr %240, i32 16
  %319 = load i32, ptr %318, align 1
  %320 = zext i16 %315 to i32
  %321 = icmp ult i16 %315, -32767
  %322 = add nsw i32 %320, -32768
  %323 = select i1 %321, i32 %320, i32 %322
  %324 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), align 4
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %339

326:                                              ; preds = %310
  %327 = tail call ptr @llvm.thread.pointer() #12
  %328 = getelementptr inbounds %struct.thread_info, ptr %327, i32 0, i32 2
  %329 = load i32, ptr %328, align 8
  %330 = lshr i32 %329, 5
  %331 = getelementptr i32, ptr @__cpu_online_mask, i32 %330
  %332 = load volatile i32, ptr %331, align 4
  %333 = and i32 %329, 31
  %334 = shl nuw i32 1, %333
  %335 = and i32 %334, %332
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %326
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %338 = call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %18, i32 noundef 1, i32 noundef %311, i32 noundef %313, i32 noundef %323) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %339

339:                                              ; preds = %337, %326, %310
  %340 = call ptr @__ext4_iget(ptr noundef %18, i32 noundef %311, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_add_range, i32 noundef 1648) #12
  %341 = icmp ugt ptr %340, inttoptr (i32 -4096 to ptr)
  br i1 %341, label %462, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.inode, ptr %340, i32 0, i32 10
  %344 = load i32, ptr %343, align 4
  %345 = load ptr, ptr %19, align 4
  %346 = getelementptr inbounds %struct.ext4_sb_info, ptr %345, i32 0, i32 164, i32 10
  %347 = load i32, ptr %346, align 4
  %348 = icmp sgt i32 %347, 0
  %349 = getelementptr inbounds %struct.ext4_sb_info, ptr %345, i32 0, i32 164, i32 9
  %350 = load ptr, ptr %349, align 4
  br i1 %348, label %354, label %359

351:                                              ; preds = %354
  %352 = add nuw nsw i32 %355, 1
  %353 = icmp eq i32 %352, %347
  br i1 %353, label %359, label %354

354:                                              ; preds = %351, %342
  %355 = phi i32 [ %352, %351 ], [ 0, %342 ]
  %356 = getelementptr i32, ptr %350, i32 %355
  %357 = load i32, ptr %356, align 4
  %358 = icmp eq i32 %357, %344
  br i1 %358, label %377, label %351

359:                                              ; preds = %351, %342
  %360 = getelementptr inbounds %struct.ext4_sb_info, ptr %345, i32 0, i32 164, i32 11
  %361 = load i32, ptr %360, align 4
  %362 = icmp eq i32 %347, %361
  br i1 %362, label %363, label %372

363:                                              ; preds = %359
  %364 = shl i32 %347, 2
  %365 = add i32 %364, 16
  %366 = call noalias ptr @krealloc(ptr noundef %350, i32 noundef %365, i32 noundef 3264) #14
  store ptr %366, ptr %349, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %461, label %368

368:                                              ; preds = %363
  %369 = load i32, ptr %360, align 4
  %370 = add i32 %369, 4
  store i32 %370, ptr %360, align 4
  %371 = load i32, ptr %346, align 4
  br label %372

372:                                              ; preds = %368, %359
  %373 = phi i32 [ %371, %368 ], [ %347, %359 ]
  %374 = phi ptr [ %366, %368 ], [ %350, %359 ]
  %375 = add i32 %373, 1
  store i32 %375, ptr %346, align 4
  %376 = getelementptr i32, ptr %374, i32 %373
  store i32 %344, ptr %376, align 4
  br label %377

377:                                              ; preds = %372, %354
  %378 = icmp sgt i32 %323, 0
  br i1 %378, label %379, label %440

379:                                              ; preds = %377
  %380 = zext i16 %317 to i64
  %381 = shl nuw nsw i64 %380, 32
  %382 = zext i32 %319 to i64
  %383 = or i64 %381, %382
  %384 = zext i32 %313 to i64
  %385 = sub nsw i64 %383, %384
  %386 = icmp ugt i16 %315, -32768
  %387 = zext i1 %386 to i32
  %388 = getelementptr inbounds %struct.inode, ptr %340, i32 0, i32 8
  %389 = add i32 %323, %313
  %390 = getelementptr i8, ptr %340, i32 -24
  br label %391

391:                                              ; preds = %435, %379
  %392 = phi i32 [ %313, %379 ], [ %437, %435 ]
  %393 = phi i32 [ %323, %379 ], [ %438, %435 ]
  store i32 %392, ptr %227, align 8
  store i32 %393, ptr %228, align 4
  store i64 0, ptr %10, align 8
  %394 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %340, ptr noundef nonnull %10, i32 noundef 0) #12
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %461, label %396

396:                                              ; preds = %391
  %397 = icmp eq i32 %394, 0
  br i1 %397, label %398, label %420

398:                                              ; preds = %396
  %399 = call ptr @ext4_find_extent(ptr noundef %340, i32 noundef %392, ptr noundef null, i32 noundef 0) #12
  store ptr %399, ptr %11, align 4
  %400 = icmp ugt ptr %399, inttoptr (i32 -4096 to ptr)
  br i1 %400, label %461, label %401

401:                                              ; preds = %398
  store i32 %392, ptr %9, align 4
  %402 = zext i32 %392 to i64
  %403 = add nsw i64 %385, %402
  %404 = trunc i64 %403 to i32
  store i32 %404, ptr %229, align 4
  %405 = lshr i64 %403, 32
  %406 = trunc i64 %405 to i16
  store i16 %406, ptr %230, align 2
  %407 = load i32, ptr %228, align 4
  %408 = trunc i32 %407 to i16
  store i16 %408, ptr %231, align 4
  br i1 %321, label %415, label %409

409:                                              ; preds = %401
  %410 = and i16 %408, 32767
  %411 = icmp eq i16 %410, 0
  br i1 %411, label %412, label %413, !prof !20

412:                                              ; preds = %409
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #12, !srcloc !44
  unreachable

413:                                              ; preds = %409
  %414 = or i16 %408, -32768
  store i16 %414, ptr %231, align 4
  br label %415

415:                                              ; preds = %413, %401
  call void @down_write(ptr noundef %390) #12
  %416 = call i32 @ext4_ext_insert_extent(ptr noundef null, ptr noundef %340, ptr noundef nonnull %11, ptr noundef nonnull %9, i32 noundef 0) #12
  call void @up_write(ptr noundef %390) #12
  %417 = load ptr, ptr %11, align 4
  call void @ext4_ext_drop_refs(ptr noundef %417) #12
  %418 = load ptr, ptr %11, align 4
  call void @kfree(ptr noundef %418) #12
  %419 = icmp eq i32 %416, 0
  br i1 %419, label %435, label %461

420:                                              ; preds = %396
  %421 = zext i32 %392 to i64
  %422 = add nsw i64 %385, %421
  %423 = load i64, ptr %10, align 8
  %424 = icmp eq i64 %422, %423
  %425 = load i32, ptr %228, align 4
  %426 = call i32 @ext4_ext_replay_update_ex(ptr noundef %340, i32 noundef %392, i32 noundef %425, i32 noundef %387, i64 noundef %422) #12
  %427 = icmp eq i32 %426, 0
  br i1 %424, label %433, label %428

428:                                              ; preds = %420
  br i1 %427, label %429, label %461

429:                                              ; preds = %428
  %430 = load ptr, ptr %388, align 4
  %431 = load i64, ptr %10, align 8
  %432 = load i32, ptr %228, align 4
  call void @ext4_mb_mark_bb(ptr noundef %430, i64 noundef %431, i32 noundef %432, i32 noundef 0) #12
  br label %435

433:                                              ; preds = %420
  br i1 %427, label %434, label %461

434:                                              ; preds = %433
  call void @ext4_ext_replay_shrink_inode(ptr noundef %340, i32 noundef %389) #12
  br label %435

435:                                              ; preds = %434, %429, %415
  %436 = load i32, ptr %228, align 4
  %437 = add i32 %436, %392
  %438 = sub i32 %393, %436
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %391, label %440

440:                                              ; preds = %435, %377
  %441 = getelementptr inbounds %struct.inode, ptr %340, i32 0, i32 22
  %442 = getelementptr inbounds %struct.inode, ptr %340, i32 0, i32 13
  br label %443

443:                                              ; preds = %451, %440
  %444 = load volatile i32, ptr %441, align 4
  %445 = and i32 %444, 1
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %451, label %447

447:                                              ; preds = %447, %443
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !46
  %448 = load volatile i32, ptr %441, align 4
  %449 = and i32 %448, 1
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %447

451:                                              ; preds = %447, %443
  %452 = phi i32 [ %444, %443 ], [ %448, %447 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !47
  %453 = load i64, ptr %442, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !48
  %454 = load volatile i32, ptr %441, align 4
  %455 = icmp eq i32 %454, %452
  br i1 %455, label %456, label %443

456:                                              ; preds = %451
  %457 = load i8, ptr %222, align 4
  %458 = zext i8 %457 to i64
  %459 = ashr i64 %453, %458
  %460 = trunc i64 %459 to i32
  call void @ext4_ext_replay_shrink_inode(ptr noundef %340, i32 noundef %460) #12
  br label %461

461:                                              ; preds = %456, %433, %428, %415, %398, %391, %363
  call void @iput(ptr noundef %340) #12
  br label %462

462:                                              ; preds = %461, %339
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  br label %814

463:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #12
  store i32 0, ptr %223, align 4, !annotation !36
  %464 = load i32, ptr %244, align 1
  %465 = getelementptr i8, ptr %240, i32 8
  %466 = load i32, ptr %465, align 1
  store i32 %464, ptr %8, align 4
  store i32 %466, ptr %224, align 4
  %467 = getelementptr i8, ptr %240, i32 12
  store ptr %467, ptr %225, align 4
  %468 = add nsw i32 %243, -8
  store i32 %468, ptr %226, align 4
  %469 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), align 4
  %470 = icmp sgt i32 %469, 0
  br i1 %470, label %471, label %484

471:                                              ; preds = %463
  %472 = tail call ptr @llvm.thread.pointer() #12
  %473 = getelementptr inbounds %struct.thread_info, ptr %472, i32 0, i32 2
  %474 = load i32, ptr %473, align 8
  %475 = lshr i32 %474, 5
  %476 = getelementptr i32, ptr @__cpu_online_mask, i32 %475
  %477 = load volatile i32, ptr %476, align 4
  %478 = and i32 %474, 31
  %479 = shl nuw i32 1, %478
  %480 = and i32 %479, %477
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %484, label %482

482:                                              ; preds = %471
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %483 = call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %18, i32 noundef 3, i32 noundef %466, i32 noundef %464, i32 noundef %468) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %484

484:                                              ; preds = %482, %471, %463
  %485 = call i32 @ext4_mark_inode_used(ptr noundef %18, i32 noundef %466) #12
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %509

487:                                              ; preds = %484
  %488 = call ptr @__ext4_iget(ptr noundef %18, i32 noundef %466, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_create, i32 noundef 1550) #12
  %489 = icmp ugt ptr %488, inttoptr (i32 -4096 to ptr)
  br i1 %489, label %509, label %490

490:                                              ; preds = %487
  %491 = load i16, ptr %488, align 8
  %492 = and i16 %491, -4096
  %493 = icmp eq i16 %492, 16384
  br i1 %493, label %494, label %500

494:                                              ; preds = %490
  %495 = call ptr @__ext4_iget(ptr noundef %18, i32 noundef %464, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_create, i32 noundef 1563) #12
  %496 = icmp ugt ptr %495, inttoptr (i32 -4096 to ptr)
  br i1 %496, label %505, label %497

497:                                              ; preds = %494
  %498 = call i32 @ext4_init_new_dir(ptr noundef null, ptr noundef %495, ptr noundef %488) #12
  call void @iput(ptr noundef %495) #12
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %497, %490
  %501 = call fastcc i32 @ext4_fc_replay_link_internal(ptr noundef %18, ptr noundef nonnull %8, ptr noundef %488) #12
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %500
  call void @set_nlink(ptr noundef %488, i32 noundef 1) #12
  %504 = call i32 @__ext4_mark_inode_dirty(ptr noundef null, ptr noundef %488, ptr noundef nonnull @__func__.ext4_fc_replay_create, i32 noundef 1579) #12
  br label %505

505:                                              ; preds = %503, %500, %497, %494
  %506 = phi i32 [ %501, %500 ], [ 0, %503 ], [ 0, %494 ], [ 0, %497 ]
  %507 = icmp eq ptr %488, null
  br i1 %507, label %509, label %508

508:                                              ; preds = %505
  call void @iput(ptr noundef nonnull %488) #12
  br label %509

509:                                              ; preds = %508, %505, %487, %484
  %510 = phi i32 [ %506, %508 ], [ %506, %505 ], [ -22, %487 ], [ %485, %484 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #12
  br label %811

511:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #12, !annotation !36
  %512 = load i32, ptr %244, align 1
  %513 = getelementptr i8, ptr %240, i32 8
  %514 = load i32, ptr %513, align 1
  %515 = getelementptr i8, ptr %240, i32 12
  %516 = load i32, ptr %515, align 1
  %517 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), align 4
  %518 = icmp sgt i32 %517, 0
  br i1 %518, label %519, label %532

519:                                              ; preds = %511
  %520 = tail call ptr @llvm.thread.pointer() #12
  %521 = getelementptr inbounds %struct.thread_info, ptr %520, i32 0, i32 2
  %522 = load i32, ptr %521, align 8
  %523 = lshr i32 %522, 5
  %524 = getelementptr i32, ptr @__cpu_online_mask, i32 %523
  %525 = load volatile i32, ptr %524, align 4
  %526 = and i32 %522, 31
  %527 = shl nuw i32 1, %526
  %528 = and i32 %527, %525
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %532, label %530

530:                                              ; preds = %519
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %531 = call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %18, i32 noundef 2, i32 noundef %512, i32 noundef %514, i32 noundef %516) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %532

532:                                              ; preds = %530, %519, %511
  %533 = call ptr @__ext4_iget(ptr noundef %18, i32 noundef %512, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_del_range, i32 noundef 1766) #12
  %534 = icmp ugt ptr %533, inttoptr (i32 -4096 to ptr)
  br i1 %534, label %621, label %535

535:                                              ; preds = %532
  %536 = getelementptr inbounds %struct.inode, ptr %533, i32 0, i32 10
  %537 = load i32, ptr %536, align 4
  %538 = load ptr, ptr %19, align 4
  %539 = getelementptr inbounds %struct.ext4_sb_info, ptr %538, i32 0, i32 164, i32 10
  %540 = load i32, ptr %539, align 4
  %541 = icmp sgt i32 %540, 0
  %542 = getelementptr inbounds %struct.ext4_sb_info, ptr %538, i32 0, i32 164, i32 9
  %543 = load ptr, ptr %542, align 4
  br i1 %541, label %547, label %552

544:                                              ; preds = %547
  %545 = add nuw nsw i32 %548, 1
  %546 = icmp eq i32 %545, %540
  br i1 %546, label %552, label %547

547:                                              ; preds = %544, %535
  %548 = phi i32 [ %545, %544 ], [ 0, %535 ]
  %549 = getelementptr i32, ptr %543, i32 %548
  %550 = load i32, ptr %549, align 4
  %551 = icmp eq i32 %550, %537
  br i1 %551, label %570, label %544

552:                                              ; preds = %544, %535
  %553 = getelementptr inbounds %struct.ext4_sb_info, ptr %538, i32 0, i32 164, i32 11
  %554 = load i32, ptr %553, align 4
  %555 = icmp eq i32 %540, %554
  br i1 %555, label %556, label %565

556:                                              ; preds = %552
  %557 = shl i32 %540, 2
  %558 = add i32 %557, 16
  %559 = call noalias ptr @krealloc(ptr noundef %543, i32 noundef %558, i32 noundef 3264) #14
  store ptr %559, ptr %542, align 4
  %560 = icmp eq ptr %559, null
  br i1 %560, label %620, label %561

561:                                              ; preds = %556
  %562 = load i32, ptr %553, align 4
  %563 = add i32 %562, 4
  store i32 %563, ptr %553, align 4
  %564 = load i32, ptr %539, align 4
  br label %565

565:                                              ; preds = %561, %552
  %566 = phi i32 [ %564, %561 ], [ %540, %552 ]
  %567 = phi ptr [ %559, %561 ], [ %543, %552 ]
  %568 = add i32 %566, 1
  store i32 %568, ptr %539, align 4
  %569 = getelementptr i32, ptr %567, i32 %566
  store i32 %537, ptr %569, align 4
  br label %570

570:                                              ; preds = %565, %547
  %571 = icmp eq i32 %516, 0
  br i1 %571, label %592, label %572

572:                                              ; preds = %570
  %573 = getelementptr inbounds %struct.inode, ptr %533, i32 0, i32 8
  br label %574

574:                                              ; preds = %587, %572
  %575 = phi i32 [ %514, %572 ], [ %589, %587 ]
  %576 = phi i32 [ %516, %572 ], [ %590, %587 ]
  store i32 %575, ptr %220, align 8
  store i32 %576, ptr %221, align 4
  %577 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %533, ptr noundef nonnull %7, i32 noundef 0) #12
  %578 = icmp slt i32 %577, 0
  br i1 %578, label %620, label %579

579:                                              ; preds = %574
  %580 = icmp eq i32 %577, 0
  br i1 %580, label %585, label %581

581:                                              ; preds = %579
  %582 = load ptr, ptr %573, align 4
  %583 = load i64, ptr %7, align 8
  %584 = load i32, ptr %221, align 4
  call void @ext4_mb_mark_bb(ptr noundef %582, i64 noundef %583, i32 noundef %584, i32 noundef 0) #12
  br label %587

585:                                              ; preds = %579
  %586 = load i32, ptr %221, align 4
  br label %587

587:                                              ; preds = %585, %581
  %588 = phi i32 [ %577, %581 ], [ %586, %585 ]
  %589 = add i32 %588, %575
  %590 = sub i32 %576, %588
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %574

592:                                              ; preds = %587, %570
  %593 = getelementptr i8, ptr %533, i32 -24
  call void @down_write(ptr noundef %593) #12
  %594 = add i32 %514, -1
  %595 = add i32 %594, %516
  %596 = call i32 @ext4_ext_remove_space(ptr noundef %533, i32 noundef %514, i32 noundef %595) #12
  call void @up_write(ptr noundef %593) #12
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %620

598:                                              ; preds = %592
  %599 = getelementptr inbounds %struct.inode, ptr %533, i32 0, i32 22
  %600 = getelementptr inbounds %struct.inode, ptr %533, i32 0, i32 13
  br label %601

601:                                              ; preds = %609, %598
  %602 = load volatile i32, ptr %599, align 4
  %603 = and i32 %602, 1
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %609, label %605

605:                                              ; preds = %605, %601
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !46
  %606 = load volatile i32, ptr %599, align 4
  %607 = and i32 %606, 1
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %605

609:                                              ; preds = %605, %601
  %610 = phi i32 [ %602, %601 ], [ %606, %605 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !47
  %611 = load i64, ptr %600, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !48
  %612 = load volatile i32, ptr %599, align 4
  %613 = icmp eq i32 %612, %610
  br i1 %613, label %614, label %601

614:                                              ; preds = %609
  %615 = load i8, ptr %222, align 4
  %616 = zext i8 %615 to i64
  %617 = ashr i64 %611, %616
  %618 = trunc i64 %617 to i32
  call void @ext4_ext_replay_shrink_inode(ptr noundef %533, i32 noundef %618) #12
  %619 = call i32 @__ext4_mark_inode_dirty(ptr noundef null, ptr noundef %533, ptr noundef nonnull @__func__.ext4_fc_replay_del_range, i32 noundef 1805) #12
  br label %620

620:                                              ; preds = %614, %592, %574, %556
  call void @iput(ptr noundef %533) #12
  br label %621

621:                                              ; preds = %620, %532
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  br label %814

622:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false) #12, !annotation !36
  %623 = and i32 %242, 65535
  %624 = load i32, ptr %244, align 1
  %625 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), align 4
  %626 = icmp sgt i32 %625, 0
  br i1 %626, label %627, label %640

627:                                              ; preds = %622
  %628 = tail call ptr @llvm.thread.pointer() #12
  %629 = getelementptr inbounds %struct.thread_info, ptr %628, i32 0, i32 2
  %630 = load i32, ptr %629, align 8
  %631 = lshr i32 %630, 5
  %632 = getelementptr i32, ptr @__cpu_online_mask, i32 %631
  %633 = load volatile i32, ptr %632, align 4
  %634 = and i32 %630, 31
  %635 = shl nuw i32 1, %634
  %636 = and i32 %635, %633
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %640, label %638

638:                                              ; preds = %627
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %639 = call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %18, i32 noundef %623, i32 noundef %624, i32 noundef 0, i32 noundef 0) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %640

640:                                              ; preds = %638, %627, %622
  %641 = call ptr @__ext4_iget(ptr noundef %18, i32 noundef %624, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_inode, i32 noundef 1446) #12
  %642 = icmp ugt ptr %641, inttoptr (i32 -4096 to ptr)
  br i1 %642, label %645, label %643

643:                                              ; preds = %640
  %644 = call i32 @ext4_ext_clear_bb(ptr noundef %641) #12
  call void @iput(ptr noundef %641) #12
  br label %645

645:                                              ; preds = %643, %640
  %646 = load ptr, ptr %19, align 4
  %647 = getelementptr inbounds %struct.ext4_sb_info, ptr %646, i32 0, i32 164, i32 10
  %648 = load i32, ptr %647, align 4
  %649 = icmp sgt i32 %648, 0
  %650 = getelementptr inbounds %struct.ext4_sb_info, ptr %646, i32 0, i32 164, i32 9
  %651 = load ptr, ptr %650, align 4
  br i1 %649, label %655, label %660

652:                                              ; preds = %655
  %653 = add nuw nsw i32 %656, 1
  %654 = icmp eq i32 %653, %648
  br i1 %654, label %660, label %655

655:                                              ; preds = %652, %645
  %656 = phi i32 [ %653, %652 ], [ 0, %645 ]
  %657 = getelementptr i32, ptr %651, i32 %656
  %658 = load i32, ptr %657, align 4
  %659 = icmp eq i32 %658, %624
  br i1 %659, label %678, label %652

660:                                              ; preds = %652, %645
  %661 = getelementptr inbounds %struct.ext4_sb_info, ptr %646, i32 0, i32 164, i32 11
  %662 = load i32, ptr %661, align 4
  %663 = icmp eq i32 %648, %662
  br i1 %663, label %664, label %673

664:                                              ; preds = %660
  %665 = shl i32 %648, 2
  %666 = add i32 %665, 16
  %667 = call noalias ptr @krealloc(ptr noundef %651, i32 noundef %666, i32 noundef 3264) #14
  store ptr %667, ptr %650, align 4
  %668 = icmp eq ptr %667, null
  br i1 %668, label %750, label %669

669:                                              ; preds = %664
  %670 = load i32, ptr %661, align 4
  %671 = add i32 %670, 4
  store i32 %671, ptr %661, align 4
  %672 = load i32, ptr %647, align 4
  br label %673

673:                                              ; preds = %669, %660
  %674 = phi i32 [ %672, %669 ], [ %648, %660 ]
  %675 = phi ptr [ %667, %669 ], [ %651, %660 ]
  %676 = add i32 %674, 1
  store i32 %676, ptr %647, align 4
  %677 = getelementptr i32, ptr %675, i32 %674
  store i32 %624, ptr %677, align 4
  br label %678

678:                                              ; preds = %673, %655
  %679 = call i32 @ext4_get_fc_inode_loc(ptr noundef %18, i32 noundef %624, ptr noundef nonnull %6) #12
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %750

681:                                              ; preds = %678
  %682 = getelementptr i8, ptr %240, i32 8
  %683 = load ptr, ptr %6, align 4
  %684 = getelementptr inbounds %struct.buffer_head, ptr %683, i32 0, i32 5
  %685 = load ptr, ptr %684, align 4
  %686 = load i32, ptr %218, align 4
  %687 = getelementptr i8, ptr %685, i32 %686
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %687, ptr noundef align 4 dereferenceable(40) %682, i32 40, i1 false) #12
  %688 = getelementptr inbounds %struct.ext4_inode, ptr %687, i32 0, i32 13
  %689 = getelementptr i8, ptr %240, i32 108
  %690 = add nsw i32 %243, -104
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %688, ptr align 4 %689, i32 %690, i1 false) #12
  %691 = getelementptr inbounds %struct.ext4_inode, ptr %687, i32 0, i32 10
  %692 = load i32, ptr %691, align 4
  %693 = and i32 %692, 524288
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %701, label %695

695:                                              ; preds = %681
  %696 = getelementptr inbounds %struct.ext4_inode, ptr %687, i32 0, i32 12
  %697 = load i16, ptr %696, align 4
  %698 = icmp eq i16 %697, -3318
  br i1 %698, label %707, label %699

699:                                              ; preds = %695
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %696, i8 0, i32 12, i1 false) #12
  store i16 -3318, ptr %696, align 4
  %700 = getelementptr inbounds %struct.ext4_inode, ptr %687, i32 0, i32 12, i32 1
  store i16 4, ptr %700, align 4
  br label %707

701:                                              ; preds = %681
  %702 = and i32 %692, 268435456
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %707, label %704

704:                                              ; preds = %701
  %705 = getelementptr inbounds %struct.ext4_inode, ptr %687, i32 0, i32 12
  %706 = getelementptr i8, ptr %240, i32 48
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %705, ptr noundef align 4 dereferenceable(60) %706, i32 60, i1 false) #12
  br label %707

707:                                              ; preds = %704, %701, %699, %695
  %708 = load ptr, ptr %6, align 4
  %709 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_fc_replay_inode, i32 noundef 1485, ptr noundef null, ptr noundef null, ptr noundef %708) #12
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %750

711:                                              ; preds = %707
  %712 = load ptr, ptr %6, align 4
  %713 = call i32 @sync_dirty_buffer(ptr noundef %712) #12
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %750

715:                                              ; preds = %711
  %716 = call i32 @ext4_mark_inode_used(ptr noundef %18, i32 noundef %624) #12
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %718, label %750

718:                                              ; preds = %715
  %719 = call ptr @__ext4_iget(ptr noundef %18, i32 noundef %624, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_inode, i32 noundef 1496) #12
  %720 = icmp ugt ptr %719, inttoptr (i32 -4096 to ptr)
  br i1 %720, label %756, label %721

721:                                              ; preds = %718
  %722 = getelementptr i8, ptr %719, i32 -124
  %723 = load volatile i32, ptr %722, align 4
  %724 = and i32 %723, 268435456
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %726, label %728

726:                                              ; preds = %721
  %727 = call i32 @ext4_ext_replay_set_iblocks(ptr noundef %719) #12
  br label %728

728:                                              ; preds = %726, %721
  %729 = load ptr, ptr %6, align 4
  %730 = getelementptr inbounds %struct.buffer_head, ptr %729, i32 0, i32 5
  %731 = load ptr, ptr %730, align 4
  %732 = load i32, ptr %218, align 4
  %733 = getelementptr i8, ptr %731, i32 %732
  %734 = getelementptr inbounds %struct.ext4_inode, ptr %733, i32 0, i32 13
  %735 = load i32, ptr %734, align 4
  %736 = getelementptr inbounds %struct.inode, ptr %719, i32 0, i32 44
  store i32 %735, ptr %736, align 8
  call void @ext4_reset_inode_seed(ptr noundef %719) #12
  %737 = load ptr, ptr %6, align 4
  %738 = getelementptr inbounds %struct.buffer_head, ptr %737, i32 0, i32 5
  %739 = load ptr, ptr %738, align 4
  %740 = load i32, ptr %218, align 4
  %741 = getelementptr i8, ptr %739, i32 %740
  %742 = getelementptr i8, ptr %719, i32 -208
  call void @ext4_inode_csum_set(ptr noundef %719, ptr noundef %741, ptr noundef %742) #12
  %743 = load ptr, ptr %6, align 4
  %744 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_fc_replay_inode, i32 noundef 1514, ptr noundef null, ptr noundef null, ptr noundef %743) #12
  %745 = load ptr, ptr %6, align 4
  %746 = call i32 @sync_dirty_buffer(ptr noundef %745) #12
  %747 = load ptr, ptr %6, align 4
  %748 = icmp eq ptr %747, null
  br i1 %748, label %751, label %749

749:                                              ; preds = %728
  call void @__brelse(ptr noundef nonnull %747) #12
  br label %751

750:                                              ; preds = %715, %711, %707, %678, %664
  call void @iput(ptr noundef null) #12
  br label %756

751:                                              ; preds = %749, %728
  call void @iput(ptr noundef %719) #12
  %752 = icmp eq i32 %744, 0
  br i1 %752, label %753, label %756

753:                                              ; preds = %751
  %754 = load ptr, ptr %219, align 4
  %755 = call i32 @blkdev_issue_flush(ptr noundef %754) #12
  br label %756

756:                                              ; preds = %753, %751, %750, %718
  %757 = phi i32 [ -117, %718 ], [ 0, %753 ], [ 0, %751 ], [ 0, %750 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  br label %811

758:                                              ; preds = %239
  %759 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), align 4
  %760 = icmp sgt i32 %759, 0
  br i1 %760, label %761, label %814

761:                                              ; preds = %758
  %762 = tail call ptr @llvm.thread.pointer() #12
  %763 = getelementptr inbounds %struct.thread_info, ptr %762, i32 0, i32 2
  %764 = load i32, ptr %763, align 8
  %765 = lshr i32 %764, 5
  %766 = getelementptr i32, ptr @__cpu_online_mask, i32 %765
  %767 = load volatile i32, ptr %766, align 4
  %768 = and i32 %764, 31
  %769 = shl nuw i32 1, %768
  %770 = and i32 %769, %767
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %814, label %772

772:                                              ; preds = %761
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %773 = call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %18, i32 noundef 7, i32 noundef 0, i32 noundef %243, i32 noundef 0) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %814

774:                                              ; preds = %239
  %775 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), align 4
  %776 = icmp sgt i32 %775, 0
  br i1 %776, label %777, label %790

777:                                              ; preds = %774
  %778 = tail call ptr @llvm.thread.pointer() #12
  %779 = getelementptr inbounds %struct.thread_info, ptr %778, i32 0, i32 2
  %780 = load i32, ptr %779, align 8
  %781 = lshr i32 %780, 5
  %782 = getelementptr i32, ptr @__cpu_online_mask, i32 %781
  %783 = load volatile i32, ptr %782, align 4
  %784 = and i32 %780, 31
  %785 = shl nuw i32 1, %784
  %786 = and i32 %785, %783
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %790, label %788

788:                                              ; preds = %777
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %789 = call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %18, i32 noundef 8, i32 noundef 0, i32 noundef %243, i32 noundef 0) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %790

790:                                              ; preds = %788, %777, %774
  %791 = load i32, ptr %244, align 1
  %792 = icmp eq i32 %791, %4
  br i1 %792, label %814, label %793, !prof !37

793:                                              ; preds = %790
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2103, i32 noundef 9, ptr noundef null) #12
  br label %814

794:                                              ; preds = %239
  %795 = and i32 %242, 65535
  %796 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_replay, i32 0, i32 1), align 4
  %797 = icmp sgt i32 %796, 0
  br i1 %797, label %798, label %820

798:                                              ; preds = %794
  %799 = tail call ptr @llvm.thread.pointer() #12
  %800 = getelementptr inbounds %struct.thread_info, ptr %799, i32 0, i32 2
  %801 = load i32, ptr %800, align 8
  %802 = lshr i32 %801, 5
  %803 = getelementptr i32, ptr @__cpu_online_mask, i32 %802
  %804 = load volatile i32, ptr %803, align 4
  %805 = and i32 %801, 31
  %806 = shl nuw i32 1, %805
  %807 = and i32 %806, %804
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %820, label %809

809:                                              ; preds = %798
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %810 = call i32 @__traceiter_ext4_fc_replay(ptr noundef null, ptr noundef %18, i32 noundef %795, i32 noundef 0, i32 noundef %243, i32 noundef 0) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  br label %820

811:                                              ; preds = %756, %509, %308, %273
  %812 = phi i32 [ %757, %756 ], [ %510, %509 ], [ %309, %308 ], [ %274, %273 ]
  %813 = icmp slt i32 %812, 0
  br i1 %813, label %820, label %814

814:                                              ; preds = %811, %793, %790, %772, %761, %758, %621, %462, %239
  %815 = getelementptr i8, ptr %244, i32 %243
  %816 = icmp ult ptr %815, %215
  br i1 %816, label %817, label %820

817:                                              ; preds = %814
  %818 = load i32, ptr %21, align 4
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %238, label %239

820:                                              ; preds = %814, %811, %809, %798, %794, %238, %209, %208, %196, %185, %181, %38
  %821 = phi i32 [ 0, %208 ], [ 0, %238 ], [ 0, %38 ], [ %182, %181 ], [ %182, %185 ], [ %182, %196 ], [ -125, %794 ], [ -125, %798 ], [ -125, %809 ], [ 1, %209 ], [ %812, %811 ], [ 1, %814 ]
  ret i32 %821
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_fc_cleanup(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 69
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 161
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store ptr null, ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %9, %3
  %15 = tail call i32 @jbd2_fc_release_bufs(ptr noundef %0) #12
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 160
  tail call void @_raw_spin_lock(ptr noundef %16) #12
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 157
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %24

20:                                               ; preds = %37, %14
  %21 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 158
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %60, label %39

24:                                               ; preds = %37, %14
  %25 = phi ptr [ %26, %37 ], [ %18, %14 ]
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %26, ptr %28, align 4
  store volatile ptr %25, ptr %25, align 4
  store ptr %25, ptr %27, align 4
  %30 = getelementptr i8, ptr %25, i32 -40
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %30) #12
  %31 = getelementptr i8, ptr %25, i32 608
  %32 = load i32, ptr %31, align 8
  %33 = icmp ugt i32 %32, %2
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = getelementptr i8, ptr %25, i32 8
  store i32 0, ptr %35, align 8
  %36 = getelementptr i8, ptr %25, i32 12
  store i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !49
  tail call void @wake_up_bit(ptr noundef %30, i32 noundef 11) #12
  %38 = icmp eq ptr %26, %17
  br i1 %38, label %20, label %24

39:                                               ; preds = %56, %20
  %40 = phi ptr [ %58, %56 ], [ %22, %20 ]
  %41 = getelementptr i8, ptr %40, i32 -68
  %42 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %40, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store volatile ptr %40, ptr %40, align 4
  store ptr %40, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %46 = load i16, ptr %16, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %48 = getelementptr i8, ptr %40, i32 -44
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %39
  %52 = getelementptr i8, ptr %40, i32 -48
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 36
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void @kfree(ptr noundef nonnull %49) #12
  br label %56

56:                                               ; preds = %55, %51, %39
  %57 = load ptr, ptr @ext4_fc_dentry_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef %41) #12
  tail call void @_raw_spin_lock(ptr noundef %16) #12
  %58 = load volatile ptr, ptr %21, align 4
  %59 = icmp eq ptr %58, %21
  br i1 %59, label %60, label %39

60:                                               ; preds = %56, %20
  %61 = getelementptr %struct.ext4_sb_info, ptr %7, i32 0, i32 158, i32 1
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.ext4_sb_info, ptr %7, i32 0, i32 158, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %21, ptr %67, align 4
  store ptr %62, ptr %21, align 4
  store ptr %21, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 158, i32 0, i32 1
  store ptr %66, ptr %68, align 4
  store volatile ptr %61, ptr %61, align 4
  store ptr %61, ptr %65, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = getelementptr %struct.ext4_sb_info, ptr %7, i32 0, i32 157, i32 1
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %17, align 4
  %75 = getelementptr %struct.ext4_sb_info, ptr %7, i32 0, i32 157, i32 1, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %17, ptr %77, align 4
  store ptr %71, ptr %17, align 4
  store ptr %74, ptr %76, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  store volatile ptr %70, ptr %70, align 4
  store ptr %70, ptr %75, align 4
  br label %79

79:                                               ; preds = %73, %69
  %80 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 163
  %81 = load i32, ptr %80, align 8
  %82 = icmp ugt i32 %81, %2
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  store i32 0, ptr %80, align 8
  %84 = load ptr, ptr %6, align 4
  %85 = getelementptr inbounds %struct.ext4_sb_info, ptr %84, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %85) #12
  br label %86

86:                                               ; preds = %83, %79
  br i1 %8, label %89, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 159
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %87, %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %90 = load i16, ptr %16, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_fc_stats, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = tail call ptr @llvm.thread.pointer() #12
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 5
  %99 = getelementptr i32, ptr @__cpu_online_mask, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %97, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  %106 = tail call i32 @__traceiter_ext4_fc_stats(ptr noundef null, ptr noundef %5) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  br label %107

107:                                              ; preds = %105, %94, %89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_fc_info_show(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %43

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 162
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 6
  %17 = load i64, ptr %16, align 8
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %17, i32 0) #15, !srcloc !52
  %19 = extractvalue { i64, i32 } %18, 0
  %20 = extractvalue { i64, i32 } %18, 1
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %17, i64 %19, i32 %20) #15, !srcloc !53
  %22 = extractvalue { i64, i32 } %21, 0
  %23 = lshr i64 %22, 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %11, i32 noundef %13, i32 noundef %15, i64 noundef %23) #12
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  %24 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %24) #12
  %25 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef %26) #12
  %27 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %28) #12
  %29 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef %30) #12
  %31 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %32) #12
  %33 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef %34) #12
  %35 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13, i32 noundef %36) #12
  %37 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %38) #12
  %39 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %40) #12
  %41 = getelementptr %struct.ext4_sb_info, ptr %8, i32 0, i32 162, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %42) #12
  br label %43

43:                                               ; preds = %4, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ext4_fc_init_dentry_cache() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 80, i32 noundef 8, i32 noundef 131072, ptr noundef null) #12
  store ptr %1, ptr @ext4_fc_dentry_cachep, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_fc_destroy_dentry_cache() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ext4_fc_dentry_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_bit_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bit_waitqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_unlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_link(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_track_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_commit_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_commit_stop(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ext4_fc_add_tlv(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.anon.78, align 8
  %7 = alloca %struct.anon.78, align 8
  %8 = alloca %struct.ext4_fc_tl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %9 = zext i16 %2 to i32
  %10 = add nuw nsw i32 %9, 4
  %11 = tail call fastcc ptr @ext4_fc_reserve_space(ptr noundef %0, i32 noundef %10, ptr noundef %4)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %5
  store i16 %1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.ext4_fc_tl, ptr %8, i32 0, i32 1
  store i16 %2, ptr %14, align 2
  %15 = icmp eq ptr %4, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, ptr %8, align 4
  store i32 %17, ptr %11, align 1
  br label %49

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #12, !annotation !36
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 119
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %23, align 64
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %27, label %26, !prof !37

26:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

27:                                               ; preds = %18
  store ptr %23, ptr %7, align 8
  %28 = getelementptr inbounds %struct.anon.78, ptr %7, i32 0, i32 1
  store i32 %21, ptr %28, align 8
  %29 = call i32 @crypto_shash_update(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 4) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !37

31:                                               ; preds = %27
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

32:                                               ; preds = %27
  %33 = load i32, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  store i32 %33, ptr %4, align 4
  %34 = load i32, ptr %8, align 4
  store i32 %34, ptr %11, align 1
  %35 = load ptr, ptr %19, align 4
  %36 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #12, !annotation !36
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %35, i32 0, i32 119
  %38 = load ptr, ptr %37, align 8
  %39 = load i32, ptr %38, align 64
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %42, label %41, !prof !37

41:                                               ; preds = %32
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

42:                                               ; preds = %32
  store ptr %38, ptr %6, align 8
  %43 = getelementptr inbounds %struct.anon.78, ptr %6, i32 0, i32 1
  store i32 %36, ptr %43, align 8
  %44 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %9) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !37

46:                                               ; preds = %42
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

47:                                               ; preds = %42
  %48 = load i32, ptr %43, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  store i32 %48, ptr %4, align 4
  br label %49

49:                                               ; preds = %47, %16
  %50 = getelementptr i8, ptr %11, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %50, ptr align 1 %3, i32 %9, i1 false) #12
  br label %51

51:                                               ; preds = %49, %5
  %52 = xor i1 %12, true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret i1 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_fc_write_inode_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ext4_map_blocks, align 8
  %4 = alloca %struct.ext4_fc_add_range, align 4
  %5 = alloca %struct.ext4_fc_del_range, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !36
  %6 = getelementptr i8, ptr %0, i32 -56
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr i8, ptr %0, i32 -76
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %76

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 -80
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %8, -1
  %15 = add i32 %14, %13
  store i32 0, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %6) #12
  %16 = icmp ult i32 %15, %13
  br i1 %16, label %76, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ext4_map_blocks, ptr %3, i32 0, i32 1
  %19 = add i32 %8, %13
  %20 = getelementptr inbounds %struct.ext4_map_blocks, ptr %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.ext4_map_blocks, ptr %3, i32 0, i32 3
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %23 = getelementptr inbounds %struct.ext4_fc_add_range, ptr %4, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ext4_fc_add_range, ptr %4, i32 0, i32 1, i32 4
  %25 = getelementptr inbounds %struct.ext4_fc_add_range, ptr %4, i32 0, i32 1, i32 8
  %26 = getelementptr inbounds %struct.ext4_fc_add_range, ptr %4, i32 0, i32 1, i32 6
  %27 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %28 = getelementptr inbounds %struct.ext4_fc_del_range, ptr %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.ext4_fc_del_range, ptr %5, i32 0, i32 2
  br label %30

30:                                               ; preds = %40, %17
  %31 = phi i32 [ %13, %17 ], [ %41, %40 ]
  store i32 %31, ptr %18, align 8
  %32 = sub i32 %19, %31
  store i32 %32, ptr %20, align 4
  %33 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #12
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %20, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = add i32 %31, 1
  br label %40

40:                                               ; preds = %73, %38
  %41 = phi i32 [ %39, %38 ], [ %75, %73 ]
  %42 = icmp ult i32 %15, %41
  br i1 %42, label %76, label %30

43:                                               ; preds = %35
  %44 = icmp eq i32 %33, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load i32, ptr %22, align 4
  store i32 %46, ptr %5, align 4
  %47 = load i32, ptr %18, align 8
  store i32 %47, ptr %28, align 4
  store i32 %36, ptr %29, align 4
  %48 = load ptr, ptr %27, align 4
  %49 = call fastcc zeroext i1 @ext4_fc_add_tlv(ptr noundef %48, i16 noundef zeroext 2, i16 noundef zeroext 12, ptr noundef nonnull %5, ptr noundef %1)
  br i1 %49, label %73, label %76

50:                                               ; preds = %43
  %51 = load i32, ptr %21, align 8
  %52 = and i32 %51, 2048
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 32768, i32 32767
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 %36)
  store i32 %55, ptr %20, align 4
  %56 = load i32, ptr %22, align 4
  store i32 %56, ptr %4, align 4
  %57 = load i32, ptr %18, align 8
  store i32 %57, ptr %23, align 4
  %58 = trunc i32 %55 to i16
  store i16 %58, ptr %24, align 4
  %59 = load i64, ptr %3, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, ptr %25, align 4
  %61 = lshr i64 %59, 32
  %62 = trunc i64 %61 to i16
  store i16 %62, ptr %26, align 2
  br i1 %53, label %69, label %63

63:                                               ; preds = %50
  %64 = and i16 %58, 32767
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %67, !prof !20

66:                                               ; preds = %63
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4_extents.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #12, !srcloc !44
  unreachable

67:                                               ; preds = %63
  %68 = or i16 %58, -32768
  br label %69

69:                                               ; preds = %67, %50
  %70 = phi i16 [ %68, %67 ], [ %58, %50 ]
  store i16 %70, ptr %24, align 4
  %71 = load ptr, ptr %27, align 4
  %72 = call fastcc zeroext i1 @ext4_fc_add_tlv(ptr noundef %71, i16 noundef zeroext 1, i16 noundef zeroext 16, ptr noundef nonnull %4, ptr noundef %1)
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %45
  %74 = load i32, ptr %20, align 4
  %75 = add i32 %74, %31
  br label %40

76:                                               ; preds = %69, %45, %40, %30, %11, %10
  %77 = phi i32 [ 0, %10 ], [ 0, %11 ], [ -28, %69 ], [ -125, %30 ], [ -28, %45 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_fc_write_inode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.anon.78, align 8
  %4 = alloca %struct.anon.78, align 8
  %5 = alloca %struct.anon.78, align 8
  %6 = alloca %struct.ext4_iloc, align 4
  %7 = alloca %struct.ext4_fc_inode, align 4
  %8 = alloca %struct.ext4_fc_tl, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 6, ptr %8, align 4, !annotation !36
  %9 = call i32 @ext4_get_inode_loc(ptr noundef %0, ptr noundef nonnull %6) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %119

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 -124
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 29
  %21 = load i32, ptr %20, align 4
  br i1 %15, label %22, label %29

22:                                               ; preds = %11
  %23 = icmp sgt i32 %21, 128
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = getelementptr i8, ptr %0, i32 476
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = add nuw nsw i32 %27, 128
  br label %29

29:                                               ; preds = %24, %22, %11
  %30 = phi i32 [ %28, %24 ], [ 128, %22 ], [ %21, %11 ]
  %31 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %7, align 4
  %33 = trunc i32 %30 to i16
  %34 = add i16 %33, 4
  %35 = getelementptr inbounds %struct.ext4_fc_tl, ptr %8, i32 0, i32 1
  store i16 %34, ptr %35, align 2
  %36 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %37 = add i32 %30, 8
  %38 = call fastcc ptr @ext4_fc_reserve_space(ptr noundef %17, i32 noundef %37, ptr noundef %1)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %119, label %40

40:                                               ; preds = %29
  %41 = icmp eq ptr %1, null
  br i1 %41, label %74, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %36, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 27
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #12, !annotation !36
  %47 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 119
  %48 = load ptr, ptr %47, align 8
  %49 = load i32, ptr %48, align 64
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %52, label %51, !prof !37

51:                                               ; preds = %42
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

52:                                               ; preds = %42
  store ptr %48, ptr %5, align 8
  %53 = getelementptr inbounds %struct.anon.78, ptr %5, i32 0, i32 1
  store i32 %46, ptr %53, align 8
  %54 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef 4) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56, !prof !37

56:                                               ; preds = %52
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

57:                                               ; preds = %52
  %58 = load i32, ptr %53, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  store i32 %58, ptr %1, align 4
  %59 = load i32, ptr %8, align 4
  store i32 %59, ptr %38, align 1
  %60 = load ptr, ptr %36, align 4
  %61 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 27
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #12, !annotation !36
  %64 = getelementptr inbounds %struct.ext4_sb_info, ptr %62, i32 0, i32 119
  %65 = load ptr, ptr %64, align 8
  %66 = load i32, ptr %65, align 64
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %69, label %68, !prof !37

68:                                               ; preds = %57
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

69:                                               ; preds = %57
  store ptr %65, ptr %4, align 8
  %70 = getelementptr inbounds %struct.anon.78, ptr %4, i32 0, i32 1
  store i32 %63, ptr %70, align 8
  %71 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef 4) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73, !prof !37

73:                                               ; preds = %69
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

74:                                               ; preds = %40
  %75 = load i32, ptr %8, align 4
  store i32 %75, ptr %38, align 1
  %76 = getelementptr i8, ptr %38, i32 4
  %77 = load i32, ptr %7, align 4
  store i32 %77, ptr %76, align 1
  %78 = icmp eq ptr %76, null
  br i1 %78, label %119, label %84

79:                                               ; preds = %69
  %80 = load i32, ptr %70, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  store i32 %80, ptr %1, align 4
  %81 = getelementptr i8, ptr %38, i32 4
  %82 = load i32, ptr %7, align 4
  store i32 %82, ptr %81, align 1
  %83 = icmp eq ptr %81, null
  br i1 %83, label %119, label %91

84:                                               ; preds = %74
  %85 = load ptr, ptr %6, align 4
  %86 = getelementptr inbounds %struct.buffer_head, ptr %85, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ext4_iloc, ptr %6, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr i8, ptr %87, i32 %89
  br label %114

91:                                               ; preds = %79
  %92 = load ptr, ptr %6, align 4
  %93 = getelementptr inbounds %struct.buffer_head, ptr %92, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.ext4_iloc, ptr %6, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr i8, ptr %94, i32 %96
  %98 = load ptr, ptr %36, align 4
  %99 = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 27
  %100 = load ptr, ptr %99, align 4
  %101 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #12, !annotation !36
  %102 = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 119
  %103 = load ptr, ptr %102, align 8
  %104 = load i32, ptr %103, align 64
  %105 = icmp eq i32 %104, 4
  br i1 %105, label %107, label %106, !prof !37

106:                                              ; preds = %91
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

107:                                              ; preds = %91
  store ptr %103, ptr %3, align 8
  %108 = getelementptr inbounds %struct.anon.78, ptr %3, i32 0, i32 1
  store i32 %101, ptr %108, align 8
  %109 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef %97, i32 noundef %30) #12
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111, !prof !37

111:                                              ; preds = %107
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

112:                                              ; preds = %107
  %113 = load i32, ptr %108, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  store i32 %113, ptr %1, align 4
  br label %114

114:                                              ; preds = %112, %84
  %115 = phi ptr [ %90, %84 ], [ %97, %112 ]
  %116 = getelementptr i8, ptr %38, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %116, ptr align 1 %115, i32 %30, i1 false) #12
  %117 = icmp eq ptr %116, null
  %118 = select i1 %117, i32 -125, i32 0
  br label %119

119:                                              ; preds = %114, %79, %74, %29, %2
  %120 = phi i32 [ %9, %2 ], [ -125, %29 ], [ -125, %74 ], [ %118, %114 ], [ -125, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_submit_inode_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_wait_inode_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ext4_fc_reserve_space(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.anon.78, align 8
  %5 = alloca %struct.anon.78, align 8
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4, !annotation !36
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.journal_s, ptr %10, i32 0, i32 33
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 159
  %14 = load i32, ptr %13, align 4
  %15 = urem i32 %14, %12
  %16 = add i32 %1, 4
  %17 = icmp ugt i32 %16, %12
  br i1 %17, label %97, label %18

18:                                               ; preds = %3
  %19 = xor i32 %15, -1
  %20 = add i32 %12, %19
  %21 = icmp ugt i32 %20, %16
  %22 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 161
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %24, label %39

24:                                               ; preds = %18
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = call i32 @jbd2_fc_get_buf(ptr noundef %10, ptr noundef nonnull %6) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %26
  %30 = load ptr, ptr %6, align 4
  store ptr %30, ptr %22, align 4
  %31 = load i32, ptr %13, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi ptr [ %30, %29 ], [ %23, %24 ]
  %34 = phi i32 [ %31, %29 ], [ %14, %24 ]
  %35 = add i32 %34, %1
  store i32 %35, ptr %13, align 4
  %36 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %15
  br label %97

39:                                               ; preds = %18
  %40 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %15
  store i16 7, ptr %42, align 2
  %43 = add i32 %20, -4
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.ext4_fc_tl, ptr %42, i32 0, i32 1
  store i16 %44, ptr %45, align 2
  %46 = icmp eq ptr %2, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %39
  %48 = load i32, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #12, !annotation !36
  %49 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 119
  %50 = load ptr, ptr %49, align 8
  %51 = load i32, ptr %50, align 64
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %54, label %53, !prof !37

53:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

54:                                               ; preds = %47
  store ptr %50, ptr %5, align 8
  %55 = getelementptr inbounds %struct.anon.78, ptr %5, i32 0, i32 1
  store i32 %48, ptr %55, align 8
  %56 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef %42, i32 noundef 4) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58, !prof !37

58:                                               ; preds = %54
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

59:                                               ; preds = %39
  %60 = icmp sgt i32 %43, 0
  br i1 %60, label %64, label %82

61:                                               ; preds = %54
  %62 = load i32, ptr %55, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  store i32 %62, ptr %2, align 4
  %63 = icmp sgt i32 %43, 0
  br i1 %63, label %66, label %82

64:                                               ; preds = %59
  %65 = getelementptr %struct.ext4_fc_tl, ptr %42, i32 1
  tail call void @llvm.memset.p0.i32(ptr align 1 %65, i8 0, i32 %43, i1 false) #12
  br label %82

66:                                               ; preds = %61
  %67 = getelementptr %struct.ext4_fc_tl, ptr %42, i32 1
  call void @llvm.memset.p0.i32(ptr align 1 %67, i8 0, i32 %43, i1 false) #12
  %68 = load ptr, ptr %7, align 4
  %69 = load i32, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #12, !annotation !36
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 119
  %71 = load ptr, ptr %70, align 8
  %72 = load i32, ptr %71, align 64
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %75, label %74, !prof !37

74:                                               ; preds = %66
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

75:                                               ; preds = %66
  store ptr %71, ptr %4, align 8
  %76 = getelementptr inbounds %struct.anon.78, ptr %4, i32 0, i32 1
  store i32 %69, ptr %76, align 8
  %77 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef %67, i32 noundef %43) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79, !prof !37

79:                                               ; preds = %75
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

80:                                               ; preds = %75
  %81 = load i32, ptr %76, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  store i32 %81, ptr %2, align 4
  br label %82

82:                                               ; preds = %80, %64, %61, %59
  call fastcc void @ext4_fc_submit_bh(ptr noundef %0, i1 noundef zeroext false)
  %83 = load ptr, ptr %7, align 4
  %84 = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 47
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 @jbd2_fc_get_buf(ptr noundef %85, ptr noundef nonnull %6) #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load ptr, ptr %6, align 4
  store ptr %89, ptr %22, align 4
  %90 = load i32, ptr %13, align 4
  %91 = udiv i32 %90, %12
  %92 = add i32 %91, 1
  %93 = mul i32 %92, %12
  %94 = add i32 %93, %1
  store i32 %94, ptr %13, align 4
  %95 = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  br label %97

97:                                               ; preds = %88, %82, %32, %26, %3
  %98 = phi ptr [ %38, %32 ], [ %96, %88 ], [ null, %3 ], [ null, %26 ], [ null, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret ptr %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_fc_submit_bh(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 161
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #12, !srcloc !12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 4, ptr elementtype(i32) %6) #12, !srcloc !54
  %14 = extractvalue { i32, i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !55
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  tail call void @__lock_buffer(ptr noundef %6) #12
  br label %18

18:                                               ; preds = %17, %12
  %19 = load volatile i32, ptr %6, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %6) #12
  br label %23

23:                                               ; preds = %22, %18
  %24 = load volatile i32, ptr %6, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @_set_bit(i32 noundef 0, ptr noundef %6) #12
  br label %28

28:                                               ; preds = %27, %23
  %29 = and i32 %8, 131072
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %1, i32 395264, i32 2048
  %32 = select i1 %30, i32 2048, i32 %31
  %33 = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 7
  store ptr @ext4_end_buffer_io_sync, ptr %33, align 4
  %34 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef %32, ptr noundef %6) #12
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.ext4_sb_info, ptr %35, i32 0, i32 161
  store ptr null, ptr %36, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_end_buffer_io_sync(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #12
  br label %10

9:                                                ; preds = %2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %0) #12
  br label %10

10:                                               ; preds = %9, %8, %4
  tail call void @unlock_buffer(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ext4_fc_add_dentry_tlv(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.anon.78, align 8
  %5 = alloca %struct.anon.78, align 8
  %6 = alloca %struct.anon.78, align 8
  %7 = alloca %struct.ext4_fc_dentry_info, align 8
  %8 = alloca %struct.ext4_fc_tl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %9 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 12
  %13 = tail call fastcc ptr @ext4_fc_reserve_space(ptr noundef %0, i32 noundef %12, ptr noundef %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %85, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %7, align 8
  %18 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ext4_fc_dentry_info, ptr %7, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %2, align 8
  %22 = trunc i32 %21 to i16
  store i16 %22, ptr %8, align 4
  %23 = trunc i32 %11 to i16
  %24 = add i16 %23, 8
  %25 = getelementptr inbounds %struct.ext4_fc_tl, ptr %8, i32 0, i32 1
  store i16 %24, ptr %25, align 2
  %26 = icmp eq ptr %1, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load i32, ptr %8, align 4
  store i32 %28, ptr %13, align 1
  %29 = getelementptr i8, ptr %13, i32 4
  %30 = load i64, ptr %7, align 8
  store i64 %30, ptr %29, align 1
  %31 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %2, i32 0, i32 3, i32 1
  %32 = load ptr, ptr %31, align 8
  br label %82

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #12, !annotation !36
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %35, i32 0, i32 119
  %38 = load ptr, ptr %37, align 8
  %39 = load i32, ptr %38, align 64
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %42, label %41, !prof !37

41:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

42:                                               ; preds = %33
  store ptr %38, ptr %6, align 8
  %43 = getelementptr inbounds %struct.anon.78, ptr %6, i32 0, i32 1
  store i32 %36, ptr %43, align 8
  %44 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef 4) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !37

46:                                               ; preds = %42
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

47:                                               ; preds = %42
  %48 = load i32, ptr %43, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  store i32 %48, ptr %1, align 4
  %49 = load i32, ptr %8, align 4
  store i32 %49, ptr %13, align 1
  %50 = getelementptr i8, ptr %13, i32 4
  %51 = load ptr, ptr %34, align 4
  %52 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #12, !annotation !36
  %53 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 119
  %54 = load ptr, ptr %53, align 8
  %55 = load i32, ptr %54, align 64
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %58, label %57, !prof !37

57:                                               ; preds = %47
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

58:                                               ; preds = %47
  store ptr %54, ptr %5, align 8
  %59 = getelementptr inbounds %struct.anon.78, ptr %5, i32 0, i32 1
  store i32 %52, ptr %59, align 8
  %60 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 8) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62, !prof !37

62:                                               ; preds = %58
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

63:                                               ; preds = %58
  %64 = load i32, ptr %59, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  store i32 %64, ptr %1, align 4
  %65 = load i64, ptr %7, align 8
  store i64 %65, ptr %50, align 1
  %66 = getelementptr inbounds %struct.ext4_fc_dentry_update, ptr %2, i32 0, i32 3, i32 1
  %67 = load ptr, ptr %66, align 8
  %68 = load ptr, ptr %34, align 4
  %69 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #12, !annotation !36
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 119
  %71 = load ptr, ptr %70, align 8
  %72 = load i32, ptr %71, align 64
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %75, label %74, !prof !37

74:                                               ; preds = %63
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #12, !srcloc !38
  unreachable

75:                                               ; preds = %63
  store ptr %71, ptr %4, align 8
  %76 = getelementptr inbounds %struct.anon.78, ptr %4, i32 0, i32 1
  store i32 %69, ptr %76, align 8
  %77 = call i32 @crypto_shash_update(ptr noundef nonnull %4, ptr noundef %67, i32 noundef %11) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79, !prof !37

79:                                               ; preds = %75
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #12, !srcloc !39
  unreachable

80:                                               ; preds = %75
  %81 = load i32, ptr %76, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  store i32 %81, ptr %1, align 4
  br label %82

82:                                               ; preds = %80, %27
  %83 = phi ptr [ %32, %27 ], [ %67, %80 ]
  %84 = getelementptr i8, ptr %13, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %84, ptr align 1 %83, i32 %11, i1 false) #12
  br label %85

85:                                               ; preds = %82, %3
  %86 = xor i1 %14, true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret i1 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_inode_loc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_fc_set_bitmaps_and_counters(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.ext4_map_blocks, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i32 24, i1 false), !annotation !36
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 164, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %68

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 164, i32 9
  %10 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 2
  br label %12

12:                                               ; preds = %64, %8
  %13 = phi i32 [ 0, %8 ], [ %65, %64 ]
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i32, ptr %14, i32 %13
  %16 = load i32, ptr %15, align 4
  %17 = call ptr @__ext4_iget(ptr noundef %0, i32 noundef %16, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_set_bitmaps_and_counters, i32 noundef 1823) #12
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %64, label %19

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %17, i32 -124
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 268435456
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  br label %26

26:                                               ; preds = %59, %24
  %27 = phi i32 [ 0, %24 ], [ %61, %59 ]
  store i32 %27, ptr %10, align 8
  %28 = xor i32 %27, -1
  store i32 %28, ptr %11, align 4
  %29 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %17, ptr noundef nonnull %2, i32 noundef 0) #12
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %26
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %31
  %34 = load i32, ptr %10, align 8
  %35 = call ptr @ext4_find_extent(ptr noundef %17, i32 noundef %34, ptr noundef null, i32 noundef 0) #12
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ext4_ext_path, ptr %35, i32 0, i32 1
  %39 = load i16, ptr %38, align 8
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %41, %37
  %42 = phi i32 [ %46, %41 ], [ 0, %37 ]
  %43 = load ptr, ptr %25, align 4
  %44 = getelementptr %struct.ext4_ext_path, ptr %35, i32 %42
  %45 = load i64, ptr %44, align 8
  call void @ext4_mb_mark_bb(ptr noundef %43, i64 noundef %45, i32 noundef 1, i32 noundef 1) #12
  %46 = add nuw nsw i32 %42, 1
  %47 = load i16, ptr %38, align 8
  %48 = zext i16 %47 to i32
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %41, label %50

50:                                               ; preds = %41, %37
  call void @ext4_ext_drop_refs(ptr noundef %35) #12
  call void @kfree(ptr noundef %35) #12
  br label %51

51:                                               ; preds = %50, %33
  %52 = load ptr, ptr %25, align 4
  %53 = load i64, ptr %2, align 8
  %54 = load i32, ptr %11, align 4
  call void @ext4_mb_mark_bb(ptr noundef %52, i64 noundef %53, i32 noundef %54, i32 noundef 1) #12
  br label %59

55:                                               ; preds = %31
  %56 = load i32, ptr %11, align 4
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 1, i32 %56
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %29, %51 ], [ %58, %55 ]
  %61 = add i32 %60, %27
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %26

63:                                               ; preds = %59, %26, %19
  call void @iput(ptr noundef %17) #12
  br label %64

64:                                               ; preds = %63, %12
  %65 = add nuw nsw i32 %13, 1
  %66 = load i32, ptr %5, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %12, label %68

68:                                               ; preds = %64, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_replay_scan(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_find_extent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mb_mark_bb(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_drop_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_fc_replay_link_internal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.qstr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.dentry_info_args, ptr %1, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.qstr, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dentry_info_args, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %8, align 8
  %11 = load i32, ptr %1, align 4
  %12 = tail call ptr @__ext4_iget(ptr noundef %0, i32 noundef %11, i32 noundef 0, ptr noundef nonnull @__func__.ext4_fc_replay_link_internal, i32 noundef 1327) #12
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %37, label %14

14:                                               ; preds = %3
  %15 = tail call ptr @d_obtain_alias(ptr noundef %12) #12
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = call ptr @d_alloc(ptr noundef %15, ptr noundef nonnull %4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call i32 @__ext4_link(ptr noundef %12, ptr noundef %2, ptr noundef nonnull %18) #12
  switch i32 %21, label %23 [
    i32 -17, label %22
    i32 0, label %22
  ]

22:                                               ; preds = %20, %20
  br label %23

23:                                               ; preds = %22, %20, %17
  %24 = phi i32 [ 0, %22 ], [ -12, %17 ], [ %21, %20 ]
  %25 = icmp eq ptr %15, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @d_drop(ptr noundef nonnull %15) #12
  call void @dput(ptr noundef nonnull %15) #12
  br label %32

27:                                               ; preds = %23, %14
  %28 = phi ptr [ %18, %23 ], [ null, %14 ]
  %29 = phi i32 [ %24, %23 ], [ 0, %14 ]
  %30 = icmp eq ptr %12, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @iput(ptr noundef nonnull %12) #12
  br label %32

32:                                               ; preds = %31, %27, %26
  %33 = phi ptr [ %28, %27 ], [ %28, %31 ], [ %18, %26 ]
  %34 = phi i32 [ %29, %27 ], [ %29, %31 ], [ %24, %26 ]
  %35 = icmp eq ptr %33, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void @d_drop(ptr noundef nonnull %33) #12
  call void @dput(ptr noundef nonnull %33) #12
  br label %37

37:                                               ; preds = %36, %32, %3
  %38 = phi i32 [ %34, %36 ], [ %34, %32 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_insert_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_replay_update_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_replay_shrink_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_inode_used(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_init_new_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_remove_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_clear_bb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_fc_inode_loc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_replay_set_iblocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_reset_inode_seed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_csum_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_replay(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_fc_release_bufs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_fc_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind readnone }

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
!8 = !{i64 2149418834}
!9 = !{i64 2149414658}
!10 = !{i64 2149414733, i64 2149414760, i64 2149414807, i64 2149414829, i64 2149414857, i64 2149414877}
!11 = !{i64 2149441837}
!12 = !{i64 457116, i64 2147958682, i64 2147958708, i64 2147958755, i64 2147958777, i64 2147958805, i64 2147958825}
!13 = !{i64 2148032383, i64 2148032409, i64 2148032438, i64 2148032472, i64 2148032503, i64 2148032526}
!14 = !{i64 2148133038}
!15 = !{i64 2148035424, i64 2148035456, i64 2148035485, i64 2148035519, i64 2148035550, i64 2148035573}
!16 = !{i64 2148133241}
!17 = !{i64 2149426716}
!18 = !{i64 1930140, i64 1930163, i64 1930183, i64 1930207, i64 1930223}
!19 = !{i64 2149464319}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = distinct !{ptr @__track_dentry_update, null, null}
!22 = !{i64 2156480800}
!23 = !{i64 2156480988}
!24 = !{i64 2156463193}
!25 = !{i64 2156463377}
!26 = !{i64 2156441499}
!27 = !{i64 2156441687}
!28 = !{i64 2156497369}
!29 = !{i64 2156497539}
!30 = !{i64 2156514190}
!31 = !{i64 2156514384}
!32 = !{i64 2156391553}
!33 = !{i64 2156391709}
!34 = !{i64 2156408237}
!35 = !{i64 2156408421}
!36 = !{!"auto-init"}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2153782017, i64 2153782497, i64 2153782054, i64 2153782110, i64 2153782144, i64 2153782168, i64 2153782209, i64 2153782230, i64 2153782258, i64 2153782292}
!39 = !{i64 2153783095, i64 2153783575, i64 2153783132, i64 2153783188, i64 2153783222, i64 2153783246, i64 2153783287, i64 2153783308, i64 2153783336, i64 2153783370}
!40 = !{i64 2156354384}
!41 = !{i64 2156354562}
!42 = !{i64 2156371279}
!43 = !{i64 2156371471}
!44 = !{i64 2153841592, i64 2153842079, i64 2153841629, i64 2153841685, i64 2153841719, i64 2153841743, i64 2153841784, i64 2153841805, i64 2153841833, i64 2153841867}
!45 = !{i64 2151559929}
!46 = !{i64 2151559771}
!47 = !{i64 2151560073}
!48 = !{i64 2149821916}
!49 = !{i64 2156612480}
!50 = !{i64 2156424348}
!51 = !{i64 2156424490}
!52 = !{i64 1345042, i64 1345069, i64 1345091, i64 1345119}
!53 = !{i64 1345450, i64 1345477, i64 1345510, i64 1345531, i64 1345558, i64 1345584}
!54 = !{i64 2148040845, i64 2148040877, i64 2148040906, i64 2148040940, i64 2148040971, i64 2148040994}
!55 = !{i64 2148142161}
