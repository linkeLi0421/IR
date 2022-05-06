; ModuleID = '/llk/IR/fs/ext4/block_validity.c_pt.bc'
source_filename = "../fs/ext4/block_validity.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.41, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.42, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.43, ptr, %struct.address_space, %struct.list_head, %union.anon.44, i32, i32, ptr, ptr }
%union.anon.41 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.42 = type { %struct.callback_head }
%union.anon.43 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.44 = type { ptr }
%struct.ext4_system_zone = type { %struct.rb_node, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext4_system_blocks = type { %struct.rb_root, %struct.callback_head }

@.str = private unnamed_addr constant [17 x i8] c"ext4_system_zone\00", align 1
@ext4_system_zone_cachep = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid block\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.ext4_protect_reserved_inode = private unnamed_addr constant [28 x i8] c"ext4_protect_reserved_inode\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"blocks %llu-%llu from inode overlap system zone\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\016System zones: \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\01c%s%llu-%llu\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ext4_init_system_zone() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 8, i32 noundef 0, ptr noundef null) #7
  store ptr %1, ptr @ext4_system_zone_cachep, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_exit_system_zone() local_unnamed_addr #2 {
  tail call void @rcu_barrier() #7
  %1 = load ptr, ptr @ext4_system_zone_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_setup_system_zone(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ext4_map_blocks, align 8
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ext4_sb_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 110
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 12) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %184, label %13

13:                                               ; preds = %1
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %13
  %16 = shl nsw i32 -1, %9
  %17 = xor i32 %16, -1
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 5
  br label %22

19:                                               ; preds = %58
  %20 = add nuw i32 %23, 1
  %21 = icmp eq i32 %20, %6
  br i1 %21, label %63, label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ 0, %15 ], [ %20, %19 ]
  %24 = tail call i32 @__cond_resched() #7
  %25 = tail call i32 @ext4_bg_has_super(ptr noundef %0, i32 noundef %23) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = icmp ult i32 %23, 5
  %29 = and i32 %23, %17
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = zext i32 %23 to i64
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.ext4_sb_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = zext i32 %36 to i64
  %38 = mul nuw i64 %37, %33
  %39 = getelementptr inbounds %struct.ext4_sb_info, ptr %34, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ext4_super_block, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  %44 = add nuw i64 %38, %43
  %45 = tail call i32 @ext4_bg_num_gdb(ptr noundef %0, i32 noundef %23) #7
  %46 = add i32 %45, 1
  %47 = tail call fastcc i32 @add_system_zone(ptr noundef nonnull %11, i64 noundef %44, i32 noundef %46, i32 noundef 0)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %174

49:                                               ; preds = %32, %27, %22
  %50 = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %23, ptr noundef null) #7
  %51 = tail call i64 @ext4_block_bitmap(ptr noundef %0, ptr noundef %50) #7
  %52 = tail call fastcc i32 @add_system_zone(ptr noundef nonnull %11, i64 noundef %51, i32 noundef 1, i32 noundef 0)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %174

54:                                               ; preds = %49
  %55 = tail call i64 @ext4_inode_bitmap(ptr noundef %0, ptr noundef %50) #7
  %56 = tail call fastcc i32 @add_system_zone(ptr noundef nonnull %11, i64 noundef %55, i32 noundef 1, i32 noundef 0)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %174

58:                                               ; preds = %54
  %59 = tail call i64 @ext4_inode_table(ptr noundef %0, ptr noundef %50) #7
  %60 = load i32, ptr %18, align 4
  %61 = tail call fastcc i32 @add_system_zone(ptr noundef nonnull %11, i64 noundef %59, i32 noundef %60, i32 noundef 0)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %19, label %174

63:                                               ; preds = %19, %13
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.ext4_sb_info, ptr %64, i32 0, i32 15
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ext4_super_block, ptr %66, i32 0, i32 28
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %137, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ext4_super_block, ptr %73, i32 0, i32 39
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %137, label %77

77:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i32 24, i1 false) #7, !annotation !9
  %78 = icmp eq i32 %75, 1
  br i1 %78, label %133, label %79

79:                                               ; preds = %77
  %80 = load i32, ptr %66, align 8
  %81 = icmp ult i32 %80, %75
  br i1 %81, label %133, label %82

82:                                               ; preds = %79
  %83 = tail call ptr @__ext4_iget(ptr noundef %0, i32 noundef %75, i32 noundef 1, ptr noundef nonnull @__func__.ext4_protect_reserved_inode, i32 noundef 160) #7
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = ptrtoint ptr %83 to i32
  br label %134

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.inode, ptr %83, i32 0, i32 13
  %89 = load i64, ptr %88, align 8
  %90 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %91 = load i32, ptr %90, align 16
  %92 = zext i32 %91 to i64
  %93 = add i64 %89, -1
  %94 = add i64 %93, %92
  %95 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %96 = load i8, ptr %95, align 4
  %97 = zext i8 %96 to i64
  %98 = ashr i64 %94, %97
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %131, label %101

101:                                              ; preds = %87
  %102 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 1
  %103 = getelementptr inbounds %struct.ext4_map_blocks, ptr %2, i32 0, i32 2
  br label %104

104:                                              ; preds = %128, %101
  %105 = phi i32 [ 0, %101 ], [ %129, %128 ]
  %106 = call i32 @__cond_resched() #7
  store i32 %105, ptr %102, align 8
  %107 = sub i32 %99, %105
  store i32 %107, ptr %103, align 4
  %108 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %83, ptr noundef nonnull %2, i32 noundef 0) #7
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %104
  %111 = icmp eq i32 %108, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %110
  %113 = add nuw i32 %105, 1
  br label %128

114:                                              ; preds = %110
  %115 = load i64, ptr %2, align 8
  %116 = call fastcc i32 @add_system_zone(ptr noundef nonnull %11, i64 noundef %115, i32 noundef %108, i32 noundef %75) #7
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = icmp eq i32 %116, -117
  br i1 %119, label %120, label %131

120:                                              ; preds = %118
  %121 = load i64, ptr %2, align 8
  %122 = load i32, ptr %103, align 4
  %123 = zext i32 %122 to i64
  %124 = add i64 %121, -1
  %125 = add i64 %124, %123
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %83, ptr noundef nonnull @__func__.ext4_protect_reserved_inode, i32 noundef 182, i64 noundef 0, i32 noundef 117, ptr noundef nonnull @.str.3, i64 noundef %121, i64 noundef %125) #7
  br label %131

126:                                              ; preds = %114
  %127 = add i32 %108, %105
  br label %128

128:                                              ; preds = %126, %112
  %129 = phi i32 [ %113, %112 ], [ %127, %126 ]
  %130 = icmp ult i32 %129, %99
  br i1 %130, label %104, label %131

131:                                              ; preds = %128, %120, %118, %104, %87
  %132 = phi i32 [ -117, %120 ], [ %116, %118 ], [ 0, %87 ], [ %108, %104 ], [ 0, %128 ]
  call void @iput(ptr noundef %83) #7
  br label %134

133:                                              ; preds = %79, %77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br label %174

134:                                              ; preds = %131, %85
  %135 = phi i32 [ %86, %85 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %174

137:                                              ; preds = %134, %71, %63
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %138 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 57
  store volatile ptr %11, ptr %138, align 8
  %139 = load ptr, ptr %3, align 4
  %140 = getelementptr inbounds %struct.ext4_sb_info, ptr %139, i32 0, i32 17
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %184, label %144

144:                                              ; preds = %137
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %146 = load volatile ptr, ptr %138, align 8
  %147 = call ptr @rb_first(ptr noundef %146) #7
  %148 = icmp eq ptr %147, null
  br i1 %148, label %172, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.ext4_system_zone, ptr %147, i32 0, i32 1
  %151 = load i64, ptr %150, align 8
  %152 = getelementptr inbounds %struct.ext4_system_zone, ptr %147, i32 0, i32 2
  %153 = load i32, ptr %152, align 8
  %154 = zext i32 %153 to i64
  %155 = add i64 %151, -1
  %156 = add i64 %155, %154
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %151, i64 noundef %156) #9
  %158 = call ptr @rb_next(ptr noundef nonnull %147) #7
  %159 = icmp eq ptr %158, null
  br i1 %159, label %172, label %160

160:                                              ; preds = %160, %149
  %161 = phi ptr [ %170, %160 ], [ %158, %149 ]
  %162 = getelementptr inbounds %struct.ext4_system_zone, ptr %161, i32 0, i32 1
  %163 = load i64, ptr %162, align 8
  %164 = getelementptr inbounds %struct.ext4_system_zone, ptr %161, i32 0, i32 2
  %165 = load i32, ptr %164, align 8
  %166 = zext i32 %165 to i64
  %167 = add i64 %163, -1
  %168 = add i64 %167, %166
  %169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i64 noundef %163, i64 noundef %168) #9
  %170 = call ptr @rb_next(ptr noundef nonnull %161) #7
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %160, !llvm.loop !12

172:                                              ; preds = %160, %149, %144
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %184

174:                                              ; preds = %134, %133, %58, %54, %49, %32
  %175 = phi i32 [ %135, %134 ], [ -22, %133 ], [ %61, %58 ], [ %56, %54 ], [ %52, %49 ], [ %47, %32 ]
  %176 = call ptr @rb_first_postorder(ptr noundef nonnull %11) #7
  %177 = icmp eq ptr %176, null
  br i1 %177, label %183, label %178

178:                                              ; preds = %178, %174
  %179 = phi ptr [ %180, %178 ], [ %176, %174 ]
  %180 = call ptr @rb_next_postorder(ptr noundef nonnull %179) #7
  %181 = load ptr, ptr @ext4_system_zone_cachep, align 4
  call void @kmem_cache_free(ptr noundef %181, ptr noundef nonnull %179) #7
  %182 = icmp eq ptr %180, null
  br i1 %182, label %183, label %178

183:                                              ; preds = %178, %174
  call void @kfree(ptr noundef nonnull %11) #7
  br label %184

184:                                              ; preds = %183, %172, %137, %1
  %185 = phi i32 [ %175, %183 ], [ -12, %1 ], [ 0, %172 ], [ 0, %137 ]
  ret i32 %185
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_has_super(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_system_zone(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %22, %4
  %8 = phi ptr [ %24, %22 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.ext4_system_zone, ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = icmp ugt i64 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %22

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ext4_system_zone, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = zext i32 %16 to i64
  %18 = add i64 %10, %17
  %19 = icmp ugt i64 %18, %1
  br i1 %19, label %82, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi ptr [ %13, %12 ], [ %21, %20 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7

26:                                               ; preds = %22
  %27 = ptrtoint ptr %8 to i32
  br label %28

28:                                               ; preds = %26, %4
  %29 = phi i32 [ %27, %26 ], [ 0, %4 ]
  %30 = phi ptr [ %23, %26 ], [ %0, %4 ]
  %31 = load ptr, ptr @ext4_system_zone_cachep, align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %31, i32 noundef 3264) #7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %82, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ext4_system_zone, ptr %32, i32 0, i32 1
  store i64 %1, ptr %35, align 8
  %36 = getelementptr inbounds %struct.ext4_system_zone, ptr %32, i32 0, i32 2
  store i32 %2, ptr %36, align 8
  %37 = getelementptr inbounds %struct.ext4_system_zone, ptr %32, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  store i32 %29, ptr %32, align 8
  %38 = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 1
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 2
  store ptr null, ptr %39, align 8
  store ptr %32, ptr %30, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %32, ptr noundef %0) #7
  %40 = tail call ptr @rb_prev(ptr noundef nonnull %32) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %61, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.ext4_system_zone, ptr %40, i32 0, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.ext4_system_zone, ptr %40, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = zext i32 %46 to i64
  %48 = add i64 %44, %47
  %49 = load i64, ptr %35, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.ext4_system_zone, ptr %40, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %37, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  store i64 %44, ptr %35, align 8
  %57 = load i32, ptr %45, align 8
  %58 = load i32, ptr %36, align 8
  %59 = add i32 %58, %57
  store i32 %59, ptr %36, align 8
  tail call void @rb_erase(ptr noundef nonnull %40, ptr noundef %0) #7
  %60 = load ptr, ptr @ext4_system_zone_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %60, ptr noundef nonnull %40) #7
  br label %61

61:                                               ; preds = %56, %51, %42, %34
  %62 = tail call ptr @rb_next(ptr noundef nonnull %32) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %82, label %64

64:                                               ; preds = %61
  %65 = load i64, ptr %35, align 8
  %66 = load i32, ptr %36, align 8
  %67 = zext i32 %66 to i64
  %68 = add i64 %65, %67
  %69 = getelementptr inbounds %struct.ext4_system_zone, ptr %62, i32 0, i32 1
  %70 = load i64, ptr %69, align 8
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load i32, ptr %37, align 4
  %74 = getelementptr inbounds %struct.ext4_system_zone, ptr %62, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.ext4_system_zone, ptr %62, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, %66
  store i32 %80, ptr %36, align 8
  tail call void @rb_erase(ptr noundef nonnull %62, ptr noundef %0) #7
  %81 = load ptr, ptr @ext4_system_zone_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %81, ptr noundef nonnull %62) #7
  br label %82

82:                                               ; preds = %77, %72, %64, %61, %28, %14
  %83 = phi i32 [ -12, %28 ], [ 0, %77 ], [ 0, %61 ], [ 0, %64 ], [ 0, %72 ], [ -117, %14 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_num_gdb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_block_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_release_system_zone(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 57
  %5 = load ptr, ptr %4, align 8
  store volatile ptr null, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ext4_system_blocks, ptr %5, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %8, ptr noundef nonnull @ext4_destroy_system_zone) #7
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ext4_destroy_system_zone(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = tail call ptr @rb_first_postorder(ptr noundef %2) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = tail call ptr @rb_next_postorder(ptr noundef nonnull %6) #7
  %8 = load ptr, ptr @ext4_system_zone_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef nonnull %6) #7
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  tail call void @kfree(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_inode_block_valid(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %72

14:                                               ; preds = %3
  %15 = zext i32 %2 to i64
  %16 = add i64 %15, %1
  %17 = icmp ult i64 %16, %1
  br i1 %17, label %72, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 29
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 50
  %25 = load i32, ptr %24, align 8
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i64 [ %27, %23 ], [ 0, %18 ]
  %30 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = or i64 %29, %32
  %34 = icmp ugt i64 %16, %33
  br i1 %34, label %72, label %35

35:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %36 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 57
  %37 = load volatile ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %70, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %70, label %42

42:                                               ; preds = %39
  %43 = add i64 %16, -1
  br label %44

44:                                               ; preds = %66, %42
  %45 = phi ptr [ %40, %42 ], [ %68, %66 ]
  %46 = getelementptr inbounds %struct.ext4_system_zone, ptr %45, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 2
  br label %66

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ext4_system_zone, ptr %45, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = zext i32 %53 to i64
  %55 = add i64 %47, %54
  %56 = icmp ugt i64 %55, %1
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 1
  br label %66

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.ext4_system_zone, ptr %45, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %61, %63
  %65 = zext i1 %64 to i32
  br label %70

66:                                               ; preds = %57, %49
  %67 = phi ptr [ %50, %49 ], [ %58, %57 ]
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %44

70:                                               ; preds = %66, %59, %39, %35
  %71 = phi i32 [ 1, %35 ], [ %65, %59 ], [ 1, %39 ], [ 1, %66 ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %72

72:                                               ; preds = %70, %28, %14, %3
  %73 = phi i32 [ %71, %70 ], [ 0, %28 ], [ 0, %14 ], [ 0, %3 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_check_blockref(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 39
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %94, label %22

22:                                               ; preds = %16, %5
  %23 = getelementptr i32, ptr %3, i32 %4
  %24 = icmp ugt ptr %23, %3
  br i1 %24, label %25, label %94

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 10
  br label %27

27:                                               ; preds = %92, %25
  %28 = phi ptr [ %3, %25 ], [ %29, %92 ]
  %29 = getelementptr i32, ptr %28, i32 1
  %30 = load i32, ptr %28, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %92, label %32

32:                                               ; preds = %27
  %33 = zext i32 %30 to i64
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 27
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ext4_super_block, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, %30
  br i1 %41, label %42, label %91

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.ext4_super_block, ptr %38, i32 0, i32 29
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ext4_super_block, ptr %38, i32 0, i32 50
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  %51 = shl nuw i64 %50, 32
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i64 [ %51, %47 ], [ 0, %42 ]
  %54 = getelementptr inbounds %struct.ext4_super_block, ptr %38, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = zext i32 %55 to i64
  %57 = or i64 %53, %56
  %58 = icmp ugt i64 %57, %33
  br i1 %58, label %59, label %91

59:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %60 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 57
  %61 = load volatile ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %85, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %81, %63
  %67 = phi ptr [ %83, %81 ], [ %64, %63 ]
  %68 = getelementptr inbounds %struct.ext4_system_zone, ptr %67, i32 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = icmp ugt i64 %69, %33
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 2
  br label %81

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.ext4_system_zone, ptr %67, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = zext i32 %75 to i64
  %77 = add i64 %69, %76
  %78 = icmp ugt i64 %77, %33
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 1
  br label %81

81:                                               ; preds = %79, %71
  %82 = phi ptr [ %72, %71 ], [ %80, %79 ]
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %66

85:                                               ; preds = %81, %63, %59
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %92

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.ext4_system_zone, ptr %67, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr %26, align 4
  %90 = icmp eq i32 %88, %89
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br i1 %90, label %92, label %91, !prof !15

91:                                               ; preds = %86, %52, %32
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %2, ptr noundef %0, i32 noundef %1, i64 noundef %33, i32 noundef 0, ptr noundef nonnull @.str.2) #7
  br label %94

92:                                               ; preds = %86, %85, %27
  %93 = icmp ult ptr %29, %23
  br i1 %93, label %27, label %94

94:                                               ; preds = %92, %91, %22, %16
  %95 = phi i32 [ -117, %91 ], [ 0, %16 ], [ 0, %22 ], [ 0, %92 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!8 = !{i64 2154251659}
!9 = !{!"auto-init"}
!10 = !{i64 2154280570}
!11 = !{i64 2149179983}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = !{i64 2149180200}
!15 = !{!"branch_weights", i32 2000, i32 1}
