; ModuleID = '/llk/IR/fs/sync.c_pt.bc'
source_filename = "../fs/sync.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_filesystem\22\09\09\09\09\09"
module asm "__kstrtabns_sync_filesystem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fsync_range:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fsync_range\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fsync_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fsync\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.96, %struct.list_head, %struct.list_head, %union.anon.97 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.94 }
%union.anon.94 = type { i64 }
%union.anon.96 = type { %struct.list_head }
%union.anon.97 = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.90, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.91, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.92, ptr, %struct.address_space, %struct.list_head, %union.anon.93, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.91 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.92 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.93 = type { ptr }

@.str = private unnamed_addr constant [10 x i8] c"fs/sync.c\00", align 1
@__kstrtab_sync_filesystem = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_filesystem = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_filesystem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_filesystem to i32), ptr @__kstrtab_sync_filesystem, ptr @__kstrtabns_sync_filesystem }, section "___ksymtab+sync_filesystem", align 4
@laptop_mode = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_vfs_fsync_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fsync_range = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fsync_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fsync_range to i32), ptr @__kstrtab_vfs_fsync_range, ptr @__kstrtabns_vfs_fsync_range }, section "___ksymtab+vfs_fsync_range", align 4
@__kstrtab_vfs_fsync = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fsync = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fsync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fsync to i32), ptr @__kstrtab_vfs_fsync, ptr @__kstrtabns_vfs_fsync }, section "___ksymtab+vfs_fsync", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Emergency Sync complete\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_sync_filesystem, ptr @__ksymtab_vfs_fsync, ptr @__ksymtab_vfs_fsync_range], section "llvm.metadata"

@sys_syncfs = dso_local alias i32 (i32), ptr @__se_sys_syncfs
@sys_fsync = dso_local alias i32 (i32), ptr @__se_sys_fsync
@sys_fdatasync = dso_local alias i32 (i32), ptr @__se_sys_fdatasync
@sys_sync_file_range = dso_local alias i32 (i32, i64, i64, i32), ptr @__se_sys_sync_file_range
@sys_sync_file_range2 = dso_local alias i32 (i32, i32, i64, i64), ptr @__se_sys_sync_file_range2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sync_filesystem(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #5
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  tail call void @writeback_inodes_sb(ptr noundef %0, i32 noundef 2) #5
  %12 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_operations, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef 0) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17, %11
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @sync_blockdev_nowait(ptr noundef %22) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  tail call void @sync_inodes_sb(ptr noundef %0) #5
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr inbounds %struct.super_operations, ptr %26, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call i32 %28(ptr noundef %0, i32 noundef 1) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %25
  %34 = load ptr, ptr %21, align 4
  %35 = tail call i32 @sync_blockdev(ptr noundef %34) #5
  br label %36

36:                                               ; preds = %33, %30, %20, %17, %6
  %37 = phi i32 [ %35, %33 ], [ 0, %6 ], [ %18, %17 ], [ %23, %20 ], [ %31, %30 ]
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @writeback_inodes_sb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev_nowait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_inodes_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ksys_sync() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 1, ptr %2, align 4
  tail call void @wakeup_flusher_threads(i32 noundef 2) #5
  tail call void @iterate_supers(ptr noundef nonnull @sync_inodes_one_sb, ptr noundef null) #5
  call void @iterate_supers(ptr noundef nonnull @sync_fs_one_sb, ptr noundef nonnull %1) #5
  call void @iterate_supers(ptr noundef nonnull @sync_fs_one_sb, ptr noundef nonnull %2) #5
  call void @sync_bdevs(i1 noundef zeroext false) #5
  call void @sync_bdevs(i1 noundef zeroext true) #5
  %3 = load i32, ptr @laptop_mode, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %0
  call void @laptop_sync_completion() #5
  br label %6

6:                                                ; preds = %5, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_flusher_threads(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iterate_supers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sync_inodes_one_sb(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @sync_inodes_sb(ptr noundef %0) #5
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sync_fs_one_sb(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_operations, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %1, align 4
  %20 = tail call i32 %16(ptr noundef %0, i32 noundef %19) #5
  br label %21

21:                                               ; preds = %18, %12, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_bdevs(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @laptop_sync_completion() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_sync() local_unnamed_addr #0 {
  tail call void @ksys_sync()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @emergency_sync() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 16) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  store i32 -32, ptr %2, align 8
  %5 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 2
  store ptr @do_sync_work, ptr %7, align 4
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef nonnull %2) #5
  br label %10

10:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_sync_work(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4
  call void @iterate_supers(ptr noundef nonnull @sync_inodes_one_sb, ptr noundef nonnull %2) #5
  call void @iterate_supers(ptr noundef nonnull @sync_fs_one_sb, ptr noundef nonnull %2) #5
  call void @sync_bdevs(i1 noundef zeroext false) #5
  call void @iterate_supers(ptr noundef nonnull @sync_inodes_one_sb, ptr noundef nonnull %2) #5
  call void @iterate_supers(ptr noundef nonnull @sync_fs_one_sb, ptr noundef nonnull %2) #5
  call void @sync_bdevs(i1 noundef zeroext false) #5
  %3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  call void @kfree(ptr noundef %0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_syncfs(i32 noundef %0) #0 {
  %2 = tail call i32 @__fdget(i32 noundef %0) #5, !noalias !10
  %3 = and i32 %2, -4
  %4 = inttoptr i32 %3 to ptr
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 14
  tail call void @down_read(ptr noundef %11) #5
  %12 = tail call i32 @sync_filesystem(ptr noundef %10) #5
  tail call void @up_read(ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 44
  %14 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 19
  %15 = tail call i32 @errseq_check_and_advance(ptr noundef %13, ptr noundef %14) #5
  %16 = and i32 %2, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  tail call void @fput(ptr noundef nonnull %4) #5
  br label %19

19:                                               ; preds = %18, %6
  %20 = icmp eq i32 %12, 0
  %21 = select i1 %20, i32 %15, i32 %12
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i32 [ %21, %19 ], [ -9, %1 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fsync_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %4
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  tail call void @__mark_inode_dirty(ptr noundef %7, i32 noundef 1) #5
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.file_operations, ptr %21, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %15, %13
  %25 = phi ptr [ %23, %20 ], [ %11, %15 ], [ %11, %13 ]
  %26 = tail call i32 %25(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #5
  br label %27

27:                                               ; preds = %24, %4
  %28 = phi i32 [ %26, %24 ], [ -22, %4 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fsync(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 23
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  tail call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 1) #5
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %18, %13, %11
  %23 = phi ptr [ %21, %18 ], [ %9, %13 ], [ %9, %11 ]
  %24 = tail call i32 %23(ptr noundef %0, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef %1) #5
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i32 [ %24, %22 ], [ -22, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fsync(i32 noundef %0) #0 {
  %2 = tail call i32 @__fdget(i32 noundef %0) #5, !noalias !13
  %3 = and i32 %2, -4
  %4 = inttoptr i32 %3 to ptr
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 23
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  tail call void @__mark_inode_dirty(ptr noundef %9, i32 noundef 1) #5
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.file_operations, ptr %21, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi ptr [ %23, %20 ], [ %13, %15 ]
  %26 = tail call i32 %25(ptr noundef nonnull %4, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 0) #5
  br label %27

27:                                               ; preds = %24, %6
  %28 = phi i32 [ %26, %24 ], [ -22, %6 ]
  %29 = and i32 %2, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @fput(ptr noundef nonnull %4) #5
  br label %32

32:                                               ; preds = %31, %27, %1
  %33 = phi i32 [ -9, %1 ], [ %28, %27 ], [ %28, %31 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fdatasync(i32 noundef %0) #0 {
  %2 = tail call i32 @__fdget(i32 noundef %0) #5, !noalias !16
  %3 = and i32 %2, -4
  %4 = inttoptr i32 %3 to ptr
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.file_operations, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef nonnull %4, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 1) #5
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi i32 [ %13, %12 ], [ -22, %6 ]
  %16 = and i32 %2, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @fput(ptr noundef nonnull %4) #5
  br label %19

19:                                               ; preds = %18, %14, %1
  %20 = phi i32 [ -9, %1 ], [ %15, %14 ], [ %15, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sync_file_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %3, 8
  br i1 %5, label %6, label %51

6:                                                ; preds = %4
  %7 = add i64 %2, %1
  %8 = or i64 %7, %1
  %9 = icmp slt i64 %8, 0
  %10 = icmp slt i64 %7, %1
  %11 = or i1 %10, %9
  br i1 %11, label %51, label %12

12:                                               ; preds = %6
  %13 = icmp ugt i64 %1, 17592186044415
  br i1 %13, label %51, label %14

14:                                               ; preds = %12
  %15 = icmp ugt i64 %7, 17592186044415
  %16 = icmp eq i64 %2, 0
  %17 = or i1 %16, %15
  %18 = add i64 %7, -1
  %19 = select i1 %17, i64 9223372036854775807, i64 %18
  %20 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = load i16, ptr %21, align 8
  %23 = lshr i16 %22, 13
  %24 = shl i16 %22, 3
  %25 = and i16 %24, -32768
  %26 = or i16 %25, %23
  %27 = xor i16 %26, 4
  switch i16 %27, label %51 [
    i16 0, label %28
    i16 7, label %28
    i16 6, label %28
    i16 1, label %28
  ]

28:                                               ; preds = %14, %14, %14, %14
  %29 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %30 = load ptr, ptr %29, align 8
  %31 = and i32 %3, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @file_fdatawait_range(ptr noundef %0, i64 noundef %1, i64 noundef %19) #5
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %34, %33 ], [ 0, %28 ]
  %38 = and i32 %3, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = icmp eq i32 %3, 7
  %42 = zext i1 %41 to i32
  %43 = tail call i32 @__filemap_fdatawrite_range(ptr noundef %30, i64 noundef %1, i64 noundef %19, i32 noundef %42) #5
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %36
  %46 = phi i32 [ %43, %40 ], [ %37, %36 ]
  %47 = and i32 %3, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @file_fdatawait_range(ptr noundef %0, i64 noundef %1, i64 noundef %19) #5
  br label %51

51:                                               ; preds = %49, %45, %40, %33, %14, %12, %6, %4
  %52 = phi i32 [ -22, %4 ], [ -22, %6 ], [ %34, %33 ], [ %43, %40 ], [ %50, %49 ], [ %46, %45 ], [ 0, %12 ], [ -29, %14 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_sync_file_range(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @__fdget(i32 noundef %0) #5, !noalias !19
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @sync_file_range(ptr noundef nonnull %7, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ -9, %4 ]
  %13 = and i32 %5, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fput(ptr noundef %7) #5
  br label %16

16:                                               ; preds = %15, %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sync_file_range(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @__fdget(i32 noundef %0) #5, !noalias !22
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @sync_file_range(ptr noundef nonnull %7, i64 noundef %1, i64 noundef %2, i32 noundef %3) #5
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ -9, %4 ]
  %13 = and i32 %5, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fput(ptr noundef %7) #5
  br label %16

16:                                               ; preds = %15, %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sync_file_range2(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = tail call i32 @__fdget(i32 noundef %0) #5, !noalias !25
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @sync_file_range(ptr noundef nonnull %7, i64 noundef %2, i64 noundef %3, i32 noundef %1) #5
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ -9, %4 ]
  %13 = and i32 %5, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fput(ptr noundef %7) #5
  br label %16

16:                                               ; preds = %15, %11
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check_and_advance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!11}
!11 = distinct !{!11, !12, !"fdget: argument 0"}
!12 = distinct !{!12, !"fdget"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"fdget: argument 0"}
!15 = distinct !{!15, !"fdget"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"fdget: argument 0"}
!18 = distinct !{!18, !"fdget"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"fdget: argument 0"}
!21 = distinct !{!21, !"fdget"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"fdget: argument 0"}
!24 = distinct !{!24, !"fdget"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"fdget: argument 0"}
!27 = distinct !{!27, !"fdget"}
