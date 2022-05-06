; ModuleID = '/llk/IR/fs/kernfs/mount.c_pt.bc'
source_filename = "../fs/kernfs/mount.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.67 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.73, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.73 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_syscall_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kernfs_super_info = type { ptr, ptr, ptr, %struct.list_head }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.kernfs_fs_context = type { ptr, ptr, i32, i8 }
%struct.anon.41 = type { i32, i32, i32, i32 }

@kernfs_sops = dso_local constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr @kernfs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @kernfs_sop_show_options, ptr null, ptr @kernfs_sop_show_path, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [18 x i8] c"fs/kernfs/mount.c\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"kernfs_node_cache\00", align 1
@kernfs_node_cache = dso_local local_unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"kernfs_iattrs_cache\00", align 1
@kernfs_iattrs_cache = dso_local local_unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1
@find_next_ancestor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"\012BUG in find_next_ancestor: called with parent == child\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@kernfs_xattr_handlers = external dso_local global [0 x ptr], align 4
@kernfs_export_ops = internal constant %struct.export_operations { ptr @kernfs_encode_fh, ptr @kernfs_fh_to_dentry, ptr @kernfs_fh_to_parent, ptr null, ptr @kernfs_get_parent_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@kernfs_dops = external dso_local constant %struct.dentry_operations, align 64

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_evict_inode(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_sop_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %10, ptr %12
  %15 = getelementptr inbounds %struct.kernfs_node, ptr %14, i32 0, i32 7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.kernfs_root, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %9
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 %21(ptr noundef %0, ptr noundef %16) #8
  br label %25

25:                                               ; preds = %23, %20, %9
  %26 = phi i32 [ %24, %23 ], [ 0, %20 ], [ 0, %9 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_sop_show_path(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %10, ptr %12
  %15 = getelementptr inbounds %struct.kernfs_node, ptr %14, i32 0, i32 7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.kernfs_root, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %18, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %0, ptr noundef %10, ptr noundef %16) #8
  br label %28

26:                                               ; preds = %20, %9
  %27 = tail call i32 @seq_dentry(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.3) #8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ 0, %26 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @kernfs_root_from_sb(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @kernfs_sops
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kernfs_super_info, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %9, %5 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_node_dentry(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @kernfs_sops
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/kernfs/mount.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %0, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load i1, ptr @find_next_ancestor.__already_done, align 1
  br i1 %20, label %47, label %21, !prof !8

21:                                               ; preds = %19
  store i1 true, ptr @find_next_ancestor.__already_done, align 1
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %47

23:                                               ; preds = %23, %17
  %24 = phi ptr [ %26, %23 ], [ %15, %17 ]
  %25 = getelementptr inbounds %struct.kernfs_node, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23

28:                                               ; preds = %41, %23
  %29 = phi ptr [ %33, %41 ], [ %24, %23 ]
  %30 = phi ptr [ %45, %41 ], [ %9, %23 ]
  %31 = icmp eq ptr %29, %0
  br i1 %31, label %50, label %32

32:                                               ; preds = %37, %28
  %33 = phi ptr [ %35, %37 ], [ %0, %28 ]
  %34 = getelementptr inbounds %struct.kernfs_node, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, %29
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = icmp eq ptr %35, null
  br i1 %38, label %47, label %32

39:                                               ; preds = %32
  %40 = icmp eq ptr %33, null
  br i1 %40, label %47, label %41, !prof !10

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.kernfs_node, ptr %33, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @strlen(ptr noundef %43)
  %45 = tail call ptr @lookup_positive_unlocked(ptr noundef %43, ptr noundef %30, i32 noundef %44) #8
  tail call void @dput(ptr noundef %30) #8
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %50, label %28

47:                                               ; preds = %39, %37, %21, %19
  %48 = phi i32 [ 210, %21 ], [ 210, %19 ], [ 222, %37 ], [ 222, %39 ]
  %49 = phi ptr [ %9, %21 ], [ %9, %19 ], [ %30, %37 ], [ %30, %39 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %48, i32 noundef 9, ptr noundef null) #8
  tail call void @dput(ptr noundef %49) #8
  br label %50

50:                                               ; preds = %47, %41, %28, %13
  %51 = phi ptr [ %9, %13 ], [ inttoptr (i32 -22 to ptr), %47 ], [ %30, %28 ], [ %45, %41 ]
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @kernfs_super_ns(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kernfs_super_info, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_get_tree(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %80, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.kernfs_super_info, ptr %5, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.kernfs_fs_context, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.kernfs_super_info, ptr %5, i32 0, i32 2
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.kernfs_super_info, ptr %5, i32 0, i32 3
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.kernfs_super_info, ptr %5, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12
  store ptr %5, ptr %15, align 4
  %16 = tail call ptr @sget_fc(ptr noundef %0, ptr noundef nonnull @kernfs_test_super, ptr noundef nonnull @kernfs_set_super) #8
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = ptrtoint ptr %16 to i32
  br label %80

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 13
  %22 = load ptr, ptr %21, align 64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.kernfs_fs_context, ptr %3, i32 0, i32 3
  store i8 1, ptr %28, align 4
  %29 = load ptr, ptr %25, align 4
  store ptr %16, ptr %29, align 4
  %30 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 11
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 6
  store i32 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 3
  store i32 4096, ptr %33, align 16
  %34 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 2
  store i8 12, ptr %34, align 4
  %35 = getelementptr inbounds %struct.kernfs_fs_context, ptr %3, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 12
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 6
  store ptr @kernfs_sops, ptr %38, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 17
  store ptr @kernfs_xattr_handlers, ptr %39, align 4
  %40 = getelementptr inbounds %struct.kernfs_super_info, ptr %29, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.kernfs_root, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %24
  %47 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 9
  store ptr @kernfs_export_ops, ptr %47, align 16
  br label %48

48:                                               ; preds = %46, %24
  %49 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 28
  store i32 1, ptr %49, align 32
  %50 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 40, i32 3
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.kernfs_root, ptr %27, i32 0, i32 8
  tail call void @down_read(ptr noundef %51) #8
  %52 = load ptr, ptr %40, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = tail call ptr @kernfs_get_inode(ptr noundef %16, ptr noundef %53) #8
  tail call void @up_read(ptr noundef %51) #8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = tail call ptr @d_make_root(ptr noundef nonnull %54) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %48
  tail call void @deactivate_locked_super(ptr noundef %16) #8
  br label %80

60:                                               ; preds = %56
  store ptr %57, ptr %21, align 64
  %61 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 39
  store ptr @kernfs_dops, ptr %61, align 16
  %62 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 1073741824
  store i32 %64, ptr %62, align 4
  tail call void @down_write(ptr noundef %51) #8
  %65 = getelementptr inbounds %struct.kernfs_super_info, ptr %26, i32 0, i32 3
  %66 = getelementptr inbounds %struct.kernfs_super_info, ptr %26, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.kernfs_root, ptr %67, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %65, ptr %70, align 4
  store ptr %69, ptr %65, align 4
  %71 = getelementptr inbounds %struct.kernfs_super_info, ptr %26, i32 0, i32 3, i32 1
  store ptr %68, ptr %71, align 4
  store volatile ptr %65, ptr %68, align 4
  tail call void @up_write(ptr noundef %51) #8
  %72 = load ptr, ptr %21, align 64
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %60, %20
  %75 = phi ptr [ %72, %60 ], [ %22, %20 ]
  %76 = getelementptr inbounds %struct.dentry, ptr %75, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %76) #8
  br label %77

77:                                               ; preds = %74, %60
  %78 = phi ptr [ null, %60 ], [ %75, %74 ]
  %79 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  store ptr %78, ptr %79, align 4
  br label %80

80:                                               ; preds = %77, %59, %18, %1
  %81 = phi i32 [ %19, %18 ], [ 0, %77 ], [ -12, %1 ], [ -12, %59 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @kernfs_test_super(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kernfs_super_info, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.kernfs_super_info, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.kernfs_super_info, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.kernfs_super_info, ptr %6, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %14, %16
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_set_super(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kernfs_fs_context, ptr %4, i32 0, i32 1
  store ptr null, ptr %5, align 4
  %6 = tail call i32 @set_anon_super_fc(ptr noundef %0, ptr noundef %1) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_free_fs_context(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_kill_sb(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kernfs_super_info, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 8
  tail call void @down_write(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.kernfs_super_info, ptr %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.kernfs_super_info, ptr %3, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @up_write(ptr noundef %6) #8
  tail call void @kill_anon_super(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @kernfs_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef 0, i32 noundef 262144, ptr noundef null) #8
  store ptr %1, ptr @kernfs_node_cache, align 4
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 80, i32 noundef 0, i32 noundef 262144, ptr noundef null) #8
  store ptr %2, ptr @kernfs_iattrs_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_dentry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super_fc(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @kernfs_encode_fh(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readnone %3) #7 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 2, ptr %2, align 4
  br label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  store i32 2, ptr %2, align 4
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 9
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %1, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = phi i32 [ 255, %7 ], [ 254, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kernfs_fh_to_dentry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = icmp slt i32 %2, 2
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  switch i32 %3, label %30 [
    i32 254, label %9
    i32 1, label %11
    i32 2, label %11
  ]

9:                                                ; preds = %8
  %10 = load i64, ptr %1, align 8
  br label %19

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.anon.41, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = load i32, ptr %1, align 4
  %17 = zext i32 %16 to i64
  %18 = or i64 %15, %17
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi i64 [ %18, %11 ], [ %10, %9 ]
  %21 = getelementptr inbounds %struct.kernfs_super_info, ptr %6, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr @kernfs_find_and_get_node_by_id(ptr noundef %22, i64 noundef %20) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = tail call ptr @kernfs_get_inode(ptr noundef %0, ptr noundef nonnull %23) #8
  tail call void @kernfs_put(ptr noundef nonnull %23) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @d_obtain_alias(ptr noundef nonnull %26) #8
  br label %30

30:                                               ; preds = %28, %25, %19, %8, %4
  %31 = phi ptr [ %29, %28 ], [ null, %4 ], [ null, %8 ], [ inttoptr (i32 -116 to ptr), %19 ], [ inttoptr (i32 -116 to ptr), %25 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kernfs_fh_to_parent(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = tail call fastcc ptr @__kernfs_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kernfs_get_parent_dentry(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  %10 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @kernfs_get_inode(ptr noundef %11, ptr noundef %13) #8
  %15 = tail call ptr @d_obtain_alias(ptr noundef %14) #8
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__kernfs_fh_to_dentry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = icmp slt i32 %2, 2
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  switch i32 %3, label %36 [
    i32 254, label %10
    i32 1, label %12
    i32 2, label %12
  ]

10:                                               ; preds = %9
  %11 = load i64, ptr %1, align 8
  br label %20

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds %struct.anon.41, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = load i32, ptr %1, align 4
  %18 = zext i32 %17 to i64
  %19 = or i64 %16, %18
  br label %20

20:                                               ; preds = %12, %10
  %21 = phi i64 [ %19, %12 ], [ %11, %10 ]
  %22 = getelementptr inbounds %struct.kernfs_super_info, ptr %7, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @kernfs_find_and_get_node_by_id(ptr noundef %23, i64 noundef %21) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %20
  br i1 %4, label %27, label %30

27:                                               ; preds = %26
  %28 = tail call ptr @kernfs_get_parent(ptr noundef nonnull %24) #8
  tail call void @kernfs_put(ptr noundef nonnull %24) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %26
  %31 = phi ptr [ %28, %27 ], [ %24, %26 ]
  %32 = tail call ptr @kernfs_get_inode(ptr noundef %0, ptr noundef nonnull %31) #8
  tail call void @kernfs_put(ptr noundef nonnull %31) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @d_obtain_alias(ptr noundef nonnull %32) #8
  br label %36

36:                                               ; preds = %34, %30, %27, %20, %9, %5
  %37 = phi ptr [ %35, %34 ], [ inttoptr (i32 -116 to ptr), %27 ], [ null, %5 ], [ null, %9 ], [ inttoptr (i32 -116 to ptr), %20 ], [ inttoptr (i32 -116 to ptr), %30 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_node_by_id(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152672258, i64 2152672740, i64 2152672295, i64 2152672351, i64 2152672385, i64 2152672409, i64 2152672450, i64 2152672471, i64 2152672499, i64 2152672533}
!10 = !{!"branch_weights", i32 1, i32 2000}
