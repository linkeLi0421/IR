; ModuleID = '/llk/IR/fs/ext4/bitmap.c_pt.bc'
source_filename = "../fs/ext4/bitmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.72 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
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
%struct.callback_head = type { ptr, ptr }
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
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_group_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_count_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 3
  %4 = tail call i32 @memweight(ptr noundef %0, i32 noundef %1) #4
  %5 = sub i32 %3, %4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memweight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_inode_bitmap_csum_verify(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.anon.72, align 8
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 30
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %70, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 119
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %33, !prof !8

22:                                               ; preds = %15
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_super_block, ptr %25, i32 0, i32 30
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 119
  %32 = load ptr, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %15
  %34 = phi ptr [ %32, %30 ], [ %17, %15 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %70, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ext4_group_desc, ptr %2, i32 0, i32 9
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 120
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #4, !annotation !9
  %44 = load ptr, ptr %16, align 8
  %45 = load i32, ptr %44, align 64
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %48, label %47, !prof !10

47:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

48:                                               ; preds = %36
  store ptr %44, ptr %6, align 8
  %49 = getelementptr inbounds %struct.anon.72, ptr %6, i32 0, i32 1
  store i32 %41, ptr %49, align 8
  %50 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef %43, i32 noundef %4) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !10

52:                                               ; preds = %48
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

53:                                               ; preds = %48
  %54 = load i32, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #4
  %55 = load i32, ptr %8, align 64
  %56 = icmp ugt i32 %55, 59
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ext4_group_desc, ptr %2, i32 0, i32 21
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = shl nuw i32 %60, 16
  %62 = or i32 %61, %39
  br label %65

63:                                               ; preds = %53
  %64 = and i32 %54, 65535
  br label %65

65:                                               ; preds = %63, %57
  %66 = phi i32 [ %62, %57 ], [ %39, %63 ]
  %67 = phi i32 [ %54, %57 ], [ %64, %63 ]
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  br label %70

70:                                               ; preds = %65, %33, %22, %5
  %71 = phi i32 [ %69, %65 ], [ 1, %33 ], [ 1, %22 ], [ 1, %5 ]
  ret i32 %71
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_inode_bitmap_csum_set(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.anon.72, align 8
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 30
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 119
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %33, !prof !8

22:                                               ; preds = %15
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_super_block, ptr %25, i32 0, i32 30
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %60, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 119
  %32 = load ptr, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %15
  %34 = phi ptr [ %32, %30 ], [ %17, %15 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %60, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 120
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #4, !annotation !9
  %41 = load ptr, ptr %16, align 8
  %42 = load i32, ptr %41, align 64
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %45, label %44, !prof !10

44:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

45:                                               ; preds = %36
  store ptr %41, ptr %6, align 8
  %46 = getelementptr inbounds %struct.anon.72, ptr %6, i32 0, i32 1
  store i32 %38, ptr %46, align 8
  %47 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef %40, i32 noundef %4) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49, !prof !10

49:                                               ; preds = %45
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

50:                                               ; preds = %45
  %51 = load i32, ptr %46, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #4
  %52 = trunc i32 %51 to i16
  %53 = getelementptr inbounds %struct.ext4_group_desc, ptr %2, i32 0, i32 9
  store i16 %52, ptr %53, align 2
  %54 = load i32, ptr %8, align 64
  %55 = icmp ugt i32 %54, 59
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = lshr i32 %51, 16
  %58 = trunc i32 %57 to i16
  %59 = getelementptr inbounds %struct.ext4_group_desc, ptr %2, i32 0, i32 21
  store i16 %58, ptr %59, align 2
  br label %60

60:                                               ; preds = %56, %50, %33, %22, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_block_bitmap_csum_verify(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.72, align 8
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 30
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %72, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 119
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %34, !prof !8

23:                                               ; preds = %16
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #4
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 15
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_super_block, ptr %26, i32 0, i32 30
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %72, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 119
  %33 = load ptr, ptr %32, align 8
  br label %34

34:                                               ; preds = %31, %16
  %35 = phi ptr [ %33, %31 ], [ %18, %16 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %72, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ext4_group_desc, ptr %2, i32 0, i32 8
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 120
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #4, !annotation !9
  %45 = load ptr, ptr %17, align 8
  %46 = load i32, ptr %45, align 64
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %49, label %48, !prof !10

48:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

49:                                               ; preds = %37
  %50 = lshr i32 %9, 3
  store ptr %45, ptr %5, align 8
  %51 = getelementptr inbounds %struct.anon.72, ptr %5, i32 0, i32 1
  store i32 %42, ptr %51, align 8
  %52 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef %44, i32 noundef %50) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54, !prof !10

54:                                               ; preds = %49
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

55:                                               ; preds = %49
  %56 = load i32, ptr %51, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #4
  %57 = load i32, ptr %7, align 64
  %58 = icmp ugt i32 %57, 57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ext4_group_desc, ptr %2, i32 0, i32 20
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = shl nuw i32 %62, 16
  %64 = or i32 %63, %40
  br label %67

65:                                               ; preds = %55
  %66 = and i32 %56, 65535
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi i32 [ %64, %59 ], [ %40, %65 ]
  %69 = phi i32 [ %56, %59 ], [ %66, %65 ]
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  br label %72

72:                                               ; preds = %67, %34, %23, %4
  %73 = phi i32 [ 1, %34 ], [ %71, %67 ], [ 1, %23 ], [ 1, %4 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_block_bitmap_csum_set(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.72, align 8
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 30
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %62, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 119
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %34, !prof !8

23:                                               ; preds = %16
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #4
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 15
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ext4_super_block, ptr %26, i32 0, i32 30
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 119
  %33 = load ptr, ptr %32, align 8
  br label %34

34:                                               ; preds = %31, %16
  %35 = phi ptr [ %33, %31 ], [ %18, %16 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 120
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #4, !annotation !9
  %42 = load ptr, ptr %17, align 8
  %43 = load i32, ptr %42, align 64
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %46, label %45, !prof !10

45:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

46:                                               ; preds = %37
  %47 = lshr i32 %9, 3
  store ptr %42, ptr %5, align 8
  %48 = getelementptr inbounds %struct.anon.72, ptr %5, i32 0, i32 1
  store i32 %39, ptr %48, align 8
  %49 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef %41, i32 noundef %47) #4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51, !prof !10

51:                                               ; preds = %46
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

52:                                               ; preds = %46
  %53 = load i32, ptr %48, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #4
  %54 = trunc i32 %53 to i16
  %55 = getelementptr inbounds %struct.ext4_group_desc, ptr %2, i32 0, i32 8
  store i16 %54, ptr %55, align 4
  %56 = load i32, ptr %7, align 64
  %57 = icmp ugt i32 %56, 57
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = lshr i32 %53, 16
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds %struct.ext4_group_desc, ptr %2, i32 0, i32 20
  store i16 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %58, %52, %34, %23, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!11 = !{i64 2153722374, i64 2153722854, i64 2153722411, i64 2153722467, i64 2153722501, i64 2153722525, i64 2153722566, i64 2153722587, i64 2153722615, i64 2153722649}
!12 = !{i64 2153723452, i64 2153723932, i64 2153723489, i64 2153723545, i64 2153723579, i64 2153723603, i64 2153723644, i64 2153723665, i64 2153723693, i64 2153723727}
