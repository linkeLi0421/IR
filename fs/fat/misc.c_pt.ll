; ModuleID = '/llk/IR/fs/fat/misc.c_pt.bc'
source_filename = "../fs/fat/misc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fat_fs_error:\09\09\09\09\09"
module asm "\09.asciz \09\22__fat_fs_error\22\09\09\09\09\09"
module asm "__kstrtabns___fat_fs_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_time_fat2unix:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_time_fat2unix\22\09\09\09\09\09"
module asm "__kstrtabns_fat_time_fat2unix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_time_unix2fat:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_time_unix2fat\22\09\09\09\09\09"
module asm "__kstrtabns_fat_time_unix2fat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_truncate_time:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_truncate_time\22\09\09\09\09\09"
module asm "__kstrtabns_fat_truncate_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_update_time\22\09\09\09\09\09"
module asm "__kstrtabns_fat_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fat_boot_fsinfo = type { i32, [120 x i32], i32, i32, i32, [4 x i32] }
%struct.fat_entry = type { i32, %union.anon.65, i32, [2 x ptr], ptr }
%union.anon.65 = type { [2 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.32, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.33, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.34, ptr, %struct.address_space, %struct.list_head, %union.anon.35, i32, i32, ptr, ptr }
%union.anon.32 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.33 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.34 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.35 = type { ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"error, %pV\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"FAT-fs (%s): fs panic from previous error\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Filesystem has been set read-only\00", align 1
@__kstrtab___fat_fs_error = external dso_local constant [0 x i8], align 1
@__kstrtabns___fat_fs_error = external dso_local constant [0 x i8], align 1
@__ksymtab___fat_fs_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fat_fs_error to i32), ptr @__kstrtab___fat_fs_error, ptr @__kstrtabns___fat_fs_error }, section "___ksymtab_gpl+__fat_fs_error", align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"%sFAT-fs (%s): %pV\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"bread failed in fat_clusters_flush\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Invalid FSINFO signature: 0x%08x, 0x%08x (sector = %lu)\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"clusters badly computed (%d != %llu)\00", align 1
@days_in_year = internal unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334, i32 0, i32 0, i32 0], align 4
@__kstrtab_fat_time_fat2unix = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_time_fat2unix = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_time_fat2unix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_time_fat2unix to i32), ptr @__kstrtab_fat_time_fat2unix, ptr @__kstrtabns_fat_time_fat2unix }, section "___ksymtab_gpl+fat_time_fat2unix", align 4
@__kstrtab_fat_time_unix2fat = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_time_unix2fat = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_time_unix2fat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_time_unix2fat to i32), ptr @__kstrtab_fat_time_unix2fat, ptr @__kstrtabns_fat_time_unix2fat }, section "___ksymtab_gpl+fat_time_unix2fat", align 4
@__kstrtab_fat_truncate_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_truncate_time = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_truncate_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_truncate_time to i32), ptr @__kstrtab_fat_truncate_time, ptr @__kstrtabns_fat_truncate_time }, section "___ksymtab_gpl+fat_truncate_time", align 4
@__kstrtab_fat_update_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_update_time = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_update_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_update_time to i32), ptr @__kstrtab_fat_update_time, ptr @__kstrtabns_fat_update_time }, section "___ksymtab_gpl+fat_update_time", align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab___fat_fs_error, ptr @__ksymtab_fat_time_fat2unix, ptr @__ksymtab_fat_time_unix2fat, ptr @__ksymtab_fat_truncate_time, ptr @__ksymtab_fat_update_time], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @__fat_fs_error(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca %struct.va_format, align 8
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %2, ptr %5, align 8
  %10 = getelementptr inbounds %struct.va_format, ptr %5, i32 0, i32 1
  store ptr %4, ptr %10, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #10
  call void @llvm.va_end(ptr nonnull %4)
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 9
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %23 [
    i8 2, label %14
    i8 3, label %16
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 33
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, ptr noundef %15) #11
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = or i32 %18, 1
  store i32 %22, ptr %17, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  br label %23

23:                                               ; preds = %21, %16, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @fat_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca %struct.va_format, align 8
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %5)
  store ptr %2, ptr %4, align 8
  %6 = getelementptr inbounds %struct.va_format, ptr %4, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 33
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %4) #12
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_clusters_flush(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 32
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 16
  %15 = tail call ptr @__bread_gfp(ptr noundef %12, i64 noundef %10, i32 noundef %14, i32 noundef 8) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  br label %43

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1096897106
  %23 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %20, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1631679090
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %21, i32 noundef %24, i32 noundef %28) #10
  br label %42

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %20, i32 0, i32 3
  store i32 %31, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %20, i32 0, i32 4
  store i32 %37, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %35
  tail call void @mark_buffer_dirty(ptr noundef nonnull %15) #9
  br label %42

42:                                               ; preds = %41, %27
  tail call void @__brelse(ptr noundef nonnull %15) #9
  br label %43

43:                                               ; preds = %42, %17, %1
  %44 = phi i32 [ -5, %17 ], [ 0, %42 ], [ 0, %1 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_chain_add(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fat_entry, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -64
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %15 = call i32 @fat_get_cluster(ptr noundef %0, i32 noundef 268435455, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %16 = icmp slt i32 %15, 0
  %17 = load i32, ptr %4, align 4
  %18 = add i32 %17, 1
  %19 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br i1 %16, label %91, label %20

20:                                               ; preds = %14
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  %23 = getelementptr inbounds %struct.fat_entry, ptr %6, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  %24 = call i32 @fat_ent_read(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %19) #9
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  br label %91

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.fat_entry, ptr %6, i32 0, i32 1
  %29 = call i32 @inode_needs_sync(ptr noundef %0) #9
  %30 = call i32 @fat_ent_write(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %1, i32 noundef %29) #9
  store ptr null, ptr %28, align 4
  %31 = load i32, ptr %23, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %41, %27
  %34 = phi i32 [ %42, %41 ], [ %31, %27 ]
  %35 = phi i32 [ %43, %41 ], [ 0, %27 ]
  %36 = getelementptr %struct.fat_entry, ptr %6, i32 0, i32 3, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  call void @__brelse(ptr noundef nonnull %37) #9
  %40 = load i32, ptr %23, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi i32 [ %34, %33 ], [ %40, %39 ]
  %43 = add nuw nsw i32 %35, 1
  %44 = icmp slt i32 %43, %42
  br i1 %44, label %33, label %45

45:                                               ; preds = %41, %27
  %46 = icmp slt i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  br i1 %46, label %91, label %68

47:                                               ; preds = %20, %3
  %48 = phi i32 [ %18, %20 ], [ 0, %3 ]
  store i32 %1, ptr %11, align 8
  %49 = getelementptr i8, ptr %0, i32 -60
  store i32 %1, ptr %49, align 4
  %50 = load i16, ptr %0, align 8
  %51 = and i16 %50, -4096
  %52 = icmp eq i16 %51, 16384
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 10
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 144
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 65
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59, %53
  %65 = call i32 @fat_sync_inode(ptr noundef %0) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %91

67:                                               ; preds = %59, %47
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #9
  br label %68

68:                                               ; preds = %67, %64, %45
  %69 = phi i32 [ %48, %67 ], [ %48, %64 ], [ %18, %45 ]
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 1
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = add nsw i32 %75, -9
  %77 = zext i32 %76 to i64
  %78 = lshr i64 %72, %77
  %79 = icmp eq i64 %78, %70
  br i1 %79, label %85, label %80

80:                                               ; preds = %68
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %69, i64 noundef %78) #10
  call void @fat_cache_inval_inode(ptr noundef %0) #9
  %81 = load i16, ptr %73, align 2
  %82 = load i64, ptr %71, align 8
  %83 = zext i16 %81 to i32
  %84 = add nsw i32 %83, -9
  br label %85

85:                                               ; preds = %80, %68
  %86 = phi i32 [ %84, %80 ], [ %76, %68 ]
  %87 = phi i64 [ %82, %80 ], [ %72, %68 ]
  %88 = shl i32 %2, %86
  %89 = sext i32 %88 to i64
  %90 = add i64 %87, %89
  store i64 %90, ptr %71, align 8
  br label %91

91:                                               ; preds = %85, %64, %45, %26, %14
  %92 = phi i32 [ 0, %85 ], [ %30, %45 ], [ %15, %14 ], [ %65, %64 ], [ %24, %26 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_cluster(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_ent_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_cache_inval_inode(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fat_time_fat2unix(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4) #8 {
  %6 = zext i16 %3 to i32
  %7 = lshr i32 %6, 9
  %8 = lshr i32 %6, 5
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 1, i32 %9
  %12 = and i32 %6, 31
  %13 = icmp eq i32 %12, 0
  %14 = add nsw i32 %12, -1
  %15 = select i1 %13, i32 0, i32 %14
  %16 = add nuw nsw i32 %7, 3
  %17 = lshr i32 %16, 2
  %18 = icmp ugt i16 %3, -3585
  %19 = and i32 %6, 1536
  %20 = icmp eq i32 %19, 0
  %21 = icmp ne i32 %7, 120
  %22 = and i1 %20, %21
  %23 = icmp ugt i32 %11, 2
  %24 = and i1 %22, %23
  %25 = zext i1 %24 to i32
  %26 = zext i16 %2 to i32
  %27 = shl nuw nsw i32 %26, 1
  %28 = and i32 %27, 62
  %29 = lshr i32 %26, 5
  %30 = and i32 %29, 63
  %31 = mul nuw nsw i32 %30, 60
  %32 = lshr i32 %26, 11
  %33 = mul nuw nsw i32 %32, 3600
  %34 = add nuw nsw i32 %33, %28
  %35 = add nuw nsw i32 %34, %31
  %36 = zext i32 %35 to i64
  %37 = mul nuw nsw i32 %7, 365
  %38 = getelementptr [16 x i32], ptr @days_in_year, i32 0, i32 %11
  %39 = load i32, ptr %38, align 4
  %40 = select i1 %18, i32 3651, i32 3652
  %41 = add nuw nsw i32 %40, %37
  %42 = add nuw nsw i32 %41, %17
  %43 = add nuw nsw i32 %42, %15
  %44 = add nuw nsw i32 %43, %25
  %45 = add i32 %44, %39
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, 86400
  %48 = add nsw i64 %47, %36
  %49 = getelementptr inbounds %struct.msdos_sb_info, ptr %0, i32 0, i32 19, i32 12
  %50 = load i16, ptr %49, align 4
  %51 = and i16 %50, 2048
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %5
  %54 = getelementptr inbounds %struct.msdos_sb_info, ptr %0, i32 0, i32 19, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 0, %55
  br label %59

57:                                               ; preds = %5
  %58 = load i32, ptr @sys_tz, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %56, %53 ], [ %58, %57 ]
  %61 = mul i32 %60, 60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %48, %62
  %64 = icmp eq i8 %4, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = udiv i8 %4, 100
  %67 = zext i8 %66 to i64
  %68 = add nsw i64 %63, %67
  store i64 %68, ptr %1, align 8
  %69 = mul i8 %66, 100
  %70 = sub i8 %4, %69
  %71 = zext i8 %70 to i32
  %72 = mul nuw nsw i32 %71, 10000000
  br label %74

73:                                               ; preds = %59
  store i64 %63, ptr %1, align 8
  br label %74

74:                                               ; preds = %73, %65
  %75 = phi i32 [ 0, %73 ], [ %72, %65 ]
  %76 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  store i32 %75, ptr %76, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fat_time_unix2fat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4) #6 {
  %6 = alloca %struct.tm, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  %7 = load i64, ptr %1, align 8
  %8 = getelementptr inbounds %struct.msdos_sb_info, ptr %0, i32 0, i32 19, i32 12
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 2048
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.msdos_sb_info, ptr %0, i32 0, i32 19, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 0, %14
  br label %18

16:                                               ; preds = %5
  %17 = load i32, ptr @sys_tz, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %15, %12 ], [ %17, %16 ]
  %20 = mul i32 %19, -60
  call void @time64_to_tm(i64 noundef %7, i32 noundef %20, ptr noundef nonnull %6) #9
  %21 = getelementptr inbounds %struct.tm, ptr %6, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, 80
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  store i16 0, ptr %2, align 2
  store i16 33, ptr %3, align 2
  %25 = icmp eq ptr %4, null
  br i1 %25, label %66, label %64

26:                                               ; preds = %18
  %27 = icmp ugt i32 %22, 207
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  store i16 -16515, ptr %2, align 2
  store i16 -97, ptr %3, align 2
  %29 = icmp eq ptr %4, null
  br i1 %29, label %66, label %64

30:                                               ; preds = %26
  %31 = add nsw i32 %22, -80
  store i32 %31, ptr %21, align 4
  %32 = getelementptr inbounds %struct.tm, ptr %6, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %6, align 4
  %36 = lshr i32 %35, 1
  %37 = getelementptr inbounds %struct.tm, ptr %6, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 11
  %40 = getelementptr inbounds %struct.tm, ptr %6, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 5
  %43 = or i32 %39, %36
  %44 = or i32 %43, %42
  %45 = trunc i32 %44 to i16
  store i16 %45, ptr %2, align 2
  %46 = shl nuw nsw i32 %31, 9
  %47 = shl i32 %34, 5
  %48 = or i32 %47, %46
  %49 = getelementptr inbounds %struct.tm, ptr %6, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %48, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr %3, align 2
  %53 = icmp eq ptr %4, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %30
  %55 = load i64, ptr %1, align 8
  %56 = and i64 %55, 1
  %57 = mul nuw nsw i64 %56, 100
  %58 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %59 = load i32, ptr %58, align 8
  %60 = sdiv i32 %59, 10000000
  %61 = zext i32 %60 to i64
  %62 = add nuw nsw i64 %57, %61
  %63 = trunc i64 %62 to i8
  br label %64

64:                                               ; preds = %54, %28, %24
  %65 = phi i8 [ %63, %54 ], [ 0, %24 ], [ -57, %28 ]
  store i8 %65, ptr %4, align 1
  br label %66

66:                                               ; preds = %64, %30, %28, %24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_truncate_time(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #6 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %92, label %13

13:                                               ; preds = %3
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %0) #9
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi ptr [ %4, %15 ], [ %1, %13 ]
  %18 = and i32 %2, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %17, align 8
  %22 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 12
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 2048
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 0, %28
  br label %32

30:                                               ; preds = %20
  %31 = load i32, ptr @sys_tz, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %29, %26 ], [ %31, %30 ]
  %34 = mul i32 %33, 60
  %35 = sext i32 %34 to i64
  %36 = sub i64 %21, %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %37 = call i64 @div_s64_rem(i64 noundef %36, i32 noundef 86400, ptr noundef nonnull %5) #9
  %38 = load i16, ptr %22, align 4
  %39 = and i16 %38, 2048
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 0, %43
  br label %47

45:                                               ; preds = %32
  %46 = load i32, ptr @sys_tz, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  %49 = mul i32 %48, 60
  %50 = sext i32 %49 to i64
  %51 = add i64 %36, %50
  %52 = load i32, ptr %5, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 %51, %53
  %55 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  store i64 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, i32 1
  store i32 0, ptr %56, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %57

57:                                               ; preds = %47, %16
  %58 = and i32 %2, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 12
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 16
  %64 = icmp eq i16 %63, 0
  %65 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %66 = load i64, ptr %17, align 8
  br i1 %64, label %81, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds [2 x i64], ptr %17, i32 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = urem i32 %70, 10000000
  %74 = sub i32 %70, %73
  %75 = zext i32 %74 to i64
  %76 = and i64 %69, -4294967296
  %77 = or i64 %76, %75
  br label %78

78:                                               ; preds = %72, %67
  %79 = phi i64 [ %77, %72 ], [ %69, %67 ]
  store i64 %66, ptr %65, align 8
  %80 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16, i32 1
  store i64 %79, ptr %80, align 8
  br label %84

81:                                               ; preds = %60
  %82 = and i64 %66, -2
  store i64 %82, ptr %65, align 8
  %83 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16, i32 1
  store i32 0, ptr %83, align 8
  br label %84

84:                                               ; preds = %81, %78, %57
  %85 = and i32 %2, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %89 = load i64, ptr %17, align 8
  %90 = and i64 %89, -2
  store i64 %90, ptr %88, align 8
  %91 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, i32 1
  store i32 0, ptr %91, align 8
  br label %92

92:                                               ; preds = %87, %84, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_update_time(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = and i32 %2, 7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @fat_truncate_time(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 33554432
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 1, i32 2048
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i32 [ 0, %7 ], [ %18, %10 ]
  %21 = and i32 %2, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %24 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %25 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %24, ptr elementtype(i64) %24) #9, !srcloc !10
  br label %26

26:                                               ; preds = %37, %23
  %27 = phi i64 [ %25, %23 ], [ %38, %37 ]
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = add i64 %27, 2
  %32 = and i64 %31, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #9, !srcloc !12
  br label %33

33:                                               ; preds = %33, %30
  %34 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %24, ptr %24, i64 %27, i64 %32, ptr elementtype(i64) %24) #9, !srcloc !13
  %35 = extractvalue { i32, i64 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %33

37:                                               ; preds = %33
  %38 = extractvalue { i32, i64 } %34, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %39 = icmp eq i64 %38, %27
  br i1 %39, label %40, label %26, !prof !15

40:                                               ; preds = %37, %26
  %41 = xor i1 %29, true
  %42 = zext i1 %41 to i32
  %43 = or i32 %20, %42
  br label %44

44:                                               ; preds = %40, %19
  %45 = phi i32 [ %20, %19 ], [ %43, %40 ]
  tail call void @__mark_inode_dirty(ptr noundef %0, i32 noundef %45) #9
  br label %46

46:                                               ; preds = %44, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_sync_bhs(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %5, label %32

4:                                                ; preds = %5
  br i1 %3, label %11, label %32

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %9, %5 ], [ 0, %2 ]
  %7 = getelementptr ptr, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call void @write_dirty_buffer(ptr noundef %8, i32 noundef 0) #9
  %9 = add nuw nsw i32 %6, 1
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %4, label %5

11:                                               ; preds = %28, %4
  %12 = phi i32 [ %29, %28 ], [ 0, %4 ]
  %13 = phi i32 [ %30, %28 ], [ 0, %4 ]
  %14 = getelementptr ptr, ptr %0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call void @__wait_on_buffer(ptr noundef %15) #9
  br label %20

20:                                               ; preds = %19, %11
  %21 = icmp eq i32 %12, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load ptr, ptr %14, align 4
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 -5, i32 0
  br label %28

28:                                               ; preds = %22, %20
  %29 = phi i32 [ %12, %20 ], [ %27, %22 ]
  %30 = add nuw nsw i32 %13, 1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %32, label %11

32:                                               ; preds = %28, %4, %2
  %33 = phi i32 [ 0, %4 ], [ 0, %2 ], [ %29, %28 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { cold nounwind }

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
!9 = !{i64 2152571455}
!10 = !{i64 854357, i64 854378}
!11 = !{i64 2148524574}
!12 = !{i64 864743, i64 2148354714, i64 2148354740, i64 2148354787, i64 2148354809, i64 2148354837, i64 2148354857}
!13 = !{i64 857972, i64 857998, i64 858026, i64 858044, i64 858062, i64 858084}
!14 = !{i64 2148524776}
!15 = !{!"branch_weights", i32 2000, i32 1}
