; ModuleID = '/llk/IR/fs/ext4/move_extent.c_pt.bc'
source_filename = "../fs/ext4/move_extent.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.ext4_ext_path = type { i64, i16, i16, ptr, ptr, ptr, ptr }
%struct.ext4_extent = type { i32, i16, i16, i32 }
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
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.34, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Online defrag not supported with data journaling\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Online defrag not supported for encrypted files\00", align 1
@__func__.move_extent_per_page = private unnamed_addr constant [21 x i8] c"move_extent_per_page\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Unable to copy data block, data will be lost.\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_double_down_write_data_sem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult ptr %0, %1
  %4 = select i1 %3, ptr %0, ptr %1
  %5 = select i1 %3, ptr %1, ptr %0
  %6 = getelementptr i8, ptr %4, i32 -24
  tail call void @down_write(ptr noundef %6) #5
  %7 = getelementptr i8, ptr %5, i32 -24
  tail call void @down_write(ptr noundef %7) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_double_up_write_data_sem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -24
  tail call void @up_write(ptr noundef %3) #5
  %4 = getelementptr i8, ptr %1, i32 -24
  tail call void @up_write(ptr noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_move_extents(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store i64 %4, ptr %7, align 8
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store ptr null, ptr %8, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 19
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = lshr i32 4096, %16
  %18 = trunc i64 %2 to i32
  %19 = trunc i64 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  %20 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ne ptr %21, %23
  %25 = icmp eq ptr %11, %13
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %162, label %27

27:                                               ; preds = %6
  %28 = load i16, ptr %11, align 8
  %29 = and i16 %28, -4096
  %30 = icmp eq i16 %29, -32768
  br i1 %30, label %31, label %162

31:                                               ; preds = %27
  %32 = load i16, ptr %13, align 8
  %33 = and i16 %32, -4096
  %34 = icmp eq i16 %33, -32768
  br i1 %34, label %35, label %162

35:                                               ; preds = %31
  %36 = tail call i32 @ext4_inode_journal_mode(ptr noundef %11) #5
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = tail call i32 @ext4_inode_journal_mode(ptr noundef %13) #5
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39, %35
  %44 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %44, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  br label %162

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 16384
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 16384
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50, %45
  %56 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %56, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #5
  br label %162

57:                                               ; preds = %50
  tail call void @lock_two_nondirectories(ptr noundef %11, ptr noundef %13) #5
  tail call void @inode_dio_wait(ptr noundef %11) #5
  tail call void @inode_dio_wait(ptr noundef %13) #5
  tail call void @ext4_double_down_write_data_sem(ptr noundef %11, ptr noundef %13)
  %58 = call fastcc i32 @mext_check_arguments(ptr noundef %11, ptr noundef %13, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %7)
  store i32 %58, ptr %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %150

60:                                               ; preds = %57
  %61 = load i64, ptr %7, align 8
  %62 = add i64 %61, %2
  %63 = trunc i64 %62 to i32
  %64 = icmp ult i32 %18, %63
  br i1 %64, label %65, label %145

65:                                               ; preds = %60
  %66 = getelementptr i8, ptr %11, i32 -202
  %67 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 19
  %68 = add nsw i32 %17, -1
  %69 = getelementptr i8, ptr %11, i32 -24
  %70 = getelementptr i8, ptr %13, i32 -24
  br label %71

71:                                               ; preds = %141, %65
  %72 = phi i32 [ %19, %65 ], [ %143, %141 ]
  %73 = phi i32 [ %18, %65 ], [ %142, %141 ]
  %74 = call ptr @ext4_find_extent(ptr noundef %11, i32 noundef %73, ptr noundef nonnull %8, i32 noundef 1073741824) #5
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %100, label %76

76:                                               ; preds = %71
  %77 = load i16, ptr %66, align 2
  %78 = zext i16 %77 to i32
  %79 = getelementptr %struct.ext4_ext_path, ptr %74, i32 %78, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  call void @ext4_ext_drop_refs(ptr noundef %74) #5
  call void @kfree(ptr noundef %74) #5
  store ptr null, ptr %8, align 4
  store i32 -61, ptr %9, align 4
  br label %150

83:                                               ; preds = %76
  store ptr %74, ptr %8, align 4
  store i32 0, ptr %9, align 4
  %84 = getelementptr inbounds %struct.ext4_ext_path, ptr %74, i32 0, i32 1
  %85 = load i16, ptr %84, align 8
  %86 = zext i16 %85 to i32
  %87 = getelementptr %struct.ext4_ext_path, ptr %74, i32 %86, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 @ext4_ext_next_allocated_block(ptr noundef %74) #5
  %90 = load i32, ptr %88, align 4
  %91 = getelementptr inbounds %struct.ext4_extent, ptr %88, i32 0, i32 1
  %92 = load i16, ptr %91, align 4
  %93 = zext i16 %92 to i32
  %94 = icmp ult i16 %92, -32767
  %95 = add nsw i32 %93, -32768
  %96 = select i1 %94, i32 %93, i32 %95
  %97 = add i32 %90, -1
  %98 = add i32 %97, %96
  %99 = icmp ult i32 %98, %73
  br i1 %99, label %102, label %108

100:                                              ; preds = %71
  %101 = ptrtoint ptr %74 to i32
  store i32 %101, ptr %9, align 4
  br label %150

102:                                              ; preds = %83
  %103 = icmp eq i32 %89, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  store i32 -61, ptr %9, align 4
  br label %150

105:                                              ; preds = %102
  %106 = sub i32 %72, %73
  %107 = add i32 %106, %89
  br label %141

108:                                              ; preds = %83
  %109 = icmp ugt i32 %90, %73
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = sub i32 %72, %73
  %112 = add i32 %111, %90
  %113 = icmp ult i32 %90, %63
  br i1 %113, label %117, label %150

114:                                              ; preds = %108
  %115 = sub i32 %90, %73
  %116 = add i32 %115, %96
  br label %117

117:                                              ; preds = %114, %110
  %118 = phi i32 [ %90, %110 ], [ %73, %114 ]
  %119 = phi i32 [ %112, %110 ], [ %72, %114 ]
  %120 = phi i32 [ %96, %110 ], [ %116, %114 ]
  %121 = icmp ugt i16 %92, -32768
  %122 = zext i1 %121 to i32
  %123 = sub i32 %63, %118
  %124 = call i32 @llvm.umin.i32(i32 %123, i32 %120)
  %125 = load i8, ptr %14, align 2
  %126 = zext i8 %125 to i32
  %127 = sub nsw i32 12, %126
  %128 = lshr i32 %118, %127
  %129 = load i8, ptr %67, align 2
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 12, %130
  %132 = lshr i32 %119, %131
  %133 = and i32 %118, %68
  %134 = sub i32 %17, %133
  %135 = call i32 @llvm.smin.i32(i32 %124, i32 %134)
  call void @up_write(ptr noundef %69) #5
  call void @up_write(ptr noundef %70) #5
  call fastcc void @move_extent_per_page(ptr noundef %0, ptr noundef %13, i32 noundef %128, i32 noundef %132, i32 noundef %133, i32 noundef %135, i32 noundef %122, ptr noundef nonnull %9)
  call void @ext4_double_down_write_data_sem(ptr noundef %11, ptr noundef %13)
  %136 = load i32, ptr %9, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %117
  %139 = add i32 %135, %118
  %140 = add i32 %135, %119
  br label %141

141:                                              ; preds = %138, %105
  %142 = phi i32 [ %89, %105 ], [ %139, %138 ]
  %143 = phi i32 [ %107, %105 ], [ %140, %138 ]
  %144 = icmp ult i32 %142, %63
  br i1 %144, label %71, label %145

145:                                              ; preds = %141, %117, %60
  %146 = phi i32 [ %18, %60 ], [ %118, %117 ], [ %142, %141 ]
  %147 = zext i32 %146 to i64
  %148 = sub i64 %147, %2
  %149 = call i64 @llvm.umin.i64(i64 %148, i64 %61)
  store i64 %149, ptr %5, align 8
  br label %152

150:                                              ; preds = %110, %104, %100, %82, %57
  %151 = load i64, ptr %5, align 8
  br label %152

152:                                              ; preds = %150, %145
  %153 = phi i64 [ %151, %150 ], [ %149, %145 ]
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  call void @ext4_discard_preallocations(ptr noundef %11, i32 noundef 0) #5
  call void @ext4_discard_preallocations(ptr noundef %13, i32 noundef 0) #5
  br label %156

156:                                              ; preds = %155, %152
  %157 = load ptr, ptr %8, align 4
  call void @ext4_ext_drop_refs(ptr noundef %157) #5
  %158 = load ptr, ptr %8, align 4
  call void @kfree(ptr noundef %158) #5
  %159 = getelementptr i8, ptr %11, i32 -24
  call void @up_write(ptr noundef %159) #5
  %160 = getelementptr i8, ptr %13, i32 -24
  call void @up_write(ptr noundef %160) #5
  call void @unlock_two_nondirectories(ptr noundef %11, ptr noundef %13) #5
  %161 = load i32, ptr %9, align 4
  br label %162

162:                                              ; preds = %156, %55, %43, %31, %27, %6
  %163 = phi i32 [ -95, %43 ], [ -95, %55 ], [ %161, %156 ], [ -22, %6 ], [ -22, %31 ], [ -22, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  ret i32 %163
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mext_check_arguments(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %11

11:                                               ; preds = %19, %5
  %12 = load volatile i32, ptr %9, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !9
  %16 = load volatile i32, ptr %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %12, %11 ], [ %16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %21 = load i64, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %22 = load volatile i32, ptr %9, align 4
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %24, label %11

24:                                               ; preds = %19
  %25 = shl nuw i32 1, %8
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %26, -1
  %28 = zext i8 %7 to i64
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %30 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %31

31:                                               ; preds = %39, %24
  %32 = load volatile i32, ptr %29, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %35, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !9
  %36 = load volatile i32, ptr %29, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %35

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %32, %31 ], [ %36, %35 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %41 = load i64, ptr %30, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %42 = load volatile i32, ptr %29, align 4
  %43 = icmp eq i32 %42, %40
  br i1 %43, label %44, label %31

44:                                               ; preds = %39
  %45 = add i64 %27, %21
  %46 = ashr i64 %45, %28
  %47 = add i64 %27, %41
  %48 = ashr i64 %47, %28
  %49 = load i16, ptr %1, align 8
  %50 = and i16 %49, 3072
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %141

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %141

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 256
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %54, 256
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %141

65:                                               ; preds = %57
  %66 = and i32 %59, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = getelementptr i8, ptr %0, i32 -124
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 2097152
  %72 = icmp ne i32 %71, 0
  %73 = and i32 %54, 32
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %68
  %77 = getelementptr i8, ptr %1, i32 -124
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 2097152
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %141, label %81

81:                                               ; preds = %76, %68, %65
  %82 = getelementptr i8, ptr %0, i32 -124
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 524288
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %141, label %86

86:                                               ; preds = %81
  %87 = getelementptr i8, ptr %1, i32 -124
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 524288
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %141, label %91

91:                                               ; preds = %86
  %92 = load i64, ptr %10, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %141, label %94

94:                                               ; preds = %91
  %95 = load i64, ptr %30, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %141, label %97

97:                                               ; preds = %94
  %98 = load i8, ptr %6, align 2
  %99 = zext i8 %98 to i32
  %100 = lshr i32 4095, %99
  %101 = zext i32 %100 to i64
  %102 = xor i64 %3, %2
  %103 = and i64 %102, %101
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %97
  %106 = icmp ugt i64 %2, 4294967294
  %107 = icmp ugt i64 %3, 4294967294
  %108 = or i1 %106, %107
  br i1 %108, label %141, label %109

109:                                              ; preds = %105
  %110 = load i64, ptr %4, align 8
  %111 = icmp ugt i64 %110, 4294967295
  %112 = add i64 %110, %3
  %113 = icmp ugt i64 %112, 4294967294
  %114 = or i1 %111, %113
  br i1 %114, label %141, label %115

115:                                              ; preds = %109
  %116 = add nuw nsw i64 %110, %2
  %117 = icmp ugt i64 %116, 4294967294
  br i1 %117, label %141, label %118

118:                                              ; preds = %115
  %119 = icmp ugt i64 %46, %2
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = add nsw i64 %116, -1
  %122 = icmp ult i64 %46, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = sub i64 %46, %2
  br label %125

125:                                              ; preds = %123, %118
  %126 = phi i64 [ %124, %123 ], [ 0, %118 ]
  store i64 %126, ptr %4, align 8
  br label %127

127:                                              ; preds = %125, %120
  %128 = phi i64 [ %110, %120 ], [ %126, %125 ]
  %129 = icmp ugt i64 %48, %3
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  store i64 0, ptr %4, align 8
  br label %140

131:                                              ; preds = %127
  %132 = add nsw i64 %3, -1
  %133 = add i64 %132, %128
  %134 = icmp ult i64 %48, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = sub i64 %48, %3
  store i64 %136, ptr %4, align 8
  br label %137

137:                                              ; preds = %135, %131
  %138 = phi i64 [ %128, %131 ], [ %136, %135 ]
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %130
  br label %141

141:                                              ; preds = %140, %137, %115, %109, %105, %97, %94, %91, %86, %81, %76, %57, %52, %44
  %142 = phi i32 [ -22, %44 ], [ -1, %52 ], [ -16, %57 ], [ -16, %76 ], [ -95, %81 ], [ -95, %86 ], [ -22, %94 ], [ -22, %91 ], [ -22, %97 ], [ -22, %115 ], [ -22, %109 ], [ -22, %105 ], [ -22, %140 ], [ 0, %137 ]
  ret i32 %142
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_next_allocated_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @move_extent_per_page(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [8 x ptr], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  store i32 0, ptr %10, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #5
  store i32 0, ptr %11, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 19
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = shl i32 %4, %20
  %22 = lshr i32 4096, %20
  %23 = mul i32 %22, %2
  %24 = add i32 %23, %4
  %25 = mul i32 %22, %3
  %26 = add i32 %25, %4
  %27 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 13
  %28 = add i32 %17, -1
  %29 = icmp eq ptr %13, null
  %30 = icmp eq ptr %1, null
  %31 = or i1 %30, %29
  %32 = icmp ult ptr %13, %1
  %33 = select i1 %32, ptr %13, ptr %1
  %34 = select i1 %32, ptr %1, ptr %13
  %35 = select i1 %32, i32 %2, i32 %3
  %36 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 9
  %37 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 9
  %38 = select i1 %32, i32 %3, i32 %2
  %39 = icmp ugt ptr %13, %1
  %40 = getelementptr i8, ptr %33, i32 -24
  %41 = getelementptr i8, ptr %34, i32 -24
  %42 = getelementptr i8, ptr %13, i32 -24
  %43 = getelementptr i8, ptr %1, i32 -24
  %44 = icmp sgt i32 %4, 0
  %45 = zext i32 %2 to i64
  %46 = shl nuw nsw i64 %45, 12
  %47 = getelementptr i8, ptr %13, i32 392
  %48 = zext i32 %24 to i64
  %49 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  br label %50

50:                                               ; preds = %433, %8
  %51 = phi i32 [ %6, %8 ], [ %425, %433 ]
  %52 = phi i32 [ %5, %8 ], [ %426, %433 ]
  store i32 0, ptr %7, align 4
  %53 = call i32 @ext4_writepage_trans_blocks(ptr noundef %13) #5
  %54 = shl i32 %53, 1
  %55 = load ptr, ptr %14, align 4
  %56 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 27
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ext4_sb_info, ptr %57, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 3
  %61 = call ptr @__ext4_journal_start_sb(ptr noundef %55, i32 noundef 272, i32 noundef 9, i32 noundef %54, i32 noundef 0, i32 noundef %60) #5
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = ptrtoint ptr %61 to i32
  store i32 %64, ptr %7, align 4
  br label %455

65:                                               ; preds = %50
  %66 = add i32 %52, -1
  %67 = add i32 %66, %24
  %68 = zext i32 %67 to i64
  %69 = load i64, ptr %27, align 8
  %70 = add i64 %69, -1
  %71 = load i8, ptr %18, align 2
  %72 = zext i8 %71 to i64
  %73 = ashr i64 %70, %72
  %74 = icmp eq i64 %73, %68
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = trunc i64 %69 to i32
  %77 = and i32 %28, %76
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 %17, i32 %77
  %80 = zext i8 %71 to i32
  %81 = shl i32 %66, %80
  %82 = add i32 %79, %81
  br label %86

83:                                               ; preds = %65
  %84 = zext i8 %71 to i32
  %85 = shl i32 %52, %84
  br label %86

86:                                               ; preds = %83, %75
  %87 = phi i32 [ %82, %75 ], [ %85, %83 ]
  br i1 %31, label %88, label %89, !prof !13

88:                                               ; preds = %86
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #5, !srcloc !14
  unreachable

89:                                               ; preds = %86
  %90 = load ptr, ptr %36, align 8
  %91 = load ptr, ptr %37, align 8
  %92 = call ptr @grab_cache_page_write_begin(ptr noundef %91, i32 noundef %35, i32 noundef 2) #5
  %93 = icmp eq ptr %92, null
  br i1 %93, label %118, label %94

94:                                               ; preds = %89
  %95 = call ptr @grab_cache_page_write_begin(ptr noundef %90, i32 noundef %38, i32 noundef 2) #5
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %94
  call void @unlock_page(ptr noundef nonnull %92) #5
  %98 = getelementptr inbounds %struct.page, ptr %92, i32 0, i32 1
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102, !prof !15

102:                                              ; preds = %97
  %103 = add i32 %99, -1
  br label %106

104:                                              ; preds = %97
  %105 = ptrtoint ptr %92 to i32
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = inttoptr i32 %107 to ptr
  %109 = getelementptr inbounds %struct.page, ptr %108, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #5, !srcloc !17
  %110 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #5, !srcloc !18
  %111 = extractvalue { i32, i32 } %110, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  call void @__put_page(ptr noundef %108) #5
  br label %118

114:                                              ; preds = %94
  call void @wait_on_page_writeback(ptr noundef nonnull %92) #5
  call void @wait_on_page_writeback(ptr noundef nonnull %95) #5
  %115 = select i1 %39, ptr %92, ptr %95
  %116 = select i1 %39, ptr %95, ptr %92
  store i32 0, ptr %7, align 4
  %117 = icmp eq i32 %51, 0
  br i1 %117, label %150, label %119

118:                                              ; preds = %113, %106, %89
  store i32 -12, ptr %7, align 4
  br label %424

119:                                              ; preds = %114
  call void @down_write(ptr noundef %40) #5
  call void @down_write(ptr noundef %41) #5
  %120 = call fastcc i32 @mext_check_coverage(ptr noundef nonnull %13, i32 noundef %24, i32 noundef %52, ptr noundef %7)
  %121 = load i32, ptr %7, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %119
  %124 = call fastcc i32 @mext_check_coverage(ptr noundef nonnull %1, i32 noundef %26, i32 noundef %52, ptr noundef %7)
  %125 = and i32 %124, %120
  %126 = load i32, ptr %7, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %123
  %129 = icmp eq i32 %125, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %128
  call void @up_write(ptr noundef %42) #5
  call void @up_write(ptr noundef %43) #5
  br label %150

131:                                              ; preds = %128
  %132 = load i32, ptr %116, align 4
  %133 = and i32 %132, 24576
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = call i32 @try_to_release_page(ptr noundef nonnull %116, i32 noundef 0) #5
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %135, %131
  %139 = load i32, ptr %115, align 4
  %140 = and i32 %139, 24576
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = call i32 @try_to_release_page(ptr noundef nonnull %115, i32 noundef 0) #5
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %135
  store i32 -16, ptr %7, align 4
  br label %148

146:                                              ; preds = %142, %138
  %147 = call i32 @ext4_swap_extents(ptr noundef %61, ptr noundef nonnull %13, ptr noundef nonnull %1, i32 noundef %24, i32 noundef %26, i32 noundef %52, i32 noundef 1, ptr noundef %7) #5
  br label %148

148:                                              ; preds = %146, %145, %123, %119
  %149 = phi i32 [ %120, %119 ], [ %125, %123 ], [ %125, %146 ], [ %125, %145 ]
  call void @up_write(ptr noundef %42) #5
  call void @up_write(ptr noundef %43) #5
  br label %388

150:                                              ; preds = %130, %114
  %151 = add i32 %87, %21
  %152 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 1, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %153, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %9, i8 0, i32 32, i1 false) #5, !annotation !12
  %155 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 1
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159, !prof !15

159:                                              ; preds = %150
  %160 = add i32 %156, -1
  br label %163

161:                                              ; preds = %150
  %162 = ptrtoint ptr %116 to i32
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = inttoptr i32 %164 to ptr
  %166 = load volatile i32, ptr %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170, !prof !13

169:                                              ; preds = %163
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 174, 0\0A.popsection", ""() #5, !srcloc !20
  unreachable

170:                                              ; preds = %163
  %171 = load volatile i32, ptr %155, align 4
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174, !prof !15

174:                                              ; preds = %170
  %175 = add i32 %171, -1
  br label %178

176:                                              ; preds = %170
  %177 = ptrtoint ptr %116 to i32
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = inttoptr i32 %179 to ptr
  %181 = load volatile i32, ptr %180, align 4
  %182 = and i32 %181, 32768
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184, !prof !15

184:                                              ; preds = %178
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 175, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

185:                                              ; preds = %178
  %186 = load volatile i32, ptr %155, align 4
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189, !prof !15

189:                                              ; preds = %185
  %190 = add i32 %186, -1
  br label %193

191:                                              ; preds = %185
  %192 = ptrtoint ptr %116 to i32
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = inttoptr i32 %194 to ptr
  %196 = load volatile i32, ptr %195, align 4
  %197 = and i32 %196, 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %193
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !22
  br label %303

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.inode, ptr %154, i32 0, i32 19
  %202 = load i8, ptr %201, align 2
  %203 = zext i8 %202 to i32
  %204 = shl nuw i32 1, %203
  %205 = load volatile i32, ptr %116, align 4
  %206 = and i32 %205, 8192
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  call void @create_empty_buffers(ptr noundef nonnull %116, i32 noundef %204, i32 noundef 0) #5
  br label %209

209:                                              ; preds = %208, %200
  %210 = load volatile i32, ptr %116, align 4
  %211 = and i32 %210, 8192
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214, !prof !13

213:                                              ; preds = %209
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 184, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 1, i32 0, i32 3
  %216 = load i32, ptr %215, align 4
  %217 = inttoptr i32 %216 to ptr
  %218 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 1, i32 0, i32 2
  %219 = load i32, ptr %218, align 4
  %220 = zext i32 %219 to i64
  %221 = load i8, ptr %201, align 2
  %222 = zext i8 %221 to i32
  %223 = sub nsw i32 12, %222
  %224 = zext i32 %223 to i64
  %225 = shl i64 %220, %224
  br label %226

226:                                              ; preds = %275, %214
  %227 = phi i32 [ 0, %214 ], [ %277, %275 ]
  %228 = phi i32 [ 0, %214 ], [ %276, %275 ]
  %229 = phi i32 [ 0, %214 ], [ %232, %275 ]
  %230 = phi ptr [ %217, %214 ], [ %280, %275 ]
  %231 = phi i64 [ %225, %214 ], [ %278, %275 ]
  %232 = add i32 %229, %204
  %233 = icmp ugt i32 %232, %21
  %234 = icmp ult i32 %229, %151
  %235 = and i1 %234, %233
  %236 = load volatile i32, ptr %230, align 4
  %237 = and i32 %236, 1
  %238 = icmp eq i32 %237, 0
  br i1 %235, label %241, label %239

239:                                              ; preds = %226
  %240 = select i1 %238, i32 1, i32 %227
  br label %275

241:                                              ; preds = %226
  br i1 %238, label %242, label %275

242:                                              ; preds = %241
  %243 = load volatile i32, ptr %230, align 4
  %244 = and i32 %243, 16
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %269

246:                                              ; preds = %242
  %247 = call i32 @ext4_get_block(ptr noundef %154, i64 noundef %231, ptr noundef %230, i32 noundef 0) #5
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %246
  %250 = load volatile i32, ptr %155, align 4
  %251 = and i32 %250, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253, !prof !15

253:                                              ; preds = %249
  %254 = add i32 %250, -1
  br label %257

255:                                              ; preds = %249
  %256 = ptrtoint ptr %116 to i32
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i32 [ %254, %253 ], [ %256, %255 ]
  %259 = inttoptr i32 %258 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %259) #5
  br label %301

260:                                              ; preds = %246
  %261 = load volatile i32, ptr %230, align 4
  %262 = and i32 %261, 16
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  call void @zero_user_segments(ptr noundef nonnull %116, i32 noundef %229, i32 noundef %232, i32 noundef 0, i32 noundef 0) #5
  %265 = load volatile i32, ptr %230, align 4
  %266 = and i32 %265, 1
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  call void @_set_bit(i32 noundef 0, ptr noundef %230) #5
  br label %275

269:                                              ; preds = %260, %242
  %270 = icmp ugt i32 %228, 7
  br i1 %270, label %271, label %272, !prof !13

271:                                              ; preds = %269
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #5, !srcloc !24
  unreachable

272:                                              ; preds = %269
  %273 = add nuw nsw i32 %228, 1
  %274 = getelementptr [8 x ptr], ptr %9, i32 0, i32 %228
  store ptr %230, ptr %274, align 4
  br label %275

275:                                              ; preds = %272, %268, %264, %241, %239
  %276 = phi i32 [ %228, %241 ], [ %273, %272 ], [ %228, %239 ], [ %228, %264 ], [ %228, %268 ]
  %277 = phi i32 [ %227, %241 ], [ %227, %272 ], [ %240, %239 ], [ %227, %264 ], [ %227, %268 ]
  %278 = add i64 %231, 1
  %279 = getelementptr inbounds %struct.buffer_head, ptr %230, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = icmp ne ptr %280, %217
  %282 = icmp eq i32 %232, 0
  %283 = select i1 %281, i1 true, i1 %282
  br i1 %283, label %226, label %284

284:                                              ; preds = %275
  %285 = icmp sgt i32 %276, 0
  br i1 %285, label %286, label %298

286:                                              ; preds = %295, %284
  %287 = phi i32 [ %296, %295 ], [ 0, %284 ]
  %288 = getelementptr [8 x ptr], ptr %9, i32 0, i32 %287
  %289 = load ptr, ptr %288, align 4
  %290 = call i32 @bh_uptodate_or_lock(ptr noundef %289) #5
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %286
  %293 = call i32 @ext4_read_bh(ptr noundef %289, i32 noundef 0, ptr noundef null) #5
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %292, %286
  %296 = add nuw nsw i32 %287, 1
  %297 = icmp eq i32 %296, %276
  br i1 %297, label %298, label %286

298:                                              ; preds = %295, %284
  %299 = icmp eq i32 %277, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %298
  call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !25
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %116) #5
  br label %303

301:                                              ; preds = %292, %257
  %302 = phi i32 [ %247, %257 ], [ %293, %292 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #5
  store i32 %302, ptr %7, align 4
  br label %388

303:                                              ; preds = %300, %298, %199
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #5
  store i32 0, ptr %7, align 4
  %304 = load i32, ptr %116, align 4
  %305 = and i32 %304, 24576
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %303
  %308 = call i32 @try_to_release_page(ptr noundef nonnull %116, i32 noundef 0) #5
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %317, label %310

310:                                              ; preds = %307, %303
  %311 = load i32, ptr %115, align 4
  %312 = and i32 %311, 24576
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %310
  %315 = call i32 @try_to_release_page(ptr noundef nonnull %115, i32 noundef 0) #5
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314, %307
  store i32 -16, ptr %7, align 4
  br label %388

318:                                              ; preds = %314, %310
  call void @down_write(ptr noundef %40) #5
  call void @down_write(ptr noundef %41) #5
  %319 = call i32 @ext4_swap_extents(ptr noundef %61, ptr noundef %13, ptr noundef %1, i32 noundef %24, i32 noundef %26, i32 noundef %52, i32 noundef 1, ptr noundef %7) #5
  call void @up_write(ptr noundef %42) #5
  call void @up_write(ptr noundef %43) #5
  %320 = load i32, ptr %7, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %328, label %322

322:                                              ; preds = %318
  %323 = icmp eq i32 %319, 0
  br i1 %323, label %388, label %324

324:                                              ; preds = %322
  %325 = load i8, ptr %18, align 2
  %326 = zext i8 %325 to i32
  %327 = shl i32 %319, %326
  br label %328

328:                                              ; preds = %324, %318
  %329 = phi i32 [ %319, %324 ], [ %52, %318 ]
  %330 = phi i32 [ %327, %324 ], [ %87, %318 ]
  %331 = load volatile i32, ptr %116, align 4
  %332 = and i32 %331, 8192
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %328
  %335 = load i8, ptr %18, align 2
  %336 = zext i8 %335 to i32
  %337 = shl nuw i32 1, %336
  call void @create_empty_buffers(ptr noundef nonnull %116, i32 noundef %337, i32 noundef 0) #5
  br label %338

338:                                              ; preds = %334, %328
  %339 = load volatile i32, ptr %116, align 4
  %340 = and i32 %339, 8192
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %343, !prof !13

342:                                              ; preds = %338
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/move_extent.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 376, 0\0A.popsection", ""() #5, !srcloc !26
  unreachable

343:                                              ; preds = %338
  %344 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 1, i32 0, i32 3
  %345 = load i32, ptr %344, align 4
  %346 = inttoptr i32 %345 to ptr
  br i1 %44, label %352, label %347

347:                                              ; preds = %352, %343
  %348 = phi ptr [ %346, %343 ], [ %356, %352 ]
  %349 = icmp sgt i32 %329, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %347
  %351 = load i32, ptr %7, align 4
  br label %371

352:                                              ; preds = %352, %343
  %353 = phi ptr [ %356, %352 ], [ %346, %343 ]
  %354 = phi i32 [ %357, %352 ], [ 0, %343 ]
  %355 = getelementptr inbounds %struct.buffer_head, ptr %353, i32 0, i32 1
  %356 = load ptr, ptr %355, align 4
  %357 = add nuw nsw i32 %354, 1
  %358 = icmp eq i32 %357, %4
  br i1 %358, label %347, label %352

359:                                              ; preds = %366, %347
  %360 = phi ptr [ %368, %366 ], [ %348, %347 ]
  %361 = phi i32 [ %369, %366 ], [ 0, %347 ]
  %362 = add i32 %361, %24
  %363 = zext i32 %362 to i64
  %364 = call i32 @ext4_get_block(ptr noundef %13, i64 noundef %363, ptr noundef %360, i32 noundef 0) #5
  store i32 %364, ptr %7, align 4
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %451, label %366

366:                                              ; preds = %359
  %367 = getelementptr inbounds %struct.buffer_head, ptr %360, i32 0, i32 1
  %368 = load ptr, ptr %367, align 4
  %369 = add nuw nsw i32 %361, 1
  %370 = icmp eq i32 %369, %329
  br i1 %370, label %371, label %359

371:                                              ; preds = %366, %350
  %372 = phi i32 [ %351, %350 ], [ %364, %366 ]
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %371
  %375 = add i32 %330, %21
  %376 = call i32 @block_commit_write(ptr noundef nonnull %116, i32 noundef %21, i32 noundef %375) #5
  store i32 %376, ptr %7, align 4
  br label %377

377:                                              ; preds = %374, %371
  %378 = phi i32 [ %376, %374 ], [ %372, %371 ]
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %451, label %380, !prof !13

380:                                              ; preds = %377
  %381 = icmp ult ptr %61, inttoptr (i32 4096 to ptr)
  br i1 %381, label %386, label %382

382:                                              ; preds = %380
  %383 = zext i32 %330 to i64
  %384 = load ptr, ptr %47, align 8
  %385 = call i32 @jbd2_journal_inode_ranged_write(ptr noundef %61, ptr noundef %384, i64 noundef %46, i64 noundef %383) #5
  br label %386

386:                                              ; preds = %382, %380
  %387 = phi i32 [ %385, %382 ], [ 0, %380 ]
  store i32 %387, ptr %7, align 4
  br label %388

388:                                              ; preds = %454, %451, %386, %322, %317, %301, %148
  %389 = phi i32 [ %149, %148 ], [ 0, %301 ], [ 0, %386 ], [ 0, %322 ], [ 0, %317 ], [ 0, %454 ], [ 0, %451 ]
  %390 = phi i32 [ %52, %148 ], [ %52, %301 ], [ %329, %386 ], [ %52, %322 ], [ %52, %317 ], [ %329, %454 ], [ %329, %451 ]
  call void @unlock_page(ptr noundef nonnull %116) #5
  %391 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 1
  %392 = load volatile i32, ptr %391, align 4
  %393 = and i32 %392, 1
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %397, label %395, !prof !15

395:                                              ; preds = %388
  %396 = add i32 %392, -1
  br label %399

397:                                              ; preds = %388
  %398 = ptrtoint ptr %116 to i32
  br label %399

399:                                              ; preds = %397, %395
  %400 = phi i32 [ %396, %395 ], [ %398, %397 ]
  %401 = inttoptr i32 %400 to ptr
  %402 = getelementptr inbounds %struct.page, ptr %401, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %402) #5, !srcloc !17
  %403 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %402, ptr %402, i32 1, ptr elementtype(i32) %402) #5, !srcloc !18
  %404 = extractvalue { i32, i32 } %403, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %399
  call void @__put_page(ptr noundef %401) #5
  br label %407

407:                                              ; preds = %406, %399
  call void @unlock_page(ptr noundef nonnull %115) #5
  %408 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 1
  %409 = load volatile i32, ptr %408, align 4
  %410 = and i32 %409, 1
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %414, label %412, !prof !15

412:                                              ; preds = %407
  %413 = add i32 %409, -1
  br label %416

414:                                              ; preds = %407
  %415 = ptrtoint ptr %115 to i32
  br label %416

416:                                              ; preds = %414, %412
  %417 = phi i32 [ %413, %412 ], [ %415, %414 ]
  %418 = inttoptr i32 %417 to ptr
  %419 = getelementptr inbounds %struct.page, ptr %418, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %419) #5, !srcloc !17
  %420 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %419, ptr %419, i32 1, ptr elementtype(i32) %419) #5, !srcloc !18
  %421 = extractvalue { i32, i32 } %420, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %416
  call void @__put_page(ptr noundef %418) #5
  br label %424

424:                                              ; preds = %423, %416, %118
  %425 = phi i32 [ %51, %118 ], [ %389, %416 ], [ %389, %423 ]
  %426 = phi i32 [ %52, %118 ], [ %390, %416 ], [ %390, %423 ]
  %427 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.move_extent_per_page, i32 noundef 402, ptr noundef %61) #5
  %428 = load i32, ptr %7, align 4
  %429 = icmp eq i32 %428, -28
  br i1 %429, label %430, label %436

430:                                              ; preds = %424
  %431 = call i32 @ext4_should_retry_alloc(ptr noundef %15, ptr noundef nonnull %11) #5
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %434, label %433

433:                                              ; preds = %448, %430
  br label %50

434:                                              ; preds = %430
  %435 = load i32, ptr %7, align 4
  br label %436

436:                                              ; preds = %434, %424
  %437 = phi i32 [ %435, %434 ], [ %428, %424 ]
  %438 = icmp eq i32 %437, -16
  br i1 %438, label %439, label %455

439:                                              ; preds = %436
  %440 = load i32, ptr %11, align 4
  %441 = add i32 %440, 1
  store i32 %441, ptr %11, align 4
  %442 = icmp slt i32 %440, 4
  br i1 %442, label %443, label %455

443:                                              ; preds = %439
  %444 = load ptr, ptr %49, align 4
  %445 = getelementptr inbounds %struct.ext4_sb_info, ptr %444, i32 0, i32 47
  %446 = load ptr, ptr %445, align 4
  %447 = icmp eq ptr %446, null
  br i1 %447, label %455, label %448

448:                                              ; preds = %443
  %449 = call i32 @jbd2_journal_force_commit_nested(ptr noundef nonnull %446) #5
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %455, label %433

451:                                              ; preds = %377, %359
  call void @ext4_double_down_write_data_sem(ptr noundef %13, ptr noundef %1)
  %452 = call i32 @ext4_swap_extents(ptr noundef %61, ptr noundef %1, ptr noundef %13, i32 noundef %24, i32 noundef %26, i32 noundef %329, i32 noundef 0, ptr noundef nonnull %10) #5
  call void @up_write(ptr noundef %42) #5
  call void @up_write(ptr noundef %43) #5
  %453 = icmp eq i32 %452, %329
  br i1 %453, label %388, label %454

454:                                              ; preds = %451
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %13, ptr noundef nonnull @__func__.move_extent_per_page, i32 noundef 427, i64 noundef %48, i32 noundef 5, ptr noundef nonnull @.str.3) #5
  store i32 -5, ptr %7, align 4
  br label %388

455:                                              ; preds = %448, %443, %439, %436, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_drop_refs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_find_extent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_writepage_trans_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mext_check_coverage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store ptr null, ptr %5, align 4
  %6 = add i32 %2, %1
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -202
  br label %10

10:                                               ; preds = %31, %8
  %11 = phi i32 [ %1, %8 ], [ %34, %31 ]
  %12 = call ptr @ext4_find_extent(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %5, i32 noundef 1073741824) #5
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = load i16, ptr %9, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr %struct.ext4_ext_path, ptr %12, i32 %16, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @ext4_ext_drop_refs(ptr noundef %12) #5
  call void @kfree(ptr noundef %12) #5
  store ptr null, ptr %5, align 4
  br label %36

21:                                               ; preds = %14
  store ptr %12, ptr %5, align 4
  store i32 0, ptr %3, align 4
  %22 = load i16, ptr %9, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr %struct.ext4_ext_path, ptr %12, i32 %23, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ext4_extent, ptr %25, i32 0, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = icmp ugt i16 %27, -32768
  br i1 %28, label %31, label %38

29:                                               ; preds = %10
  %30 = ptrtoint ptr %12 to i32
  br label %36

31:                                               ; preds = %21
  %32 = zext i16 %27 to i32
  %33 = add i32 %11, -32768
  %34 = add i32 %33, %32
  call void @ext4_ext_drop_refs(ptr noundef %12) #5
  %35 = icmp ult i32 %34, %6
  br i1 %35, label %10, label %38

36:                                               ; preds = %29, %20
  %37 = phi i32 [ %30, %29 ], [ -61, %20 ]
  store i32 %37, ptr %3, align 4
  br label %38

38:                                               ; preds = %36, %31, %21, %4
  %39 = phi i32 [ 1, %4 ], [ 0, %36 ], [ 0, %21 ], [ 1, %31 ]
  %40 = load ptr, ptr %5, align 4
  call void @ext4_ext_drop_refs(ptr noundef %40) #5
  %41 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %41) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_swap_extents(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_commit_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_should_retry_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_force_commit_nested(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bh_uptodate_or_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_inode_ranged_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{i64 2151299363}
!9 = !{i64 2151299205}
!10 = !{i64 2151299507}
!11 = !{i64 2149493750}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2153821186, i64 2153821672, i64 2153821223, i64 2153821279, i64 2153821313, i64 2153821337, i64 2153821378, i64 2153821399, i64 2153821427, i64 2153821461}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148448787}
!17 = !{i64 846722, i64 2148336693, i64 2148336719, i64 2148336766, i64 2148336788, i64 2148336816, i64 2148336836}
!18 = !{i64 2148351149, i64 2148351181, i64 2148351210, i64 2148351244, i64 2148351275, i64 2148351298}
!19 = !{i64 2148448990}
!20 = !{i64 2153826566, i64 2153827052, i64 2153826603, i64 2153826659, i64 2153826693, i64 2153826717, i64 2153826758, i64 2153826779, i64 2153826807, i64 2153826841}
!21 = !{i64 2153827602, i64 2153828088, i64 2153827639, i64 2153827695, i64 2153827729, i64 2153827753, i64 2153827794, i64 2153827815, i64 2153827843, i64 2153827877}
!22 = !{i64 2150182133}
!23 = !{i64 2153828770, i64 2153829256, i64 2153828807, i64 2153828863, i64 2153828897, i64 2153828921, i64 2153828962, i64 2153828983, i64 2153829011, i64 2153829045}
!24 = !{i64 2153829936, i64 2153830422, i64 2153829973, i64 2153830029, i64 2153830063, i64 2153830087, i64 2153830128, i64 2153830149, i64 2153830177, i64 2153830211}
!25 = !{i64 2150183154}
!26 = !{i64 2153831462, i64 2153831948, i64 2153831499, i64 2153831555, i64 2153831589, i64 2153831613, i64 2153831654, i64 2153831675, i64 2153831703, i64 2153831737}
