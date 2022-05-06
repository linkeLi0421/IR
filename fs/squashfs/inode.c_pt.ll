; ModuleID = '/llk/IR/fs/squashfs/inode.c_pt.bc'
source_filename = "../fs/squashfs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { i32 }
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
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { ptr }
%union.squashfs_inode = type { %struct.squashfs_lreg_inode }
%struct.squashfs_lreg_inode = type { i16, i16, i16, i16, i32, i32, i64, i64, i64, i32, i32, i32, i32, [0 x i16] }
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
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.squashfs_base_inode = type { i16, i16, i16, i16, i32, i32 }
%struct.squashfs_reg_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, [0 x i16] }
%struct.squashfs_dir_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32 }
%struct.squashfs_ldir_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, i16, i32, [0 x %struct.squashfs_dir_index] }
%struct.squashfs_dir_index = type { i32, i32, i32, [0 x i8] }
%struct.squashfs_symlink_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, [0 x i8] }
%struct.squashfs_dev_inode = type { i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.squashfs_ldev_inode = type { i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.squashfs_ipc_inode = type { i16, i16, i16, i16, i32, i32, i32 }
%struct.squashfs_lipc_inode = type { i16, i16, i16, i16, i32, i32, i32, i32 }

@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@squashfs_aops = external dso_local constant %struct.address_space_operations, align 4
@squashfs_inode_ops = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@squashfs_dir_inode_ops = external dso_local constant %struct.inode_operations, align 64
@squashfs_dir_ops = external dso_local constant %struct.file_operations, align 4
@squashfs_symlink_inode_ops = external dso_local constant %struct.inode_operations, align 64
@squashfs_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@.str = private unnamed_addr constant [59 x i8] c"\013SQUASHFS error: Unknown inode type %d in squashfs_iget!\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\013SQUASHFS error: Unable to read inode 0x%llx\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @squashfs_iget(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @iget_locked(ptr noundef %0, i32 noundef %2) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 23
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @squashfs_read_inode(ptr noundef nonnull %4, i64 noundef %1)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  tail call void @iget_failed(ptr noundef nonnull %4) #5
  %15 = inttoptr i32 %12 to ptr
  br label %17

16:                                               ; preds = %11
  tail call void @unlock_new_inode(ptr noundef nonnull %4) #5
  br label %17

17:                                               ; preds = %16, %14, %6, %3
  %18 = phi ptr [ %15, %14 ], [ %4, %16 ], [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @squashfs_read_inode(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.squashfs_inode, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %15 = lshr i64 %1, 16
  %16 = and i64 %15, 4294967295
  %17 = getelementptr inbounds %struct.squashfs_sb_info, ptr %14, i32 0, i32 14
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, %16
  store i64 %19, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %20 = trunc i64 %1 to i32
  %21 = and i32 %20, 65535
  store i32 %21, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false), !annotation !8
  %22 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 16) #5
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %324, label %24

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.squashfs_base_inode, ptr %7, i32 0, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = call i32 @squashfs_get_id(ptr noundef %12, i32 noundef %27, ptr noundef nonnull %3) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.squashfs_base_inode, ptr %7, i32 0, i32 3
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = call i32 @squashfs_get_id(ptr noundef %12, i32 noundef %33, ptr noundef nonnull %4) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30, %24
  %37 = phi i32 [ %34, %30 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %324

38:                                               ; preds = %30
  %39 = load i32, ptr %3, align 4
  %40 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %4, align 4
  %42 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.squashfs_base_inode, ptr %7, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.squashfs_base_inode, ptr %7, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  store i64 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  store i64 %48, ptr %50, align 8
  %51 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  store i64 %48, ptr %51, align 8
  %52 = getelementptr inbounds %struct.squashfs_base_inode, ptr %7, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  store i16 %53, ptr %0, align 8
  %54 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 0, ptr %54, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %55 = load i64, ptr %17, align 8
  %56 = add i64 %55, %16
  store i64 %56, ptr %5, align 8
  store i32 %21, ptr %6, align 4
  %57 = load i16, ptr %7, align 8
  switch i16 %57, label %302 [
    i16 2, label %58
    i16 9, label %99
    i16 1, label %145
    i16 8, label %170
    i16 3, label %204
    i16 10, label %204
    i16 4, label %234
    i16 5, label %234
    i16 11, label %254
    i16 12, label %254
    i16 6, label %277
    i16 7, label %277
    i16 13, label %288
    i16 14, label %288
  ]

58:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  store i64 0, ptr %8, align 8, !annotation !8
  %59 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 32) #5
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.squashfs_reg_inode, ptr %7, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.squashfs_reg_inode, ptr %7, i32 0, i32 8
  %67 = load i32, ptr %66, align 8
  %68 = call i32 @squashfs_frag_lookup(ptr noundef %12, i32 noundef %63, ptr noundef nonnull %8) #5
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %71, label %73

70:                                               ; preds = %61
  store i64 -1, ptr %8, align 8
  br label %73

71:                                               ; preds = %65, %58
  %72 = phi i32 [ %68, %65 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  br label %324

73:                                               ; preds = %70, %65
  %74 = phi i32 [ %68, %65 ], [ 0, %70 ]
  %75 = phi i32 [ %67, %65 ], [ 0, %70 ]
  call void @set_nlink(ptr noundef %0, i32 noundef 1) #5
  %76 = getelementptr inbounds %struct.squashfs_reg_inode, ptr %7, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = zext i32 %77 to i64
  store i64 %78, ptr %54, align 8
  %79 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @generic_ro_fops, ptr %79, align 8
  %80 = load i16, ptr %0, align 8
  %81 = or i16 %80, -32768
  store i16 %81, ptr %0, align 8
  %82 = add nsw i64 %78, -1
  %83 = ashr i64 %82, 9
  %84 = add nsw i64 %83, 1
  %85 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %84, ptr %85, align 8
  %86 = load i64, ptr %8, align 8
  %87 = getelementptr i8, ptr %0, i32 -56
  %88 = getelementptr i8, ptr %0, i32 -24
  store i64 %86, ptr %88, align 8
  %89 = getelementptr i8, ptr %0, i32 -16
  store i32 %74, ptr %89, align 8
  %90 = getelementptr i8, ptr %0, i32 -12
  store i32 %75, ptr %90, align 4
  %91 = getelementptr inbounds %struct.squashfs_reg_inode, ptr %7, i32 0, i32 6
  %92 = load i32, ptr %91, align 8
  %93 = zext i32 %92 to i64
  store i64 %93, ptr %87, align 8
  %94 = load i64, ptr %5, align 8
  %95 = getelementptr i8, ptr %0, i32 -8
  store i64 %94, ptr %95, align 8
  %96 = load i32, ptr %6, align 4
  %97 = getelementptr i8, ptr %0, i32 -48
  store i32 %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 9
  store ptr @squashfs_aops, ptr %98, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  br label %322

99:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  store i64 0, ptr %9, align 8, !annotation !8
  %100 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 56) #5
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %7, i32 0, i32 10
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %7, i32 0, i32 11
  %108 = load i32, ptr %107, align 8
  %109 = call i32 @squashfs_frag_lookup(ptr noundef %12, i32 noundef %104, ptr noundef nonnull %9) #5
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %112, label %114

111:                                              ; preds = %102
  store i64 -1, ptr %9, align 8
  br label %114

112:                                              ; preds = %106, %99
  %113 = phi i32 [ %109, %106 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br label %324

114:                                              ; preds = %111, %106
  %115 = phi i32 [ %108, %106 ], [ 0, %111 ]
  %116 = phi i32 [ %109, %106 ], [ 0, %111 ]
  %117 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %7, i32 0, i32 12
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %7, i32 0, i32 9
  %120 = load i32, ptr %119, align 8
  call void @set_nlink(ptr noundef %0, i32 noundef %120) #5
  %121 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %7, i32 0, i32 7
  %122 = load i64, ptr %121, align 8
  store i64 %122, ptr %54, align 8
  %123 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @squashfs_inode_ops, ptr %123, align 8
  %124 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @generic_ro_fops, ptr %124, align 8
  %125 = load i16, ptr %0, align 8
  %126 = or i16 %125, -32768
  store i16 %126, ptr %0, align 8
  %127 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %7, i32 0, i32 8
  %128 = load i64, ptr %127, align 8
  %129 = add i64 %122, 511
  %130 = sub i64 %129, %128
  %131 = lshr i64 %130, 9
  %132 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %131, ptr %132, align 8
  %133 = load i64, ptr %9, align 8
  %134 = getelementptr i8, ptr %0, i32 -56
  %135 = getelementptr i8, ptr %0, i32 -24
  store i64 %133, ptr %135, align 8
  %136 = getelementptr i8, ptr %0, i32 -16
  store i32 %116, ptr %136, align 8
  %137 = getelementptr i8, ptr %0, i32 -12
  store i32 %115, ptr %137, align 4
  %138 = getelementptr inbounds %struct.squashfs_lreg_inode, ptr %7, i32 0, i32 6
  %139 = load i64, ptr %138, align 8
  store i64 %139, ptr %134, align 8
  %140 = load i64, ptr %5, align 8
  %141 = getelementptr i8, ptr %0, i32 -8
  store i64 %140, ptr %141, align 8
  %142 = load i32, ptr %6, align 4
  %143 = getelementptr i8, ptr %0, i32 -48
  store i32 %142, ptr %143, align 8
  %144 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 9
  store ptr @squashfs_aops, ptr %144, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br label %305

145:                                              ; preds = %38
  %146 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 32) #5
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %324, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.squashfs_dir_inode, ptr %7, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  call void @set_nlink(ptr noundef %0, i32 noundef %150) #5
  %151 = getelementptr inbounds %struct.squashfs_dir_inode, ptr %7, i32 0, i32 8
  %152 = load i16, ptr %151, align 8
  %153 = zext i16 %152 to i64
  store i64 %153, ptr %54, align 8
  %154 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @squashfs_dir_inode_ops, ptr %154, align 8
  %155 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @squashfs_dir_ops, ptr %155, align 8
  %156 = load i16, ptr %0, align 8
  %157 = or i16 %156, 16384
  store i16 %157, ptr %0, align 8
  %158 = getelementptr inbounds %struct.squashfs_dir_inode, ptr %7, i32 0, i32 6
  %159 = load i32, ptr %158, align 8
  %160 = zext i32 %159 to i64
  %161 = getelementptr i8, ptr %0, i32 -56
  store i64 %160, ptr %161, align 8
  %162 = getelementptr inbounds %struct.squashfs_dir_inode, ptr %7, i32 0, i32 9
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  %165 = getelementptr i8, ptr %0, i32 -48
  store i32 %164, ptr %165, align 8
  %166 = getelementptr i8, ptr %0, i32 -12
  store i32 0, ptr %166, align 4
  %167 = getelementptr inbounds %struct.squashfs_dir_inode, ptr %7, i32 0, i32 10
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr i8, ptr %0, i32 -8
  store i32 %168, ptr %169, align 8
  br label %322

170:                                              ; preds = %38
  %171 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 40) #5
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %324, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %7, i32 0, i32 12
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %7, i32 0, i32 6
  %177 = load i32, ptr %176, align 8
  call void @set_nlink(ptr noundef %0, i32 noundef %177) #5
  %178 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %7, i32 0, i32 7
  %179 = load i32, ptr %178, align 4
  %180 = zext i32 %179 to i64
  store i64 %180, ptr %54, align 8
  %181 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @squashfs_dir_inode_ops, ptr %181, align 8
  %182 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @squashfs_dir_ops, ptr %182, align 8
  %183 = load i16, ptr %0, align 8
  %184 = or i16 %183, 16384
  store i16 %184, ptr %0, align 8
  %185 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %7, i32 0, i32 8
  %186 = load i32, ptr %185, align 8
  %187 = zext i32 %186 to i64
  %188 = getelementptr i8, ptr %0, i32 -56
  store i64 %187, ptr %188, align 8
  %189 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %7, i32 0, i32 11
  %190 = load i16, ptr %189, align 2
  %191 = zext i16 %190 to i32
  %192 = getelementptr i8, ptr %0, i32 -48
  store i32 %191, ptr %192, align 8
  %193 = load i64, ptr %5, align 8
  %194 = getelementptr i8, ptr %0, i32 -24
  store i64 %193, ptr %194, align 8
  %195 = load i32, ptr %6, align 4
  %196 = getelementptr i8, ptr %0, i32 -16
  store i32 %195, ptr %196, align 8
  %197 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %7, i32 0, i32 10
  %198 = load i16, ptr %197, align 8
  %199 = zext i16 %198 to i32
  %200 = getelementptr i8, ptr %0, i32 -12
  store i32 %199, ptr %200, align 4
  %201 = getelementptr inbounds %struct.squashfs_ldir_inode, ptr %7, i32 0, i32 9
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr i8, ptr %0, i32 -8
  store i32 %202, ptr %203, align 8
  br label %305

204:                                              ; preds = %38, %38
  %205 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 24) #5
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %324, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.squashfs_symlink_inode, ptr %7, i32 0, i32 6
  %209 = load i32, ptr %208, align 8
  call void @set_nlink(ptr noundef %0, i32 noundef %209) #5
  %210 = getelementptr inbounds %struct.squashfs_symlink_inode, ptr %7, i32 0, i32 7
  %211 = load i32, ptr %210, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, ptr %54, align 8
  %213 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @squashfs_symlink_inode_ops, ptr %213, align 8
  call void @inode_nohighmem(ptr noundef %0) #5
  %214 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 9
  store ptr @squashfs_symlink_aops, ptr %214, align 8
  %215 = load i16, ptr %0, align 8
  %216 = or i16 %215, -24576
  store i16 %216, ptr %0, align 8
  %217 = load i64, ptr %5, align 8
  %218 = getelementptr i8, ptr %0, i32 -56
  store i64 %217, ptr %218, align 8
  %219 = load i32, ptr %6, align 4
  %220 = getelementptr i8, ptr %0, i32 -48
  store i32 %219, ptr %220, align 8
  %221 = icmp eq i16 %57, 10
  br i1 %221, label %222, label %322

222:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  store i32 0, ptr %10, align 4, !annotation !8
  %223 = load i64, ptr %54, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %224) #5
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %222
  %228 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 4) #5
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227, %222
  %231 = phi i32 [ %228, %227 ], [ %225, %222 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  br label %324

232:                                              ; preds = %227
  %233 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  br label %305

234:                                              ; preds = %38, %38
  %235 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 24) #5
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %324, label %237

237:                                              ; preds = %234
  %238 = icmp eq i16 %57, 5
  %239 = load i16, ptr %0, align 8
  %240 = select i1 %238, i16 8192, i16 24576
  %241 = or i16 %239, %240
  store i16 %241, ptr %0, align 8
  %242 = getelementptr inbounds %struct.squashfs_dev_inode, ptr %7, i32 0, i32 6
  %243 = load i32, ptr %242, align 8
  call void @set_nlink(ptr noundef %0, i32 noundef %243) #5
  %244 = getelementptr inbounds %struct.squashfs_dev_inode, ptr %7, i32 0, i32 7
  %245 = load i32, ptr %244, align 4
  %246 = load i16, ptr %0, align 8
  %247 = and i32 %245, 255
  %248 = lshr i32 %245, 12
  %249 = and i32 %248, 1048320
  %250 = or i32 %249, %247
  %251 = shl i32 %245, 12
  %252 = and i32 %251, -1048576
  %253 = or i32 %250, %252
  call void @init_special_inode(ptr noundef %0, i16 noundef zeroext %246, i32 noundef %253) #5
  br label %322

254:                                              ; preds = %38, %38
  %255 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 28) #5
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %324, label %257

257:                                              ; preds = %254
  %258 = icmp eq i16 %57, 12
  %259 = load i16, ptr %0, align 8
  %260 = select i1 %258, i16 8192, i16 24576
  %261 = or i16 %259, %260
  store i16 %261, ptr %0, align 8
  %262 = getelementptr inbounds %struct.squashfs_ldev_inode, ptr %7, i32 0, i32 8
  %263 = load i32, ptr %262, align 8
  %264 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @squashfs_inode_ops, ptr %264, align 8
  %265 = getelementptr inbounds %struct.squashfs_ldev_inode, ptr %7, i32 0, i32 6
  %266 = load i32, ptr %265, align 8
  call void @set_nlink(ptr noundef %0, i32 noundef %266) #5
  %267 = getelementptr inbounds %struct.squashfs_ldev_inode, ptr %7, i32 0, i32 7
  %268 = load i32, ptr %267, align 4
  %269 = load i16, ptr %0, align 8
  %270 = and i32 %268, 255
  %271 = lshr i32 %268, 12
  %272 = and i32 %271, 1048320
  %273 = or i32 %272, %270
  %274 = shl i32 %268, 12
  %275 = and i32 %274, -1048576
  %276 = or i32 %273, %275
  call void @init_special_inode(ptr noundef %0, i16 noundef zeroext %269, i32 noundef %276) #5
  br label %305

277:                                              ; preds = %38, %38
  %278 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 20) #5
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %324, label %280

280:                                              ; preds = %277
  %281 = icmp eq i16 %57, 6
  %282 = load i16, ptr %0, align 8
  %283 = select i1 %281, i16 4096, i16 -16384
  %284 = or i16 %282, %283
  store i16 %284, ptr %0, align 8
  %285 = getelementptr inbounds %struct.squashfs_ipc_inode, ptr %7, i32 0, i32 6
  %286 = load i32, ptr %285, align 8
  call void @set_nlink(ptr noundef %0, i32 noundef %286) #5
  %287 = load i16, ptr %0, align 8
  call void @init_special_inode(ptr noundef %0, i16 noundef zeroext %287, i32 noundef 0) #5
  br label %322

288:                                              ; preds = %38, %38
  %289 = call i32 @squashfs_read_metadata(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 24) #5
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %324, label %291

291:                                              ; preds = %288
  %292 = icmp eq i16 %57, 13
  %293 = load i16, ptr %0, align 8
  %294 = select i1 %292, i16 4096, i16 -16384
  %295 = or i16 %293, %294
  store i16 %295, ptr %0, align 8
  %296 = getelementptr inbounds %struct.squashfs_lipc_inode, ptr %7, i32 0, i32 7
  %297 = load i32, ptr %296, align 4
  %298 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @squashfs_inode_ops, ptr %298, align 8
  %299 = getelementptr inbounds %struct.squashfs_lipc_inode, ptr %7, i32 0, i32 6
  %300 = load i32, ptr %299, align 8
  call void @set_nlink(ptr noundef %0, i32 noundef %300) #5
  %301 = load i16, ptr %0, align 8
  call void @init_special_inode(ptr noundef %0, i16 noundef zeroext %301, i32 noundef 0) #5
  br label %305

302:                                              ; preds = %38
  %303 = zext i16 %57 to i32
  %304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %303) #6
  br label %327

305:                                              ; preds = %291, %257, %232, %173, %114
  %306 = phi i32 [ %118, %114 ], [ %175, %173 ], [ %263, %257 ], [ %297, %291 ], [ %233, %232 ]
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %322, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.squashfs_sb_info, ptr %14, i32 0, i32 9
  %310 = load ptr, ptr %309, align 4
  %311 = icmp eq ptr %310, null
  br i1 %311, label %322, label %312

312:                                              ; preds = %308
  %313 = getelementptr i8, ptr %0, i32 -32
  %314 = load i32, ptr %313, align 8
  %315 = add i32 %314, -1
  %316 = lshr i32 %315, 9
  %317 = add nuw nsw i32 %316, 1
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %320 = load i64, ptr %319, align 8
  %321 = add i64 %320, %318
  store i64 %321, ptr %319, align 8
  br label %327

322:                                              ; preds = %308, %305, %280, %237, %207, %148, %73
  %323 = getelementptr i8, ptr %0, i32 -28
  store i32 0, ptr %323, align 4
  br label %327

324:                                              ; preds = %288, %277, %254, %234, %230, %204, %170, %145, %112, %71, %36, %2
  %325 = phi i32 [ %22, %2 ], [ %37, %36 ], [ %72, %71 ], [ %113, %112 ], [ %205, %204 ], [ %231, %230 ], [ %146, %145 ], [ %171, %170 ], [ %235, %234 ], [ %255, %254 ], [ %278, %277 ], [ %289, %288 ]
  %326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i64 noundef %1) #6
  br label %327

327:                                              ; preds = %324, %322, %312, %302
  %328 = phi i32 [ %325, %324 ], [ -22, %302 ], [ 0, %322 ], [ 0, %312 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret i32 %328
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_frag_lookup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_get_id(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
