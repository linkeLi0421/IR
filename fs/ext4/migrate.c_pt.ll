; ModuleID = '/llk/IR/fs/ext4/migrate.c_pt.bc'
source_filename = "../fs/ext4/migrate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.migrate_struct = type { i32, i32, i32, i64, i64 }
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
%struct.atomic_t = type { i32 }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_extent = type { i32, i16, i16, i32 }
%struct.ext4_extent_idx = type { i32, i32, i16, i16 }
%struct.ext4_extent_header = type { i16, i16, i16, i16, i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 1
@__func__.ext4_ext_migrate = private unnamed_addr constant [17 x i8] c"ext4_ext_migrate\00", align 1
@__func__.ext4_ind_migrate = private unnamed_addr constant [17 x i8] c"ext4_ind_migrate\00", align 1
@__func__.ext4_ext_swap_inode_data = private unnamed_addr constant [25 x i8] c"ext4_ext_swap_inode_data\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_migrate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.migrate_struct, align 8
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 29
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %203, label %14

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 -124
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 524288
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %203

19:                                               ; preds = %14
  %20 = load i16, ptr %0, align 8
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, -24576
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %203, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 136
  tail call void @percpu_down_write(ptr noundef %28) #7
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 27
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ext4_sb_info, ptr %31, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %33, 3
  %35 = tail call ptr @__ext4_journal_start_sb(ptr noundef %29, i32 noundef 445, i32 noundef 8, i32 noundef 3, i32 noundef 0, i32 noundef %34) #7
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = ptrtoint ptr %35 to i32
  br label %201

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 27
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 16
  %48 = urem i32 %42, %47
  %49 = sub i32 %41, %48
  %50 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %3, align 8
  %52 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 13
  %56 = load ptr, ptr %55, align 64
  %57 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 8
  %59 = call ptr @__ext4_new_inode(ptr noundef nonnull @init_user_ns, ptr noundef %35, ptr noundef %58, i16 noundef zeroext -32768, ptr noundef null, i32 noundef %49, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %64

61:                                               ; preds = %39
  %62 = ptrtoint ptr %59 to i32
  %63 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ext_migrate, i32 noundef 459, ptr noundef %35) #7
  br label %201

64:                                               ; preds = %39
  %65 = getelementptr i8, ptr %0, i32 528
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr i8, ptr %59, i32 528
  store i32 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %69 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %70

70:                                               ; preds = %78, %64
  %71 = load volatile i32, ptr %68, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %74, %70
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !10
  %75 = load volatile i32, ptr %68, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %74

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %71, %70 ], [ %75, %74 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %80 = load i64, ptr %69, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %81 = load volatile i32, ptr %68, align 4
  %82 = icmp eq i32 %81, %79
  br i1 %82, label %83, label %70

83:                                               ; preds = %78
  %84 = getelementptr i8, ptr %0, i32 -208
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %85 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 22
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !14
  %88 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 13
  store i64 %80, ptr %88, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !15
  %89 = load i32, ptr %85, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %85, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  call void @clear_nlink(ptr noundef %59) #7
  call void @ext4_ext_tree_init(ptr noundef %35, ptr noundef %59) #7
  %91 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ext_migrate, i32 noundef 477, ptr noundef %35) #7
  %92 = getelementptr i8, ptr %0, i32 -24
  call void @down_read(ptr noundef %92) #7
  %93 = getelementptr i8, ptr %0, i32 -128
  call void @_set_bit(i32 noundef 5, ptr noundef %93) #7
  call void @up_read(ptr noundef %92) #7
  %94 = load ptr, ptr %4, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 27
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.ext4_sb_info, ptr %96, i32 0, i32 11
  %98 = load i32, ptr %97, align 4
  %99 = shl i32 %98, 3
  %100 = call ptr @__ext4_journal_start_sb(ptr noundef %94, i32 noundef 499, i32 noundef 8, i32 noundef 1, i32 noundef 0, i32 noundef %99) #7
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %104

102:                                              ; preds = %83
  %103 = ptrtoint ptr %100 to i32
  br label %199

104:                                              ; preds = %83
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %105 = load ptr, ptr %4, align 4
  %106 = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 3
  %107 = load i32, ptr %106, align 16
  %108 = lshr i32 %107, 2
  %109 = getelementptr inbounds %struct.migrate_struct, ptr %2, i32 0, i32 3
  %110 = getelementptr inbounds %struct.migrate_struct, ptr %2, i32 0, i32 4
  %111 = getelementptr inbounds %struct.migrate_struct, ptr %2, i32 0, i32 1
  %112 = getelementptr inbounds %struct.migrate_struct, ptr %2, i32 0, i32 2
  br label %113

113:                                              ; preds = %144, %104
  %114 = phi i32 [ 0, %104 ], [ %145, %144 ]
  %115 = phi i32 [ 0, %104 ], [ %146, %144 ]
  %116 = phi i64 [ 0, %104 ], [ %147, %144 ]
  %117 = phi i64 [ 0, %104 ], [ %148, %144 ]
  %118 = phi i32 [ 0, %104 ], [ %149, %144 ]
  %119 = getelementptr i32, ptr %84, i32 %118
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %113
  %123 = zext i32 %120 to i64
  %124 = icmp ne i64 %117, 0
  %125 = add i64 %116, 1
  %126 = icmp eq i64 %125, %123
  %127 = select i1 %124, i1 %126, i1 false
  %128 = add i32 %115, 1
  %129 = icmp eq i32 %128, %114
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  store i64 %123, ptr %110, align 8
  store i32 %114, ptr %111, align 4
  %132 = add i32 %115, 2
  br label %140

133:                                              ; preds = %122
  %134 = call fastcc i32 @finish_range(ptr noundef %100, ptr noundef %59, ptr noundef nonnull %2) #7
  store i64 %123, ptr %110, align 8
  store i64 %123, ptr %109, align 8
  %135 = load i32, ptr %112, align 8
  store i32 %135, ptr %111, align 4
  store i32 %135, ptr %2, align 8
  %136 = add i32 %135, 1
  store i32 %136, ptr %112, align 8
  %137 = icmp eq i32 %134, 0
  br i1 %137, label %144, label %187

138:                                              ; preds = %113
  %139 = add i32 %114, 1
  br label %140

140:                                              ; preds = %138, %131
  %141 = phi i32 [ %132, %131 ], [ %139, %138 ]
  %142 = phi i32 [ %114, %131 ], [ %115, %138 ]
  %143 = phi i64 [ %123, %131 ], [ %116, %138 ]
  store i32 %141, ptr %112, align 8
  br label %144

144:                                              ; preds = %140, %133
  %145 = phi i32 [ %136, %133 ], [ %141, %140 ]
  %146 = phi i32 [ %135, %133 ], [ %142, %140 ]
  %147 = phi i64 [ %123, %133 ], [ %143, %140 ]
  %148 = phi i64 [ %123, %133 ], [ %117, %140 ]
  %149 = add nuw nsw i32 %118, 1
  %150 = icmp eq i32 %149, 12
  br i1 %150, label %151, label %113

151:                                              ; preds = %144
  %152 = getelementptr i8, ptr %0, i32 -160
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = zext i32 %153 to i64
  %157 = call fastcc i32 @update_ind_extent_range(ptr noundef %100, ptr noundef %59, i64 noundef %156, ptr noundef nonnull %2)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %187

159:                                              ; preds = %151
  %160 = add i32 %145, %108
  store i32 %160, ptr %112, align 8
  br label %161

161:                                              ; preds = %159, %155
  %162 = getelementptr i8, ptr %0, i32 -156
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = zext i32 %163 to i64
  %167 = call fastcc i32 @update_dind_extent_range(ptr noundef %100, ptr noundef %59, i64 noundef %166, ptr noundef nonnull %2)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %187

169:                                              ; preds = %161
  %170 = mul i32 %108, %108
  %171 = load i32, ptr %112, align 8
  %172 = add i32 %171, %170
  store i32 %172, ptr %112, align 8
  br label %173

173:                                              ; preds = %169, %165
  %174 = getelementptr i8, ptr %0, i32 -152
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = zext i32 %175 to i64
  %179 = call fastcc i32 @update_tind_extent_range(ptr noundef %100, ptr noundef %59, i64 noundef %178, ptr noundef nonnull %2)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %177, %173
  %182 = call fastcc i32 @finish_range(ptr noundef %100, ptr noundef %59, ptr noundef nonnull %2)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = call fastcc i32 @ext4_ext_swap_inode_data(ptr noundef %100, ptr noundef %0, ptr noundef %59)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %184, %181, %177, %165, %155, %133
  call fastcc void @free_ext_block(ptr noundef %100, ptr noundef %59)
  br label %188

188:                                              ; preds = %187, %184
  %189 = call fastcc i32 @ext4_journal_ensure_credits(ptr noundef %100, i32 noundef 1, i32 noundef 0)
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %192 = load i32, ptr %85, align 4
  %193 = add i32 %192, 1
  store i32 %193, ptr %85, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !14
  store i64 0, ptr %88, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !15
  %194 = load i32, ptr %85, align 4
  %195 = add i32 %194, 1
  store i32 %195, ptr %85, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %196 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 21
  store i64 0, ptr %196, align 8
  call void @ext4_ext_tree_init(ptr noundef %100, ptr noundef %59) #7
  br label %197

197:                                              ; preds = %191, %188
  %198 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ext_migrate, i32 noundef 582, ptr noundef %100) #7
  br label %199

199:                                              ; preds = %197, %102
  %200 = phi i32 [ %103, %102 ], [ %189, %197 ]
  call void @unlock_new_inode(ptr noundef %59) #7
  call void @iput(ptr noundef %59) #7
  br label %201

201:                                              ; preds = %199, %61, %37
  %202 = phi i32 [ %38, %37 ], [ %62, %61 ], [ %200, %199 ]
  call void @percpu_up_write(ptr noundef %28) #7
  br label %203

203:                                              ; preds = %201, %23, %14, %1
  %204 = phi i32 [ %202, %201 ], [ -22, %14 ], [ -22, %1 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  ret i32 %204
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_new_inode(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @update_ind_extent_range(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 16
  %9 = lshr i32 %8, 2
  %10 = tail call ptr @ext4_sb_bread(ptr noundef %6, i64 noundef %2, i32 noundef 0) #7
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = ptrtoint ptr %10 to i32
  br label %61

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ult i32 %8, 4
  br i1 %17, label %57, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.migrate_struct, ptr %3, i32 0, i32 3
  %20 = getelementptr inbounds %struct.migrate_struct, ptr %3, i32 0, i32 4
  %21 = getelementptr inbounds %struct.migrate_struct, ptr %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.migrate_struct, ptr %3, i32 0, i32 2
  %23 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %24

24:                                               ; preds = %54, %18
  %25 = phi i32 [ 0, %18 ], [ %55, %54 ]
  %26 = getelementptr i32, ptr %16, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = zext i32 %27 to i64
  %31 = load i64, ptr %19, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %20, align 8
  %35 = add i64 %34, 1
  %36 = icmp eq i64 %35, %30
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, ptr %21, align 4
  %39 = add i32 %38, 1
  %40 = load i32, ptr %22, align 8
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  store i64 %30, ptr %20, align 8
  store i32 %39, ptr %21, align 4
  %43 = add i32 %38, 2
  br label %52

44:                                               ; preds = %37, %33, %29
  %45 = tail call fastcc i32 @finish_range(ptr noundef %0, ptr noundef %1, ptr noundef %3) #7
  store i64 %30, ptr %20, align 8
  store i64 %30, ptr %19, align 8
  %46 = load i32, ptr %22, align 8
  store i32 %46, ptr %21, align 4
  store i32 %46, ptr %3, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %22, align 8
  %48 = icmp eq i32 %45, 0
  br i1 %48, label %54, label %57

49:                                               ; preds = %24
  %50 = load i32, ptr %22, align 8
  %51 = add i32 %50, 1
  br label %52

52:                                               ; preds = %49, %42
  %53 = phi i32 [ %43, %42 ], [ %51, %49 ]
  store i32 %53, ptr %22, align 8
  br label %54

54:                                               ; preds = %52, %44
  %55 = add nuw nsw i32 %25, 1
  %56 = icmp eq i32 %55, %23
  br i1 %56, label %57, label %24

57:                                               ; preds = %54, %44, %14
  %58 = phi i32 [ 0, %14 ], [ %45, %44 ], [ 0, %54 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %59 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #7, !srcloc !18
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #7, !srcloc !19
  br label %61

61:                                               ; preds = %57, %12
  %62 = phi i32 [ %13, %12 ], [ %58, %57 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @update_dind_extent_range(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 16
  %9 = lshr i32 %8, 2
  %10 = tail call ptr @ext4_sb_bread(ptr noundef %6, i64 noundef %2, i32 noundef 0) #7
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = ptrtoint ptr %10 to i32
  br label %40

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ult i32 %8, 4
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.migrate_struct, ptr %3, i32 0, i32 2
  %20 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %21

21:                                               ; preds = %33, %18
  %22 = phi i32 [ 0, %18 ], [ %34, %33 ]
  %23 = getelementptr i32, ptr %16, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = zext i32 %24 to i64
  %28 = tail call fastcc i32 @update_ind_extent_range(ptr noundef %0, ptr noundef %1, i64 noundef %27, ptr noundef %3)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %36

30:                                               ; preds = %21
  %31 = load i32, ptr %19, align 8
  %32 = add i32 %31, %9
  store i32 %32, ptr %19, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = add nuw nsw i32 %22, 1
  %35 = icmp eq i32 %34, %20
  br i1 %35, label %36, label %21

36:                                               ; preds = %33, %26, %14
  %37 = phi i32 [ 0, %14 ], [ %28, %26 ], [ 0, %33 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %38 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #7, !srcloc !18
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #7, !srcloc !19
  br label %40

40:                                               ; preds = %36, %12
  %41 = phi i32 [ %13, %12 ], [ %37, %36 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @update_tind_extent_range(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 16
  %9 = lshr i32 %8, 2
  %10 = tail call ptr @ext4_sb_bread(ptr noundef %6, i64 noundef %2, i32 noundef 0) #7
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = ptrtoint ptr %10 to i32
  br label %75

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ult i32 %8, 4
  br i1 %17, label %71, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.migrate_struct, ptr %3, i32 0, i32 2
  %20 = mul i32 %9, %9
  %21 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %22

22:                                               ; preds = %68, %18
  %23 = phi i32 [ 0, %18 ], [ %69, %68 ]
  %24 = getelementptr i32, ptr %16, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %65, label %27

27:                                               ; preds = %22
  %28 = zext i32 %25 to i64
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 16
  %32 = lshr i32 %31, 2
  %33 = tail call ptr @ext4_sb_bread(ptr noundef %29, i64 noundef %28, i32 noundef 0) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = ptrtoint ptr %33 to i32
  br label %62

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ult i32 %31, 4
  br i1 %40, label %58, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @llvm.umax.i32(i32 %32, i32 1) #7
  br label %43

43:                                               ; preds = %55, %41
  %44 = phi i32 [ 0, %41 ], [ %56, %55 ]
  %45 = getelementptr i32, ptr %39, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = zext i32 %46 to i64
  %50 = tail call fastcc i32 @update_ind_extent_range(ptr noundef %0, ptr noundef %1, i64 noundef %49, ptr noundef %3) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %58

52:                                               ; preds = %43
  %53 = load i32, ptr %19, align 8
  %54 = add i32 %53, %32
  store i32 %54, ptr %19, align 8
  br label %55

55:                                               ; preds = %52, %48
  %56 = add nuw nsw i32 %44, 1
  %57 = icmp eq i32 %56, %42
  br i1 %57, label %58, label %43

58:                                               ; preds = %55, %48, %37
  %59 = phi i32 [ 0, %37 ], [ 0, %55 ], [ %50, %48 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %60 = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #7, !srcloc !18
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #7, !srcloc !19
  br label %62

62:                                               ; preds = %58, %35
  %63 = phi i32 [ %36, %35 ], [ %59, %58 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %71

65:                                               ; preds = %22
  %66 = load i32, ptr %19, align 8
  %67 = add i32 %66, %20
  store i32 %67, ptr %19, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = add nuw nsw i32 %23, 1
  %70 = icmp eq i32 %69, %21
  br i1 %70, label %71, label %22

71:                                               ; preds = %68, %62, %14
  %72 = phi i32 [ 0, %14 ], [ %63, %62 ], [ 0, %68 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %73 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #7, !srcloc !18
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #7, !srcloc !19
  br label %75

75:                                               ; preds = %71, %12
  %76 = phi i32 [ %13, %12 ], [ %72, %71 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @finish_range(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ext4_extent, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.migrate_struct, ptr %2, i32 0, i32 3
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 8
  store i32 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.migrate_struct, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %12, %10
  %14 = trunc i32 %13 to i16
  %15 = add i16 %14, 1
  %16 = getelementptr inbounds %struct.ext4_extent, ptr %4, i32 0, i32 1
  store i16 %15, ptr %16, align 4
  %17 = trunc i64 %7 to i32
  %18 = getelementptr inbounds %struct.ext4_extent, ptr %4, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = lshr i64 %7, 32
  %20 = trunc i64 %19 to i16
  %21 = getelementptr inbounds %struct.ext4_extent, ptr %4, i32 0, i32 2
  store i16 %20, ptr %21, align 2
  %22 = getelementptr i8, ptr %1, i32 -24
  tail call void @down_write(ptr noundef %22) #7
  %23 = load i32, ptr %2, align 8
  %24 = tail call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %23, ptr noundef null, i32 noundef 0) #7
  store ptr %24, ptr %5, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %9
  %27 = ptrtoint ptr %24 to i32
  store ptr null, ptr %5, align 4
  br label %38

28:                                               ; preds = %9
  %29 = load i32, ptr %11, align 4
  %30 = load i32, ptr %2, align 8
  %31 = add i32 %29, 1
  %32 = sub i32 %31, %30
  %33 = tail call i32 @ext4_ext_calc_credits_for_single_extent(ptr noundef %1, i32 noundef %32, ptr noundef %24) #7
  %34 = tail call i32 @ext4_datasem_ensure_credits(ptr noundef %0, ptr noundef %1, i32 noundef %33, i32 noundef %33, i32 noundef 0) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = call i32 @ext4_ext_insert_extent(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 0) #7
  br label %38

38:                                               ; preds = %36, %28, %26
  %39 = phi i32 [ %27, %26 ], [ %34, %28 ], [ %37, %36 ]
  call void @up_write(ptr noundef %22) #7
  %40 = load ptr, ptr %5, align 4
  call void @ext4_ext_drop_refs(ptr noundef %40) #7
  %41 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %41) #7
  store i64 0, ptr %6, align 8
  br label %42

42:                                               ; preds = %38, %3
  %43 = phi i32 [ %39, %38 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_ext_block(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 -202
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 -206
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %1, i32 -196
  br label %12

12:                                               ; preds = %17, %10
  %13 = phi ptr [ %19, %17 ], [ %11, %10 ]
  %14 = phi i32 [ %18, %17 ], [ 0, %10 ]
  %15 = tail call fastcc i32 @free_ext_idx(ptr noundef %0, ptr noundef %1, ptr noundef %13)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %14, 1
  %19 = getelementptr %struct.ext4_extent_idx, ptr %13, i32 1
  %20 = load i16, ptr %7, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %12, label %23

23:                                               ; preds = %17, %12, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_swap_inode_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 -208
  %5 = getelementptr i8, ptr %2, i32 -208
  %6 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 3136) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %6, %3 ], [ %11, %10 ]
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %123, label %16

16:                                               ; preds = %13, %10, %8
  %17 = getelementptr i8, ptr %1, i32 -160
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr i8, ptr %1, i32 -156
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %1, i32 -152
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr i8, ptr %1, i32 -24
  tail call void @down_write(ptr noundef %23) #7
  %24 = getelementptr i8, ptr %1, i32 -128
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  tail call void @up_write(ptr noundef %23) #7
  br label %123

29:                                               ; preds = %16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %24) #7
  %30 = getelementptr i8, ptr %1, i32 -124
  tail call void @_set_bit(i32 noundef 19, ptr noundef %30) #7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(60) %4, ptr noundef align 8 dereferenceable(60) %5, i32 60, i1 false)
  %31 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %31) #7
  %32 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 21
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 21
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %33
  store i64 %36, ptr %34, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %37 = load i16, ptr %31, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  tail call void @up_write(ptr noundef %23) #7
  %39 = icmp eq i32 %18, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 27
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef 12, i32 noundef 12, i32 noundef %46) #7
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %50, label %57, label %51

51:                                               ; preds = %49
  %52 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef 12, i32 noundef %46, i32 noundef 3136) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51, %40
  %55 = phi i32 [ %47, %40 ], [ %52, %51 ]
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %116, label %57

57:                                               ; preds = %54, %51, %49
  %58 = zext i32 %18 to i64
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %58, i32 noundef 1, i32 noundef 3) #7
  br label %59

59:                                               ; preds = %57, %29
  %60 = icmp eq i32 %20, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = tail call fastcc i32 @free_dind_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %20) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %61, %59
  %65 = icmp eq i32 %22, 0
  br i1 %65, label %116, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 16
  %71 = lshr i32 %70, 2
  %72 = zext i32 %22 to i64
  %73 = tail call ptr @ext4_sb_bread(ptr noundef %68, i64 noundef %72, i32 noundef 0) #7
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %114, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = icmp ult i32 %70, 4
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  %80 = tail call i32 @llvm.umax.i32(i32 %71, i32 1) #7
  br label %81

81:                                               ; preds = %92, %79
  %82 = phi i32 [ %93, %92 ], [ 0, %79 ]
  %83 = getelementptr i32, ptr %77, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = tail call fastcc i32 @free_dind_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %84) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %90 = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #7, !srcloc !18
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 1, ptr elementtype(i32) %90) #7, !srcloc !19
  br label %116

92:                                               ; preds = %86, %81
  %93 = add nuw nsw i32 %82, 1
  %94 = icmp eq i32 %93, %80
  br i1 %94, label %95, label %81

95:                                               ; preds = %92, %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %96 = getelementptr inbounds %struct.buffer_head, ptr %73, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #7, !srcloc !18
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #7, !srcloc !19
  %98 = load ptr, ptr %67, align 4
  %99 = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 27
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ext4_sb_info, ptr %100, i32 0, i32 11
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef 12, i32 noundef 12, i32 noundef %102) #7
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %110, label %105

105:                                              ; preds = %95
  %106 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %106, label %113, label %107

107:                                              ; preds = %105
  %108 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef 12, i32 noundef %102, i32 noundef 3136) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107, %95
  %111 = phi i32 [ %103, %95 ], [ %108, %107 ]
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110, %107, %105
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %72, i32 noundef 1, i32 noundef 3) #7
  br label %116

114:                                              ; preds = %66
  %115 = ptrtoint ptr %73 to i32
  br label %116

116:                                              ; preds = %114, %113, %110, %89, %64, %61, %54
  %117 = phi i32 [ %55, %54 ], [ %62, %61 ], [ %115, %114 ], [ %111, %110 ], [ %87, %89 ], [ 0, %113 ], [ 0, %64 ]
  %118 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_swap_inode_data, i32 noundef 345) #7
  %119 = icmp ne i32 %118, 0
  %120 = icmp eq i32 %117, 0
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %123, !prof !24

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %116, %28, %13
  %124 = phi i32 [ %14, %13 ], [ %118, %122 ], [ %117, %116 ], [ -11, %28 ]
  ret i32 %124
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ext4_journal_ensure_credits(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef %1, i32 noundef %1, i32 noundef %2) #7
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 3136) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %6
  br label %12

12:                                               ; preds = %11, %8, %3
  %13 = phi i32 [ %4, %3 ], [ 1, %11 ], [ %9, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_ind_migrate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -208
  %9 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 29
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %98, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -124
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 524288
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %98, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 30
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %98

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @ext4_alloc_da_blocks(ptr noundef %0) #7
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 136
  tail call void @percpu_down_write(ptr noundef %31) #7
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ext4_sb_info, ptr %34, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 3
  %38 = tail call ptr @__ext4_journal_start_sb(ptr noundef %32, i32 noundef 624, i32 noundef 8, i32 noundef 1, i32 noundef 0, i32 noundef %37) #7
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = ptrtoint ptr %38 to i32
  br label %96

42:                                               ; preds = %30
  %43 = getelementptr i8, ptr %0, i32 -24
  tail call void @down_write(ptr noundef %43) #7
  %44 = tail call i32 @ext4_ext_check_inode(ptr noundef %0) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %0, i32 -196
  %48 = load i32, ptr %9, align 8
  %49 = and i32 %48, 128
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %93

55:                                               ; preds = %51, %46
  %56 = getelementptr i8, ptr %0, i32 -202
  %57 = load i16, ptr %56, align 2
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %0, i32 -206
  %61 = load i16, ptr %60, align 2
  %62 = icmp ugt i16 %61, 1
  br i1 %62, label %93, label %63

63:                                               ; preds = %59
  %64 = icmp eq i16 %61, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %63
  %66 = getelementptr i8, ptr %0, i32 -192
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %0, i32 -188
  %70 = load i32, ptr %69, align 4
  %71 = zext i32 %70 to i64
  %72 = load i32, ptr %47, align 4
  %73 = add nsw i32 %68, -1
  %74 = add i32 %73, %72
  %75 = icmp ugt i32 %74, 11
  br i1 %75, label %93, label %76

76:                                               ; preds = %65, %63
  %77 = phi i32 [ %72, %65 ], [ 0, %63 ]
  %78 = phi i32 [ %74, %65 ], [ 0, %63 ]
  %79 = phi i64 [ %71, %65 ], [ 0, %63 ]
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %14) #7
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(60) %8, i8 0, i32 60, i1 false)
  %80 = icmp ugt i32 %77, %78
  br i1 %80, label %89, label %81

81:                                               ; preds = %81, %76
  %82 = phi i64 [ %84, %81 ], [ %79, %76 ]
  %83 = phi i32 [ %87, %81 ], [ %77, %76 ]
  %84 = add i64 %82, 1
  %85 = trunc i64 %82 to i32
  %86 = getelementptr [15 x i32], ptr %8, i32 0, i32 %83
  store i32 %85, ptr %86, align 4
  %87 = add i32 %83, 1
  %88 = icmp ugt i32 %87, %78
  br i1 %88, label %89, label %81

89:                                               ; preds = %81, %76
  %90 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %38, ptr noundef %0, ptr noundef nonnull @__func__.ext4_ind_migrate, i32 noundef 659) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92, !prof !25

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92, %89, %65, %59, %55, %51, %42
  %94 = phi i32 [ %44, %42 ], [ %90, %92 ], [ 0, %89 ], [ -95, %59 ], [ -95, %55 ], [ -95, %51 ], [ -95, %65 ]
  %95 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ind_migrate, i32 noundef 663, ptr noundef %38) #7
  tail call void @up_write(ptr noundef %43) #7
  br label %96

96:                                               ; preds = %93, %40
  %97 = phi i32 [ %41, %40 ], [ %94, %93 ]
  tail call void @percpu_up_write(ptr noundef %31) #7
  br label %98

98:                                               ; preds = %96, %18, %13, %1
  %99 = phi i32 [ %97, %96 ], [ -22, %13 ], [ -22, %1 ], [ -95, %18 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_alloc_da_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_check_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_find_extent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_calc_credits_for_single_extent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_datasem_ensure_credits(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_insert_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_drop_refs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @free_ext_idx(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ext4_extent_idx, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ext4_extent_idx, ptr %2, i32 0, i32 2
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i64
  %10 = shl nuw nsw i64 %9, 32
  %11 = or i64 %10, %6
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @ext4_sb_bread(ptr noundef %13, i64 noundef %11, i32 noundef 0) #7
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = ptrtoint ptr %14 to i32
  br label %63

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ext4_extent_header, ptr %20, i32 0, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ext4_extent_header, ptr %20, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %20, i32 12
  br label %30

30:                                               ; preds = %38, %28
  %31 = phi i32 [ %39, %38 ], [ 0, %28 ]
  %32 = phi ptr [ %40, %38 ], [ %29, %28 ]
  %33 = tail call fastcc i32 @free_ext_idx(ptr noundef %0, ptr noundef %1, ptr noundef %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %36 = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #7, !srcloc !18
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #7, !srcloc !19
  br label %63

38:                                               ; preds = %30
  %39 = add nuw nsw i32 %31, 1
  %40 = getelementptr %struct.ext4_extent_idx, ptr %32, i32 1
  %41 = load i16, ptr %25, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %30, label %44

44:                                               ; preds = %38, %24, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %45 = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #7, !srcloc !18
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #7, !srcloc !19
  %47 = load ptr, ptr %12, align 4
  %48 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 27
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ext4_sb_info, ptr %49, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef 12, i32 noundef 12, i32 noundef %51) #7
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %55, label %62, label %56

56:                                               ; preds = %54
  %57 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef 12, i32 noundef %51, i32 noundef 3136) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56, %44
  %60 = phi i32 [ %52, %44 ], [ %57, %56 ]
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59, %56, %54
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %11, i32 noundef 1, i32 noundef 3) #7
  br label %63

63:                                               ; preds = %62, %59, %35, %16
  %64 = phi i32 [ %17, %16 ], [ %33, %35 ], [ 0, %62 ], [ %60, %59 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @free_dind_blocks(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 16
  %8 = lshr i32 %7, 2
  %9 = zext i32 %2 to i64
  %10 = tail call ptr @ext4_sb_bread(ptr noundef %5, i64 noundef %9, i32 noundef 0) #7
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = ptrtoint ptr %10 to i32
  br label %67

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ult i32 %7, 4
  br i1 %17, label %49, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %20 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  %21 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %22

22:                                               ; preds = %46, %18
  %23 = phi i32 [ 0, %18 ], [ %47, %46 ]
  %24 = getelementptr i32, ptr %16, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr inbounds %struct.ext4_sb_info, ptr %28, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef 12, i32 noundef 12, i32 noundef %30) #7
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  br i1 %20, label %43, label %34

34:                                               ; preds = %33
  %35 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef 12, i32 noundef %30, i32 noundef 3136) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34, %27
  %38 = phi i32 [ %31, %27 ], [ %35, %34 ]
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %41 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #7, !srcloc !18
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #7, !srcloc !19
  br label %67

43:                                               ; preds = %37, %34, %33
  %44 = load i32, ptr %24, align 4
  %45 = zext i32 %44 to i64
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %45, i32 noundef 1, i32 noundef 3) #7
  br label %46

46:                                               ; preds = %43, %22
  %47 = add nuw nsw i32 %23, 1
  %48 = icmp eq i32 %47, %21
  br i1 %48, label %49, label %22

49:                                               ; preds = %46, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %50 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #7, !srcloc !18
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #7, !srcloc !19
  %52 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ext4_sb_info, ptr %53, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef 12, i32 noundef 12, i32 noundef %55) #7
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = icmp ult ptr %0, inttoptr (i32 4096 to ptr)
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef 12, i32 noundef %55, i32 noundef 3136) #7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60, %49
  %64 = phi i32 [ %56, %49 ], [ %61, %60 ]
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63, %60, %58
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %9, i32 noundef 1, i32 noundef 3) #7
  br label %67

67:                                               ; preds = %66, %63, %40, %12
  %68 = phi i32 [ %13, %12 ], [ %38, %40 ], [ 0, %66 ], [ %64, %63 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!9 = !{i64 2151458710}
!10 = !{i64 2151458552}
!11 = !{i64 2151458854}
!12 = !{i64 2149182341}
!13 = !{i64 2151460492}
!14 = !{i64 2149182640}
!15 = !{i64 2149182941}
!16 = !{i64 2151472111}
!17 = !{i64 2152595187}
!18 = !{i64 770932, i64 2148260903, i64 2148260929, i64 2148260976, i64 2148260998, i64 2148261026, i64 2148261046}
!19 = !{i64 2148274675, i64 2148274701, i64 2148274730, i64 2148274764, i64 2148274795, i64 2148274818}
!20 = !{i64 2148939536}
!21 = !{i64 2148935360}
!22 = !{i64 2148935435, i64 2148935462, i64 2148935509, i64 2148935531, i64 2148935559, i64 2148935579}
!23 = !{i64 2148962539}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{!"branch_weights", i32 2000, i32 1}
