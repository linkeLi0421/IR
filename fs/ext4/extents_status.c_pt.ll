; ModuleID = '/llk/IR/fs/ext4/extents_status.c_pt.bc'
source_filename = "../fs/ext4/extents_status.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.ext4_es_tree = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.extent_status = type { %struct.rb_node, i32, i32, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pending_reservation = type { %struct.rb_node, i32 }
%struct.rsvd_count = type { i32, i8, i32, i32, ptr, i8, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ext4_inode_info = type { [15 x i32], i32, i64, i32, i32, i32, i32, %struct.rw_semaphore, %union.anon.72, %struct.list_head, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, i64, %struct.rw_semaphore, %struct.inode, ptr, %struct.spinlock, %struct.timespec64, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.ext4_es_tree, %struct.rwlock_t, %struct.list_head, i32, i32, i32, i32, i32, %struct.ext4_pending_tree, i16, i16, i16, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, i32, i32, i32, %struct.kprojid_t }
%union.anon.72 = type { %struct.list_head }
%struct.ext4_pending_tree = type { %struct.rb_root }
%struct.kprojid_t = type { i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [19 x i8] c"ext4_extent_status\00", align 1
@ext4_es_cachep = internal unnamed_addr global ptr null, align 4
@__func__.ext4_es_insert_extent = private unnamed_addr constant [22 x i8] c"ext4_es_insert_extent\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Inserting extent [%u/%u] as  delayed and written which can potentially  cause data loss.\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"fs/ext4/extents_status.c\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"stats:\0A  %lld objects\0A  %lld reclaimable objects\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"  %lld/%lld cache hits/misses\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"  %d inodes on list\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"average:\0A  %llu us scan time\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"  %lu shrunk objects\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"maximum:\0A  %lu inode (%u objects, %u reclaimable)\0A  %llu us max scan time\0A\00", align 1
@ext4_es_register_shrinker.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@ext4_es_register_shrinker.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1
@ext4_es_register_shrinker.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1
@ext4_es_register_shrinker.__key.11 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"ext4_pending_reservation\00", align 1
@ext4_pending_cachep = internal unnamed_addr global ptr null, align 4
@__tracepoint_ext4_es_find_extent_range_enter = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_ext4_es_find_extent_range_exit = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_es_insert_extent = external dso_local global %struct.tracepoint, align 4
@.str.14 = private unnamed_addr constant [127 x i8] c"\014ES assertion failed when merging extents. The sum of lengths of es1 (%d) and es2 (%d) is bigger than allowed file size (%d)\0A\00", align 1
@__tracepoint_ext4_es_cache_extent = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_es_lookup_extent_enter = external dso_local global %struct.tracepoint, align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_ext4_es_lookup_extent_exit = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_es_remove_extent = external dso_local global %struct.tracepoint, align 4
@es_reclaim_extents._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.es_reclaim_extents = private unnamed_addr constant [19 x i8] c"es_reclaim_extents\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"forced shrink of precached extents\00", align 1
@__tracepoint_ext4_es_shrink = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_es_shrink_scan_enter = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_es_shrink_scan_exit = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ext4_es_shrink_count = external dso_local global %struct.tracepoint, align 4
@ext4_es_list_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_ext4_es_insert_delayed_block = external dso_local global %struct.tracepoint, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ext4_init_es() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 0, i32 noundef 131072, ptr noundef null) #9
  store ptr %1, ptr @ext4_es_cachep, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_exit_es() local_unnamed_addr #2 {
  %1 = load ptr, ptr @ext4_es_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ext4_es_init_tree(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr null, ptr %0, align 4
  %2 = getelementptr inbounds %struct.ext4_es_tree, ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_es_find_extent_range(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 25
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %5
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_find_extent_range_enter, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = tail call ptr @llvm.thread.pointer() #9
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %29 = tail call i32 @__traceiter_ext4_es_find_extent_range_enter(ptr noundef null, ptr noundef %0, i32 noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  br label %30

30:                                               ; preds = %28, %17, %14
  %31 = getelementptr i8, ptr %0, i32 440
  tail call void @_raw_read_lock(ptr noundef %31) #9
  tail call fastcc void @__es_find_extent_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #9, !srcloc !11
  %32 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %31) #9, !srcloc !12
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  br label %36

36:                                               ; preds = %35, %30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_find_extent_range_exit, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  %51 = tail call i32 @__traceiter_ext4_es_find_extent_range_exit(ptr noundef null, ptr noundef %0, ptr noundef %4) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  br label %52

52:                                               ; preds = %50, %39, %36, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__es_find_extent_range(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4) unnamed_addr #2 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !18

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 265, i32 noundef 9, ptr noundef null) #9
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp ult i32 %3, %2
  br i1 %9, label %10, label %11, !prof !18

10:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr i8, ptr %0, i32 432
  %13 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 3
  store i64 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 2
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 436
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.extent_status, ptr %17, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %2
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.extent_status, ptr %17, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %21, -1
  %27 = add i32 %26, %25
  %28 = icmp ult i32 %27, %2
  br i1 %28, label %29, label %59

29:                                               ; preds = %23, %19, %11
  %30 = load ptr, ptr %12, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %85, label %32

32:                                               ; preds = %50, %29
  %33 = phi ptr [ %51, %50 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.extent_status, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, %2
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.extent_status, ptr %33, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %39, %35
  %41 = icmp ult i32 %40, %35
  br i1 %41, label %42, label %43, !prof !18

42:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

43:                                               ; preds = %37
  %44 = add i32 %40, -1
  %45 = icmp ult i32 %44, %2
  br i1 %45, label %52, label %59

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %52, %46
  %51 = phi ptr [ %48, %46 ], [ %54, %52 ]
  br label %32

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %50

56:                                               ; preds = %52
  %57 = tail call ptr @rb_next(ptr noundef nonnull %33) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %85, label %59

59:                                               ; preds = %56, %46, %43, %23
  %60 = phi ptr [ %57, %56 ], [ %17, %23 ], [ %33, %43 ], [ %33, %46 ]
  %61 = tail call i32 %1(ptr noundef nonnull %60) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %71, %59
  %64 = phi ptr [ %65, %71 ], [ %60, %59 ]
  %65 = tail call ptr @rb_next(ptr noundef nonnull %64) #9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.extent_status, ptr %65, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, %3
  br i1 %70, label %85, label %71

71:                                               ; preds = %67
  %72 = tail call i32 %1(ptr noundef nonnull %65) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %63, label %74

74:                                               ; preds = %71, %63, %59
  %75 = phi ptr [ %60, %59 ], [ %64, %63 ], [ %65, %71 ]
  %76 = tail call i32 %1(ptr noundef nonnull %75) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  store ptr %75, ptr %16, align 4
  %79 = getelementptr inbounds %struct.extent_status, ptr %75, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  store i32 %80, ptr %15, align 4
  %81 = getelementptr inbounds %struct.extent_status, ptr %75, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  store i32 %82, ptr %14, align 8
  %83 = getelementptr inbounds %struct.extent_status, ptr %75, i32 0, i32 3
  %84 = load i64, ptr %83, align 8
  store i64 %84, ptr %13, align 8
  br label %85

85:                                               ; preds = %78, %74, %67, %56, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ext4_es_scan_range(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca %struct.extent_status, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 25
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %4
  %15 = getelementptr i8, ptr %0, i32 440
  tail call void @_raw_read_lock(ptr noundef %15) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #9, !annotation !20
  call fastcc void @__es_find_extent_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #9
  %16 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ule i32 %21, %2
  %23 = add i32 %21, %17
  %24 = icmp ugt i32 %23, %2
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = icmp uge i32 %21, %2
  %28 = icmp ule i32 %21, %3
  %29 = and i1 %27, %28
  br label %30

30:                                               ; preds = %26, %19, %14
  %31 = phi i1 [ false, %14 ], [ true, %19 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #9, !srcloc !11
  %32 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %15) #9, !srcloc !12
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  br label %36

36:                                               ; preds = %35, %30
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %37

37:                                               ; preds = %36, %4
  %38 = phi i1 [ %31, %36 ], [ false, %4 ]
  ret i1 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ext4_es_scan_clu(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.extent_status, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 25
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %0, i32 440
  tail call void @_raw_read_lock(ptr noundef %14) #9
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 0, %19
  %21 = and i32 %20, %2
  %22 = add i32 %19, -1
  %23 = add i32 %22, %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 32, i1 false) #9, !annotation !20
  call fastcc void @__es_find_extent_range(ptr noundef %0, ptr noundef %1, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %4) #9
  %24 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ule i32 %29, %21
  %31 = add i32 %29, %25
  %32 = icmp ugt i32 %31, %21
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = icmp uge i32 %29, %21
  %36 = icmp ule i32 %29, %23
  %37 = and i1 %35, %36
  br label %38

38:                                               ; preds = %34, %27, %13
  %39 = phi i1 [ false, %13 ], [ true, %27 ], [ %37, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #9, !srcloc !11
  %40 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %14) #9, !srcloc !12
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  br label %44

44:                                               ; preds = %43, %38
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %45

45:                                               ; preds = %44, %3
  %46 = phi i1 [ %39, %44 ], [ false, %3 ]
  ret i1 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_es_insert_extent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.extent_status, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 24, i1 false), !annotation !20
  %7 = add i32 %2, %1
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 25
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 32
  %16 = icmp ne i16 %15, 0
  %17 = icmp eq i32 %2, 0
  %18 = or i1 %17, %16
  br i1 %18, label %716, label %19

19:                                               ; preds = %5
  %20 = icmp ult i32 %8, %1
  br i1 %20, label %21, label %22, !prof !18

21:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 833, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

22:                                               ; preds = %19
  %23 = and i32 %4, 5
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %10, ptr noundef nonnull @__func__.ext4_es_insert_extent, i32 noundef 839, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %2) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 840, i32 noundef 9, ptr noundef null) #9
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr inbounds %struct.extent_status, ptr %6, i32 0, i32 1
  store i32 %1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.extent_status, ptr %6, i32 0, i32 2
  store i32 %2, ptr %28, align 8
  %29 = zext i32 %4 to i64
  %30 = shl i64 %29, 59
  %31 = and i64 %3, 576460752303423487
  %32 = or i64 %30, %31
  %33 = getelementptr inbounds %struct.extent_status, ptr %6, i32 0, i32 3
  store i64 %32, ptr %33, align 8
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_insert_extent, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %26
  %37 = tail call ptr @llvm.thread.pointer() #9
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  %48 = call i32 @__traceiter_ext4_es_insert_extent(ptr noundef null, ptr noundef %0, ptr noundef nonnull %6) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  br label %49

49:                                               ; preds = %47, %36, %26
  %50 = getelementptr i8, ptr %0, i32 -208
  %51 = getelementptr i8, ptr %0, i32 440
  call void @_raw_write_lock(ptr noundef %51) #9
  %52 = call fastcc i32 @__es_remove_extent(ptr noundef %0, i32 noundef %1, i32 noundef %8, ptr noundef null)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %714

54:                                               ; preds = %57, %49
  %55 = call fastcc i32 @__es_insert_extent(ptr noundef %0, ptr noundef nonnull %6)
  %56 = icmp eq i32 %55, -12
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load ptr, ptr %9, align 4
  %59 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 27
  %60 = load ptr, ptr %59, align 4
  %61 = call fastcc i32 @__es_shrink(ptr noundef %60, i32 noundef 128, ptr noundef %50)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %54

63:                                               ; preds = %57
  %64 = load i64, ptr %33, align 8
  %65 = and i64 %64, 2305843009213693952
  %66 = icmp eq i64 %65, 0
  %67 = select i1 %66, i32 0, i32 -12
  br label %68

68:                                               ; preds = %63, %54
  %69 = phi i32 [ %67, %63 ], [ %55, %54 ]
  %70 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 11
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, 1
  br i1 %72, label %73, label %714

73:                                               ; preds = %68
  %74 = load ptr, ptr %9, align 4
  %75 = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 27
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ext4_sb_info, ptr %76, i32 0, i32 17
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 134217728
  %80 = icmp eq i32 %79, 0
  %81 = and i32 %4, 3
  %82 = icmp eq i32 %81, 0
  %83 = or i1 %82, %80
  br i1 %83, label %714, label %84

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.ext4_sb_info, ptr %76, i32 0, i32 12
  %86 = load i32, ptr %85, align 16
  %87 = lshr i32 %1, %86
  %88 = lshr i32 %8, %86
  %89 = icmp eq i32 %87, %88
  %90 = getelementptr inbounds %struct.ext4_sb_info, ptr %76, i32 0, i32 11
  %91 = load i32, ptr %90, align 4
  %92 = sub i32 0, %91
  %93 = and i32 %92, %1
  %94 = icmp eq i32 %93, %1
  br i1 %89, label %95, label %389

95:                                               ; preds = %84
  br i1 %94, label %224, label %96

96:                                               ; preds = %95
  %97 = add i32 %1, -1
  %98 = icmp ult i32 %97, %93
  br i1 %98, label %99, label %100, !prof !18

99:                                               ; preds = %96
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %100

100:                                              ; preds = %99, %96
  %101 = getelementptr i8, ptr %0, i32 432
  %102 = getelementptr i8, ptr %0, i32 436
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.extent_status, ptr %103, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp ugt i32 %107, %93
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.extent_status, ptr %103, i32 0, i32 2
  %111 = load i32, ptr %110, align 8
  %112 = add i32 %107, -1
  %113 = add i32 %112, %111
  %114 = icmp ult i32 %113, %93
  br i1 %114, label %115, label %145

115:                                              ; preds = %109, %105, %100
  %116 = load ptr, ptr %101, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %224, label %118

118:                                              ; preds = %140, %115
  %119 = phi ptr [ %141, %140 ], [ %116, %115 ]
  %120 = getelementptr inbounds %struct.extent_status, ptr %119, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %121, %93
  br i1 %122, label %132, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.extent_status, ptr %119, i32 0, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = add i32 %125, %121
  %127 = icmp ult i32 %126, %121
  br i1 %127, label %128, label %129, !prof !18

128:                                              ; preds = %123
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

129:                                              ; preds = %123
  %130 = add i32 %126, -1
  %131 = icmp ult i32 %130, %93
  br i1 %131, label %136, label %145

132:                                              ; preds = %118
  %133 = getelementptr inbounds %struct.rb_node, ptr %119, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %145, label %140

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.rb_node, ptr %119, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %136, %132
  %141 = phi ptr [ %134, %132 ], [ %138, %136 ]
  br label %118

142:                                              ; preds = %136
  %143 = call ptr @rb_next(ptr noundef nonnull %119) #9
  %144 = icmp eq ptr %143, null
  br i1 %144, label %224, label %145

145:                                              ; preds = %142, %132, %129, %109
  %146 = phi ptr [ %143, %142 ], [ %103, %109 ], [ %119, %129 ], [ %119, %132 ]
  %147 = getelementptr inbounds %struct.extent_status, ptr %146, i32 0, i32 3
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 3458764513820540928
  %150 = icmp eq i64 %149, 2305843009213693952
  br i1 %150, label %167, label %151

151:                                              ; preds = %162, %145
  %152 = phi ptr [ %153, %162 ], [ %146, %145 ]
  %153 = call ptr @rb_next(ptr noundef nonnull %152) #9
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.extent_status, ptr %152, i32 0, i32 3
  %157 = load i64, ptr %156, align 8
  br label %167

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.extent_status, ptr %153, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = icmp ugt i32 %160, %97
  br i1 %161, label %224, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.extent_status, ptr %153, i32 0, i32 3
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 3458764513820540928
  %166 = icmp eq i64 %165, 2305843009213693952
  br i1 %166, label %167, label %151

167:                                              ; preds = %162, %155, %145
  %168 = phi i64 [ %148, %145 ], [ %157, %155 ], [ %164, %162 ]
  %169 = phi ptr [ %146, %145 ], [ %152, %155 ], [ %153, %162 ]
  %170 = and i64 %168, 3458764513820540928
  %171 = icmp eq i64 %170, 2305843009213693952
  br i1 %171, label %172, label %224

172:                                              ; preds = %167
  store ptr %169, ptr %102, align 4
  %173 = getelementptr inbounds %struct.extent_status, ptr %169, i32 0, i32 1
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.extent_status, ptr %169, i32 0, i32 2
  %176 = load i32, ptr %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %224, label %178

178:                                              ; preds = %172
  %179 = icmp ule i32 %174, %93
  %180 = add i32 %176, %174
  %181 = icmp ugt i32 %180, %93
  %182 = select i1 %179, i1 %181, i1 false
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  %184 = icmp uge i32 %174, %93
  %185 = icmp ule i32 %174, %97
  %186 = and i1 %184, %185
  br i1 %186, label %187, label %224

187:                                              ; preds = %183, %178
  %188 = load ptr, ptr %9, align 4
  %189 = getelementptr inbounds %struct.super_block, ptr %188, i32 0, i32 27
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr i8, ptr %0, i32 472
  %192 = getelementptr inbounds %struct.ext4_sb_info, ptr %190, i32 0, i32 12
  %193 = load i32, ptr %192, align 16
  %194 = lshr i32 %93, %193
  %195 = load ptr, ptr %191, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %214, label %197

197:                                              ; preds = %208, %187
  %198 = phi ptr [ %210, %208 ], [ %195, %187 ]
  %199 = getelementptr inbounds %struct.pending_reservation, ptr %198, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = icmp ult i32 %194, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.rb_node, ptr %198, i32 0, i32 2
  br label %208

204:                                              ; preds = %197
  %205 = icmp ugt i32 %194, %200
  br i1 %205, label %206, label %714

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct.rb_node, ptr %198, i32 0, i32 1
  br label %208

208:                                              ; preds = %206, %202
  %209 = phi ptr [ %203, %202 ], [ %207, %206 ]
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %197

212:                                              ; preds = %208
  %213 = ptrtoint ptr %198 to i32
  br label %214

214:                                              ; preds = %212, %187
  %215 = phi i32 [ %213, %212 ], [ 0, %187 ]
  %216 = phi ptr [ %209, %212 ], [ %191, %187 ]
  %217 = load ptr, ptr @ext4_pending_cachep, align 4
  %218 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %217, i32 noundef 2592) #9
  %219 = icmp eq ptr %218, null
  br i1 %219, label %714, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.pending_reservation, ptr %218, i32 0, i32 1
  store i32 %194, ptr %221, align 4
  store i32 %215, ptr %218, align 8
  %222 = getelementptr inbounds %struct.rb_node, ptr %218, i32 0, i32 1
  store ptr null, ptr %222, align 4
  %223 = getelementptr inbounds %struct.rb_node, ptr %218, i32 0, i32 2
  store ptr null, ptr %223, align 8
  store ptr %218, ptr %216, align 4
  call void @rb_insert_color(ptr noundef nonnull %218, ptr noundef %191) #9
  br label %714

224:                                              ; preds = %183, %172, %167, %158, %142, %115, %95
  %225 = load i32, ptr %90, align 4
  %226 = sub i32 0, %225
  %227 = and i32 %8, %226
  %228 = add i32 %227, %225
  %229 = add i32 %228, -1
  %230 = icmp eq i32 %228, %7
  br i1 %230, label %358, label %231

231:                                              ; preds = %224
  %232 = icmp ult i32 %229, %7
  br i1 %232, label %233, label %234, !prof !18

233:                                              ; preds = %231
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %234

234:                                              ; preds = %233, %231
  %235 = getelementptr i8, ptr %0, i32 432
  %236 = getelementptr i8, ptr %0, i32 436
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %249, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.extent_status, ptr %237, i32 0, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = icmp ugt i32 %241, %7
  br i1 %242, label %249, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.extent_status, ptr %237, i32 0, i32 2
  %245 = load i32, ptr %244, align 8
  %246 = add i32 %241, -1
  %247 = add i32 %246, %245
  %248 = icmp ult i32 %247, %7
  br i1 %248, label %249, label %279

249:                                              ; preds = %243, %239, %234
  %250 = load ptr, ptr %235, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %358, label %252

252:                                              ; preds = %274, %249
  %253 = phi ptr [ %275, %274 ], [ %250, %249 ]
  %254 = getelementptr inbounds %struct.extent_status, ptr %253, i32 0, i32 1
  %255 = load i32, ptr %254, align 4
  %256 = icmp ugt i32 %255, %7
  br i1 %256, label %266, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.extent_status, ptr %253, i32 0, i32 2
  %259 = load i32, ptr %258, align 8
  %260 = add i32 %259, %255
  %261 = icmp ult i32 %260, %255
  br i1 %261, label %262, label %263, !prof !18

262:                                              ; preds = %257
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

263:                                              ; preds = %257
  %264 = add i32 %260, -1
  %265 = icmp ult i32 %264, %7
  br i1 %265, label %270, label %279

266:                                              ; preds = %252
  %267 = getelementptr inbounds %struct.rb_node, ptr %253, i32 0, i32 2
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %279, label %274

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.rb_node, ptr %253, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %276, label %274

274:                                              ; preds = %270, %266
  %275 = phi ptr [ %268, %266 ], [ %272, %270 ]
  br label %252

276:                                              ; preds = %270
  %277 = call ptr @rb_next(ptr noundef nonnull %253) #9
  %278 = icmp eq ptr %277, null
  br i1 %278, label %358, label %279

279:                                              ; preds = %276, %266, %263, %243
  %280 = phi ptr [ %277, %276 ], [ %237, %243 ], [ %253, %263 ], [ %253, %266 ]
  %281 = getelementptr inbounds %struct.extent_status, ptr %280, i32 0, i32 3
  %282 = load i64, ptr %281, align 8
  %283 = and i64 %282, 3458764513820540928
  %284 = icmp eq i64 %283, 2305843009213693952
  br i1 %284, label %301, label %285

285:                                              ; preds = %296, %279
  %286 = phi ptr [ %287, %296 ], [ %280, %279 ]
  %287 = call ptr @rb_next(ptr noundef nonnull %286) #9
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.extent_status, ptr %286, i32 0, i32 3
  %291 = load i64, ptr %290, align 8
  br label %301

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.extent_status, ptr %287, i32 0, i32 1
  %294 = load i32, ptr %293, align 4
  %295 = icmp ugt i32 %294, %229
  br i1 %295, label %358, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.extent_status, ptr %287, i32 0, i32 3
  %298 = load i64, ptr %297, align 8
  %299 = and i64 %298, 3458764513820540928
  %300 = icmp eq i64 %299, 2305843009213693952
  br i1 %300, label %301, label %285

301:                                              ; preds = %296, %289, %279
  %302 = phi i64 [ %282, %279 ], [ %291, %289 ], [ %298, %296 ]
  %303 = phi ptr [ %280, %279 ], [ %286, %289 ], [ %287, %296 ]
  %304 = and i64 %302, 3458764513820540928
  %305 = icmp eq i64 %304, 2305843009213693952
  br i1 %305, label %306, label %358

306:                                              ; preds = %301
  store ptr %303, ptr %236, align 4
  %307 = getelementptr inbounds %struct.extent_status, ptr %303, i32 0, i32 1
  %308 = load i32, ptr %307, align 4
  %309 = getelementptr inbounds %struct.extent_status, ptr %303, i32 0, i32 2
  %310 = load i32, ptr %309, align 8
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %358, label %312

312:                                              ; preds = %306
  %313 = icmp ule i32 %308, %7
  %314 = add i32 %310, %308
  %315 = icmp ugt i32 %314, %7
  %316 = select i1 %313, i1 %315, i1 false
  br i1 %316, label %321, label %317

317:                                              ; preds = %312
  %318 = icmp uge i32 %308, %7
  %319 = icmp ule i32 %308, %229
  %320 = and i1 %318, %319
  br i1 %320, label %321, label %358

321:                                              ; preds = %317, %312
  %322 = load ptr, ptr %9, align 4
  %323 = getelementptr inbounds %struct.super_block, ptr %322, i32 0, i32 27
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr i8, ptr %0, i32 472
  %326 = getelementptr inbounds %struct.ext4_sb_info, ptr %324, i32 0, i32 12
  %327 = load i32, ptr %326, align 16
  %328 = lshr i32 %229, %327
  %329 = load ptr, ptr %325, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %348, label %331

331:                                              ; preds = %342, %321
  %332 = phi ptr [ %344, %342 ], [ %329, %321 ]
  %333 = getelementptr inbounds %struct.pending_reservation, ptr %332, i32 0, i32 1
  %334 = load i32, ptr %333, align 4
  %335 = icmp ult i32 %328, %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.rb_node, ptr %332, i32 0, i32 2
  br label %342

338:                                              ; preds = %331
  %339 = icmp ugt i32 %328, %334
  br i1 %339, label %340, label %714

340:                                              ; preds = %338
  %341 = getelementptr inbounds %struct.rb_node, ptr %332, i32 0, i32 1
  br label %342

342:                                              ; preds = %340, %336
  %343 = phi ptr [ %337, %336 ], [ %341, %340 ]
  %344 = load ptr, ptr %343, align 4
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %331

346:                                              ; preds = %342
  %347 = ptrtoint ptr %332 to i32
  br label %348

348:                                              ; preds = %346, %321
  %349 = phi i32 [ %347, %346 ], [ 0, %321 ]
  %350 = phi ptr [ %343, %346 ], [ %325, %321 ]
  %351 = load ptr, ptr @ext4_pending_cachep, align 4
  %352 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %351, i32 noundef 2592) #9
  %353 = icmp eq ptr %352, null
  br i1 %353, label %714, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.pending_reservation, ptr %352, i32 0, i32 1
  store i32 %328, ptr %355, align 4
  store i32 %349, ptr %352, align 8
  %356 = getelementptr inbounds %struct.rb_node, ptr %352, i32 0, i32 1
  store ptr null, ptr %356, align 4
  %357 = getelementptr inbounds %struct.rb_node, ptr %352, i32 0, i32 2
  store ptr null, ptr %357, align 8
  store ptr %352, ptr %350, align 4
  call void @rb_insert_color(ptr noundef nonnull %352, ptr noundef %325) #9
  br label %714

358:                                              ; preds = %317, %306, %301, %292, %276, %249, %224
  %359 = load ptr, ptr %9, align 4
  %360 = getelementptr inbounds %struct.super_block, ptr %359, i32 0, i32 27
  %361 = load ptr, ptr %360, align 4
  %362 = getelementptr inbounds %struct.ext4_sb_info, ptr %361, i32 0, i32 12
  %363 = load i32, ptr %362, align 16
  %364 = lshr i32 %229, %363
  %365 = getelementptr i8, ptr %0, i32 472
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %714, label %368

368:                                              ; preds = %384, %358
  %369 = phi ptr [ %385, %384 ], [ %366, %358 ]
  %370 = getelementptr inbounds %struct.pending_reservation, ptr %369, i32 0, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = icmp ugt i32 %371, %364
  br i1 %372, label %373, label %375

373:                                              ; preds = %368
  %374 = getelementptr inbounds %struct.rb_node, ptr %369, i32 0, i32 2
  br label %381

375:                                              ; preds = %368
  %376 = icmp ult i32 %371, %364
  br i1 %376, label %377, label %379

377:                                              ; preds = %375
  %378 = getelementptr inbounds %struct.rb_node, ptr %369, i32 0, i32 1
  br label %381

379:                                              ; preds = %375
  %380 = icmp eq i32 %371, %364
  br i1 %380, label %387, label %384

381:                                              ; preds = %377, %373
  %382 = phi ptr [ %378, %377 ], [ %374, %373 ]
  %383 = load ptr, ptr %382, align 4
  br label %384

384:                                              ; preds = %381, %379
  %385 = phi ptr [ %369, %379 ], [ %383, %381 ]
  %386 = icmp eq ptr %385, null
  br i1 %386, label %714, label %368

387:                                              ; preds = %379
  call void @rb_erase(ptr noundef nonnull %369, ptr noundef %365) #9
  %388 = load ptr, ptr @ext4_pending_cachep, align 4
  call void @kmem_cache_free(ptr noundef %388, ptr noundef nonnull %369) #9
  br label %714

389:                                              ; preds = %84
  br i1 %94, label %518, label %390

390:                                              ; preds = %389
  %391 = add i32 %1, -1
  %392 = icmp ult i32 %391, %93
  br i1 %392, label %393, label %394, !prof !18

393:                                              ; preds = %390
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %394

394:                                              ; preds = %393, %390
  %395 = getelementptr i8, ptr %0, i32 432
  %396 = getelementptr i8, ptr %0, i32 436
  %397 = load ptr, ptr %396, align 4
  %398 = icmp eq ptr %397, null
  br i1 %398, label %409, label %399

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.extent_status, ptr %397, i32 0, i32 1
  %401 = load i32, ptr %400, align 4
  %402 = icmp ugt i32 %401, %93
  br i1 %402, label %409, label %403

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.extent_status, ptr %397, i32 0, i32 2
  %405 = load i32, ptr %404, align 8
  %406 = add i32 %401, -1
  %407 = add i32 %406, %405
  %408 = icmp ult i32 %407, %93
  br i1 %408, label %409, label %439

409:                                              ; preds = %403, %399, %394
  %410 = load ptr, ptr %395, align 4
  %411 = icmp eq ptr %410, null
  br i1 %411, label %518, label %412

412:                                              ; preds = %434, %409
  %413 = phi ptr [ %435, %434 ], [ %410, %409 ]
  %414 = getelementptr inbounds %struct.extent_status, ptr %413, i32 0, i32 1
  %415 = load i32, ptr %414, align 4
  %416 = icmp ugt i32 %415, %93
  br i1 %416, label %426, label %417

417:                                              ; preds = %412
  %418 = getelementptr inbounds %struct.extent_status, ptr %413, i32 0, i32 2
  %419 = load i32, ptr %418, align 8
  %420 = add i32 %419, %415
  %421 = icmp ult i32 %420, %415
  br i1 %421, label %422, label %423, !prof !18

422:                                              ; preds = %417
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

423:                                              ; preds = %417
  %424 = add i32 %420, -1
  %425 = icmp ult i32 %424, %93
  br i1 %425, label %430, label %439

426:                                              ; preds = %412
  %427 = getelementptr inbounds %struct.rb_node, ptr %413, i32 0, i32 2
  %428 = load ptr, ptr %427, align 4
  %429 = icmp eq ptr %428, null
  br i1 %429, label %439, label %434

430:                                              ; preds = %423
  %431 = getelementptr inbounds %struct.rb_node, ptr %413, i32 0, i32 1
  %432 = load ptr, ptr %431, align 4
  %433 = icmp eq ptr %432, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %430, %426
  %435 = phi ptr [ %428, %426 ], [ %432, %430 ]
  br label %412

436:                                              ; preds = %430
  %437 = call ptr @rb_next(ptr noundef nonnull %413) #9
  %438 = icmp eq ptr %437, null
  br i1 %438, label %518, label %439

439:                                              ; preds = %436, %426, %423, %403
  %440 = phi ptr [ %437, %436 ], [ %397, %403 ], [ %413, %423 ], [ %413, %426 ]
  %441 = getelementptr inbounds %struct.extent_status, ptr %440, i32 0, i32 3
  %442 = load i64, ptr %441, align 8
  %443 = and i64 %442, 3458764513820540928
  %444 = icmp eq i64 %443, 2305843009213693952
  br i1 %444, label %461, label %445

445:                                              ; preds = %456, %439
  %446 = phi ptr [ %447, %456 ], [ %440, %439 ]
  %447 = call ptr @rb_next(ptr noundef nonnull %446) #9
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %452

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.extent_status, ptr %446, i32 0, i32 3
  %451 = load i64, ptr %450, align 8
  br label %461

452:                                              ; preds = %445
  %453 = getelementptr inbounds %struct.extent_status, ptr %447, i32 0, i32 1
  %454 = load i32, ptr %453, align 4
  %455 = icmp ugt i32 %454, %391
  br i1 %455, label %518, label %456

456:                                              ; preds = %452
  %457 = getelementptr inbounds %struct.extent_status, ptr %447, i32 0, i32 3
  %458 = load i64, ptr %457, align 8
  %459 = and i64 %458, 3458764513820540928
  %460 = icmp eq i64 %459, 2305843009213693952
  br i1 %460, label %461, label %445

461:                                              ; preds = %456, %449, %439
  %462 = phi i64 [ %442, %439 ], [ %451, %449 ], [ %458, %456 ]
  %463 = phi ptr [ %440, %439 ], [ %446, %449 ], [ %447, %456 ]
  %464 = and i64 %462, 3458764513820540928
  %465 = icmp eq i64 %464, 2305843009213693952
  br i1 %465, label %466, label %518

466:                                              ; preds = %461
  store ptr %463, ptr %396, align 4
  %467 = getelementptr inbounds %struct.extent_status, ptr %463, i32 0, i32 1
  %468 = load i32, ptr %467, align 4
  %469 = getelementptr inbounds %struct.extent_status, ptr %463, i32 0, i32 2
  %470 = load i32, ptr %469, align 8
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %518, label %472

472:                                              ; preds = %466
  %473 = icmp ule i32 %468, %93
  %474 = add i32 %470, %468
  %475 = icmp ugt i32 %474, %93
  %476 = select i1 %473, i1 %475, i1 false
  br i1 %476, label %481, label %477

477:                                              ; preds = %472
  %478 = icmp uge i32 %468, %93
  %479 = icmp ule i32 %468, %391
  %480 = and i1 %478, %479
  br i1 %480, label %481, label %518

481:                                              ; preds = %477, %472
  %482 = load ptr, ptr %9, align 4
  %483 = getelementptr inbounds %struct.super_block, ptr %482, i32 0, i32 27
  %484 = load ptr, ptr %483, align 4
  %485 = getelementptr i8, ptr %0, i32 472
  %486 = getelementptr inbounds %struct.ext4_sb_info, ptr %484, i32 0, i32 12
  %487 = load i32, ptr %486, align 16
  %488 = lshr i32 %93, %487
  %489 = load ptr, ptr %485, align 4
  %490 = icmp eq ptr %489, null
  br i1 %490, label %508, label %491

491:                                              ; preds = %502, %481
  %492 = phi ptr [ %504, %502 ], [ %489, %481 ]
  %493 = getelementptr inbounds %struct.pending_reservation, ptr %492, i32 0, i32 1
  %494 = load i32, ptr %493, align 4
  %495 = icmp ult i32 %488, %494
  br i1 %495, label %496, label %498

496:                                              ; preds = %491
  %497 = getelementptr inbounds %struct.rb_node, ptr %492, i32 0, i32 2
  br label %502

498:                                              ; preds = %491
  %499 = icmp ugt i32 %488, %494
  br i1 %499, label %500, label %549

500:                                              ; preds = %498
  %501 = getelementptr inbounds %struct.rb_node, ptr %492, i32 0, i32 1
  br label %502

502:                                              ; preds = %500, %496
  %503 = phi ptr [ %497, %496 ], [ %501, %500 ]
  %504 = load ptr, ptr %503, align 4
  %505 = icmp eq ptr %504, null
  br i1 %505, label %506, label %491

506:                                              ; preds = %502
  %507 = ptrtoint ptr %492 to i32
  br label %508

508:                                              ; preds = %506, %481
  %509 = phi i32 [ %507, %506 ], [ 0, %481 ]
  %510 = phi ptr [ %503, %506 ], [ %485, %481 ]
  %511 = load ptr, ptr @ext4_pending_cachep, align 4
  %512 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %511, i32 noundef 2592) #9
  %513 = icmp eq ptr %512, null
  br i1 %513, label %549, label %514

514:                                              ; preds = %508
  %515 = getelementptr inbounds %struct.pending_reservation, ptr %512, i32 0, i32 1
  store i32 %488, ptr %515, align 4
  store i32 %509, ptr %512, align 8
  %516 = getelementptr inbounds %struct.rb_node, ptr %512, i32 0, i32 1
  store ptr null, ptr %516, align 4
  %517 = getelementptr inbounds %struct.rb_node, ptr %512, i32 0, i32 2
  store ptr null, ptr %517, align 8
  store ptr %512, ptr %510, align 4
  call void @rb_insert_color(ptr noundef nonnull %512, ptr noundef %485) #9
  br label %549

518:                                              ; preds = %477, %466, %461, %452, %436, %409, %389
  %519 = load ptr, ptr %9, align 4
  %520 = getelementptr inbounds %struct.super_block, ptr %519, i32 0, i32 27
  %521 = load ptr, ptr %520, align 4
  %522 = getelementptr inbounds %struct.ext4_sb_info, ptr %521, i32 0, i32 12
  %523 = load i32, ptr %522, align 16
  %524 = lshr i32 %93, %523
  %525 = getelementptr i8, ptr %0, i32 472
  %526 = load ptr, ptr %525, align 4
  %527 = icmp eq ptr %526, null
  br i1 %527, label %549, label %528

528:                                              ; preds = %544, %518
  %529 = phi ptr [ %545, %544 ], [ %526, %518 ]
  %530 = getelementptr inbounds %struct.pending_reservation, ptr %529, i32 0, i32 1
  %531 = load i32, ptr %530, align 4
  %532 = icmp ugt i32 %531, %524
  br i1 %532, label %533, label %535

533:                                              ; preds = %528
  %534 = getelementptr inbounds %struct.rb_node, ptr %529, i32 0, i32 2
  br label %541

535:                                              ; preds = %528
  %536 = icmp ult i32 %531, %524
  br i1 %536, label %537, label %539

537:                                              ; preds = %535
  %538 = getelementptr inbounds %struct.rb_node, ptr %529, i32 0, i32 1
  br label %541

539:                                              ; preds = %535
  %540 = icmp eq i32 %531, %524
  br i1 %540, label %547, label %544

541:                                              ; preds = %537, %533
  %542 = phi ptr [ %538, %537 ], [ %534, %533 ]
  %543 = load ptr, ptr %542, align 4
  br label %544

544:                                              ; preds = %541, %539
  %545 = phi ptr [ %529, %539 ], [ %543, %541 ]
  %546 = icmp eq ptr %545, null
  br i1 %546, label %549, label %528

547:                                              ; preds = %539
  call void @rb_erase(ptr noundef nonnull %529, ptr noundef %525) #9
  %548 = load ptr, ptr @ext4_pending_cachep, align 4
  call void @kmem_cache_free(ptr noundef %548, ptr noundef nonnull %529) #9
  br label %549

549:                                              ; preds = %547, %544, %518, %514, %508, %498
  %550 = load i32, ptr %90, align 4
  %551 = sub i32 0, %550
  %552 = and i32 %8, %551
  %553 = add i32 %552, %550
  %554 = add i32 %553, -1
  %555 = icmp eq i32 %553, %7
  br i1 %555, label %683, label %556

556:                                              ; preds = %549
  %557 = icmp ult i32 %554, %7
  br i1 %557, label %558, label %559, !prof !18

558:                                              ; preds = %556
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %559

559:                                              ; preds = %558, %556
  %560 = getelementptr i8, ptr %0, i32 432
  %561 = getelementptr i8, ptr %0, i32 436
  %562 = load ptr, ptr %561, align 4
  %563 = icmp eq ptr %562, null
  br i1 %563, label %574, label %564

564:                                              ; preds = %559
  %565 = getelementptr inbounds %struct.extent_status, ptr %562, i32 0, i32 1
  %566 = load i32, ptr %565, align 4
  %567 = icmp ugt i32 %566, %7
  br i1 %567, label %574, label %568

568:                                              ; preds = %564
  %569 = getelementptr inbounds %struct.extent_status, ptr %562, i32 0, i32 2
  %570 = load i32, ptr %569, align 8
  %571 = add i32 %566, -1
  %572 = add i32 %571, %570
  %573 = icmp ult i32 %572, %7
  br i1 %573, label %574, label %604

574:                                              ; preds = %568, %564, %559
  %575 = load ptr, ptr %560, align 4
  %576 = icmp eq ptr %575, null
  br i1 %576, label %683, label %577

577:                                              ; preds = %599, %574
  %578 = phi ptr [ %600, %599 ], [ %575, %574 ]
  %579 = getelementptr inbounds %struct.extent_status, ptr %578, i32 0, i32 1
  %580 = load i32, ptr %579, align 4
  %581 = icmp ugt i32 %580, %7
  br i1 %581, label %591, label %582

582:                                              ; preds = %577
  %583 = getelementptr inbounds %struct.extent_status, ptr %578, i32 0, i32 2
  %584 = load i32, ptr %583, align 8
  %585 = add i32 %584, %580
  %586 = icmp ult i32 %585, %580
  br i1 %586, label %587, label %588, !prof !18

587:                                              ; preds = %582
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

588:                                              ; preds = %582
  %589 = add i32 %585, -1
  %590 = icmp ult i32 %589, %7
  br i1 %590, label %595, label %604

591:                                              ; preds = %577
  %592 = getelementptr inbounds %struct.rb_node, ptr %578, i32 0, i32 2
  %593 = load ptr, ptr %592, align 4
  %594 = icmp eq ptr %593, null
  br i1 %594, label %604, label %599

595:                                              ; preds = %588
  %596 = getelementptr inbounds %struct.rb_node, ptr %578, i32 0, i32 1
  %597 = load ptr, ptr %596, align 4
  %598 = icmp eq ptr %597, null
  br i1 %598, label %601, label %599

599:                                              ; preds = %595, %591
  %600 = phi ptr [ %593, %591 ], [ %597, %595 ]
  br label %577

601:                                              ; preds = %595
  %602 = call ptr @rb_next(ptr noundef nonnull %578) #9
  %603 = icmp eq ptr %602, null
  br i1 %603, label %683, label %604

604:                                              ; preds = %601, %591, %588, %568
  %605 = phi ptr [ %602, %601 ], [ %562, %568 ], [ %578, %588 ], [ %578, %591 ]
  %606 = getelementptr inbounds %struct.extent_status, ptr %605, i32 0, i32 3
  %607 = load i64, ptr %606, align 8
  %608 = and i64 %607, 3458764513820540928
  %609 = icmp eq i64 %608, 2305843009213693952
  br i1 %609, label %626, label %610

610:                                              ; preds = %621, %604
  %611 = phi ptr [ %612, %621 ], [ %605, %604 ]
  %612 = call ptr @rb_next(ptr noundef nonnull %611) #9
  %613 = icmp eq ptr %612, null
  br i1 %613, label %614, label %617

614:                                              ; preds = %610
  %615 = getelementptr inbounds %struct.extent_status, ptr %611, i32 0, i32 3
  %616 = load i64, ptr %615, align 8
  br label %626

617:                                              ; preds = %610
  %618 = getelementptr inbounds %struct.extent_status, ptr %612, i32 0, i32 1
  %619 = load i32, ptr %618, align 4
  %620 = icmp ugt i32 %619, %554
  br i1 %620, label %683, label %621

621:                                              ; preds = %617
  %622 = getelementptr inbounds %struct.extent_status, ptr %612, i32 0, i32 3
  %623 = load i64, ptr %622, align 8
  %624 = and i64 %623, 3458764513820540928
  %625 = icmp eq i64 %624, 2305843009213693952
  br i1 %625, label %626, label %610

626:                                              ; preds = %621, %614, %604
  %627 = phi i64 [ %607, %604 ], [ %616, %614 ], [ %623, %621 ]
  %628 = phi ptr [ %605, %604 ], [ %611, %614 ], [ %612, %621 ]
  %629 = and i64 %627, 3458764513820540928
  %630 = icmp eq i64 %629, 2305843009213693952
  br i1 %630, label %631, label %683

631:                                              ; preds = %626
  store ptr %628, ptr %561, align 4
  %632 = getelementptr inbounds %struct.extent_status, ptr %628, i32 0, i32 1
  %633 = load i32, ptr %632, align 4
  %634 = getelementptr inbounds %struct.extent_status, ptr %628, i32 0, i32 2
  %635 = load i32, ptr %634, align 8
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %683, label %637

637:                                              ; preds = %631
  %638 = icmp ule i32 %633, %7
  %639 = add i32 %635, %633
  %640 = icmp ugt i32 %639, %7
  %641 = select i1 %638, i1 %640, i1 false
  br i1 %641, label %646, label %642

642:                                              ; preds = %637
  %643 = icmp uge i32 %633, %7
  %644 = icmp ule i32 %633, %554
  %645 = and i1 %643, %644
  br i1 %645, label %646, label %683

646:                                              ; preds = %642, %637
  %647 = load ptr, ptr %9, align 4
  %648 = getelementptr inbounds %struct.super_block, ptr %647, i32 0, i32 27
  %649 = load ptr, ptr %648, align 4
  %650 = getelementptr i8, ptr %0, i32 472
  %651 = getelementptr inbounds %struct.ext4_sb_info, ptr %649, i32 0, i32 12
  %652 = load i32, ptr %651, align 16
  %653 = lshr i32 %554, %652
  %654 = load ptr, ptr %650, align 4
  %655 = icmp eq ptr %654, null
  br i1 %655, label %673, label %656

656:                                              ; preds = %667, %646
  %657 = phi ptr [ %669, %667 ], [ %654, %646 ]
  %658 = getelementptr inbounds %struct.pending_reservation, ptr %657, i32 0, i32 1
  %659 = load i32, ptr %658, align 4
  %660 = icmp ult i32 %653, %659
  br i1 %660, label %661, label %663

661:                                              ; preds = %656
  %662 = getelementptr inbounds %struct.rb_node, ptr %657, i32 0, i32 2
  br label %667

663:                                              ; preds = %656
  %664 = icmp ugt i32 %653, %659
  br i1 %664, label %665, label %714

665:                                              ; preds = %663
  %666 = getelementptr inbounds %struct.rb_node, ptr %657, i32 0, i32 1
  br label %667

667:                                              ; preds = %665, %661
  %668 = phi ptr [ %662, %661 ], [ %666, %665 ]
  %669 = load ptr, ptr %668, align 4
  %670 = icmp eq ptr %669, null
  br i1 %670, label %671, label %656

671:                                              ; preds = %667
  %672 = ptrtoint ptr %657 to i32
  br label %673

673:                                              ; preds = %671, %646
  %674 = phi i32 [ %672, %671 ], [ 0, %646 ]
  %675 = phi ptr [ %668, %671 ], [ %650, %646 ]
  %676 = load ptr, ptr @ext4_pending_cachep, align 4
  %677 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %676, i32 noundef 2592) #9
  %678 = icmp eq ptr %677, null
  br i1 %678, label %714, label %679

679:                                              ; preds = %673
  %680 = getelementptr inbounds %struct.pending_reservation, ptr %677, i32 0, i32 1
  store i32 %653, ptr %680, align 4
  store i32 %674, ptr %677, align 8
  %681 = getelementptr inbounds %struct.rb_node, ptr %677, i32 0, i32 1
  store ptr null, ptr %681, align 4
  %682 = getelementptr inbounds %struct.rb_node, ptr %677, i32 0, i32 2
  store ptr null, ptr %682, align 8
  store ptr %677, ptr %675, align 4
  call void @rb_insert_color(ptr noundef nonnull %677, ptr noundef %650) #9
  br label %714

683:                                              ; preds = %642, %631, %626, %617, %601, %574, %549
  %684 = load ptr, ptr %9, align 4
  %685 = getelementptr inbounds %struct.super_block, ptr %684, i32 0, i32 27
  %686 = load ptr, ptr %685, align 4
  %687 = getelementptr inbounds %struct.ext4_sb_info, ptr %686, i32 0, i32 12
  %688 = load i32, ptr %687, align 16
  %689 = lshr i32 %554, %688
  %690 = getelementptr i8, ptr %0, i32 472
  %691 = load ptr, ptr %690, align 4
  %692 = icmp eq ptr %691, null
  br i1 %692, label %714, label %693

693:                                              ; preds = %709, %683
  %694 = phi ptr [ %710, %709 ], [ %691, %683 ]
  %695 = getelementptr inbounds %struct.pending_reservation, ptr %694, i32 0, i32 1
  %696 = load i32, ptr %695, align 4
  %697 = icmp ugt i32 %696, %689
  br i1 %697, label %698, label %700

698:                                              ; preds = %693
  %699 = getelementptr inbounds %struct.rb_node, ptr %694, i32 0, i32 2
  br label %706

700:                                              ; preds = %693
  %701 = icmp ult i32 %696, %689
  br i1 %701, label %702, label %704

702:                                              ; preds = %700
  %703 = getelementptr inbounds %struct.rb_node, ptr %694, i32 0, i32 1
  br label %706

704:                                              ; preds = %700
  %705 = icmp eq i32 %696, %689
  br i1 %705, label %712, label %709

706:                                              ; preds = %702, %698
  %707 = phi ptr [ %703, %702 ], [ %699, %698 ]
  %708 = load ptr, ptr %707, align 4
  br label %709

709:                                              ; preds = %706, %704
  %710 = phi ptr [ %694, %704 ], [ %708, %706 ]
  %711 = icmp eq ptr %710, null
  br i1 %711, label %714, label %693

712:                                              ; preds = %704
  call void @rb_erase(ptr noundef nonnull %694, ptr noundef %690) #9
  %713 = load ptr, ptr @ext4_pending_cachep, align 4
  call void @kmem_cache_free(ptr noundef %713, ptr noundef nonnull %694) #9
  br label %714

714:                                              ; preds = %712, %709, %683, %679, %673, %663, %387, %384, %358, %354, %348, %338, %220, %214, %204, %73, %68, %49
  %715 = phi i32 [ %52, %49 ], [ %69, %73 ], [ %69, %68 ], [ %69, %214 ], [ %69, %220 ], [ %69, %348 ], [ %69, %354 ], [ %69, %358 ], [ %69, %387 ], [ %69, %673 ], [ %69, %679 ], [ %69, %683 ], [ %69, %712 ], [ %69, %384 ], [ %69, %338 ], [ %69, %204 ], [ %69, %709 ], [ %69, %663 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %51, i32 0) #9, !srcloc !25
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  br label %716

716:                                              ; preds = %714, %5
  %717 = phi i32 [ %715, %714 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  ret i32 %717
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__es_remove_extent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca %struct.extent_status, align 8
  %6 = alloca %struct.rsvd_count, align 4
  %7 = alloca %struct.extent_status, align 8
  %8 = getelementptr i8, ptr %0, i32 -208
  %9 = getelementptr i8, ptr %0, i32 432
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false), !annotation !20
  %10 = icmp eq ptr %3, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 134217728
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11, %4
  br label %21

21:                                               ; preds = %20, %11
  %22 = phi i1 [ false, %20 ], [ true, %11 ]
  %23 = load ptr, ptr %9, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %367, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 436
  %27 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %28 = getelementptr inbounds %struct.rsvd_count, ptr %6, i32 0, i32 1
  %29 = getelementptr inbounds %struct.rsvd_count, ptr %6, i32 0, i32 4
  %30 = getelementptr inbounds %struct.rsvd_count, ptr %6, i32 0, i32 5
  %31 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 2
  %33 = getelementptr inbounds %struct.extent_status, ptr %5, i32 0, i32 3
  %34 = add nuw i32 %2, 1
  %35 = getelementptr inbounds %struct.extent_status, ptr %7, i32 0, i32 1
  %36 = getelementptr inbounds %struct.extent_status, ptr %7, i32 0, i32 2
  %37 = getelementptr inbounds %struct.extent_status, ptr %7, i32 0, i32 3
  %38 = load i32, ptr %6, align 4
  br label %39

39:                                               ; preds = %142, %25
  %40 = phi i32 [ %38, %25 ], [ %93, %142 ]
  %41 = phi ptr [ %23, %25 ], [ %143, %142 ]
  br label %42

42:                                               ; preds = %60, %39
  %43 = phi ptr [ %41, %39 ], [ %61, %60 ]
  %44 = getelementptr inbounds %struct.extent_status, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, %1
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.extent_status, ptr %43, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, %45
  %51 = icmp ult i32 %50, %45
  br i1 %51, label %52, label %53, !prof !18

52:                                               ; preds = %47
  store i32 %40, ptr %6, align 4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

53:                                               ; preds = %47
  %54 = add i32 %50, -1
  %55 = icmp ult i32 %54, %1
  br i1 %55, label %62, label %72

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %62, %56
  %61 = phi ptr [ %58, %56 ], [ %64, %62 ]
  br label %42

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %60

66:                                               ; preds = %62
  %67 = tail call ptr @rb_next(ptr noundef nonnull %43) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %365, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.extent_status, ptr %67, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %56, %53
  %73 = phi i32 [ %71, %69 ], [ %45, %53 ], [ %45, %56 ]
  %74 = phi ptr [ %67, %69 ], [ %43, %53 ], [ %43, %56 ]
  %75 = getelementptr inbounds %struct.extent_status, ptr %74, i32 0, i32 1
  %76 = icmp ugt i32 %73, %2
  br i1 %76, label %365, label %77

77:                                               ; preds = %72
  store ptr null, ptr %26, align 4
  br i1 %22, label %78, label %92

78:                                               ; preds = %77
  %79 = load ptr, ptr %27, align 4
  %80 = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 27
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.ext4_sb_info, ptr %81, i32 0, i32 11
  %83 = load i32, ptr %82, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  store i8 0, ptr %28, align 4
  %86 = load i32, ptr %75, align 4
  %87 = icmp ult i32 %86, %1
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = tail call ptr @rb_prev(ptr noundef nonnull %74) #9
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi ptr [ %89, %88 ], [ %74, %85 ]
  store ptr %91, ptr %29, align 4
  store i8 0, ptr %30, align 4
  br label %92

92:                                               ; preds = %90, %78, %77
  %93 = phi i32 [ 0, %90 ], [ 0, %78 ], [ %40, %77 ]
  %94 = load i32, ptr %75, align 4
  store i32 %94, ptr %31, align 4
  %95 = getelementptr inbounds %struct.extent_status, ptr %74, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  store i32 %96, ptr %32, align 8
  %97 = getelementptr inbounds %struct.extent_status, ptr %74, i32 0, i32 3
  %98 = load i64, ptr %97, align 8
  store i64 %98, ptr %33, align 8
  %99 = load i32, ptr %75, align 4
  %100 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %99)
  %101 = load i32, ptr %95, align 8
  %102 = add i32 %101, %99
  %103 = icmp ult i32 %102, %99
  br i1 %103, label %104, label %105, !prof !18

104:                                              ; preds = %92
  store i32 %93, ptr %6, align 4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

105:                                              ; preds = %92
  %106 = add i32 %102, -1
  %107 = icmp ugt i32 %106, %2
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = sub i32 %106, %2
  %110 = icmp ult i32 %99, %1
  br i1 %110, label %113, label %145

111:                                              ; preds = %105
  store i32 %93, ptr %6, align 4
  %112 = icmp ult i32 %99, %1
  br i1 %112, label %164, label %170

113:                                              ; preds = %108
  store i32 %100, ptr %95, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i32 24, i1 false), !annotation !20
  store i32 %34, ptr %35, align 4
  store i32 %109, ptr %36, align 8
  %114 = load i64, ptr %33, align 8
  %115 = and i64 %114, 1729382256910270464
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %113
  %118 = and i64 %114, 576460752303423487
  %119 = load i32, ptr %32, align 8
  %120 = zext i32 %119 to i64
  %121 = zext i32 %109 to i64
  %122 = sub nsw i64 %118, %121
  %123 = add nsw i64 %122, %120
  br label %124

124:                                              ; preds = %117, %113
  %125 = phi i64 [ %123, %117 ], [ 549196775151, %113 ]
  %126 = and i64 %114, -576460752303423488
  %127 = and i64 %125, 576460752303423487
  %128 = or i64 %127, %126
  store i64 %128, ptr %37, align 8
  %129 = call fastcc i32 @__es_insert_extent(ptr noundef %0, ptr noundef nonnull %7)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 %93, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  br label %159

132:                                              ; preds = %124
  store i32 %94, ptr %75, align 4
  %133 = load i32, ptr %32, align 8
  store i32 %133, ptr %95, align 8
  %134 = icmp eq i32 %129, -12
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load ptr, ptr %27, align 4
  %137 = getelementptr inbounds %struct.super_block, ptr %136, i32 0, i32 27
  %138 = load ptr, ptr %137, align 4
  %139 = tail call fastcc i32 @__es_shrink(ptr noundef %138, i32 noundef 128, ptr noundef %8)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %132
  store i32 %93, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  br label %367

142:                                              ; preds = %135
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  %143 = load ptr, ptr %9, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %365, label %39

145:                                              ; preds = %108
  store i32 %93, ptr %6, align 4
  store i32 %34, ptr %75, align 4
  store i32 %109, ptr %95, align 8
  %146 = load i64, ptr %97, align 8
  %147 = and i64 %146, 1729382256910270464
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %145
  %150 = load i64, ptr %33, align 8
  %151 = load i32, ptr %32, align 8
  %152 = zext i32 %151 to i64
  %153 = zext i32 %109 to i64
  %154 = sub i64 %150, %153
  %155 = add i64 %154, %152
  %156 = and i64 %155, 576460752303423487
  %157 = and i64 %146, -576460752303423488
  %158 = or i64 %156, %157
  store i64 %158, ptr %97, align 8
  br label %159

159:                                              ; preds = %149, %145, %131
  br i1 %22, label %160, label %367

160:                                              ; preds = %159
  %161 = load i32, ptr %32, align 8
  %162 = add i32 %109, %100
  %163 = sub i32 %161, %162
  call fastcc void @count_rsvd(ptr noundef %0, i32 noundef %1, i32 noundef %163, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %367

164:                                              ; preds = %111
  store i32 %100, ptr %95, align 8
  br i1 %22, label %165, label %168

165:                                              ; preds = %164
  %166 = load i32, ptr %32, align 8
  %167 = sub i32 %166, %100
  call fastcc void @count_rsvd(ptr noundef %0, i32 noundef %1, i32 noundef %167, ptr noundef nonnull %5, ptr noundef nonnull %6)
  br label %168

168:                                              ; preds = %165, %164
  %169 = tail call ptr @rb_next(ptr noundef nonnull %74) #9
  br label %170

170:                                              ; preds = %168, %111
  %171 = phi ptr [ %74, %111 ], [ %169, %168 ]
  br label %172

172:                                              ; preds = %188, %170
  %173 = phi ptr [ %189, %188 ], [ %171, %170 ]
  %174 = icmp eq ptr %173, null
  br i1 %174, label %213, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.extent_status, ptr %173, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.extent_status, ptr %173, i32 0, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = add i32 %179, %177
  %181 = icmp ult i32 %180, %177
  br i1 %181, label %182, label %183, !prof !18

182:                                              ; preds = %175
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

183:                                              ; preds = %175
  %184 = add i32 %180, -1
  %185 = icmp ugt i32 %184, %2
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  br i1 %22, label %187, label %188

187:                                              ; preds = %186
  call fastcc void @count_rsvd(ptr noundef %0, i32 noundef %177, i32 noundef %179, ptr noundef nonnull %173, ptr noundef nonnull %6)
  br label %188

188:                                              ; preds = %187, %186
  %189 = tail call ptr @rb_next(ptr noundef nonnull %173) #9
  tail call void @rb_erase(ptr noundef nonnull %173, ptr noundef %9) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %0, ptr noundef nonnull %173)
  %190 = icmp eq ptr %189, null
  br i1 %190, label %213, label %172

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.extent_status, ptr %173, i32 0, i32 1
  %193 = getelementptr inbounds %struct.extent_status, ptr %173, i32 0, i32 2
  %194 = icmp ugt i32 %177, %2
  br i1 %194, label %213, label %195

195:                                              ; preds = %191
  %196 = xor i32 %2, -1
  %197 = add i32 %180, %196
  br i1 %22, label %198, label %200

198:                                              ; preds = %195
  %199 = sub i32 %179, %197
  call fastcc void @count_rsvd(ptr noundef %0, i32 noundef %177, i32 noundef %199, ptr noundef nonnull %173, ptr noundef nonnull %6)
  br label %200

200:                                              ; preds = %198, %195
  store i32 %34, ptr %192, align 4
  store i32 %197, ptr %193, align 8
  %201 = getelementptr inbounds %struct.extent_status, ptr %173, i32 0, i32 3
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 1729382256910270464
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %200
  %206 = zext i32 %179 to i64
  %207 = zext i32 %197 to i64
  %208 = sub nsw i64 %206, %207
  %209 = add i64 %208, %202
  %210 = and i64 %209, 576460752303423487
  %211 = and i64 %202, -576460752303423488
  %212 = or i64 %210, %211
  store i64 %212, ptr %201, align 8
  br label %213

213:                                              ; preds = %205, %200, %191, %188, %172
  %214 = phi i1 [ false, %205 ], [ false, %191 ], [ false, %200 ], [ true, %172 ], [ true, %188 ]
  %215 = phi ptr [ %173, %205 ], [ %173, %191 ], [ %173, %200 ], [ null, %172 ], [ null, %188 ]
  br i1 %22, label %216, label %367

216:                                              ; preds = %213
  %217 = load ptr, ptr %27, align 4
  %218 = getelementptr inbounds %struct.super_block, ptr %217, i32 0, i32 27
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr i8, ptr %0, i32 472
  %221 = getelementptr inbounds %struct.ext4_sb_info, ptr %219, i32 0, i32 11
  %222 = load i32, ptr %221, align 4
  %223 = icmp ugt i32 %222, 1
  br i1 %223, label %226, label %224

224:                                              ; preds = %216
  %225 = load i32, ptr %6, align 4
  br label %363

226:                                              ; preds = %216
  %227 = load i8, ptr %30, align 4, !range !27
  %228 = icmp eq i8 %227, 0
  %229 = load i32, ptr %6, align 4
  br i1 %228, label %232, label %230

230:                                              ; preds = %226
  %231 = add i32 %229, 1
  store i32 %231, ptr %6, align 4
  br label %232

232:                                              ; preds = %230, %226
  %233 = phi i32 [ %231, %230 ], [ %229, %226 ]
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %363, label %235

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.rsvd_count, ptr %6, i32 0, i32 2
  %237 = load i32, ptr %236, align 4
  %238 = getelementptr inbounds %struct.ext4_sb_info, ptr %219, i32 0, i32 12
  %239 = load i32, ptr %238, align 16
  %240 = lshr i32 %237, %239
  %241 = getelementptr inbounds %struct.rsvd_count, ptr %6, i32 0, i32 3
  %242 = load i32, ptr %241, align 4
  %243 = lshr i32 %242, %239
  %244 = load ptr, ptr %29, align 4
  br label %245

245:                                              ; preds = %269, %235
  %246 = phi ptr [ %244, %235 ], [ %270, %269 ]
  %247 = icmp eq ptr %246, null
  br i1 %247, label %272, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.extent_status, ptr %246, i32 0, i32 1
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr inbounds %struct.extent_status, ptr %246, i32 0, i32 2
  %252 = load i32, ptr %251, align 8
  %253 = add i32 %252, %250
  %254 = icmp ult i32 %253, %250
  br i1 %254, label %255, label %256, !prof !18

255:                                              ; preds = %248
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

256:                                              ; preds = %248
  %257 = add i32 %253, -1
  %258 = load i32, ptr %221, align 4
  %259 = sub i32 0, %258
  %260 = and i32 %237, %259
  %261 = icmp ult i32 %257, %260
  br i1 %261, label %272, label %262

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.extent_status, ptr %246, i32 0, i32 3
  %264 = load i64, ptr %263, align 8
  %265 = and i64 %264, 3458764513820540928
  %266 = icmp eq i64 %265, 2305843009213693952
  br i1 %266, label %267, label %269

267:                                              ; preds = %262
  %268 = add i32 %233, -1
  br label %272

269:                                              ; preds = %262
  %270 = tail call ptr @rb_prev(ptr noundef nonnull %246) #9
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %245

272:                                              ; preds = %269, %267, %256, %245
  %273 = phi i32 [ %268, %267 ], [ %233, %245 ], [ %233, %256 ], [ %233, %269 ]
  %274 = phi i1 [ true, %267 ], [ false, %245 ], [ false, %256 ], [ false, %269 ]
  %275 = icmp eq i32 %240, %243
  %276 = select i1 %274, i1 %275, i1 false
  %277 = select i1 %214, i1 true, i1 %276
  br i1 %277, label %313, label %278

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.extent_status, ptr %215, i32 0, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr inbounds %struct.extent_status, ptr %215, i32 0, i32 2
  %282 = load i32, ptr %281, align 8
  %283 = add i32 %282, %280
  %284 = icmp ult i32 %283, %280
  br i1 %284, label %285, label %286, !prof !18

285:                                              ; preds = %278
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

286:                                              ; preds = %278
  %287 = add i32 %283, -1
  %288 = icmp ugt i32 %287, %2
  br i1 %288, label %291, label %289

289:                                              ; preds = %286
  %290 = tail call ptr @rb_next(ptr noundef nonnull %215) #9
  br label %291

291:                                              ; preds = %289, %286
  %292 = phi ptr [ %215, %286 ], [ %290, %289 ]
  br label %293

293:                                              ; preds = %310, %291
  %294 = phi ptr [ %311, %310 ], [ %292, %291 ]
  %295 = icmp eq ptr %294, null
  br i1 %295, label %313, label %296

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.extent_status, ptr %294, i32 0, i32 1
  %298 = load i32, ptr %297, align 4
  %299 = load i32, ptr %221, align 4
  %300 = add i32 %299, -1
  %301 = or i32 %300, %242
  %302 = icmp ugt i32 %298, %301
  br i1 %302, label %313, label %303

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.extent_status, ptr %294, i32 0, i32 3
  %305 = load i64, ptr %304, align 8
  %306 = and i64 %305, 3458764513820540928
  %307 = icmp eq i64 %306, 2305843009213693952
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = add i32 %273, -1
  br label %313

310:                                              ; preds = %303
  %311 = tail call ptr @rb_next(ptr noundef nonnull %294) #9
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %293

313:                                              ; preds = %310, %308, %296, %293, %272
  %314 = phi i32 [ %309, %308 ], [ %273, %272 ], [ %273, %293 ], [ %273, %296 ], [ %273, %310 ]
  %315 = phi i1 [ true, %308 ], [ false, %272 ], [ false, %293 ], [ false, %296 ], [ false, %310 ]
  br i1 %275, label %316, label %318

316:                                              ; preds = %313
  %317 = or i1 %274, %315
  br i1 %317, label %363, label %324

318:                                              ; preds = %313
  %319 = zext i1 %274 to i32
  %320 = add i32 %240, %319
  %321 = sext i1 %315 to i32
  %322 = add i32 %243, %321
  %323 = icmp ugt i32 %320, %322
  br i1 %323, label %363, label %324

324:                                              ; preds = %318, %316
  %325 = phi i32 [ %240, %316 ], [ %320, %318 ]
  %326 = phi i32 [ %240, %316 ], [ %322, %318 ]
  %327 = load ptr, ptr %220, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %348, label %329

329:                                              ; preds = %344, %324
  %330 = phi ptr [ %345, %344 ], [ %327, %324 ]
  %331 = getelementptr inbounds %struct.pending_reservation, ptr %330, i32 0, i32 1
  %332 = load i32, ptr %331, align 4
  %333 = icmp ugt i32 %332, %325
  br i1 %333, label %336, label %334

334:                                              ; preds = %329
  %335 = icmp ult i32 %332, %325
  br i1 %335, label %340, label %348

336:                                              ; preds = %329
  %337 = getelementptr inbounds %struct.rb_node, ptr %330, i32 0, i32 2
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %348, label %344

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.rb_node, ptr %330, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %346, label %344

344:                                              ; preds = %340, %336
  %345 = phi ptr [ %338, %336 ], [ %342, %340 ]
  br label %329

346:                                              ; preds = %340
  %347 = tail call ptr @rb_next(ptr noundef nonnull %330) #9
  br label %348

348:                                              ; preds = %346, %336, %334, %324
  %349 = phi ptr [ null, %324 ], [ %347, %346 ], [ %330, %334 ], [ %330, %336 ]
  br label %350

350:                                              ; preds = %358, %348
  %351 = phi i32 [ %359, %358 ], [ %314, %348 ]
  %352 = phi ptr [ %360, %358 ], [ %349, %348 ]
  %353 = icmp eq ptr %352, null
  br i1 %353, label %363, label %354

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.pending_reservation, ptr %352, i32 0, i32 1
  %356 = load i32, ptr %355, align 4
  %357 = icmp ugt i32 %356, %326
  br i1 %357, label %363, label %358

358:                                              ; preds = %354
  %359 = add i32 %351, -1
  store i32 %359, ptr %6, align 4
  %360 = tail call ptr @rb_next(ptr noundef nonnull %352) #9
  tail call void @rb_erase(ptr noundef nonnull %352, ptr noundef %220) #9
  %361 = load ptr, ptr @ext4_pending_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %361, ptr noundef nonnull %352) #9
  %362 = icmp eq ptr %360, null
  br i1 %362, label %363, label %350

363:                                              ; preds = %358, %354, %350, %318, %316, %232, %224
  %364 = phi i32 [ 0, %232 ], [ %225, %224 ], [ %314, %318 ], [ %314, %316 ], [ %359, %358 ], [ %351, %354 ], [ %351, %350 ]
  store i32 %364, ptr %3, align 4
  br label %367

365:                                              ; preds = %142, %72, %66
  %366 = phi i32 [ %93, %142 ], [ %40, %66 ], [ %40, %72 ]
  store i32 %366, ptr %6, align 4
  br label %367

367:                                              ; preds = %365, %363, %213, %160, %159, %141, %21
  %368 = phi i32 [ 0, %160 ], [ 0, %159 ], [ 0, %363 ], [ 0, %213 ], [ %129, %141 ], [ 0, %21 ], [ 0, %365 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret i32 %368
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__es_insert_extent(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 432
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %103, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 1
  br label %8

8:                                                ; preds = %97, %6
  %9 = phi ptr [ %4, %6 ], [ %99, %97 ]
  %10 = phi ptr [ %3, %6 ], [ %98, %97 ]
  %11 = load i32, ptr %7, align 4
  %12 = getelementptr inbounds %struct.extent_status, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %8
  %16 = tail call fastcc i32 @ext4_es_can_be_merged(ptr noundef %1, ptr noundef nonnull %9)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.extent_status, ptr %9, i32 0, i32 1
  %20 = load i32, ptr %7, align 4
  store i32 %20, ptr %19, align 4
  %21 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.extent_status, ptr %9, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, %22
  store i32 %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.extent_status, ptr %9, i32 0, i32 3
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 1729382256910270464
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 3
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 576460752303423487
  %34 = and i64 %27, -576460752303423488
  %35 = or i64 %33, %34
  store i64 %35, ptr %26, align 8
  br label %36

36:                                               ; preds = %30, %18
  %37 = tail call ptr @rb_prev(ptr noundef nonnull %9) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %168, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @ext4_es_can_be_merged(ptr noundef nonnull %37, ptr noundef nonnull %9) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %168, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %23, align 8
  %44 = getelementptr inbounds %struct.extent_status, ptr %37, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, %43
  store i32 %46, ptr %44, align 8
  %47 = load i64, ptr %26, align 8
  %48 = icmp sgt i64 %47, -1
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.extent_status, ptr %37, i32 0, i32 3
  %51 = load i64, ptr %50, align 8
  %52 = or i64 %51, -9223372036854775808
  store i64 %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %49, %42
  tail call void @rb_erase(ptr noundef nonnull %9, ptr noundef %3) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %0, ptr noundef nonnull %9) #9
  br label %168

54:                                               ; preds = %15
  %55 = load ptr, ptr %10, align 4
  %56 = getelementptr inbounds %struct.rb_node, ptr %55, i32 0, i32 2
  br label %97

57:                                               ; preds = %8
  %58 = getelementptr inbounds %struct.extent_status, ptr %9, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = add i32 %59, %13
  %61 = icmp ult i32 %60, %13
  br i1 %61, label %62, label %63, !prof !18

62:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

63:                                               ; preds = %57
  %64 = add i32 %60, -1
  %65 = icmp ugt i32 %11, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = tail call fastcc i32 @ext4_es_can_be_merged(ptr noundef nonnull %9, ptr noundef %1)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.extent_status, ptr %9, i32 0, i32 2
  %71 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = load i32, ptr %70, align 8
  %74 = add i32 %73, %72
  store i32 %74, ptr %70, align 8
  %75 = tail call ptr @rb_next(ptr noundef nonnull %9) #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %168, label %77

77:                                               ; preds = %69
  %78 = tail call fastcc i32 @ext4_es_can_be_merged(ptr noundef nonnull %9, ptr noundef nonnull %75) #9
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %168, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.extent_status, ptr %75, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = load i32, ptr %70, align 8
  %84 = add i32 %83, %82
  store i32 %84, ptr %70, align 8
  %85 = getelementptr inbounds %struct.extent_status, ptr %75, i32 0, i32 3
  %86 = load i64, ptr %85, align 8
  %87 = icmp sgt i64 %86, -1
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.extent_status, ptr %9, i32 0, i32 3
  %90 = load i64, ptr %89, align 8
  %91 = or i64 %90, -9223372036854775808
  store i64 %91, ptr %89, align 8
  br label %92

92:                                               ; preds = %88, %80
  tail call void @rb_erase(ptr noundef nonnull %75, ptr noundef %3) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %0, ptr noundef nonnull %75) #9
  br label %168

93:                                               ; preds = %66
  %94 = load ptr, ptr %10, align 4
  %95 = getelementptr inbounds %struct.rb_node, ptr %94, i32 0, i32 1
  br label %97

96:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 792, 0\0A.popsection", ""() #9, !srcloc !28
  unreachable

97:                                               ; preds = %93, %54
  %98 = phi ptr [ %56, %54 ], [ %95, %93 ]
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %8

101:                                              ; preds = %97
  %102 = ptrtoint ptr %9 to i32
  br label %103

103:                                              ; preds = %101, %2
  %104 = phi ptr [ %98, %101 ], [ %3, %2 ]
  %105 = phi i32 [ %102, %101 ], [ 0, %2 ]
  %106 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 3
  %111 = load i64, ptr %110, align 8
  %112 = load ptr, ptr @ext4_es_cachep, align 4
  %113 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %112, i32 noundef 2592) #9
  %114 = icmp eq ptr %113, null
  br i1 %114, label %171, label %115

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.extent_status, ptr %113, i32 0, i32 1
  store i32 %107, ptr %116, align 4
  %117 = getelementptr inbounds %struct.extent_status, ptr %113, i32 0, i32 2
  store i32 %109, ptr %117, align 8
  %118 = getelementptr inbounds %struct.extent_status, ptr %113, i32 0, i32 3
  store i64 %111, ptr %118, align 8
  %119 = and i64 %111, 2305843009213693952
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %156

121:                                              ; preds = %115
  %122 = getelementptr i8, ptr %0, i32 456
  %123 = load i32, ptr %122, align 8
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 8
  %125 = icmp eq i32 %123, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.super_block, ptr %128, i32 0, i32 27
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr i8, ptr %0, i32 444
  %132 = load volatile ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %134, label %149

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.ext4_sb_info, ptr %130, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %135) #9
  %136 = load volatile ptr, ptr %131, align 4
  %137 = icmp eq ptr %136, %131
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.ext4_sb_info, ptr %130, i32 0, i32 122
  %140 = getelementptr inbounds %struct.ext4_sb_info, ptr %130, i32 0, i32 122, i32 1
  %141 = load ptr, ptr %140, align 4
  store ptr %131, ptr %140, align 4
  store ptr %139, ptr %131, align 4
  %142 = getelementptr i8, ptr %0, i32 448
  store ptr %141, ptr %142, align 4
  store volatile ptr %131, ptr %141, align 4
  %143 = getelementptr inbounds %struct.ext4_sb_info, ptr %130, i32 0, i32 123
  %144 = load i32, ptr %143, align 8
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 8
  br label %146

146:                                              ; preds = %138, %134
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %147 = load i16, ptr %135, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr %135, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br label %149

149:                                              ; preds = %146, %126, %121
  %150 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.super_block, ptr %151, i32 0, i32 27
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.ext4_sb_info, ptr %153, i32 0, i32 124, i32 6
  %155 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %154, i64 noundef 1, i32 noundef %155) #9
  br label %156

156:                                              ; preds = %149, %115
  %157 = getelementptr i8, ptr %0, i32 452
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 4
  %160 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.super_block, ptr %161, i32 0, i32 27
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.ext4_sb_info, ptr %163, i32 0, i32 124, i32 5
  %165 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %164, i64 noundef 1, i32 noundef %165) #9
  store i32 %105, ptr %113, align 8
  %166 = getelementptr inbounds %struct.rb_node, ptr %113, i32 0, i32 1
  store ptr null, ptr %166, align 4
  %167 = getelementptr inbounds %struct.rb_node, ptr %113, i32 0, i32 2
  store ptr null, ptr %167, align 8
  store ptr %113, ptr %104, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %113, ptr noundef %3) #9
  br label %168

168:                                              ; preds = %156, %92, %77, %69, %53, %39, %36
  %169 = phi ptr [ %113, %156 ], [ %9, %36 ], [ %37, %53 ], [ %9, %39 ], [ %9, %69 ], [ %9, %77 ], [ %9, %92 ]
  %170 = getelementptr i8, ptr %0, i32 436
  store ptr %169, ptr %170, align 4
  br label %171

171:                                              ; preds = %168, %103
  %172 = phi i32 [ 0, %168 ], [ -12, %103 ]
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__es_shrink(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124
  %6 = tail call i64 @ktime_get() #9
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 128
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 123
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 122
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 122, i32 1
  br label %11

11:                                               ; preds = %64, %3
  %12 = phi i32 [ 0, %3 ], [ %65, %64 ]
  %13 = phi i1 [ false, %3 ], [ true, %64 ]
  %14 = phi i1 [ true, %3 ], [ false, %64 ]
  %15 = phi i32 [ 0, %3 ], [ 1, %64 ]
  %16 = phi i32 [ 0, %3 ], [ %66, %64 ]
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  %17 = load i32, ptr %8, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %62, %11
  %20 = phi i32 [ %26, %62 ], [ %17, %11 ]
  %21 = phi i32 [ %25, %62 ], [ %16, %11 ]
  %22 = phi i32 [ %59, %62 ], [ %12, %11 ]
  br label %23

23:                                               ; preds = %46, %19
  %24 = phi i32 [ %20, %19 ], [ %26, %46 ]
  %25 = phi i32 [ %21, %19 ], [ %47, %46 ]
  %26 = add nsw i32 %24, -1
  %27 = load volatile ptr, ptr %9, align 4
  %28 = icmp eq ptr %27, %9
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %30 = load i16, ptr %7, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br label %79

32:                                               ; preds = %23
  %33 = getelementptr i8, ptr %27, i32 -652
  %34 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store volatile ptr %36, ptr %35, align 4
  %38 = load ptr, ptr %10, align 4
  store ptr %27, ptr %10, align 4
  store ptr %9, ptr %27, align 4
  store ptr %38, ptr %34, align 4
  store volatile ptr %27, ptr %38, align 4
  br i1 %14, label %39, label %49

39:                                               ; preds = %32
  %40 = getelementptr i8, ptr %27, i32 -572
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 256
  %43 = icmp ne i32 %42, 0
  %44 = icmp eq ptr %33, %2
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %51, %49, %39
  %47 = add i32 %25, 1
  %48 = icmp sgt i32 %24, 1
  br i1 %48, label %23, label %64

49:                                               ; preds = %32
  %50 = icmp eq ptr %33, %2
  br i1 %50, label %46, label %51

51:                                               ; preds = %49, %39
  %52 = getelementptr i8, ptr %27, i32 -4
  %53 = tail call i32 @_raw_write_trylock(ptr noundef %52) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %46, label %55

55:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %56 = load i16, ptr %7, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %58 = call fastcc i32 @es_reclaim_extents(ptr noundef %33, ptr noundef nonnull %4)
  %59 = add i32 %58, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %52, i32 0) #9, !srcloc !25
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %60 = load i32, ptr %4, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %79, label %62

62:                                               ; preds = %55
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  %63 = icmp sgt i32 %24, 1
  br i1 %63, label %19, label %64

64:                                               ; preds = %62, %46, %11
  %65 = phi i32 [ %12, %11 ], [ %22, %46 ], [ %59, %62 ]
  %66 = phi i32 [ %16, %11 ], [ %47, %46 ], [ %25, %62 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %67 = load i16, ptr %7, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %69 = icmp eq i32 %65, 0
  %70 = icmp eq i32 %66, 0
  %71 = xor i1 %69, true
  %72 = select i1 %71, i1 true, i1 %70
  %73 = or i1 %13, %72
  br i1 %73, label %74, label %11

74:                                               ; preds = %64
  %75 = icmp ne ptr %2, null
  %76 = select i1 %75, i1 %69, i1 false
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call fastcc i32 @es_reclaim_extents(ptr noundef nonnull %2, ptr noundef nonnull %4)
  br label %79

79:                                               ; preds = %77, %74, %55, %29
  %80 = phi i32 [ %25, %29 ], [ %66, %77 ], [ %66, %74 ], [ %25, %55 ]
  %81 = phi i32 [ %22, %29 ], [ %78, %77 ], [ %65, %74 ], [ %59, %55 ]
  %82 = tail call i64 @ktime_get() #9
  %83 = sub i64 %82, %6
  %84 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 3
  %85 = load i64, ptr %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %91, label %87, !prof !18

87:                                               ; preds = %79
  %88 = mul i64 %85, 3
  %89 = add i64 %88, %83
  %90 = lshr i64 %89, 2
  br label %91

91:                                               ; preds = %87, %79
  %92 = phi i64 [ %90, %87 ], [ %83, %79 ]
  store i64 %92, ptr %84, align 8
  %93 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 4
  %94 = load i64, ptr %93, align 8
  %95 = icmp ugt i64 %83, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i64 %83, ptr %93, align 8
  br label %97

97:                                               ; preds = %96, %91
  %98 = load i32, ptr %5, align 8
  %99 = icmp eq i32 %98, 0
  %100 = mul i32 %98, 3
  %101 = add i32 %100, %81
  %102 = lshr i32 %101, 2
  %103 = select i1 %99, i32 %81, i32 %102, !prof !18
  store i32 %103, ptr %5, align 8
  %104 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 45
  %105 = load ptr, ptr %104, align 4
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink, i32 0, i32 1), align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %97
  %109 = tail call ptr @llvm.thread.pointer() #9
  %110 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 5
  %113 = getelementptr i32, ptr @__cpu_online_mask, i32 %112
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %111, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %120 = tail call i32 @__traceiter_ext4_es_shrink(ptr noundef null, ptr noundef %105, i32 noundef %81, i64 noundef %83, i32 noundef %80, i32 noundef %15) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !32
  br label %121

121:                                              ; preds = %119, %108, %97
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_es_cache_extent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = alloca %struct.extent_status, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 24, i1 false), !annotation !20
  %7 = add i32 %1, -1
  %8 = add i32 %7, %2
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 25
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 32
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %86

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.extent_status, ptr %6, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.extent_status, ptr %6, i32 0, i32 2
  store i32 %2, ptr %19, align 8
  %20 = zext i32 %4 to i64
  %21 = shl i64 %20, 59
  %22 = and i64 %3, 576460752303423487
  %23 = or i64 %21, %22
  %24 = getelementptr inbounds %struct.extent_status, ptr %6, i32 0, i32 3
  store i64 %23, ptr %24, align 8
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_cache_extent, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %17
  %28 = tail call ptr @llvm.thread.pointer() #9
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !33
  %39 = call i32 @__traceiter_ext4_es_cache_extent(ptr noundef null, ptr noundef %0, ptr noundef nonnull %6) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  br label %40

40:                                               ; preds = %38, %27, %17
  %41 = icmp eq i32 %2, 0
  br i1 %41, label %86, label %42

42:                                               ; preds = %40
  %43 = icmp ult i32 %8, %1
  br i1 %43, label %44, label %45, !prof !18

44:                                               ; preds = %42
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 899, 0\0A.popsection", ""() #9, !srcloc !35
  unreachable

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %0, i32 440
  call void @_raw_write_lock(ptr noundef %46) #9
  %47 = getelementptr i8, ptr %0, i32 432
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %83, label %50

50:                                               ; preds = %68, %45
  %51 = phi ptr [ %69, %68 ], [ %48, %45 ]
  %52 = getelementptr inbounds %struct.extent_status, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, %1
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.extent_status, ptr %51, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %57, %53
  %59 = icmp ult i32 %58, %53
  br i1 %59, label %60, label %61, !prof !18

60:                                               ; preds = %55
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

61:                                               ; preds = %55
  %62 = add i32 %58, -1
  %63 = icmp ult i32 %62, %1
  br i1 %63, label %70, label %80

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %70, %64
  %69 = phi ptr [ %66, %64 ], [ %72, %70 ]
  br label %50

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %68

74:                                               ; preds = %70
  %75 = call ptr @rb_next(ptr noundef nonnull %51) #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.extent_status, ptr %75, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %64, %61
  %81 = phi i32 [ %79, %77 ], [ %53, %61 ], [ %53, %64 ]
  %82 = icmp ugt i32 %81, %8
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %74, %45
  %84 = call fastcc i32 @__es_insert_extent(ptr noundef %0, ptr noundef nonnull %6)
  br label %85

85:                                               ; preds = %83, %80
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %46, i32 0) #9, !srcloc !25
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  br label %86

86:                                               ; preds = %85, %40, %5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_es_lookup_extent(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 25
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %126

13:                                               ; preds = %4
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_lookup_extent_enter, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = tail call ptr @llvm.thread.pointer() #9
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !36
  %28 = tail call i32 @__traceiter_ext4_es_lookup_extent_enter(ptr noundef null, ptr noundef %0, i32 noundef %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  br label %29

29:                                               ; preds = %27, %16, %13
  %30 = getelementptr i8, ptr %0, i32 432
  %31 = getelementptr i8, ptr %0, i32 440
  tail call void @_raw_read_lock(ptr noundef %31) #9
  %32 = getelementptr inbounds %struct.extent_status, ptr %3, i32 0, i32 3
  store i64 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.extent_status, ptr %3, i32 0, i32 2
  store i32 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.extent_status, ptr %3, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr i8, ptr %0, i32 436
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.extent_status, ptr %36, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, %1
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.extent_status, ptr %36, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %40, -1
  %46 = add i32 %45, %44
  %47 = icmp ult i32 %46, %1
  br i1 %47, label %48, label %73

48:                                               ; preds = %42, %38, %29
  %49 = load ptr, ptr %30, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %98, label %51

51:                                               ; preds = %69, %48
  %52 = phi ptr [ %71, %69 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.extent_status, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, %1
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 2
  br label %69

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.extent_status, ptr %52, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = add i32 %60, %54
  %62 = icmp ult i32 %61, %54
  br i1 %62, label %63, label %64, !prof !18

63:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

64:                                               ; preds = %58
  %65 = add i32 %61, -1
  %66 = icmp ult i32 %65, %1
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 1
  br label %69

69:                                               ; preds = %67, %56
  %70 = phi ptr [ %57, %56 ], [ %68, %67 ]
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %98, label %51

73:                                               ; preds = %64, %42
  %74 = phi i32 [ %40, %42 ], [ %54, %64 ]
  %75 = phi ptr [ %36, %42 ], [ %52, %64 ]
  %76 = load ptr, ptr %5, align 4
  %77 = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 27
  %78 = load ptr, ptr %77, align 4
  store i32 %74, ptr %34, align 4
  %79 = getelementptr inbounds %struct.extent_status, ptr %75, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  store i32 %80, ptr %33, align 8
  %81 = getelementptr inbounds %struct.extent_status, ptr %75, i32 0, i32 3
  %82 = load i64, ptr %81, align 8
  store i64 %82, ptr %32, align 8
  %83 = load i64, ptr %81, align 8
  %84 = icmp sgt i64 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = or i64 %83, -9223372036854775808
  store i64 %86, ptr %81, align 8
  br label %87

87:                                               ; preds = %85, %73
  %88 = getelementptr inbounds %struct.ext4_sb_info, ptr %78, i32 0, i32 124, i32 1
  %89 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %88, i64 noundef 1, i32 noundef %89) #9
  %90 = icmp eq ptr %2, null
  br i1 %90, label %104, label %91

91:                                               ; preds = %87
  %92 = tail call ptr @rb_next(ptr noundef nonnull %75) #9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.extent_status, ptr %92, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %2, align 4
  br label %104

97:                                               ; preds = %91
  store i32 0, ptr %2, align 4
  br label %104

98:                                               ; preds = %69, %48
  %99 = load ptr, ptr %5, align 4
  %100 = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 27
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.ext4_sb_info, ptr %101, i32 0, i32 124, i32 2
  %103 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %102, i64 noundef 1, i32 noundef %103) #9
  br label %104

104:                                              ; preds = %98, %97, %94, %87
  %105 = phi i32 [ 1, %87 ], [ 1, %97 ], [ 1, %94 ], [ 0, %98 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #9, !srcloc !11
  %106 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %31) #9, !srcloc !12
  %107 = extractvalue { i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  br label %110

110:                                              ; preds = %109, %104
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_lookup_extent_exit, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = tail call ptr @llvm.thread.pointer() #9
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = lshr i32 %116, 5
  %118 = getelementptr i32, ptr @__cpu_online_mask, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %116, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %113
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  %125 = tail call i32 @__traceiter_ext4_es_lookup_extent_exit(ptr noundef null, ptr noundef %0, ptr noundef %3, i32 noundef %105) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  br label %126

126:                                              ; preds = %124, %113, %110, %4
  %127 = phi i32 [ 0, %4 ], [ %105, %110 ], [ %105, %113 ], [ %105, %124 ]
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_es_remove_extent(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 25
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_remove_extent, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = tail call ptr @llvm.thread.pointer() #9
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %28 = tail call i32 @__traceiter_ext4_es_remove_extent(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  br label %29

29:                                               ; preds = %27, %16, %13
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %29
  %32 = add i32 %1, -1
  %33 = add i32 %32, %2
  %34 = icmp ult i32 %33, %1
  br i1 %34, label %35, label %36, !prof !18

35:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1451, 0\0A.popsection", ""() #9, !srcloc !42
  unreachable

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %0, i32 440
  tail call void @_raw_write_lock(ptr noundef %37) #9
  %38 = call fastcc i32 @__es_remove_extent(ptr noundef %0, i32 noundef %1, i32 noundef %33, ptr noundef nonnull %4)
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %37, i32 0) #9, !srcloc !25
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %39 = load i32, ptr %4, align 4
  call void @ext4_da_release_space(ptr noundef %0, i32 noundef %39) #9
  br label %40

40:                                               ; preds = %36, %29, %3
  %41 = phi i32 [ %38, %36 ], [ 0, %3 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_da_release_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_seq_es_shrinker_info_show(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 124
  %8 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %8, label %9, label %85

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 122
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %33, label %14

14:                                               ; preds = %29, %9
  %15 = phi ptr [ %31, %29 ], [ %12, %9 ]
  %16 = phi i32 [ %19, %29 ], [ 0, %9 ]
  %17 = phi ptr [ %30, %29 ], [ null, %9 ]
  %18 = getelementptr i8, ptr %15, i32 -652
  %19 = add i32 %16, 1
  %20 = icmp eq ptr %17, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ext4_inode_info, ptr %17, i32 0, i32 27
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %15, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %21, %14
  %28 = phi ptr [ %17, %21 ], [ %18, %14 ]
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %18, %21 ], [ %28, %27 ]
  %31 = load ptr, ptr %15, align 4
  %32 = icmp eq ptr %31, %11
  br i1 %32, label %33, label %14

33:                                               ; preds = %29, %9
  %34 = phi ptr [ null, %9 ], [ %30, %29 ]
  %35 = phi i32 [ 0, %9 ], [ %19, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %36 = load i16, ptr %10, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 124, i32 5
  %39 = tail call i64 @__percpu_counter_sum(ptr noundef %38) #9
  %40 = tail call i64 @llvm.smax.i64(i64 %39, i64 0) #9
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 124, i32 6
  %42 = tail call i64 @__percpu_counter_sum(ptr noundef %41) #9
  %43 = tail call i64 @llvm.smax.i64(i64 %42, i64 0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %40, i64 noundef %43) #9
  %44 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 124, i32 1
  %45 = tail call i64 @__percpu_counter_sum(ptr noundef %44) #9
  %46 = tail call i64 @llvm.smax.i64(i64 %45, i64 0) #9
  %47 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 124, i32 2
  %48 = tail call i64 @__percpu_counter_sum(ptr noundef %47) #9
  %49 = tail call i64 @llvm.smax.i64(i64 %48, i64 0) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %46, i64 noundef %49) #9
  %50 = icmp eq i32 %35, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %35) #9
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 124, i32 3
  %53 = load i64, ptr %52, align 8
  %54 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %53, i32 0) #10, !srcloc !43
  %55 = extractvalue { i64, i32 } %54, 0
  %56 = extractvalue { i64, i32 } %54, 1
  %57 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %53, i64 %55, i32 %56) #10, !srcloc !44
  %58 = extractvalue { i64, i32 } %57, 0
  %59 = lshr i64 %58, 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef %59) #9
  %60 = load i32, ptr %7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %60) #9
  %61 = getelementptr inbounds %struct.ext4_inode_info, ptr %34, i32 0, i32 17, i32 10
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ext4_inode_info, ptr %34, i32 0, i32 27
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ext4_inode_info, ptr %34, i32 0, i32 28
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 124, i32 4
  %68 = load i64, ptr %67, align 8
  %69 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %68, i32 0) #10, !srcloc !43
  %70 = extractvalue { i64, i32 } %69, 0
  %71 = extractvalue { i64, i32 } %69, 1
  %72 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %68, i64 %70, i32 %71) #10, !srcloc !44
  %73 = extractvalue { i64, i32 } %72, 0
  %74 = lshr i64 %73, 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %62, i32 noundef %64, i32 noundef %66, i64 noundef %74) #9
  br label %85

75:                                               ; preds = %33
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 124, i32 3
  %77 = load i64, ptr %76, align 8
  %78 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %77, i32 0) #10, !srcloc !43
  %79 = extractvalue { i64, i32 } %78, 0
  %80 = extractvalue { i64, i32 } %78, 1
  %81 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %77, i64 %79, i32 %80) #10, !srcloc !44
  %82 = extractvalue { i64, i32 } %81, 0
  %83 = lshr i64 %82, 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef %83) #9
  %84 = load i32, ptr %7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %84) #9
  br label %85

85:                                               ; preds = %75, %51, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_es_register_shrinker(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 122
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 122, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 123
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 128
  store i32 0, ptr %5, align 64
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124
  store i32 0, ptr %6, align 16
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 1
  %8 = tail call i32 @__percpu_counter_init(ptr noundef %7, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ext4_es_register_shrinker.__key) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 2
  %12 = tail call i32 @__percpu_counter_init(ptr noundef %11, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ext4_es_register_shrinker.__key.9) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 3
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %17 = tail call i32 @__percpu_counter_init(ptr noundef %16, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ext4_es_register_shrinker.__key.10) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 6
  %21 = tail call i32 @__percpu_counter_init(ptr noundef %20, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @ext4_es_register_shrinker.__key.11) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 121
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 121, i32 1
  store ptr @ext4_es_scan, ptr %25, align 4
  store ptr @ext4_es_count, ptr %24, align 32
  %26 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 121, i32 3
  store i32 2, ptr %26, align 4
  %27 = tail call i32 @register_shrinker(ptr noundef %24) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  tail call void @percpu_counter_destroy(ptr noundef %20) #9
  br label %30

30:                                               ; preds = %29, %19
  %31 = phi i32 [ %21, %19 ], [ %27, %29 ]
  tail call void @percpu_counter_destroy(ptr noundef %16) #9
  br label %32

32:                                               ; preds = %30, %14
  %33 = phi i32 [ %17, %14 ], [ %31, %30 ]
  tail call void @percpu_counter_destroy(ptr noundef %11) #9
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi i32 [ %12, %10 ], [ %33, %32 ]
  tail call void @percpu_counter_destroy(ptr noundef %7) #9
  br label %36

36:                                               ; preds = %34, %23, %1
  %37 = phi i32 [ %35, %34 ], [ %8, %1 ], [ 0, %23 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_es_scan(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -864
  %4 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 176
  %7 = load volatile i64, ptr %6, align 8
  %8 = tail call i64 @llvm.smax.i64(i64 %7, i64 0) #9
  %9 = trunc i64 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 -468
  %11 = load ptr, ptr %10, align 4
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_scan_enter, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = tail call ptr @llvm.thread.pointer() #9
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %26 = tail call i32 @__traceiter_ext4_es_shrink_scan_enter(ptr noundef null, ptr noundef %11, i32 noundef %5, i32 noundef %9) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  br label %27

27:                                               ; preds = %25, %14, %2
  %28 = tail call fastcc i32 @__es_shrink(ptr noundef %3, i32 noundef %5, ptr noundef null)
  %29 = load volatile i64, ptr %6, align 8
  %30 = tail call i64 @llvm.smax.i64(i64 %29, i64 0) #9
  %31 = trunc i64 %30 to i32
  %32 = load ptr, ptr %10, align 4
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_scan_exit, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = tail call ptr @llvm.thread.pointer() #9
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %47 = tail call i32 @__traceiter_ext4_es_shrink_scan_exit(ptr noundef null, ptr noundef %32, i32 noundef %28, i32 noundef %31) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !48
  br label %48

48:                                               ; preds = %46, %35, %27
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ext4_es_count(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 176
  %4 = load volatile i64, ptr %3, align 8
  %5 = tail call i64 @llvm.smax.i64(i64 %4, i64 0) #9
  %6 = trunc i64 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 -468
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_shrink_count, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #9
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  %25 = tail call i32 @__traceiter_ext4_es_shrink_count(ptr noundef null, ptr noundef %8, i32 noundef %10, i32 noundef %6) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  br label %26

26:                                               ; preds = %24, %13, %2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_es_unregister_shrinker(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 1
  tail call void @percpu_counter_destroy(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 2
  tail call void @percpu_counter_destroy(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 5
  tail call void @percpu_counter_destroy(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 124, i32 6
  tail call void @percpu_counter_destroy(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %0, i32 0, i32 121
  tail call void @unregister_shrinker(ptr noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_clear_inode_es(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 440
  tail call void @_raw_write_lock(ptr noundef %2) #9
  %3 = getelementptr i8, ptr %0, i32 432
  %4 = getelementptr i8, ptr %0, i32 436
  store ptr null, ptr %4, align 4
  %5 = tail call ptr @rb_first(ptr noundef %3) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %15, %1
  %8 = phi ptr [ %9, %15 ], [ %5, %1 ]
  %9 = tail call ptr @rb_next(ptr noundef nonnull %8) #9
  %10 = getelementptr inbounds %struct.extent_status, ptr %8, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 2305843009213693952
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @rb_erase(ptr noundef nonnull %8, ptr noundef %3) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %0, ptr noundef nonnull %8)
  br label %15

15:                                               ; preds = %14, %7
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %7

17:                                               ; preds = %15, %1
  %18 = getelementptr i8, ptr %0, i32 -128
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %18) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %2, i32 0) #9, !srcloc !25
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_es_free_extent(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 452
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 124, i32 5
  %11 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %10, i64 noundef -1, i32 noundef %11) #9
  %12 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 2305843009213693952
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %0, i32 456
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !18

20:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 488, 0\0A.popsection", ""() #9, !srcloc !51
  unreachable

21:                                               ; preds = %16
  %22 = add i32 %18, -1
  store i32 %22, ptr %17, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %28) #9
  %29 = getelementptr i8, ptr %0, i32 444
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %44, label %32

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %0, i32 448
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %30, ptr %34, align 4
  store volatile ptr %29, ptr %29, align 4
  store ptr %29, ptr %33, align 4
  %36 = getelementptr inbounds %struct.ext4_sb_info, ptr %27, i32 0, i32 123
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, -1
  store i32 %38, ptr %36, align 8
  %39 = icmp slt i32 %38, 0
  %40 = load i1, ptr @ext4_es_list_del.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !18

43:                                               ; preds = %32
  store i1 true, ptr @ext4_es_list_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 448, i32 noundef 9, ptr noundef null) #9
  br label %44

44:                                               ; preds = %43, %32, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !29
  %45 = load i16, ptr %28, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br label %47

47:                                               ; preds = %44, %21
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 27
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ext4_sb_info, ptr %50, i32 0, i32 124, i32 6
  %52 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %51, i64 noundef -1, i32 noundef %52) #9
  br label %53

53:                                               ; preds = %47, %2
  %54 = load ptr, ptr @ext4_es_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %54, ptr noundef %1) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ext4_init_pending() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.12, i32 noundef 16, i32 noundef 0, i32 noundef 131072, ptr noundef null) #9
  store ptr %1, ptr @ext4_pending_cachep, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_exit_pending() local_unnamed_addr #2 {
  %1 = load ptr, ptr @ext4_pending_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ext4_init_pending_tree(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_remove_pending(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 440
  tail call void @_raw_write_lock(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 12
  %9 = load i32, ptr %8, align 16
  %10 = lshr i32 %1, %9
  %11 = getelementptr i8, ptr %0, i32 472
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %30, %2
  %15 = phi ptr [ %31, %30 ], [ %12, %2 ]
  %16 = getelementptr inbounds %struct.pending_reservation, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %10
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2
  br label %27

21:                                               ; preds = %14
  %22 = icmp ult i32 %17, %10
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 1
  br label %27

25:                                               ; preds = %21
  %26 = icmp eq i32 %17, %10
  br i1 %26, label %33, label %30

27:                                               ; preds = %23, %19
  %28 = phi ptr [ %24, %23 ], [ %20, %19 ]
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi ptr [ %15, %25 ], [ %29, %27 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %14

33:                                               ; preds = %25
  tail call void @rb_erase(ptr noundef nonnull %15, ptr noundef %11) #9
  %34 = load ptr, ptr @ext4_pending_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef nonnull %15) #9
  br label %35

35:                                               ; preds = %33, %30, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %3, i32 0) #9, !srcloc !25
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ext4_is_pending(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 440
  tail call void @_raw_read_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 12
  %9 = load i32, ptr %8, align 16
  %10 = lshr i32 %1, %9
  %11 = getelementptr i8, ptr %0, i32 472
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %30, %2
  %15 = phi ptr [ %31, %30 ], [ %12, %2 ]
  %16 = getelementptr inbounds %struct.pending_reservation, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %10
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2
  br label %27

21:                                               ; preds = %14
  %22 = icmp ult i32 %17, %10
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 1
  br label %27

25:                                               ; preds = %21
  %26 = icmp eq i32 %17, %10
  br i1 %26, label %33, label %30

27:                                               ; preds = %23, %19
  %28 = phi ptr [ %24, %23 ], [ %20, %19 ]
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi ptr [ %15, %25 ], [ %29, %27 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %14

33:                                               ; preds = %30, %25, %2
  %34 = phi ptr [ null, %2 ], [ %15, %25 ], [ null, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #9, !srcloc !11
  %35 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %7) #9, !srcloc !12
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  br label %39

39:                                               ; preds = %38, %33
  %40 = icmp ne ptr %34, null
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret i1 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_es_insert_delayed_block(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca %struct.extent_status, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 24, i1 false), !annotation !20
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 25
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %85

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 1
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 2
  store i32 1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.extent_status, ptr %4, i32 0, i32 3
  store i64 2882303761517117439, ptr %16, align 8
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_es_insert_delayed_block, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = tail call ptr @llvm.thread.pointer() #9
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  %31 = call i32 @__traceiter_ext4_es_insert_delayed_block(ptr noundef null, ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext %2) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  br label %32

32:                                               ; preds = %30, %19, %13
  %33 = getelementptr i8, ptr %0, i32 -208
  %34 = getelementptr i8, ptr %0, i32 440
  call void @_raw_write_lock(ptr noundef %34) #9
  %35 = call fastcc i32 @__es_remove_extent(ptr noundef %0, i32 noundef %1, i32 noundef %1, ptr noundef null)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %83

37:                                               ; preds = %39, %32
  %38 = call fastcc i32 @__es_insert_extent(ptr noundef %0, ptr noundef nonnull %4)
  switch i32 %38, label %83 [
    i32 -12, label %39
    i32 0, label %45
  ]

39:                                               ; preds = %37
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 27
  %42 = load ptr, ptr %41, align 4
  %43 = call fastcc i32 @__es_shrink(ptr noundef %42, i32 noundef 128, ptr noundef %33)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %83, label %37

45:                                               ; preds = %37
  br i1 %2, label %46, label %83

46:                                               ; preds = %45
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 27
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %0, i32 472
  %51 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 12
  %52 = load i32, ptr %51, align 16
  %53 = lshr i32 %1, %52
  %54 = load ptr, ptr %50, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %73, label %56

56:                                               ; preds = %67, %46
  %57 = phi ptr [ %69, %67 ], [ %54, %46 ]
  %58 = getelementptr inbounds %struct.pending_reservation, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %53, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rb_node, ptr %57, i32 0, i32 2
  br label %67

63:                                               ; preds = %56
  %64 = icmp ugt i32 %53, %59
  br i1 %64, label %65, label %83

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.rb_node, ptr %57, i32 0, i32 1
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi ptr [ %62, %61 ], [ %66, %65 ]
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %56

71:                                               ; preds = %67
  %72 = ptrtoint ptr %57 to i32
  br label %73

73:                                               ; preds = %71, %46
  %74 = phi i32 [ %72, %71 ], [ 0, %46 ]
  %75 = phi ptr [ %68, %71 ], [ %50, %46 ]
  %76 = load ptr, ptr @ext4_pending_cachep, align 4
  %77 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %76, i32 noundef 2592) #9
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.pending_reservation, ptr %77, i32 0, i32 1
  store i32 %53, ptr %80, align 4
  store i32 %74, ptr %77, align 8
  %81 = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 1
  store ptr null, ptr %81, align 4
  %82 = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 2
  store ptr null, ptr %82, align 8
  store ptr %77, ptr %75, align 4
  call void @rb_insert_color(ptr noundef nonnull %77, ptr noundef %50) #9
  br label %83

83:                                               ; preds = %79, %73, %63, %45, %39, %37, %32
  %84 = phi i32 [ %35, %32 ], [ 0, %45 ], [ 0, %73 ], [ 0, %79 ], [ 0, %63 ], [ -12, %39 ], [ %38, %37 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %34, i32 0) #9, !srcloc !25
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  br label %85

85:                                               ; preds = %83, %3
  %86 = phi i32 [ %84, %83 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_es_delayed_clu(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %94, label %5

5:                                                ; preds = %3
  %6 = add i32 %1, -1
  %7 = add i32 %6, %2
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %10, !prof !18

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2106, i32 noundef 9, ptr noundef null) #9
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr i8, ptr %0, i32 440
  tail call void @_raw_read_lock(ptr noundef %11) #9
  %12 = getelementptr i8, ptr %0, i32 432
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %41, %10
  %20 = phi ptr [ %42, %41 ], [ %17, %10 ]
  %21 = getelementptr inbounds %struct.extent_status, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, %1
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.extent_status, ptr %20, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, %22
  %28 = icmp ult i32 %27, %22
  br i1 %28, label %29, label %30, !prof !18

29:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

30:                                               ; preds = %24
  %31 = add i32 %27, -1
  %32 = icmp ult i32 %31, %1
  br i1 %32, label %37, label %45

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37, %33
  %42 = phi ptr [ %35, %33 ], [ %39, %37 ]
  br label %19

43:                                               ; preds = %37
  %44 = tail call ptr @rb_next(ptr noundef nonnull %20) #9
  br label %45

45:                                               ; preds = %43, %33, %30, %10
  %46 = phi ptr [ %44, %43 ], [ null, %10 ], [ %20, %30 ], [ %20, %33 ]
  %47 = getelementptr inbounds %struct.ext4_sb_info, ptr %16, i32 0, i32 12
  br label %48

48:                                               ; preds = %82, %45
  %49 = phi i64 [ -1, %45 ], [ %83, %82 ]
  %50 = phi i32 [ 0, %45 ], [ %84, %82 ]
  %51 = phi ptr [ %46, %45 ], [ %85, %82 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %87, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.extent_status, ptr %51, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %55, %7
  br i1 %56, label %87, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.extent_status, ptr %51, i32 0, i32 3
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 3458764513820540928
  %61 = icmp eq i64 %60, 2305843009213693952
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.extent_status, ptr %51, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = add i32 %64, %55
  %66 = icmp ult i32 %65, %55
  br i1 %66, label %67, label %68, !prof !18

67:                                               ; preds = %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

68:                                               ; preds = %62
  %69 = tail call i32 @llvm.umax.i32(i32 %55, i32 %1) #9
  %70 = load i32, ptr %47, align 16
  %71 = lshr i32 %69, %70
  %72 = add i32 %65, -1
  %73 = tail call i32 @llvm.umin.i32(i32 %72, i32 %7) #9
  %74 = lshr i32 %73, %70
  %75 = zext i32 %71 to i64
  %76 = icmp ne i64 %49, %75
  %77 = zext i1 %76 to i32
  %78 = sub i32 %50, %71
  %79 = add i32 %78, %74
  %80 = add i32 %79, %77
  %81 = zext i32 %74 to i64
  br label %82

82:                                               ; preds = %68, %57
  %83 = phi i64 [ %81, %68 ], [ %49, %57 ]
  %84 = phi i32 [ %80, %68 ], [ %50, %57 ]
  %85 = tail call ptr @rb_next(ptr noundef nonnull %51) #9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %48

87:                                               ; preds = %82, %53, %48
  %88 = phi i32 [ %84, %82 ], [ %50, %53 ], [ %50, %48 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #9, !srcloc !11
  %89 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %11) #9, !srcloc !12
  %90 = extractvalue { i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  br label %93

93:                                               ; preds = %92, %87
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %94

94:                                               ; preds = %93, %3
  %95 = phi i32 [ %88, %93 ], [ 0, %3 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_find_extent_range_enter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_find_extent_range_exit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_insert_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_es_can_be_merged(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.extent_status, ptr %0, i32 0, i32 3
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 3
  %6 = load i64, ptr %5, align 8
  %7 = xor i64 %6, %4
  %8 = and i64 %7, 8646911284551352320
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.extent_status, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, %13
  %18 = icmp ugt i64 %17, 4294967295
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %12, i32 noundef %15, i32 noundef -1) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 516, i32 noundef 9, ptr noundef null) #9
  br label %48

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.extent_status, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = add nuw nsw i64 %24, %13
  %26 = getelementptr inbounds %struct.extent_status, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  %31 = and i64 %4, 1729382256910270464
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = and i64 %4, 576460752303423487
  %35 = add nuw nsw i64 %34, %13
  %36 = and i64 %6, 576460752303423487
  %37 = icmp ne i64 %35, %36
  %38 = and i64 %4, 4611686018427387904
  %39 = icmp eq i64 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %44, label %48

41:                                               ; preds = %30
  %42 = and i64 %4, 4611686018427387904
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %33
  %45 = and i64 %4, 3458764513820540928
  %46 = icmp eq i64 %45, 2305843009213693952
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %44, %41, %33, %21, %19, %2
  %49 = phi i32 [ 0, %19 ], [ 0, %2 ], [ 0, %21 ], [ 1, %33 ], [ 1, %41 ], [ %47, %44 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_cache_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_lookup_extent_enter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_lookup_extent_exit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @count_rsvd(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.extent_status, ptr %3, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 3458764513820540928
  %13 = icmp eq i64 %12, 2305843009213693952
  br i1 %13, label %14, label %102

14:                                               ; preds = %5
  %15 = icmp slt i32 %2, 1
  br i1 %15, label %16, label %17, !prof !18

16:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1061, i32 noundef 9, ptr noundef null) #9
  br label %17

17:                                               ; preds = %16, %14
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %22, %2
  store i32 %23, ptr %4, align 4
  br label %102

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.extent_status, ptr %3, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 %1)
  %28 = getelementptr inbounds %struct.extent_status, ptr %3, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, %26
  %31 = icmp ult i32 %30, %26
  br i1 %31, label %32, label %33, !prof !18

32:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

33:                                               ; preds = %24
  %34 = add i32 %1, -1
  %35 = add i32 %34, %2
  %36 = add i32 %30, -1
  %37 = tail call i32 @llvm.umin.i32(i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.rsvd_count, ptr %4, i32 0, i32 1
  %39 = load i8, ptr %38, align 4, !range !27
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.rsvd_count, ptr %4, i32 0, i32 2
  store i32 %27, ptr %42, align 4
  store i8 1, ptr %38, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = getelementptr inbounds %struct.rsvd_count, ptr %4, i32 0, i32 3
  store i32 %37, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rsvd_count, ptr %4, i32 0, i32 5
  %46 = load i8, ptr %45, align 4, !range !27
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rsvd_count, ptr %4, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 12
  %52 = load i32, ptr %51, align 16
  %53 = lshr i32 %27, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, ptr %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %4, align 4
  store i8 0, ptr %45, align 4
  br label %58

58:                                               ; preds = %55, %48, %43
  %59 = phi i8 [ 0, %55 ], [ 1, %48 ], [ 0, %43 ]
  %60 = load i32, ptr %18, align 4
  %61 = add i32 %60, -1
  %62 = and i32 %61, %27
  %63 = icmp eq i32 %62, 0
  %64 = or i32 %61, %27
  %65 = icmp ult i32 %37, %64
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %58
  %68 = load i32, ptr %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %4, align 4
  store i8 0, ptr %45, align 4
  %70 = load i32, ptr %18, align 4
  %71 = add i32 %70, -1
  %72 = or i32 %71, %27
  %73 = add i32 %72, 1
  br label %74

74:                                               ; preds = %67, %58
  %75 = phi i8 [ 0, %67 ], [ %59, %58 ]
  %76 = phi i32 [ %70, %67 ], [ %60, %58 ]
  %77 = phi i32 [ %73, %67 ], [ %27, %58 ]
  %78 = add i32 %77, -1
  %79 = add i32 %78, %76
  %80 = icmp ugt i32 %79, %37
  br i1 %80, label %92, label %81

81:                                               ; preds = %74
  %82 = add i32 %37, 1
  %83 = sub i32 %82, %77
  %84 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 12
  %85 = load i32, ptr %84, align 16
  %86 = lshr i32 %83, %85
  %87 = load i32, ptr %4, align 4
  %88 = add i32 %87, %86
  store i32 %88, ptr %4, align 4
  %89 = load i32, ptr %84, align 16
  %90 = shl i32 %86, %89
  %91 = add i32 %90, %77
  br label %92

92:                                               ; preds = %81, %74
  %93 = phi i32 [ %91, %81 ], [ %77, %74 ]
  %94 = icmp ne i8 %75, 0
  %95 = icmp ugt i32 %93, %37
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  store i8 1, ptr %45, align 4
  %98 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 12
  %99 = load i32, ptr %98, align 16
  %100 = lshr i32 %93, %99
  %101 = getelementptr inbounds %struct.rsvd_count, ptr %4, i32 0, i32 6
  store i32 %100, ptr %101, align 4
  br label %102

102:                                              ; preds = %97, %92, %21, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_remove_extent(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @es_reclaim_extents(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ext4_inode_info, ptr %0, i32 0, i32 29
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_inode_info, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.ext4_inode_info, ptr %0, i32 0, i32 5
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @___ratelimit(ptr noundef nonnull @es_reclaim_extents._rs, ptr noundef nonnull @__func__.es_reclaim_extents) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ext4_inode_info, ptr %0, i32 0, i32 17, i32 8
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %19, ptr noundef nonnull @__func__.es_reclaim_extents, i32 noundef 1749, ptr noundef nonnull @.str.15) #9
  br label %20

20:                                               ; preds = %17, %14, %9
  %21 = call fastcc i32 @es_do_reclaim_extents(ptr noundef %0, i32 noundef -1, ptr noundef %1, ptr noundef nonnull %3)
  %22 = icmp eq i32 %21, 0
  %23 = icmp ne i32 %5, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = add i32 %5, -1
  %27 = call fastcc i32 @es_do_reclaim_extents(ptr noundef %0, i32 noundef %26, ptr noundef %1, ptr noundef nonnull %3)
  br label %28

28:                                               ; preds = %25, %20
  %29 = getelementptr inbounds %struct.ext4_inode_info, ptr %0, i32 0, i32 24, i32 1
  store ptr null, ptr %29, align 4
  %30 = load i32, ptr %3, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = phi i32 [ %30, %28 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @es_do_reclaim_extents(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.ext4_inode_info, ptr %0, i32 0, i32 17
  %6 = getelementptr inbounds %struct.ext4_inode_info, ptr %0, i32 0, i32 24
  %7 = getelementptr inbounds %struct.ext4_inode_info, ptr %0, i32 0, i32 29
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %29, %4
  %12 = phi ptr [ %30, %29 ], [ %9, %4 ]
  %13 = getelementptr inbounds %struct.extent_status, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %8
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.extent_status, ptr %12, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %14
  %20 = icmp ult i32 %19, %14
  br i1 %20, label %21, label %22, !prof !18

21:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/extents_status.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

22:                                               ; preds = %16
  %23 = add i32 %19, -1
  %24 = icmp ult i32 %23, %8
  br i1 %24, label %31, label %38

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %31, %25
  %30 = phi ptr [ %27, %25 ], [ %33, %31 ]
  br label %11

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29

35:                                               ; preds = %31
  %36 = tail call ptr @rb_next(ptr noundef nonnull %12) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %35, %25, %22
  %39 = phi ptr [ %36, %35 ], [ %12, %22 ], [ %12, %25 ]
  br label %40

40:                                               ; preds = %64, %38
  %41 = phi ptr [ %52, %64 ], [ %39, %38 ]
  %42 = load i32, ptr %2, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = getelementptr inbounds %struct.extent_status, ptr %41, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  br i1 %43, label %46, label %66

46:                                               ; preds = %40
  %47 = icmp ugt i32 %45, %1
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = add nuw i32 %1, 1
  br label %66

50:                                               ; preds = %46
  %51 = add nsw i32 %42, -1
  store i32 %51, ptr %2, align 4
  %52 = tail call ptr @rb_next(ptr noundef nonnull %41) #9
  %53 = getelementptr inbounds %struct.extent_status, ptr %41, i32 0, i32 3
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 2305843009213693952
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = icmp sgt i64 %54, -1
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = and i64 %54, 9223372036854775807
  store i64 %60, ptr %53, align 8
  br label %64

61:                                               ; preds = %57
  tail call void @rb_erase(ptr noundef nonnull %41, ptr noundef %6) #9
  tail call fastcc void @ext4_es_free_extent(ptr noundef %5, ptr noundef nonnull %41)
  %62 = load i32, ptr %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %3, align 4
  br label %64

64:                                               ; preds = %61, %59, %50
  %65 = icmp eq ptr %52, null
  br i1 %65, label %66, label %40

66:                                               ; preds = %64, %48, %40, %35, %4
  %67 = phi i32 [ %49, %48 ], [ 0, %4 ], [ 0, %35 ], [ 0, %64 ], [ %45, %40 ]
  %68 = phi i32 [ 0, %48 ], [ 0, %4 ], [ 0, %35 ], [ 0, %64 ], [ 1, %40 ]
  store i32 %67, ptr %7, align 4
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_shrink(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_shrink_scan_enter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_shrink_scan_exit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_shrink_count(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_es_insert_delayed_block(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2155480651}
!9 = !{i64 2155480847}
!10 = !{i64 2149073018}
!11 = !{i64 896532, i64 2148386503, i64 2148386529, i64 2148386576, i64 2148386598, i64 2148386626, i64 2148386646}
!12 = !{i64 1576442, i64 1576465, i64 1576485, i64 1576509, i64 1576525}
!13 = !{i64 2149060960}
!14 = !{i64 2149061035, i64 2149061062, i64 2149061109, i64 2149061131, i64 2149061159, i64 2149061179}
!15 = !{i64 2149110621}
!16 = !{i64 2155502438}
!17 = !{i64 2155502628}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2156063145, i64 2156063634, i64 2156063182, i64 2156063238, i64 2156063272, i64 2156063296, i64 2156063337, i64 2156063358, i64 2156063386, i64 2156063420}
!20 = !{!"auto-init"}
!21 = !{i64 2156110649, i64 2156111138, i64 2156110686, i64 2156110742, i64 2156110776, i64 2156110800, i64 2156110841, i64 2156110862, i64 2156110890, i64 2156110924}
!22 = !{i64 2155429662}
!23 = !{i64 2155429834}
!24 = !{i64 2149072213}
!25 = !{i64 1575427}
!26 = !{i64 2149110182}
!27 = !{i8 0, i8 2}
!28 = !{i64 2156108888, i64 2156109377, i64 2156108925, i64 2156108981, i64 2156109015, i64 2156109039, i64 2156109080, i64 2156109101, i64 2156109129, i64 2156109163}
!29 = !{i64 2149065136}
!30 = !{i64 2149088139}
!31 = !{i64 2155649168}
!32 = !{i64 2155649398}
!33 = !{i64 2155446468}
!34 = !{i64 2155446638}
!35 = !{i64 2156117801, i64 2156118290, i64 2156117838, i64 2156117894, i64 2156117928, i64 2156117952, i64 2156117993, i64 2156118014, i64 2156118042, i64 2156118076}
!36 = !{i64 2155519902}
!37 = !{i64 2155520090}
!38 = !{i64 2155537519}
!39 = !{i64 2155537715}
!40 = !{i64 2155463447}
!41 = !{i64 2155463633}
!42 = !{i64 2156155543, i64 2156156033, i64 2156155580, i64 2156155636, i64 2156155670, i64 2156155694, i64 2156155735, i64 2156155756, i64 2156155784, i64 2156155818}
!43 = !{i64 761771, i64 761798, i64 761820, i64 761848}
!44 = !{i64 762179, i64 762206, i64 762239, i64 762260, i64 762287, i64 762313}
!45 = !{i64 2155576338}
!46 = !{i64 2155576550}
!47 = !{i64 2155593889}
!48 = !{i64 2155594097}
!49 = !{i64 2155558996}
!50 = !{i64 2155559198}
!51 = !{i64 2156097060, i64 2156097549, i64 2156097097, i64 2156097153, i64 2156097187, i64 2156097211, i64 2156097252, i64 2156097273, i64 2156097301, i64 2156097335}
!52 = !{i64 2155666631}
!53 = !{i64 2155666839}
