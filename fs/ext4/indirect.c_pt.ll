; ModuleID = '/llk/IR/fs/ext4/indirect.c_pt.bc'
source_filename = "../fs/ext4/indirect.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ext4_allocation_request = type { ptr, i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.Indirect = type { ptr, i32, ptr }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.69 = type { ptr }
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
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.jbd2_journal_handle = type { %union.anon, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", align 1
@__func__.ext4_ind_map_blocks = private unnamed_addr constant [20 x i8] c"ext4_ind_map_blocks\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"fs/ext4/indirect.c\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS))\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"handle != NULL || (flags & EXT4_GET_BLOCKS_CREATE) == 0\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Can't allocate blocks for non-extent mapped inodes with bigalloc\00", align 1
@__tracepoint_ext4_ind_map_blocks_enter = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__func__.ext4_block_to_path = private unnamed_addr constant [19 x i8] c"ext4_block_to_path\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"block %lu > max in inode %lu\00", align 1
@__func__.ext4_get_branch = private unnamed_addr constant [16 x i8] c"ext4_get_branch\00", align 1
@__func__.ext4_alloc_branch = private unnamed_addr constant [18 x i8] c"ext4_alloc_branch\00", align 1
@__func__.ext4_splice_branch = private unnamed_addr constant [19 x i8] c"ext4_splice_branch\00", align 1
@__tracepoint_ext4_ind_map_blocks_exit = external dso_local global %struct.tracepoint, align 4
@__func__.ext4_free_data = private unnamed_addr constant [15 x i8] c"ext4_free_data\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"circular indirect block detected at block %llu\00", align 1
@__func__.ext4_clear_blocks = private unnamed_addr constant [18 x i8] c"ext4_clear_blocks\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"attempt to clear invalid blocks %llu len %lu\00", align 1
@__func__.ext4_ind_truncate_ensure_credits = private unnamed_addr constant [33 x i8] c"ext4_ind_truncate_ensure_credits\00", align 1
@__func__.ext4_ind_trunc_restart_fn = private unnamed_addr constant [26 x i8] c"ext4_ind_trunc_restart_fn\00", align 1
@__func__.ext4_free_branches = private unnamed_addr constant [19 x i8] c"ext4_free_branches\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"invalid indirect mapped block %lu (level %d)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Read failure\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ind_map_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x i64], align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_allocation_request, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 4
  %10 = alloca [4 x %struct.Indirect], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 -5, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %10, i8 0, i32 48, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ind_map_blocks_enter, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %29 = tail call i32 @__traceiter_ext4_ind_map_blocks_enter(ptr noundef null, ptr noundef %1, i32 noundef %12, i32 noundef %14, i32 noundef %3) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %30

30:                                               ; preds = %28, %17, %4
  %31 = getelementptr i8, ptr %1, i32 -124
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 524288
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !11

35:                                               ; preds = %30
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_ind_map_blocks, ptr noundef nonnull @.str.1, i32 noundef 539, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/indirect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 539, 0\0A.popsection", ""() #9, !srcloc !12
  unreachable

37:                                               ; preds = %30
  %38 = icmp ne ptr %0, null
  %39 = and i32 %3, 1
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %38, %40
  br i1 %41, label %44, label %42, !prof !11

42:                                               ; preds = %37
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ext4_ind_map_blocks, ptr noundef nonnull @.str.1, i32 noundef 540, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/indirect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 540, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

44:                                               ; preds = %37
  %45 = load i32, ptr %11, align 8
  %46 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %48, align 16
  %50 = lshr i32 %49, 2
  %51 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 27
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ext4_sb_info, ptr %52, i32 0, i32 27
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, 1
  %56 = shl nuw i32 1, %55
  %57 = icmp ult i32 %45, 12
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  store i32 %45, ptr %9, align 4
  br label %88

59:                                               ; preds = %44
  %60 = add i32 %45, -12
  %61 = icmp ult i32 %60, %50
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  store i32 12, ptr %9, align 4
  %63 = getelementptr inbounds i32, ptr %9, i32 1
  store i32 %60, ptr %63, align 4
  br label %88

64:                                               ; preds = %59
  %65 = sub i32 %60, %50
  %66 = icmp ult i32 %65, %56
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  store i32 13, ptr %9, align 4
  %68 = lshr i32 %65, %54
  %69 = getelementptr inbounds i32, ptr %9, i32 1
  store i32 %68, ptr %69, align 4
  %70 = add nsw i32 %50, -1
  %71 = and i32 %65, %70
  %72 = getelementptr inbounds i32, ptr %9, i32 2
  store i32 %71, ptr %72, align 4
  br label %88

73:                                               ; preds = %64
  %74 = sub i32 %65, %56
  %75 = lshr i32 %74, %55
  %76 = icmp ult i32 %75, %50
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  store i32 14, ptr %9, align 4
  %78 = getelementptr inbounds i32, ptr %9, i32 1
  store i32 %75, ptr %78, align 4
  %79 = lshr i32 %74, %54
  %80 = add nsw i32 %50, -1
  %81 = and i32 %79, %80
  %82 = getelementptr inbounds i32, ptr %9, i32 2
  store i32 %81, ptr %82, align 4
  %83 = and i32 %74, %80
  %84 = getelementptr inbounds i32, ptr %9, i32 3
  store i32 %83, ptr %84, align 4
  br label %88

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %87 = load i32, ptr %86, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %47, ptr noundef nonnull @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef nonnull @.str.6, i32 noundef %45, i32 noundef %87) #9
  br label %411

88:                                               ; preds = %77, %67, %62, %58
  %89 = phi i32 [ %74, %77 ], [ %65, %67 ], [ %60, %62 ], [ %45, %58 ]
  %90 = phi i32 [ 4, %77 ], [ 3, %67 ], [ 2, %62 ], [ 1, %58 ]
  %91 = phi i32 [ %50, %77 ], [ %50, %67 ], [ %50, %62 ], [ 12, %58 ]
  %92 = add nsw i32 %50, -1
  %93 = and i32 %89, %92
  %94 = xor i32 %93, -1
  %95 = add i32 %91, %94
  %96 = call fastcc ptr @ext4_get_branch(ptr noundef %1, i32 noundef %90, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %8)
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %119

98:                                               ; preds = %88
  %99 = add nsw i32 %90, -1
  %100 = getelementptr [4 x %struct.Indirect], ptr %10, i32 0, i32 %99
  %101 = getelementptr [4 x %struct.Indirect], ptr %10, i32 0, i32 %99, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = zext i32 %102 to i64
  %104 = load i32, ptr %13, align 4
  br label %105

105:                                              ; preds = %110, %98
  %106 = phi i32 [ 1, %98 ], [ %118, %110 ]
  %107 = icmp ult i32 %106, %104
  %108 = icmp sle i32 %106, %95
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %387

110:                                              ; preds = %105
  %111 = load ptr, ptr %100, align 4
  %112 = getelementptr i32, ptr %111, i32 %106
  %113 = load i32, ptr %112, align 4
  %114 = zext i32 %113 to i64
  %115 = sext i32 %106 to i64
  %116 = add nsw i64 %115, %103
  %117 = icmp eq i64 %116, %114
  %118 = add nuw i32 %106, 1
  br i1 %117, label %105, label %387

119:                                              ; preds = %88
  br i1 %40, label %120, label %148

120:                                              ; preds = %119
  %121 = load ptr, ptr %46, align 4
  %122 = getelementptr inbounds %struct.super_block, ptr %121, i32 0, i32 3
  %123 = load i32, ptr %122, align 16
  %124 = lshr i32 %123, 2
  %125 = ptrtoint ptr %96 to i32
  %126 = ptrtoint ptr %10 to i32
  %127 = sub i32 %125, %126
  %128 = sdiv exact i32 %127, 12
  %129 = add nsw i32 %128, 1
  %130 = icmp slt i32 %129, %90
  br i1 %130, label %131, label %144

131:                                              ; preds = %131, %120
  %132 = phi i32 [ %140, %131 ], [ %129, %120 ]
  %133 = phi i32 [ %139, %131 ], [ 0, %120 ]
  %134 = mul i32 %133, %124
  %135 = getelementptr [4 x i32], ptr %9, i32 0, i32 %132
  %136 = load i32, ptr %135, align 4
  %137 = xor i32 %136, -1
  %138 = add i32 %134, %124
  %139 = add i32 %138, %137
  %140 = add nsw i32 %132, 1
  %141 = icmp eq i32 %140, %90
  br i1 %141, label %142, label %131

142:                                              ; preds = %131
  %143 = sub i32 %138, %136
  br label %144

144:                                              ; preds = %142, %120
  %145 = phi i32 [ 1, %120 ], [ %143, %142 ]
  store i64 0, ptr %2, align 8
  %146 = load i32, ptr %13, align 4
  %147 = call i32 @llvm.umin.i32(i32 %146, i32 %145)
  store i32 %147, ptr %13, align 4
  br label %399

148:                                              ; preds = %119
  %149 = load i32, ptr %8, align 4
  %150 = icmp eq i32 %149, -5
  br i1 %150, label %399, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %46, align 4
  %153 = getelementptr inbounds %struct.super_block, ptr %152, i32 0, i32 27
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.ext4_sb_info, ptr %154, i32 0, i32 15
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.ext4_super_block, ptr %156, i32 0, i32 30
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 512
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %151
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ind_map_blocks, i32 noundef 597, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.4) #9
  store i32 -117, ptr %8, align 4
  br label %411

162:                                              ; preds = %151
  %163 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %163, i8 0, i32 48, i1 false)
  store ptr %1, ptr %7, align 8
  %164 = load i32, ptr %11, align 8
  %165 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 2
  store i32 %164, ptr %165, align 8
  %166 = load i16, ptr %1, align 8
  %167 = and i16 %166, -4096
  %168 = icmp eq i16 %167, -32768
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 8
  store i32 32, ptr %170, align 8
  br label %171

171:                                              ; preds = %169, %162
  %172 = phi i32 [ 32, %169 ], [ 0, %162 ]
  %173 = and i32 %3, 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 8
  %177 = or i32 %172, 1024
  store i32 %177, ptr %176, align 8
  br label %178

178:                                              ; preds = %175, %171
  %179 = phi i32 [ %177, %175 ], [ %172, %171 ]
  %180 = and i32 %3, 32
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 8
  %184 = or i32 %179, 8192
  store i32 %184, ptr %183, align 8
  br label %185

185:                                              ; preds = %182, %178
  %186 = getelementptr inbounds %struct.Indirect, ptr %96, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.buffer_head, ptr %187, i32 0, i32 5
  %191 = load ptr, ptr %190, align 4
  br label %194

192:                                              ; preds = %185
  %193 = getelementptr i8, ptr %1, i32 -208
  br label %194

194:                                              ; preds = %192, %189
  %195 = phi ptr [ %191, %189 ], [ %193, %192 ]
  %196 = load ptr, ptr %96, align 4
  br label %197

197:                                              ; preds = %201, %194
  %198 = phi ptr [ %196, %194 ], [ %199, %201 ]
  %199 = getelementptr i32, ptr %198, i32 -1
  %200 = icmp ult ptr %199, %195
  br i1 %200, label %206, label %201

201:                                              ; preds = %197
  %202 = load i32, ptr %199, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %197, label %204

204:                                              ; preds = %201
  %205 = zext i32 %202 to i64
  br label %212

206:                                              ; preds = %197
  br i1 %188, label %210, label %207

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.buffer_head, ptr %187, i32 0, i32 3
  %209 = load i64, ptr %208, align 8
  br label %212

210:                                              ; preds = %206
  %211 = call i64 @ext4_inode_to_goal_block(ptr noundef %1) #9
  br label %212

212:                                              ; preds = %210, %207, %204
  %213 = phi i64 [ %205, %204 ], [ %209, %207 ], [ %211, %210 ]
  %214 = and i64 %213, 4294967295
  %215 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 5
  store i64 %214, ptr %215, align 8
  %216 = getelementptr %struct.Indirect, ptr %10, i32 %90
  %217 = ptrtoint ptr %216 to i32
  %218 = ptrtoint ptr %96 to i32
  %219 = sub i32 %217, %218
  %220 = sdiv i32 %219, 12
  %221 = add nsw i32 %220, -1
  %222 = load i32, ptr %13, align 4
  %223 = icmp sgt i32 %219, 12
  br i1 %223, label %234, label %224

224:                                              ; preds = %212
  %225 = icmp ult i32 %222, 2
  %226 = icmp eq i32 %95, 0
  %227 = or i1 %226, %225
  br i1 %227, label %245, label %228

228:                                              ; preds = %224
  %229 = load ptr, ptr %96, align 4
  %230 = add i32 %95, -1
  %231 = add i32 %222, -2
  %232 = call i32 @llvm.umin.i32(i32 %230, i32 %231) #9
  %233 = add nuw i32 %232, 2
  br label %237

234:                                              ; preds = %212
  %235 = sub i32 %91, %93
  %236 = call i32 @llvm.umin.i32(i32 %235, i32 %222) #9
  br label %245

237:                                              ; preds = %242, %228
  %238 = phi i32 [ 1, %228 ], [ %243, %242 ]
  %239 = getelementptr i32, ptr %229, i32 %238
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = add nuw i32 %238, 1
  %244 = icmp eq i32 %243, %233
  br i1 %244, label %245, label %237

245:                                              ; preds = %242, %237, %234, %224
  %246 = phi i32 [ %236, %234 ], [ 1, %224 ], [ %238, %237 ], [ %233, %242 ]
  %247 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 1
  store i32 %246, ptr %247, align 4
  %248 = ptrtoint ptr %10 to i32
  %249 = sub i32 %218, %248
  %250 = sdiv exact i32 %249, 12
  %251 = getelementptr i32, ptr %9, i32 %250
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %252 = icmp slt i32 %219, 12
  br i1 %252, label %371, label %253

253:                                              ; preds = %245
  %254 = getelementptr inbounds %struct.ext4_allocation_request, ptr %7, i32 0, i32 8
  br label %255

255:                                              ; preds = %343, %253
  %256 = phi i32 [ 1, %253 ], [ %344, %343 ]
  %257 = phi i32 [ 0, %253 ], [ %345, %343 ]
  %258 = icmp eq i32 %257, %221
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = call i64 @ext4_mb_new_blocks(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  br label %269

261:                                              ; preds = %255
  %262 = load ptr, ptr %7, align 8
  %263 = load i64, ptr %215, align 8
  %264 = load i32, ptr %254, align 8
  %265 = and i32 %264, 1024
  %266 = call i64 @ext4_new_meta_blocks(ptr noundef %0, ptr noundef %262, i64 noundef %263, i32 noundef %265, ptr noundef null, ptr noundef nonnull %6) #9
  store i64 %266, ptr %215, align 8
  %267 = add nuw nsw i32 %257, 1
  %268 = getelementptr %struct.Indirect, ptr %96, i32 %267, i32 2
  store ptr null, ptr %268, align 4
  br label %269

269:                                              ; preds = %261, %259
  %270 = phi i64 [ %260, %259 ], [ %266, %261 ]
  %271 = getelementptr [4 x i64], ptr %5, i32 0, i32 %257
  store i64 %270, ptr %271, align 8
  %272 = load i32, ptr %6, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %269
  %275 = add nsw i32 %257, -1
  br label %347

276:                                              ; preds = %269
  %277 = trunc i64 %270 to i32
  %278 = getelementptr %struct.Indirect, ptr %96, i32 %257
  %279 = getelementptr %struct.Indirect, ptr %96, i32 %257, i32 1
  store i32 %277, ptr %279, align 4
  %280 = icmp eq i32 %257, 0
  br i1 %280, label %343, label %281

281:                                              ; preds = %276
  %282 = load ptr, ptr %7, align 8
  %283 = getelementptr inbounds %struct.inode, ptr %282, i32 0, i32 8
  %284 = load ptr, ptr %283, align 4
  %285 = add nsw i32 %257, -1
  %286 = getelementptr [4 x i64], ptr %5, i32 0, i32 %285
  %287 = load i64, ptr %286, align 8
  %288 = getelementptr inbounds %struct.super_block, ptr %284, i32 0, i32 20
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.super_block, ptr %284, i32 0, i32 3
  %291 = load i32, ptr %290, align 16
  %292 = call ptr @__getblk_gfp(ptr noundef %289, i64 noundef %287, i32 noundef %291, i32 noundef 8) #9
  %293 = getelementptr %struct.Indirect, ptr %96, i32 %257, i32 2
  store ptr %292, ptr %293, align 4
  %294 = icmp eq ptr %292, null
  br i1 %294, label %295, label %296, !prof !14

295:                                              ; preds = %281
  store i32 -12, ptr %6, align 4
  br label %347

296:                                              ; preds = %281
  %297 = load volatile i32, ptr %292, align 4
  %298 = and i32 %297, 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %292) #9, !srcloc !15
  %301 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %292, ptr nonnull %292, i32 4, ptr nonnull elementtype(i32) %292) #9, !srcloc !16
  %302 = extractvalue { i32, i32, i32 } %301, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %303 = and i32 %302, 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %300, %296
  call void @__lock_buffer(ptr noundef nonnull %292) #9
  br label %306

306:                                              ; preds = %305, %300
  %307 = load ptr, ptr %7, align 8
  %308 = getelementptr inbounds %struct.inode, ptr %307, i32 0, i32 8
  %309 = load ptr, ptr %308, align 4
  %310 = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_alloc_branch, i32 noundef 358, ptr noundef %0, ptr noundef %309, ptr noundef nonnull %292, i32 noundef 1) #9
  store i32 %310, ptr %6, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %306
  call void @unlock_buffer(ptr noundef nonnull %292) #9
  br label %347

313:                                              ; preds = %306
  %314 = getelementptr inbounds %struct.buffer_head, ptr %292, i32 0, i32 5
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.buffer_head, ptr %292, i32 0, i32 4
  %317 = load i32, ptr %316, align 8
  call void @llvm.memset.p0.i32(ptr align 1 %315, i8 0, i32 %317, i1 false) #9
  %318 = load ptr, ptr %314, align 4
  %319 = getelementptr i32, ptr %251, i32 %257
  %320 = load i32, ptr %319, align 4
  %321 = getelementptr i32, ptr %318, i32 %320
  store ptr %321, ptr %278, align 4
  %322 = load i32, ptr %247, align 4
  %323 = select i1 %258, i32 %322, i32 %256
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %325, %313
  %326 = phi i32 [ %332, %325 ], [ 0, %313 ]
  %327 = phi ptr [ %331, %325 ], [ %321, %313 ]
  %328 = phi i64 [ %329, %325 ], [ %270, %313 ]
  %329 = add i64 %328, 1
  %330 = trunc i64 %328 to i32
  %331 = getelementptr i32, ptr %327, i32 1
  store i32 %330, ptr %327, align 4
  %332 = add nuw nsw i32 %326, 1
  %333 = icmp eq i32 %332, %323
  br i1 %333, label %334, label %325

334:                                              ; preds = %325, %313
  %335 = load volatile i32, ptr %292, align 4
  %336 = and i32 %335, 1
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %292) #9
  br label %339

339:                                              ; preds = %338, %334
  call void @unlock_buffer(ptr noundef nonnull %292) #9
  %340 = load ptr, ptr %7, align 8
  %341 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_alloc_branch, i32 noundef 378, ptr noundef %0, ptr noundef %340, ptr noundef nonnull %292) #9
  store i32 %341, ptr %6, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %339, %276
  %344 = phi i32 [ %256, %276 ], [ %323, %339 ]
  %345 = add nuw nsw i32 %257, 1
  %346 = icmp eq i32 %345, %220
  br i1 %346, label %371, label %255

347:                                              ; preds = %339, %312, %295, %274
  %348 = phi i32 [ %275, %274 ], [ %257, %295 ], [ %257, %312 ], [ %257, %339 ]
  %349 = icmp eq i32 %348, %221
  br i1 %349, label %350, label %356

350:                                              ; preds = %347
  %351 = load ptr, ptr %7, align 8
  %352 = getelementptr [4 x i64], ptr %5, i32 0, i32 %221
  %353 = load i64, ptr %352, align 8
  %354 = load i32, ptr %247, align 4
  call void @ext4_free_blocks(ptr noundef %0, ptr noundef %351, ptr noundef null, i64 noundef %353, i32 noundef %354, i32 noundef 0) #9
  %355 = add nsw i32 %220, -2
  br label %356

356:                                              ; preds = %350, %347
  %357 = phi i32 [ %355, %350 ], [ %348, %347 ]
  %358 = icmp sgt i32 %357, -1
  br i1 %358, label %359, label %372

359:                                              ; preds = %359, %356
  %360 = phi i32 [ %369, %359 ], [ %357, %356 ]
  %361 = load ptr, ptr %7, align 8
  %362 = add nuw nsw i32 %360, 1
  %363 = getelementptr %struct.Indirect, ptr %96, i32 %362, i32 2
  %364 = load ptr, ptr %363, align 4
  %365 = getelementptr [4 x i64], ptr %5, i32 0, i32 %360
  %366 = load i64, ptr %365, align 8
  %367 = icmp eq ptr %364, null
  %368 = select i1 %367, i32 0, i32 2
  call void @ext4_free_blocks(ptr noundef %0, ptr noundef %361, ptr noundef %364, i64 noundef %366, i32 noundef 1, i32 noundef %368) #9
  %369 = add nsw i32 %360, -1
  %370 = icmp eq i32 %360, 0
  br i1 %370, label %372, label %359

371:                                              ; preds = %343, %245
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  br label %375

372:                                              ; preds = %359, %356
  %373 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  store i32 %373, ptr %8, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %399

375:                                              ; preds = %372, %371
  %376 = call fastcc i32 @ext4_splice_branch(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %96, i32 noundef %221)
  store i32 %376, ptr %8, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %399

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %380 = load i32, ptr %379, align 8
  %381 = or i32 %380, 32
  store i32 %381, ptr %379, align 8
  call fastcc void @ext4_update_inode_fsync_trans(ptr noundef %0, ptr noundef %1)
  %382 = load i32, ptr %247, align 4
  %383 = add nsw i32 %90, -1
  %384 = getelementptr [4 x %struct.Indirect], ptr %10, i32 0, i32 %383, i32 1
  %385 = load i32, ptr %384, align 4
  %386 = zext i32 %385 to i64
  br label %387

387:                                              ; preds = %378, %110, %105
  %388 = phi i64 [ %386, %378 ], [ %103, %105 ], [ %103, %110 ]
  %389 = phi i32 [ %382, %378 ], [ %106, %105 ], [ %106, %110 ]
  %390 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 3
  %391 = load i32, ptr %390, align 8
  %392 = or i32 %391, 16
  store i32 %392, ptr %390, align 8
  store i64 %388, ptr %2, align 8
  store i32 %389, ptr %13, align 4
  %393 = icmp sgt i32 %389, %95
  br i1 %393, label %394, label %396

394:                                              ; preds = %387
  %395 = or i32 %391, 528
  store i32 %395, ptr %390, align 8
  br label %396

396:                                              ; preds = %394, %387
  store i32 %389, ptr %8, align 4
  %397 = getelementptr %struct.Indirect, ptr %10, i32 %90
  %398 = getelementptr %struct.Indirect, ptr %397, i32 -1
  br label %399

399:                                              ; preds = %396, %375, %372, %148, %144
  %400 = phi ptr [ %96, %144 ], [ %96, %148 ], [ %96, %375 ], [ %398, %396 ], [ %96, %372 ]
  %401 = icmp ugt ptr %400, %10
  br i1 %401, label %402, label %411

402:                                              ; preds = %408, %399
  %403 = phi ptr [ %409, %408 ], [ %400, %399 ]
  %404 = getelementptr inbounds %struct.Indirect, ptr %403, i32 0, i32 2
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %405, null
  br i1 %406, label %408, label %407

407:                                              ; preds = %402
  call void @__brelse(ptr noundef nonnull %405) #9
  br label %408

408:                                              ; preds = %407, %402
  %409 = getelementptr %struct.Indirect, ptr %403, i32 -1
  %410 = icmp ugt ptr %409, %10
  br i1 %410, label %402, label %411

411:                                              ; preds = %408, %399, %161, %85
  %412 = load i32, ptr %8, align 4
  %413 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ext4_ind_map_blocks_exit, i32 0, i32 1), align 4
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %415, label %428

415:                                              ; preds = %411
  %416 = tail call ptr @llvm.thread.pointer() #9
  %417 = getelementptr inbounds %struct.thread_info, ptr %416, i32 0, i32 2
  %418 = load i32, ptr %417, align 8
  %419 = lshr i32 %418, 5
  %420 = getelementptr i32, ptr @__cpu_online_mask, i32 %419
  %421 = load volatile i32, ptr %420, align 4
  %422 = and i32 %418, 31
  %423 = shl nuw i32 1, %422
  %424 = and i32 %423, %421
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %428, label %426

426:                                              ; preds = %415
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %427 = call i32 @__traceiter_ext4_ind_map_blocks_exit(ptr noundef null, ptr noundef %1, i32 noundef %3, ptr noundef %2, i32 noundef %412) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %428

428:                                              ; preds = %426, %415, %411
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #9
  ret i32 %412
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ext4_get_branch(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  store i32 0, ptr %4, align 4
  %8 = getelementptr i8, ptr %0, i32 -208
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr i32, ptr %8, i32 %9
  store ptr %10, ptr %3, align 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.Indirect, ptr %3, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.Indirect, ptr %3, i32 0, i32 2
  store ptr null, ptr %13, align 4
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %66, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 20
  %17 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  br label %18

18:                                               ; preds = %53, %15
  %19 = phi ptr [ %57, %53 ], [ %2, %15 ]
  %20 = phi ptr [ %54, %53 ], [ %3, %15 ]
  %21 = phi i32 [ %22, %53 ], [ %1, %15 ]
  %22 = add i32 %21, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %66, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Indirect, ptr %20, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = load ptr, ptr %16, align 4
  %29 = load i32, ptr %17, align 16
  %30 = tail call ptr @__getblk_gfp(ptr noundef %28, i64 noundef %27, i32 noundef %29, i32 noundef 8) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %64, label %32, !prof !14

32:                                               ; preds = %24
  %33 = tail call i32 @bh_uptodate_or_lock(ptr noundef nonnull %30) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = tail call i32 @ext4_read_bh(ptr noundef nonnull %30, i32 noundef 0, ptr noundef null) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %39 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #9, !srcloc !15
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #9, !srcloc !21
  br label %64

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 16
  %47 = lshr i32 %46, 2
  %48 = tail call i32 @ext4_check_blockref(ptr noundef nonnull @__func__.ext4_get_branch, i32 noundef 171, ptr noundef %0, ptr noundef %43, i32 noundef %47) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %51 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #9, !srcloc !15
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #9, !srcloc !21
  br label %64

53:                                               ; preds = %41, %32
  %54 = getelementptr %struct.Indirect, ptr %20, i32 1
  %55 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i32, ptr %19, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i32, ptr %56, i32 %58
  store ptr %59, ptr %54, align 4
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.Indirect, ptr %20, i32 1, i32 1
  store i32 %60, ptr %61, align 4
  %62 = getelementptr %struct.Indirect, ptr %20, i32 1, i32 2
  store ptr %30, ptr %62, align 4
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %66, label %18

64:                                               ; preds = %50, %38, %24
  %65 = phi i32 [ -5, %38 ], [ -5, %50 ], [ -12, %24 ]
  store i32 %65, ptr %4, align 4
  br label %66

66:                                               ; preds = %64, %53, %18, %5
  %67 = phi ptr [ %20, %64 ], [ %3, %5 ], [ %54, %53 ], [ null, %18 ]
  ret ptr %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_splice_branch(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Indirect, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_splice_branch, i32 noundef 434, ptr noundef %0, ptr noundef %11, ptr noundef nonnull %6, i32 noundef 1) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %8, %4
  %15 = getelementptr inbounds %struct.Indirect, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %2, align 4
  store i32 %16, ptr %17, align 4
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32, ptr %15, align 4
  %25 = add i32 %24, 1
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi i32 [ %34, %27 ], [ 1, %23 ]
  %29 = phi i64 [ %30, %27 ], [ %26, %23 ]
  %30 = add nuw nsw i64 %29, 1
  %31 = trunc i64 %29 to i32
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr i32, ptr %32, i32 %28
  store i32 %31, ptr %33, align 4
  %34 = add nuw i32 %28, 1
  %35 = load i32, ptr %20, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %27, label %37

37:                                               ; preds = %27, %19, %14
  %38 = load ptr, ptr %5, align 4
  %39 = icmp eq ptr %38, null
  %40 = load ptr, ptr %1, align 8
  br i1 %39, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_splice_branch, i32 noundef 465, ptr noundef %0, ptr noundef %40, ptr noundef nonnull %38) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %64, label %47

44:                                               ; preds = %37
  %45 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %40, ptr noundef nonnull @__func__.ext4_splice_branch, i32 noundef 472) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47, !prof !11

47:                                               ; preds = %44, %41, %8
  %48 = phi i32 [ %12, %8 ], [ %42, %41 ], [ %45, %44 ]
  %49 = icmp slt i32 %3, 1
  br i1 %49, label %57, label %50

50:                                               ; preds = %50, %47
  %51 = phi i32 [ %55, %50 ], [ 1, %47 ]
  %52 = load ptr, ptr %1, align 8
  %53 = getelementptr %struct.Indirect, ptr %2, i32 %51, i32 2
  %54 = load ptr, ptr %53, align 4
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %52, ptr noundef %54, i64 noundef 0, i32 noundef 1, i32 noundef 2) #9
  %55 = add i32 %51, 1
  %56 = icmp sgt i32 %55, %3
  br i1 %56, label %57, label %50

57:                                               ; preds = %50, %47
  %58 = load ptr, ptr %1, align 8
  %59 = getelementptr %struct.Indirect, ptr %2, i32 %3, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ext4_allocation_request, ptr %1, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %58, ptr noundef null, i64 noundef %61, i32 noundef %63, i32 noundef 0) #9
  br label %64

64:                                               ; preds = %57, %44, %41
  %65 = phi i32 [ %48, %57 ], [ 0, %44 ], [ 0, %41 ]
  ret i32 %65
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @ext4_update_inode_fsync_trans(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.transaction_s, ptr %10, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %1, i32 520
  store i32 %19, ptr %20, align 8
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.transaction_s, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %1, i32 524
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %17, %12, %9, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ext4_ind_trans_blocks(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 16
  %7 = lshr i32 %6, 2
  %8 = add i32 %1, -1
  %9 = add i32 %8, %7
  %10 = udiv i32 %9, %7
  %11 = add i32 %10, 4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_ind_truncate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i32], align 4
  %4 = alloca [4 x %struct.Indirect], align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %1, i32 -208
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 16
  %11 = lshr i32 %10, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  %12 = load i32, ptr %9, align 16
  %13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %14 = load i64, ptr %13, align 8
  %15 = zext i32 %12 to i64
  %16 = add nsw i64 %15, -1
  %17 = add i64 %16, %14
  %18 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i64
  %21 = ashr i64 %17, %20
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 13
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %16, %26
  %28 = ashr i64 %27, %20
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %22, %29
  br i1 %30, label %68, label %31

31:                                               ; preds = %2
  %32 = lshr i32 %12, 2
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %24, i32 0, i32 27
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 1
  %36 = shl nuw i32 1, %35
  %37 = icmp ult i32 %22, 12
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 %22, ptr %3, align 4
  br label %68

39:                                               ; preds = %31
  %40 = add i32 %22, -12
  %41 = icmp ult i32 %40, %32
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  store i32 12, ptr %3, align 4
  %43 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 %40, ptr %43, align 4
  br label %68

44:                                               ; preds = %39
  %45 = sub i32 %40, %32
  %46 = icmp ult i32 %45, %36
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  store i32 13, ptr %3, align 4
  %48 = lshr i32 %45, %34
  %49 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 %48, ptr %49, align 4
  %50 = add nsw i32 %32, -1
  %51 = and i32 %45, %50
  %52 = getelementptr inbounds i32, ptr %3, i32 2
  store i32 %51, ptr %52, align 4
  br label %68

53:                                               ; preds = %44
  %54 = sub i32 %45, %36
  %55 = lshr i32 %54, %35
  %56 = icmp ult i32 %55, %32
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  store i32 14, ptr %3, align 4
  %58 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 %55, ptr %58, align 4
  %59 = lshr i32 %54, %34
  %60 = add nsw i32 %32, -1
  %61 = and i32 %59, %60
  %62 = getelementptr inbounds i32, ptr %3, i32 2
  store i32 %61, ptr %62, align 4
  %63 = and i32 %54, %60
  %64 = getelementptr inbounds i32, ptr %3, i32 3
  store i32 %63, ptr %64, align 4
  br label %68

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %8, ptr noundef nonnull @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef nonnull @.str.6, i32 noundef %22, i32 noundef %67) #9
  br label %179

68:                                               ; preds = %57, %47, %42, %38, %2
  %69 = phi i32 [ 14, %57 ], [ 13, %47 ], [ 12, %42 ], [ %22, %38 ], [ 0, %2 ]
  %70 = phi i1 [ false, %57 ], [ false, %47 ], [ false, %42 ], [ true, %38 ], [ false, %2 ]
  %71 = phi i32 [ 4, %57 ], [ 3, %47 ], [ 2, %42 ], [ 1, %38 ], [ 0, %2 ]
  %72 = xor i32 %22, -1
  %73 = tail call i32 @ext4_es_remove_extent(ptr noundef %1, i32 noundef %22, i32 noundef %72) #9
  %74 = load i64, ptr %13, align 8
  %75 = getelementptr i8, ptr %1, i32 -32
  store i64 %74, ptr %75, align 8
  br i1 %30, label %179, label %76

76:                                               ; preds = %68
  br i1 %70, label %77, label %110

77:                                               ; preds = %76
  %78 = getelementptr i32, ptr %6, i32 %69
  %79 = getelementptr i8, ptr %1, i32 -160
  %80 = icmp ult ptr %78, %79
  br i1 %80, label %81, label %160

81:                                               ; preds = %100, %77
  %82 = phi ptr [ %104, %100 ], [ %78, %77 ]
  %83 = phi ptr [ %103, %100 ], [ null, %77 ]
  %84 = phi i32 [ %102, %100 ], [ 0, %77 ]
  %85 = phi i64 [ %101, %100 ], [ 0, %77 ]
  %86 = load i32, ptr %82, align 4
  %87 = zext i32 %86 to i64
  %88 = icmp eq i32 %86, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %81
  %90 = icmp eq i32 %84, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %89
  %92 = zext i32 %84 to i64
  %93 = add i64 %85, %92
  %94 = icmp eq i64 %93, %87
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = add i32 %84, 1
  br label %100

97:                                               ; preds = %91
  %98 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %85, i32 noundef %84, ptr noundef %83, ptr noundef %82) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %160

100:                                              ; preds = %97, %95, %89, %81
  %101 = phi i64 [ %85, %95 ], [ %85, %81 ], [ %87, %89 ], [ %87, %97 ]
  %102 = phi i32 [ %96, %95 ], [ %84, %81 ], [ 1, %89 ], [ 1, %97 ]
  %103 = phi ptr [ %83, %95 ], [ %83, %81 ], [ %82, %89 ], [ %82, %97 ]
  %104 = getelementptr i32, ptr %82, i32 1
  %105 = icmp ult ptr %104, %79
  br i1 %105, label %81, label %106

106:                                              ; preds = %100
  %107 = icmp eq i32 %102, 0
  br i1 %107, label %160, label %108

108:                                              ; preds = %106
  %109 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %101, i32 noundef %102, ptr noundef %103, ptr noundef %104) #9
  br label %160

110:                                              ; preds = %76
  %111 = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %71, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %112 = load i32, ptr %5, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %136, label %114

114:                                              ; preds = %110
  %115 = icmp eq ptr %111, %4
  br i1 %115, label %116, label %125

116:                                              ; preds = %114
  %117 = getelementptr inbounds i32, ptr %5, i32 1
  %118 = getelementptr %struct.Indirect, ptr %4, i32 %71
  %119 = getelementptr %struct.Indirect, ptr %118, i32 -1
  %120 = ptrtoint ptr %119 to i32
  %121 = ptrtoint ptr %4 to i32
  %122 = sub i32 %120, %121
  %123 = sdiv exact i32 %122, 12
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %5, ptr noundef %117, i32 noundef %123)
  %124 = load ptr, ptr %4, align 4
  store i32 0, ptr %124, align 4
  br label %136

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.Indirect, ptr %111, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %111, align 4
  %129 = getelementptr i32, ptr %128, i32 1
  %130 = getelementptr %struct.Indirect, ptr %4, i32 %71
  %131 = getelementptr %struct.Indirect, ptr %130, i32 -1
  %132 = ptrtoint ptr %131 to i32
  %133 = ptrtoint ptr %111 to i32
  %134 = sub i32 %132, %133
  %135 = sdiv exact i32 %134, 12
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %127, ptr noundef %128, ptr noundef %129, i32 noundef %135)
  br label %136

136:                                              ; preds = %125, %116, %110
  %137 = icmp ugt ptr %111, %4
  br i1 %137, label %138, label %160

138:                                              ; preds = %136
  %139 = getelementptr %struct.Indirect, ptr %4, i32 %71
  %140 = getelementptr %struct.Indirect, ptr %139, i32 -1
  %141 = ptrtoint ptr %140 to i32
  br label %142

142:                                              ; preds = %157, %138
  %143 = phi ptr [ %111, %138 ], [ %158, %157 ]
  %144 = getelementptr inbounds %struct.Indirect, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %143, align 4
  %147 = getelementptr i32, ptr %146, i32 1
  %148 = getelementptr inbounds %struct.buffer_head, ptr %145, i32 0, i32 5
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr i32, ptr %149, i32 %11
  %151 = ptrtoint ptr %143 to i32
  %152 = sub i32 %141, %151
  %153 = sdiv exact i32 %152, 12
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %145, ptr noundef %147, ptr noundef %150, i32 noundef %153)
  %154 = load ptr, ptr %144, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %142
  call void @__brelse(ptr noundef nonnull %154) #9
  br label %157

157:                                              ; preds = %156, %142
  %158 = getelementptr %struct.Indirect, ptr %143, i32 -1
  %159 = icmp ugt ptr %158, %4
  br i1 %159, label %142, label %160

160:                                              ; preds = %157, %136, %108, %106, %97, %77
  switch i32 %69, label %161 [
    i32 12, label %167
    i32 13, label %173
    i32 14, label %179
  ]

161:                                              ; preds = %160
  %162 = getelementptr i8, ptr %1, i32 -160
  %163 = load i32, ptr %162, align 4
  store i32 %163, ptr %5, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds i32, ptr %5, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %5, ptr noundef %166, i32 noundef 1)
  store i32 0, ptr %162, align 4
  br label %167

167:                                              ; preds = %165, %161, %160
  %168 = getelementptr i8, ptr %1, i32 -156
  %169 = load i32, ptr %168, align 4
  store i32 %169, ptr %5, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds i32, ptr %5, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %5, ptr noundef %172, i32 noundef 2)
  store i32 0, ptr %168, align 4
  br label %173

173:                                              ; preds = %171, %167, %160
  %174 = getelementptr i8, ptr %1, i32 -152
  %175 = load i32, ptr %174, align 4
  store i32 %175, ptr %5, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds i32, ptr %5, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %5, ptr noundef %178, i32 noundef 3)
  store i32 0, ptr %174, align 4
  br label %179

179:                                              ; preds = %177, %173, %160, %68, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_free_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readnone %4) unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_free_data, i32 noundef 923, ptr noundef %0, ptr noundef %9, ptr noundef nonnull %2, i32 noundef 1) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %7, %5
  %13 = icmp ult ptr %3, %4
  br i1 %13, label %14, label %43

14:                                               ; preds = %33, %12
  %15 = phi ptr [ %37, %33 ], [ %3, %12 ]
  %16 = phi ptr [ %36, %33 ], [ null, %12 ]
  %17 = phi i32 [ %35, %33 ], [ 0, %12 ]
  %18 = phi i64 [ %34, %33 ], [ 0, %12 ]
  %19 = load i32, ptr %15, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = icmp eq i32 %17, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %22
  %25 = zext i32 %17 to i64
  %26 = add i64 %18, %25
  %27 = icmp eq i64 %26, %20
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = add i32 %17, 1
  br label %33

30:                                               ; preds = %24
  %31 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %18, i32 noundef %17, ptr noundef %16, ptr noundef %15)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %28, %22, %14
  %34 = phi i64 [ %18, %28 ], [ %18, %14 ], [ %20, %22 ], [ %20, %30 ]
  %35 = phi i32 [ %29, %28 ], [ %17, %14 ], [ 1, %22 ], [ 1, %30 ]
  %36 = phi ptr [ %16, %28 ], [ %16, %14 ], [ %15, %22 ], [ %15, %30 ]
  %37 = getelementptr i32, ptr %15, i32 1
  %38 = icmp ult ptr %37, %4
  br i1 %38, label %14, label %39

39:                                               ; preds = %33
  %40 = icmp eq i32 %35, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %34, i32 noundef %35, ptr noundef %36, ptr noundef %37)
  br label %43

43:                                               ; preds = %41, %39, %30, %12
  %44 = phi i32 [ %42, %41 ], [ 0, %39 ], [ 0, %12 ], [ %31, %30 ]
  %45 = icmp slt i32 %44, 0
  %46 = or i1 %6, %45
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 47
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 8
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55, %47
  %60 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_data, i32 noundef 970, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %64

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %63 = load i64, ptr %62, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_free_data, i32 noundef 975, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.7, i64 noundef %63) #9
  br label %64

64:                                               ; preds = %61, %59, %43, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ext4_find_shared(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  store i32 0, ptr %4, align 4
  %7 = call i32 @llvm.smin.i32(i32 %1, i32 1)
  br label %8

8:                                                ; preds = %11, %5
  %9 = phi i32 [ %1, %5 ], [ %12, %11 ]
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = add nsw i32 %9, -1
  %13 = getelementptr i32, ptr %2, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %8, label %16

16:                                               ; preds = %11, %8
  %17 = phi i32 [ %7, %8 ], [ %9, %11 ]
  %18 = call fastcc ptr @ext4_get_branch(ptr noundef %0, i32 noundef %17, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6)
  %19 = icmp eq ptr %18, null
  %20 = getelementptr %struct.Indirect, ptr %3, i32 %17
  %21 = getelementptr %struct.Indirect, ptr %20, i32 -1
  %22 = select i1 %19, ptr %21, ptr %18
  %23 = getelementptr inbounds %struct.Indirect, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load ptr, ptr %22, align 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %26, %16
  %31 = icmp ugt ptr %22, %3
  br i1 %31, label %32, label %54

32:                                               ; preds = %46, %30
  %33 = phi ptr [ %47, %46 ], [ %22, %30 ]
  %34 = getelementptr inbounds %struct.Indirect, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %33, align 4
  br label %39

39:                                               ; preds = %42, %32
  %40 = phi ptr [ %37, %32 ], [ %43, %42 ]
  %41 = icmp ult ptr %40, %38
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr i32, ptr %40, i32 1
  %44 = load i32, ptr %40, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %39, label %49

46:                                               ; preds = %39
  %47 = getelementptr %struct.Indirect, ptr %33, i32 -1
  %48 = icmp ugt ptr %47, %3
  br i1 %48, label %32, label %54

49:                                               ; preds = %42
  %50 = icmp eq ptr %33, %21
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load ptr, ptr %21, align 4
  %53 = getelementptr i32, ptr %52, i32 -1
  store ptr %53, ptr %21, align 4
  br label %58

54:                                               ; preds = %49, %46, %30
  %55 = phi ptr [ %33, %49 ], [ %22, %30 ], [ %47, %46 ]
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %4, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi ptr [ %55, %54 ], [ %21, %51 ]
  %60 = icmp ugt ptr %22, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %67, %58
  %62 = phi ptr [ %68, %67 ], [ %22, %58 ]
  %63 = getelementptr inbounds %struct.Indirect, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void @__brelse(ptr noundef nonnull %64) #9
  br label %67

67:                                               ; preds = %66, %61
  %68 = getelementptr %struct.Indirect, ptr %62, i32 -1
  %69 = icmp ugt ptr %68, %59
  br i1 %69, label %61, label %70

70:                                               ; preds = %67, %58, %26
  %71 = phi ptr [ %22, %26 ], [ %22, %58 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret ptr %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %89

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %89, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %89

21:                                               ; preds = %16, %6
  %22 = add i32 %5, -1
  %23 = icmp eq i32 %5, 0
  br i1 %23, label %88, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 16
  %29 = lshr i32 %28, 2
  %30 = getelementptr i32, ptr %4, i32 -1
  %31 = icmp ult ptr %30, %3
  br i1 %31, label %89, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 7
  %34 = icmp eq ptr %2, null
  br label %35

35:                                               ; preds = %51, %32
  %36 = phi ptr [ %30, %32 ], [ %52, %51 ]
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @ext4_inode_block_valid(ptr noundef %1, i64 noundef %38, i32 noundef 1) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1015, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %37, i32 noundef %22) #9
  br label %89

44:                                               ; preds = %40
  %45 = load ptr, ptr %25, align 4
  %46 = tail call ptr @ext4_sb_bread(ptr noundef %45, i64 noundef %38, i32 noundef 0) #9
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = ptrtoint ptr %46 to i32
  %50 = sub i32 0, %49
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1028, i64 noundef %38, i32 noundef %50, ptr noundef nonnull @.str.10) #9
  br label %51

51:                                               ; preds = %86, %82, %81, %48, %35
  %52 = getelementptr i32, ptr %36, i32 -1
  %53 = icmp ult ptr %52, %3
  br i1 %53, label %89, label %35

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i32, ptr %56, i32 %29
  tail call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %46, ptr noundef %56, ptr noundef %57, i32 noundef %22)
  %58 = icmp eq ptr %46, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void @__brelse(ptr noundef nonnull %46) #9
  br label %60

60:                                               ; preds = %59, %54
  br i1 %7, label %73, label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %33, align 4
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load ptr, ptr %0, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %89, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68, %60
  %74 = load ptr, ptr %25, align 4
  %75 = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 27
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ext4_sb_info, ptr %76, i32 0, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = tail call fastcc i32 @ext4_ind_truncate_ensure_credits(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %78)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %38, i32 noundef 1, i32 noundef 3) #9
  br i1 %34, label %51, label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr %25, align 4
  %84 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1087, ptr noundef %0, ptr noundef %83, ptr noundef nonnull %2, i32 noundef 1) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %51

86:                                               ; preds = %82
  store i32 0, ptr %36, align 4
  %87 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1093, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %51

88:                                               ; preds = %21
  tail call fastcc void @ext4_free_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %89

89:                                               ; preds = %88, %73, %68, %65, %61, %51, %43, %24, %16, %13, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ind_remove_space(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x i32], align 4
  %6 = alloca [4 x i32], align 4
  %7 = alloca [4 x %struct.Indirect], align 4
  %8 = alloca [4 x %struct.Indirect], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr i8, ptr %1, i32 -208
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 16
  %16 = lshr i32 %15, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %7, i8 0, i32 48, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, i8 0, i32 48, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4
  %17 = load i32, ptr %14, align 16
  %18 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 13
  %21 = load i64, ptr %20, align 8
  %22 = zext i32 %17 to i64
  %23 = add nsw i64 %22, -1
  %24 = add i64 %23, %21
  %25 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 2
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i64
  %28 = ashr i64 %24, %27
  %29 = trunc i64 %28 to i32
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %3)
  %31 = icmp ule i32 %30, %2
  %32 = icmp ult i32 %29, %2
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %444, label %34

34:                                               ; preds = %4
  %35 = lshr i32 %17, 2
  %36 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 27
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 1
  %39 = shl nuw i32 1, %38
  %40 = icmp ult i32 %2, 12
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 %2, ptr %5, align 4
  br label %81

42:                                               ; preds = %34
  %43 = add i32 %2, -12
  %44 = icmp ult i32 %43, %35
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  store i32 12, ptr %5, align 4
  %46 = getelementptr inbounds i32, ptr %5, i32 1
  store i32 %43, ptr %46, align 4
  br label %81

47:                                               ; preds = %42
  %48 = sub i32 %43, %35
  %49 = icmp ult i32 %48, %39
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  store i32 13, ptr %5, align 4
  %51 = lshr i32 %48, %37
  %52 = getelementptr inbounds i32, ptr %5, i32 1
  store i32 %51, ptr %52, align 4
  %53 = add nsw i32 %35, -1
  %54 = and i32 %48, %53
  %55 = getelementptr inbounds i32, ptr %5, i32 2
  store i32 %54, ptr %55, align 4
  br label %81

56:                                               ; preds = %47
  %57 = sub i32 %48, %39
  %58 = lshr i32 %57, %38
  %59 = icmp ult i32 %58, %35
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  store i32 14, ptr %5, align 4
  %61 = getelementptr inbounds i32, ptr %5, i32 1
  store i32 %58, ptr %61, align 4
  %62 = lshr i32 %57, %37
  %63 = add nsw i32 %35, -1
  %64 = and i32 %62, %63
  %65 = getelementptr inbounds i32, ptr %5, i32 2
  store i32 %64, ptr %65, align 4
  %66 = and i32 %57, %63
  %67 = getelementptr inbounds i32, ptr %5, i32 3
  store i32 %66, ptr %67, align 4
  br label %81

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %70 = load i32, ptr %69, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %13, ptr noundef nonnull @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef nonnull @.str.6, i32 noundef %2, i32 noundef %70) #9
  %71 = load ptr, ptr %12, align 4
  %72 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 16
  %74 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 27
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %75, i32 0, i32 27
  %77 = load i32, ptr %76, align 4
  %78 = lshr i32 %73, 2
  %79 = shl i32 %77, 1
  %80 = shl nuw i32 1, %79
  br label %81

81:                                               ; preds = %68, %60, %50, %45, %41
  %82 = phi i32 [ %39, %41 ], [ %39, %45 ], [ %39, %50 ], [ %39, %60 ], [ %80, %68 ]
  %83 = phi i32 [ %38, %41 ], [ %38, %45 ], [ %38, %50 ], [ %38, %60 ], [ %79, %68 ]
  %84 = phi i32 [ %35, %41 ], [ %35, %45 ], [ %35, %50 ], [ %35, %60 ], [ %78, %68 ]
  %85 = phi i32 [ %2, %41 ], [ 12, %45 ], [ 13, %50 ], [ 14, %60 ], [ 0, %68 ]
  %86 = phi i32 [ %37, %41 ], [ %37, %45 ], [ %37, %50 ], [ %37, %60 ], [ %77, %68 ]
  %87 = phi ptr [ %13, %41 ], [ %13, %45 ], [ %13, %50 ], [ %13, %60 ], [ %71, %68 ]
  %88 = phi i32 [ 1, %41 ], [ 2, %45 ], [ 3, %50 ], [ 4, %60 ], [ 0, %68 ]
  %89 = icmp ult i32 %30, 12
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 %30, ptr %6, align 4
  br label %120

91:                                               ; preds = %81
  %92 = add i32 %30, -12
  %93 = icmp ult i32 %92, %84
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  store i32 12, ptr %6, align 4
  %95 = getelementptr inbounds i32, ptr %6, i32 1
  store i32 %92, ptr %95, align 4
  br label %120

96:                                               ; preds = %91
  %97 = sub i32 %92, %84
  %98 = icmp ult i32 %97, %82
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  store i32 13, ptr %6, align 4
  %100 = lshr i32 %97, %86
  %101 = getelementptr inbounds i32, ptr %6, i32 1
  store i32 %100, ptr %101, align 4
  %102 = add nsw i32 %84, -1
  %103 = and i32 %97, %102
  %104 = getelementptr inbounds i32, ptr %6, i32 2
  store i32 %103, ptr %104, align 4
  br label %120

105:                                              ; preds = %96
  %106 = sub i32 %97, %82
  %107 = lshr i32 %106, %83
  %108 = icmp ult i32 %107, %84
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  store i32 14, ptr %6, align 4
  %110 = getelementptr inbounds i32, ptr %6, i32 1
  store i32 %107, ptr %110, align 4
  %111 = lshr i32 %106, %86
  %112 = add nsw i32 %84, -1
  %113 = and i32 %111, %112
  %114 = getelementptr inbounds i32, ptr %6, i32 2
  store i32 %113, ptr %114, align 4
  %115 = and i32 %106, %112
  %116 = getelementptr inbounds i32, ptr %6, i32 3
  store i32 %115, ptr %116, align 4
  br label %120

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %119 = load i32, ptr %118, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %87, ptr noundef nonnull @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef nonnull @.str.6, i32 noundef %30, i32 noundef %119) #9
  br label %120

120:                                              ; preds = %117, %109, %99, %94, %90
  %121 = phi i32 [ %30, %90 ], [ 12, %94 ], [ 13, %99 ], [ 14, %109 ], [ 0, %117 ]
  %122 = phi i32 [ 1, %90 ], [ 2, %94 ], [ 3, %99 ], [ 4, %109 ], [ 0, %117 ]
  %123 = icmp ugt i32 %88, %122
  br i1 %123, label %124, label %125, !prof !14

124:                                              ; preds = %120
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/indirect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1244, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

125:                                              ; preds = %120
  %126 = select i1 %40, i1 %89, i1 false
  br i1 %126, label %127, label %160

127:                                              ; preds = %125
  %128 = getelementptr i32, ptr %11, i32 %85
  %129 = getelementptr i32, ptr %11, i32 %121
  %130 = icmp ult ptr %128, %129
  br i1 %130, label %131, label %444

131:                                              ; preds = %150, %127
  %132 = phi ptr [ %154, %150 ], [ %128, %127 ]
  %133 = phi ptr [ %153, %150 ], [ null, %127 ]
  %134 = phi i32 [ %152, %150 ], [ 0, %127 ]
  %135 = phi i64 [ %151, %150 ], [ 0, %127 ]
  %136 = load i32, ptr %132, align 4
  %137 = zext i32 %136 to i64
  %138 = icmp eq i32 %136, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %131
  %140 = icmp eq i32 %134, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %139
  %142 = zext i32 %134 to i64
  %143 = add i64 %135, %142
  %144 = icmp eq i64 %143, %137
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = add i32 %134, 1
  br label %150

147:                                              ; preds = %141
  %148 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %135, i32 noundef %134, ptr noundef %133, ptr noundef %132) #9
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %444

150:                                              ; preds = %147, %145, %139, %131
  %151 = phi i64 [ %135, %145 ], [ %135, %131 ], [ %137, %139 ], [ %137, %147 ]
  %152 = phi i32 [ %146, %145 ], [ %134, %131 ], [ 1, %139 ], [ 1, %147 ]
  %153 = phi ptr [ %133, %145 ], [ %133, %131 ], [ %132, %139 ], [ %132, %147 ]
  %154 = getelementptr i32, ptr %132, i32 1
  %155 = icmp ult ptr %154, %129
  br i1 %155, label %131, label %156

156:                                              ; preds = %150
  %157 = icmp eq i32 %152, 0
  br i1 %157, label %444, label %158

158:                                              ; preds = %156
  %159 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %151, i32 noundef %152, ptr noundef %153, ptr noundef %154) #9
  br label %444

160:                                              ; preds = %125
  %161 = icmp ugt i32 %122, %88
  br i1 %161, label %162, label %269

162:                                              ; preds = %160
  br i1 %40, label %163, label %196

163:                                              ; preds = %162
  %164 = getelementptr i32, ptr %11, i32 %85
  %165 = getelementptr i8, ptr %1, i32 -160
  %166 = icmp ult ptr %164, %165
  br i1 %166, label %167, label %242

167:                                              ; preds = %186, %163
  %168 = phi ptr [ %190, %186 ], [ %164, %163 ]
  %169 = phi ptr [ %189, %186 ], [ null, %163 ]
  %170 = phi i32 [ %188, %186 ], [ 0, %163 ]
  %171 = phi i64 [ %187, %186 ], [ 0, %163 ]
  %172 = load i32, ptr %168, align 4
  %173 = zext i32 %172 to i64
  %174 = icmp eq i32 %172, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %167
  %176 = icmp eq i32 %170, 0
  br i1 %176, label %186, label %177

177:                                              ; preds = %175
  %178 = zext i32 %170 to i64
  %179 = add i64 %171, %178
  %180 = icmp eq i64 %179, %173
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = add i32 %170, 1
  br label %186

183:                                              ; preds = %177
  %184 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %171, i32 noundef %170, ptr noundef %169, ptr noundef %168) #9
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %242

186:                                              ; preds = %183, %181, %175, %167
  %187 = phi i64 [ %171, %181 ], [ %171, %167 ], [ %173, %175 ], [ %173, %183 ]
  %188 = phi i32 [ %182, %181 ], [ %170, %167 ], [ 1, %175 ], [ 1, %183 ]
  %189 = phi ptr [ %169, %181 ], [ %169, %167 ], [ %168, %175 ], [ %168, %183 ]
  %190 = getelementptr i32, ptr %168, i32 1
  %191 = icmp ult ptr %190, %165
  br i1 %191, label %167, label %192

192:                                              ; preds = %186
  %193 = icmp eq i32 %188, 0
  br i1 %193, label %242, label %194

194:                                              ; preds = %192
  %195 = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %187, i32 noundef %188, ptr noundef %189, ptr noundef %190) #9
  br label %242

196:                                              ; preds = %162
  %197 = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %88, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %9)
  %198 = load i32, ptr %9, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %222, label %200

200:                                              ; preds = %196
  %201 = icmp eq ptr %197, %7
  br i1 %201, label %202, label %211

202:                                              ; preds = %200
  %203 = getelementptr inbounds i32, ptr %9, i32 1
  %204 = getelementptr %struct.Indirect, ptr %7, i32 %88
  %205 = getelementptr %struct.Indirect, ptr %204, i32 -1
  %206 = ptrtoint ptr %205 to i32
  %207 = ptrtoint ptr %7 to i32
  %208 = sub i32 %206, %207
  %209 = sdiv exact i32 %208, 12
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, ptr noundef %203, i32 noundef %209)
  %210 = load ptr, ptr %7, align 4
  store i32 0, ptr %210, align 4
  br label %222

211:                                              ; preds = %200
  %212 = getelementptr inbounds %struct.Indirect, ptr %197, i32 0, i32 2
  %213 = load ptr, ptr %212, align 4
  %214 = load ptr, ptr %197, align 4
  %215 = getelementptr i32, ptr %214, i32 1
  %216 = getelementptr %struct.Indirect, ptr %7, i32 %88
  %217 = getelementptr %struct.Indirect, ptr %216, i32 -1
  %218 = ptrtoint ptr %217 to i32
  %219 = ptrtoint ptr %197 to i32
  %220 = sub i32 %218, %219
  %221 = sdiv exact i32 %220, 12
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %213, ptr noundef %214, ptr noundef %215, i32 noundef %221)
  br label %222

222:                                              ; preds = %211, %202, %196
  %223 = icmp ugt ptr %197, %7
  br i1 %223, label %224, label %242

224:                                              ; preds = %222
  %225 = getelementptr %struct.Indirect, ptr %7, i32 %88
  %226 = getelementptr %struct.Indirect, ptr %225, i32 -1
  %227 = ptrtoint ptr %226 to i32
  br label %228

228:                                              ; preds = %228, %224
  %229 = phi ptr [ %197, %224 ], [ %240, %228 ]
  %230 = getelementptr inbounds %struct.Indirect, ptr %229, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = load ptr, ptr %229, align 4
  %233 = getelementptr i32, ptr %232, i32 1
  %234 = getelementptr inbounds %struct.buffer_head, ptr %231, i32 0, i32 5
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr i32, ptr %235, i32 %16
  %237 = ptrtoint ptr %229 to i32
  %238 = sub i32 %227, %237
  %239 = sdiv exact i32 %238, 12
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %231, ptr noundef %233, ptr noundef %236, i32 noundef %239)
  %240 = getelementptr %struct.Indirect, ptr %229, i32 -1
  %241 = icmp ugt ptr %240, %7
  br i1 %241, label %228, label %242

242:                                              ; preds = %228, %222, %194, %192, %183, %163
  %243 = phi ptr [ null, %163 ], [ null, %192 ], [ null, %194 ], [ %197, %222 ], [ null, %183 ], [ %197, %228 ]
  %244 = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %122, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %10)
  %245 = load i32, ptr %10, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %242
  %248 = icmp ugt ptr %244, %8
  br i1 %248, label %253, label %414

249:                                              ; preds = %242
  %250 = load ptr, ptr %244, align 4
  %251 = getelementptr i32, ptr %250, i32 1
  store ptr %251, ptr %244, align 4
  %252 = icmp ugt ptr %244, %8
  br i1 %252, label %253, label %414

253:                                              ; preds = %249, %247
  %254 = getelementptr %struct.Indirect, ptr %8, i32 %122
  %255 = getelementptr %struct.Indirect, ptr %254, i32 -1
  %256 = ptrtoint ptr %255 to i32
  br label %257

257:                                              ; preds = %257, %253
  %258 = phi ptr [ %244, %253 ], [ %267, %257 ]
  %259 = getelementptr inbounds %struct.Indirect, ptr %258, i32 0, i32 2
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.buffer_head, ptr %260, i32 0, i32 5
  %262 = load ptr, ptr %261, align 4
  %263 = load ptr, ptr %258, align 4
  %264 = ptrtoint ptr %258 to i32
  %265 = sub i32 %256, %264
  %266 = sdiv exact i32 %265, 12
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %260, ptr noundef %262, ptr noundef %263, i32 noundef %266)
  %267 = getelementptr %struct.Indirect, ptr %258, i32 -1
  %268 = icmp ugt ptr %267, %8
  br i1 %268, label %257, label %414

269:                                              ; preds = %160
  %270 = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %88, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %9)
  %271 = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %122, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %10)
  %272 = load i32, ptr %9, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %317, label %274

274:                                              ; preds = %269
  %275 = ptrtoint ptr %270 to i32
  %276 = ptrtoint ptr %7 to i32
  %277 = sub i32 %275, %276
  %278 = sdiv exact i32 %277, 12
  %279 = ptrtoint ptr %271 to i32
  %280 = ptrtoint ptr %8 to i32
  %281 = sub i32 %279, %280
  %282 = sdiv exact i32 %281, 12
  %283 = call i32 @llvm.smin.i32(i32 %278, i32 %282)
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %317, label %285

285:                                              ; preds = %274
  %286 = icmp eq i32 %85, %121
  br i1 %286, label %287, label %297

287:                                              ; preds = %290, %285
  %288 = phi i32 [ %291, %290 ], [ 0, %285 ]
  %289 = icmp eq i32 %288, %283
  br i1 %289, label %317, label %290

290:                                              ; preds = %287
  %291 = add nuw nsw i32 %288, 1
  %292 = getelementptr [4 x i32], ptr %5, i32 0, i32 %291
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr [4 x i32], ptr %6, i32 0, i32 %291
  %295 = load i32, ptr %294, align 4
  %296 = icmp eq i32 %293, %295
  br i1 %296, label %287, label %297

297:                                              ; preds = %290, %285
  %298 = icmp eq ptr %270, %7
  br i1 %298, label %299, label %307

299:                                              ; preds = %297
  %300 = getelementptr inbounds i32, ptr %9, i32 1
  %301 = getelementptr %struct.Indirect, ptr %7, i32 %88
  %302 = getelementptr %struct.Indirect, ptr %301, i32 -1
  %303 = ptrtoint ptr %302 to i32
  %304 = sub i32 %303, %275
  %305 = sdiv exact i32 %304, 12
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, ptr noundef %300, i32 noundef %305)
  %306 = load ptr, ptr %7, align 4
  store i32 0, ptr %306, align 4
  br label %317

307:                                              ; preds = %297
  %308 = getelementptr inbounds %struct.Indirect, ptr %270, i32 0, i32 2
  %309 = load ptr, ptr %308, align 4
  %310 = load ptr, ptr %270, align 4
  %311 = getelementptr i32, ptr %310, i32 1
  %312 = getelementptr %struct.Indirect, ptr %7, i32 %88
  %313 = getelementptr %struct.Indirect, ptr %312, i32 -1
  %314 = ptrtoint ptr %313 to i32
  %315 = sub i32 %314, %275
  %316 = sdiv exact i32 %315, 12
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %309, ptr noundef %310, ptr noundef %311, i32 noundef %316)
  br label %317

317:                                              ; preds = %307, %299, %287, %274, %269
  %318 = load i32, ptr %10, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load ptr, ptr %271, align 4
  %322 = getelementptr i32, ptr %321, i32 1
  store ptr %322, ptr %271, align 4
  br label %323

323:                                              ; preds = %320, %317
  %324 = icmp ugt ptr %270, %7
  %325 = icmp ugt ptr %271, %8
  %326 = select i1 %324, i1 true, i1 %325
  br i1 %326, label %327, label %390

327:                                              ; preds = %323
  %328 = getelementptr %struct.Indirect, ptr %7, i32 %88
  %329 = getelementptr %struct.Indirect, ptr %328, i32 -1
  %330 = ptrtoint ptr %329 to i32
  %331 = getelementptr %struct.Indirect, ptr %8, i32 %122
  %332 = getelementptr %struct.Indirect, ptr %331, i32 -1
  %333 = ptrtoint ptr %332 to i32
  br label %334

334:                                              ; preds = %385, %327
  %335 = phi i1 [ %325, %327 ], [ %388, %385 ]
  %336 = phi i1 [ %324, %327 ], [ %387, %385 ]
  %337 = phi ptr [ %271, %327 ], [ %386, %385 ]
  %338 = phi ptr [ %270, %327 ], [ %374, %385 ]
  %339 = ptrtoint ptr %338 to i32
  %340 = sub i32 %330, %339
  %341 = sdiv exact i32 %340, 12
  %342 = ptrtoint ptr %337 to i32
  %343 = sub i32 %333, %342
  %344 = sdiv exact i32 %343, 12
  %345 = select i1 %336, i1 %335, i1 false
  br i1 %345, label %346, label %360

346:                                              ; preds = %334
  %347 = getelementptr inbounds %struct.Indirect, ptr %338, i32 0, i32 2
  %348 = load ptr, ptr %347, align 4
  %349 = getelementptr inbounds %struct.buffer_head, ptr %348, i32 0, i32 3
  %350 = load i64, ptr %349, align 8
  %351 = getelementptr inbounds %struct.Indirect, ptr %337, i32 0, i32 2
  %352 = load ptr, ptr %351, align 4
  %353 = getelementptr inbounds %struct.buffer_head, ptr %352, i32 0, i32 3
  %354 = load i64, ptr %353, align 8
  %355 = icmp eq i64 %350, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %346
  %357 = load ptr, ptr %338, align 4
  %358 = getelementptr i32, ptr %357, i32 1
  %359 = load ptr, ptr %337, align 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %348, ptr noundef %358, ptr noundef %359, i32 noundef %341)
  br label %390

360:                                              ; preds = %346, %334
  %361 = xor i1 %336, true
  %362 = icmp sgt i32 %341, %344
  %363 = select i1 %361, i1 true, i1 %362
  br i1 %363, label %373, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.Indirect, ptr %338, i32 0, i32 2
  %366 = load ptr, ptr %365, align 4
  %367 = load ptr, ptr %338, align 4
  %368 = getelementptr i32, ptr %367, i32 1
  %369 = getelementptr inbounds %struct.buffer_head, ptr %366, i32 0, i32 5
  %370 = load ptr, ptr %369, align 4
  %371 = getelementptr i32, ptr %370, i32 %16
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %366, ptr noundef %368, ptr noundef %371, i32 noundef %341)
  %372 = getelementptr %struct.Indirect, ptr %338, i32 -1
  br label %373

373:                                              ; preds = %364, %360
  %374 = phi ptr [ %372, %364 ], [ %338, %360 ]
  %375 = xor i1 %335, true
  %376 = icmp sgt i32 %344, %341
  %377 = select i1 %375, i1 true, i1 %376
  br i1 %377, label %385, label %378

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.Indirect, ptr %337, i32 0, i32 2
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr inbounds %struct.buffer_head, ptr %380, i32 0, i32 5
  %382 = load ptr, ptr %381, align 4
  %383 = load ptr, ptr %337, align 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %380, ptr noundef %382, ptr noundef %383, i32 noundef %344)
  %384 = getelementptr %struct.Indirect, ptr %337, i32 -1
  br label %385

385:                                              ; preds = %378, %373
  %386 = phi ptr [ %384, %378 ], [ %337, %373 ]
  %387 = icmp ugt ptr %374, %7
  %388 = icmp ugt ptr %386, %8
  %389 = select i1 %387, i1 true, i1 %388
  br i1 %389, label %334, label %390

390:                                              ; preds = %442, %438, %434, %424, %415, %414, %385, %356, %323
  %391 = phi ptr [ %243, %415 ], [ %243, %424 ], [ %243, %434 ], [ %243, %442 ], [ %243, %438 ], [ %243, %414 ], [ %270, %356 ], [ %270, %323 ], [ %270, %385 ]
  %392 = phi ptr [ %244, %415 ], [ %244, %424 ], [ %244, %434 ], [ %244, %442 ], [ %244, %438 ], [ %244, %414 ], [ %271, %356 ], [ %271, %323 ], [ %271, %385 ]
  %393 = icmp ugt ptr %391, %7
  br i1 %393, label %396, label %394

394:                                              ; preds = %402, %390
  %395 = icmp ugt ptr %392, %8
  br i1 %395, label %405, label %444

396:                                              ; preds = %402, %390
  %397 = phi ptr [ %403, %402 ], [ %391, %390 ]
  %398 = getelementptr inbounds %struct.Indirect, ptr %397, i32 0, i32 2
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %402, label %401

401:                                              ; preds = %396
  call void @__brelse(ptr noundef nonnull %399) #9
  br label %402

402:                                              ; preds = %401, %396
  %403 = getelementptr %struct.Indirect, ptr %397, i32 -1
  %404 = icmp ugt ptr %403, %7
  br i1 %404, label %396, label %394

405:                                              ; preds = %411, %394
  %406 = phi ptr [ %412, %411 ], [ %392, %394 ]
  %407 = getelementptr inbounds %struct.Indirect, ptr %406, i32 0, i32 2
  %408 = load ptr, ptr %407, align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %411, label %410

410:                                              ; preds = %405
  call void @__brelse(ptr noundef nonnull %408) #9
  br label %411

411:                                              ; preds = %410, %405
  %412 = getelementptr %struct.Indirect, ptr %406, i32 -1
  %413 = icmp ugt ptr %412, %8
  br i1 %413, label %405, label %444

414:                                              ; preds = %257, %249, %247
  switch i32 %85, label %415 [
    i32 12, label %424
    i32 13, label %434
    i32 14, label %390
  ]

415:                                              ; preds = %414
  %416 = add nuw nsw i32 %88, 1
  %417 = icmp ult i32 %416, %122
  br i1 %417, label %418, label %390

418:                                              ; preds = %415
  %419 = getelementptr i8, ptr %1, i32 -160
  %420 = load i32, ptr %419, align 4
  store i32 %420, ptr %9, align 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %418
  %423 = getelementptr inbounds i32, ptr %9, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, ptr noundef %423, i32 noundef 1)
  store i32 0, ptr %419, align 4
  br label %424

424:                                              ; preds = %422, %418, %414
  %425 = phi i32 [ %416, %422 ], [ %416, %418 ], [ %88, %414 ]
  %426 = add nsw i32 %425, 1
  %427 = icmp slt i32 %426, %122
  br i1 %427, label %428, label %390

428:                                              ; preds = %424
  %429 = getelementptr i8, ptr %1, i32 -156
  %430 = load i32, ptr %429, align 4
  store i32 %430, ptr %9, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %434, label %432

432:                                              ; preds = %428
  %433 = getelementptr inbounds i32, ptr %9, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, ptr noundef %433, i32 noundef 2)
  store i32 0, ptr %429, align 4
  br label %434

434:                                              ; preds = %432, %428, %414
  %435 = phi i32 [ %426, %432 ], [ %426, %428 ], [ %88, %414 ]
  %436 = add nsw i32 %435, 1
  %437 = icmp slt i32 %436, %122
  br i1 %437, label %438, label %390

438:                                              ; preds = %434
  %439 = getelementptr i8, ptr %1, i32 -152
  %440 = load i32, ptr %439, align 4
  store i32 %440, ptr %9, align 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %390, label %442

442:                                              ; preds = %438
  %443 = getelementptr inbounds i32, ptr %9, i32 1
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, ptr noundef %443, i32 noundef 3)
  store i32 0, ptr %439, align 4
  br label %390

444:                                              ; preds = %411, %394, %158, %156, %147, %127, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ind_map_blocks_enter(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bh_uptodate_or_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_check_blockref(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_to_goal_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_mb_new_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_new_meta_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_create_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ext4_ind_map_blocks_exit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef writeonly %5, ptr noundef readnone %6) unnamed_addr #0 {
  %8 = load i16, ptr %1, align 8
  %9 = and i16 %8, -4096
  switch i16 %9, label %10 [
    i16 16384, label %20
    i16 -24576, label %20
  ]

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %1, i32 -124
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = tail call i32 @ext4_inode_journal_mode(ptr noundef %1) #9
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 4, i32 6
  br label %20

20:                                               ; preds = %15, %10, %7, %7
  %21 = phi i32 [ 7, %7 ], [ 7, %7 ], [ 7, %10 ], [ %19, %15 ]
  %22 = tail call i32 @ext4_inode_block_valid(ptr noundef %1, i64 noundef %3, i32 noundef %4) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_clear_blocks, i32 noundef 868, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.8, i64 noundef %3, i32 noundef %4) #9
  br label %60

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ext4_sb_info, ptr %29, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 3072
  %33 = icmp eq i32 %32, 1024
  br i1 %33, label %47, label %34

34:                                               ; preds = %25
  %35 = tail call i32 @ext4_inode_journal_mode(ptr noundef %1) #9
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 27
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 11
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 1
  %45 = add i32 %4, -2
  %46 = add i32 %45, %44
  br label %47

47:                                               ; preds = %38, %34, %25
  %48 = phi i32 [ %46, %38 ], [ 0, %25 ], [ 0, %34 ]
  %49 = tail call fastcc i32 @ext4_ind_truncate_ensure_credits(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %48)
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = icmp ult ptr %5, %6
  br i1 %52, label %53, label %57

53:                                               ; preds = %53, %51
  %54 = phi ptr [ %55, %53 ], [ %5, %51 ]
  store i32 0, ptr %54, align 4
  %55 = getelementptr i32, ptr %54, i32 1
  %56 = icmp ult ptr %55, %6
  br i1 %56, label %53, label %57

57:                                               ; preds = %53, %51
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %3, i32 noundef %4, i32 noundef %21) #9
  br label %60

58:                                               ; preds = %47
  %59 = load ptr, ptr %26, align 4
  tail call void @__ext4_std_error(ptr noundef %59, ptr noundef nonnull @__func__.ext4_clear_blocks, i32 noundef 883, i32 noundef %49) #9
  br label %60

60:                                               ; preds = %58, %57, %24
  %61 = phi i32 [ %49, %58 ], [ 0, %57 ], [ 1, %24 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_block_valid(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ind_truncate_ensure_credits(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 21
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, -9
  %13 = zext i32 %12 to i64
  %14 = lshr i64 %6, %13
  %15 = trunc i64 %14 to i32
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 2) #9
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 64) #9
  %18 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ext4_super_block, ptr %21, i32 0, i32 29
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 12, i32 24
  %27 = add nuw nsw i32 %17, %26
  %28 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef 12, i32 noundef %27, i32 noundef %3) #9
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %91, label %30

30:                                               ; preds = %4
  %31 = icmp eq ptr %2, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_ind_trunc_restart_fn, i32 noundef 688, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48, !prof !11

35:                                               ; preds = %32, %30
  %36 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_ind_trunc_restart_fn, i32 noundef 692) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48, !prof !11

38:                                               ; preds = %35
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 27
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ext4_sb_info, ptr %41, i32 0, i32 47
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !14

45:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/indirect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 701, 0\0A.popsection", ""() #9, !srcloc !23
  unreachable

46:                                               ; preds = %38
  tail call void @ext4_discard_preallocations(ptr noundef %1, i32 noundef 0) #9
  %47 = getelementptr i8, ptr %1, i32 -24
  tail call void @up_write(ptr noundef %47) #9
  br label %51

48:                                               ; preds = %35, %32
  %49 = phi i32 [ %33, %32 ], [ %36, %35 ]
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %91, label %51

51:                                               ; preds = %48, %46
  %52 = phi i1 [ false, %46 ], [ true, %48 ]
  %53 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %53, label %78, label %54

54:                                               ; preds = %51
  %55 = load i64, ptr %5, align 8
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 2
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -9
  %61 = zext i32 %60 to i64
  %62 = lshr i64 %55, %61
  %63 = trunc i64 %62 to i32
  %64 = tail call i32 @llvm.umax.i32(i32 %63, i32 2) #9
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 64) #9
  %66 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 27
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ext4_sb_info, ptr %67, i32 0, i32 15
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.ext4_super_block, ptr %69, i32 0, i32 29
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 64
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 12, i32 24
  %75 = add nuw nsw i32 %65, %74
  %76 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef %75, i32 noundef %3, i32 noundef 3136) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %54, %51
  br label %79

79:                                               ; preds = %78, %54
  %80 = phi i32 [ 1, %78 ], [ %76, %54 ]
  br i1 %52, label %83, label %81

81:                                               ; preds = %79
  %82 = getelementptr i8, ptr %1, i32 -24
  tail call void @down_write(ptr noundef %82) #9
  br label %83

83:                                               ; preds = %81, %79
  %84 = icmp slt i32 %80, 1
  br i1 %84, label %91, label %85

85:                                               ; preds = %83
  br i1 %31, label %90, label %86

86:                                               ; preds = %85
  %87 = load ptr, ptr %7, align 4
  %88 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ind_truncate_ensure_credits, i32 noundef 734, ptr noundef %0, ptr noundef %87, ptr noundef nonnull %2, i32 noundef 1) #9
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91, !prof !11

90:                                               ; preds = %86, %85
  br label %91

91:                                               ; preds = %90, %86, %83, %48, %4
  %92 = phi i32 [ 0, %90 ], [ %80, %83 ], [ %88, %86 ], [ %49, %48 ], [ %28, %4 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i64 2155096889}
!10 = !{i64 2155097097}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2156056282, i64 2156056765, i64 2156056319, i64 2156056375, i64 2156056409, i64 2156056433, i64 2156056474, i64 2156056495, i64 2156056523, i64 2156056557}
!13 = !{i64 2156062244, i64 2156062727, i64 2156062281, i64 2156062337, i64 2156062371, i64 2156062395, i64 2156062436, i64 2156062457, i64 2156062485, i64 2156062519}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 886864, i64 2148376835, i64 2148376861, i64 2148376908, i64 2148376930, i64 2148376958, i64 2148376978}
!16 = !{i64 2148396712, i64 2148396744, i64 2148396773, i64 2148396807, i64 2148396838, i64 2148396861}
!17 = !{i64 2148498052}
!18 = !{i64 2155132613}
!19 = !{i64 2155132817}
!20 = !{i64 2152621845}
!21 = !{i64 2148390607, i64 2148390633, i64 2148390662, i64 2148390696, i64 2148390727, i64 2148390750}
!22 = !{i64 2156077206, i64 2156077690, i64 2156077243, i64 2156077299, i64 2156077333, i64 2156077357, i64 2156077398, i64 2156077419, i64 2156077447, i64 2156077481}
!23 = !{i64 2156066716, i64 2156067199, i64 2156066753, i64 2156066809, i64 2156066843, i64 2156066867, i64 2156066908, i64 2156066929, i64 2156066957, i64 2156066991}
