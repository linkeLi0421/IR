; ModuleID = '/llk/IR/fs/fat/dir.c_pt.bc'
source_filename = "../fs/fat/dir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_search_long:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_search_long\22\09\09\09\09\09"
module asm "__kstrtabns_fat_search_long:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_get_dotdot_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_get_dotdot_entry\22\09\09\09\09\09"
module asm "__kstrtabns_fat_get_dotdot_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_dir_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_dir_empty\22\09\09\09\09\09"
module asm "__kstrtabns_fat_dir_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_scan\22\09\09\09\09\09"
module asm "__kstrtabns_fat_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_remove_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_remove_entries\22\09\09\09\09\09"
module asm "__kstrtabns_fat_remove_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_alloc_new_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_alloc_new_dir\22\09\09\09\09\09"
module asm "__kstrtabns_fat_alloc_new_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_add_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_add_entries\22\09\09\09\09\09"
module asm "__kstrtabns_fat_add_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
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
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.65 = type { ptr }
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
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fat_slot_info = type { i64, i64, i32, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.msdos_dir_slot = type { i8, [10 x i8], i8, i8, i8, [12 x i8], i16, [4 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fat_ioctl_filldir_callback = type { %struct.dir_context, ptr, i32, ptr, i32, ptr, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.__fat_dirent = type { i32, i32, i16, [256 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }

@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_fat_search_long = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_search_long = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_search_long = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_search_long to i32), ptr @__kstrtab_fat_search_long, ptr @__kstrtabns_fat_search_long }, section "___ksymtab_gpl+fat_search_long", align 4
@fat_dir_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fat_readdir, ptr null, ptr @fat_dir_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @fat_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [12 x i8] c"..         \00", align 1
@__kstrtab_fat_get_dotdot_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_get_dotdot_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_get_dotdot_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_get_dotdot_entry to i32), ptr @__kstrtab_fat_get_dotdot_entry, ptr @__kstrtabns_fat_get_dotdot_entry }, section "___ksymtab_gpl+fat_get_dotdot_entry", align 4
@.str.1 = private unnamed_addr constant [12 x i8] c".          \00", align 1
@__kstrtab_fat_dir_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_dir_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_dir_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_dir_empty to i32), ptr @__kstrtab_fat_dir_empty, ptr @__kstrtabns_fat_dir_empty }, section "___ksymtab_gpl+fat_dir_empty", align 4
@__kstrtab_fat_scan = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_scan = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_scan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_scan to i32), ptr @__kstrtab_fat_scan, ptr @__kstrtabns_fat_scan }, section "___ksymtab_gpl+fat_scan", align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Couldn't remove the long name slots\00", align 1
@__kstrtab_fat_remove_entries = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_remove_entries = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_remove_entries = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_remove_entries to i32), ptr @__kstrtab_fat_remove_entries, ptr @__kstrtabns_fat_remove_entries }, section "___ksymtab_gpl+fat_remove_entries", align 4
@__kstrtab_fat_alloc_new_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_alloc_new_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_alloc_new_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_alloc_new_dir to i32), ptr @__kstrtab_fat_alloc_new_dir, ptr @__kstrtabns_fat_alloc_new_dir }, section "___ksymtab_gpl+fat_alloc_new_dir", align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Corrupted directory (i_pos %lld)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Odd directory size\00", align 1
@__kstrtab_fat_add_entries = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_add_entries = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_add_entries = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_add_entries to i32), ptr @__kstrtab_fat_add_entries, ptr @__kstrtabns_fat_add_entries }, section "___ksymtab_gpl+fat_add_entries", align 4
@__func__.fat__get_entry = private unnamed_addr constant [15 x i8] c"fat__get_entry\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Directory bread(block %llu) failed\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"filename was truncated while converting.\00", align 1
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_fat_add_entries, ptr @__ksymtab_fat_alloc_new_dir, ptr @__ksymtab_fat_dir_empty, ptr @__ksymtab_fat_get_dotdot_entry, ptr @__ksymtab_fat_remove_entries, ptr @__ksymtab_fat_scan, ptr @__ksymtab_fat_search_long], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_search_long(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca [73 x i8], align 1
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(73) %9, i8 0, i32 73, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  store i64 0, ptr %10, align 8
  %15 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %222, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 19, i32 8
  %19 = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 21
  br label %20

20:                                               ; preds = %38, %17
  store i8 0, ptr %7, align 1
  %21 = load ptr, ptr %6, align 4
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, -27
  br i1 %23, label %190, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.msdos_dir_entry, ptr %21, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 15
  %28 = and i8 %26, 8
  %29 = icmp eq i8 %28, 0
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %190

31:                                               ; preds = %24
  br i1 %27, label %34, label %32

32:                                               ; preds = %31
  %33 = icmp eq i8 %22, 0
  br i1 %33, label %190, label %41

34:                                               ; preds = %31
  %35 = call fastcc i32 @fat_parse_long(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %222, label %37

37:                                               ; preds = %34
  switch i32 %35, label %39 [
    i32 1, label %190
    i32 2, label %38
    i32 3, label %222
  ]

38:                                               ; preds = %190, %37
  br label %20

39:                                               ; preds = %37
  %40 = load ptr, ptr %6, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi ptr [ %40, %39 ], [ %21, %32 ]
  %43 = call fastcc i32 @fat_parse_short(ptr noundef %12, ptr noundef %42, ptr noundef nonnull %9, i32 noundef 0)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %190, label %45

45:                                               ; preds = %41
  %46 = icmp eq i32 %43, %2
  br i1 %46, label %47, label %79

47:                                               ; preds = %45
  %48 = load i8, ptr %18, align 2
  %49 = icmp eq i8 %48, 115
  br i1 %49, label %76, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %19, align 4
  %52 = getelementptr inbounds %struct.nls_table, ptr %51, i32 0, i32 4
  br label %53

53:                                               ; preds = %58, %50
  %54 = phi ptr [ %1, %50 ], [ %60, %58 ]
  %55 = phi ptr [ %9, %50 ], [ %68, %58 ]
  %56 = phi i32 [ %2, %50 ], [ %59, %58 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %193, label %58

58:                                               ; preds = %53
  %59 = add i32 %56, -1
  %60 = getelementptr i8, ptr %54, i32 1
  %61 = load i8, ptr %54, align 1
  %62 = load ptr, ptr %52, align 4
  %63 = zext i8 %61 to i32
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, i8 %61, i8 %65
  %68 = getelementptr i8, ptr %55, i32 1
  %69 = load i8, ptr %55, align 1
  %70 = zext i8 %69 to i32
  %71 = getelementptr i8, ptr %62, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, i8 %69, i8 %72
  %75 = icmp eq i8 %67, %74
  br i1 %75, label %53, label %79

76:                                               ; preds = %47
  %77 = call i32 @bcmp(ptr %1, ptr nonnull %9, i32 %2) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %193, label %79

79:                                               ; preds = %76, %58, %45
  %80 = load i8, ptr %7, align 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %190, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %8, align 4
  %84 = getelementptr i16, ptr %83, i32 261
  %85 = load ptr, ptr %13, align 4
  %86 = getelementptr inbounds %struct.msdos_sb_info, ptr %85, i32 0, i32 19, i32 12
  %87 = load i16, ptr %86, align 4
  %88 = and i16 %87, 32
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %82
  %91 = call i32 @utf16s_to_utf8s(ptr noundef %83, i32 noundef 261, i32 noundef 0, ptr noundef %84, i32 noundef 3574) #12
  br label %155

92:                                               ; preds = %82
  %93 = load i16, ptr %83, align 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %150, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.msdos_sb_info, ptr %85, i32 0, i32 21
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nls_table, ptr %97, i32 0, i32 2
  %99 = and i16 %87, 64
  %100 = icmp eq i16 %99, 0
  br label %101

101:                                              ; preds = %139, %95
  %102 = phi i16 [ %93, %95 ], [ %142, %139 ]
  %103 = phi ptr [ %84, %95 ], [ %141, %139 ]
  %104 = phi ptr [ %83, %95 ], [ %106, %139 ]
  %105 = phi i32 [ 3574, %95 ], [ %140, %139 ]
  %106 = getelementptr i16, ptr %104, i32 1
  %107 = load ptr, ptr %98, align 4
  %108 = call i32 %107(i16 noundef zeroext %102, ptr noundef %103, i32 noundef 6) #12
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = getelementptr i8, ptr %103, i32 %108
  %112 = sub i32 %105, %108
  br label %139

113:                                              ; preds = %101
  %114 = getelementptr i8, ptr %103, i32 1
  br i1 %100, label %137, label %115

115:                                              ; preds = %113
  store i8 58, ptr %103, align 1
  %116 = lshr i16 %102, 8
  %117 = zext i16 %116 to i32
  %118 = lshr i32 %117, 4
  %119 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %118
  %120 = load i8, ptr %119, align 1
  %121 = getelementptr i8, ptr %103, i32 2
  store i8 %120, ptr %114, align 1
  %122 = and i32 %117, 15
  %123 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %122
  %124 = load i8, ptr %123, align 1
  %125 = getelementptr i8, ptr %103, i32 3
  store i8 %124, ptr %121, align 1
  %126 = and i16 %102, 255
  %127 = zext i16 %126 to i32
  %128 = lshr i32 %127, 4
  %129 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %128
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr i8, ptr %103, i32 4
  store i8 %130, ptr %125, align 1
  %132 = and i32 %127, 15
  %133 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %132
  %134 = load i8, ptr %133, align 1
  %135 = getelementptr i8, ptr %103, i32 5
  store i8 %134, ptr %131, align 1
  %136 = add i32 %105, -5
  br label %139

137:                                              ; preds = %113
  store i8 63, ptr %103, align 1
  %138 = add i32 %105, -1
  br label %139

139:                                              ; preds = %137, %115, %110
  %140 = phi i32 [ %112, %110 ], [ %136, %115 ], [ %138, %137 ]
  %141 = phi ptr [ %111, %110 ], [ %135, %115 ], [ %114, %137 ]
  %142 = load i16, ptr %106, align 2
  %143 = icmp ne i16 %142, 0
  %144 = add i32 %140, -6
  %145 = icmp sgt i32 %144, 0
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %101, label %147

147:                                              ; preds = %139
  %148 = icmp eq i16 %142, 0
  br i1 %148, label %150, label %149, !prof !9

149:                                              ; preds = %147
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #13
  br label %150

150:                                              ; preds = %149, %147, %92
  %151 = phi ptr [ %141, %149 ], [ %141, %147 ], [ %84, %92 ]
  store i8 0, ptr %151, align 1
  %152 = ptrtoint ptr %151 to i32
  %153 = ptrtoint ptr %84 to i32
  %154 = sub i32 %152, %153
  br label %155

155:                                              ; preds = %150, %90
  %156 = phi i32 [ %91, %90 ], [ %154, %150 ]
  %157 = icmp eq i32 %156, %2
  br i1 %157, label %158, label %190

158:                                              ; preds = %155
  %159 = load i8, ptr %18, align 2
  %160 = icmp eq i8 %159, 115
  br i1 %160, label %187, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %19, align 4
  %163 = getelementptr inbounds %struct.nls_table, ptr %162, i32 0, i32 4
  br label %164

164:                                              ; preds = %169, %161
  %165 = phi ptr [ %1, %161 ], [ %171, %169 ]
  %166 = phi ptr [ %84, %161 ], [ %179, %169 ]
  %167 = phi i32 [ %2, %161 ], [ %170, %169 ]
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %193, label %169

169:                                              ; preds = %164
  %170 = add i32 %167, -1
  %171 = getelementptr i8, ptr %165, i32 1
  %172 = load i8, ptr %165, align 1
  %173 = load ptr, ptr %163, align 4
  %174 = zext i8 %172 to i32
  %175 = getelementptr i8, ptr %173, i32 %174
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, 0
  %178 = select i1 %177, i8 %172, i8 %176
  %179 = getelementptr i8, ptr %166, i32 1
  %180 = load i8, ptr %166, align 1
  %181 = zext i8 %180 to i32
  %182 = getelementptr i8, ptr %173, i32 %181
  %183 = load i8, ptr %182, align 1
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %184, i8 %180, i8 %183
  %186 = icmp eq i8 %178, %185
  br i1 %186, label %164, label %190

187:                                              ; preds = %158
  %188 = call i32 @bcmp(ptr %1, ptr %84, i32 %2) #12
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187, %169, %155, %79, %41, %37, %32, %24, %20
  %191 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %222, label %38

193:                                              ; preds = %187, %164, %76, %53
  %194 = load i8, ptr %7, align 1
  %195 = add i8 %194, 1
  store i8 %195, ptr %7, align 1
  %196 = load i64, ptr %10, align 8
  %197 = zext i8 %195 to i32
  %198 = shl nuw nsw i32 %197, 5
  %199 = zext i32 %198 to i64
  %200 = sub i64 %196, %199
  %201 = getelementptr inbounds %struct.fat_slot_info, ptr %3, i32 0, i32 1
  store i64 %200, ptr %201, align 8
  %202 = getelementptr inbounds %struct.fat_slot_info, ptr %3, i32 0, i32 2
  store i32 %197, ptr %202, align 8
  %203 = load ptr, ptr %6, align 4
  %204 = getelementptr inbounds %struct.fat_slot_info, ptr %3, i32 0, i32 3
  store ptr %203, ptr %204, align 4
  %205 = load ptr, ptr %5, align 4
  %206 = getelementptr inbounds %struct.fat_slot_info, ptr %3, i32 0, i32 4
  store ptr %205, ptr %206, align 8
  %207 = getelementptr inbounds %struct.buffer_head, ptr %205, i32 0, i32 3
  %208 = load i64, ptr %207, align 8
  %209 = load ptr, ptr %13, align 4
  %210 = getelementptr inbounds %struct.msdos_sb_info, ptr %209, i32 0, i32 24
  %211 = load i32, ptr %210, align 4
  %212 = zext i32 %211 to i64
  %213 = shl i64 %208, %212
  %214 = getelementptr inbounds %struct.buffer_head, ptr %205, i32 0, i32 5
  %215 = load ptr, ptr %214, align 4
  %216 = ptrtoint ptr %203 to i32
  %217 = ptrtoint ptr %215 to i32
  %218 = sub i32 %216, %217
  %219 = ashr exact i32 %218, 5
  %220 = sext i32 %219 to i64
  %221 = or i64 %213, %220
  store i64 %221, ptr %3, align 8
  br label %222

222:                                              ; preds = %193, %190, %37, %34, %4
  %223 = phi i32 [ 0, %193 ], [ -2, %4 ], [ -2, %190 ], [ -2, %37 ], [ %35, %34 ]
  %224 = load ptr, ptr %8, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %222
  %227 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %227, ptr noundef nonnull %224) #12
  br label %228

228:                                              ; preds = %226, %222
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %223
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fat_get_entry(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #3 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %10 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = ashr exact i32 %17, 5
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msdos_sb_info, ptr %22, i32 0, i32 23
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  %26 = icmp slt i32 %18, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %12
  %28 = load i64, ptr %1, align 8
  %29 = add i64 %28, 32
  store i64 %29, ptr %1, align 8
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr %struct.msdos_dir_entry, ptr %30, i32 1
  store ptr %31, ptr %3, align 4
  br label %131

32:                                               ; preds = %12, %9, %4
  %33 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %37 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 20
  %38 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 3
  %39 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 27
  br label %40

40:                                               ; preds = %112, %32
  %41 = phi ptr [ %117, %112 ], [ %7, %32 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  call void @__brelse(ptr noundef nonnull %41) #12
  br label %44

44:                                               ; preds = %43, %40
  store ptr null, ptr %2, align 4
  %45 = load i64, ptr %1, align 8
  %46 = load i8, ptr %35, align 4
  %47 = zext i8 %46 to i64
  %48 = ashr i64 %45, %47
  %49 = call i32 @fat_bmap(ptr noundef %0, i64 noundef %48, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0, i1 noundef zeroext false) #12
  %50 = icmp eq i32 %49, 0
  %51 = load i64, ptr %5, align 8
  %52 = icmp ne i64 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %129

54:                                               ; preds = %44
  %55 = load ptr, ptr %33, align 4
  %56 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 27
  %57 = load ptr, ptr %56, align 4
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = add nsw i32 %59, -1
  %61 = sext i32 %60 to i64
  %62 = and i64 %48, %61
  %63 = icmp ne i64 %62, 0
  %64 = icmp eq i16 %58, 1
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %99, label %66

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.msdos_sb_info, ptr %57, i32 0, i32 4
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 32
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %36, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %99, label %73

73:                                               ; preds = %70, %66
  %74 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 20
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 3
  %77 = load i32, ptr %76, align 16
  %78 = call ptr @__find_get_block(ptr noundef %75, i64 noundef %51, i32 noundef %77) #12
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = load volatile i32, ptr %78, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %80, %73
  %85 = load i16, ptr %57, align 4
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %87, %84
  %88 = phi i32 [ %93, %87 ], [ 0, %84 ]
  %89 = zext i32 %88 to i64
  %90 = add i64 %51, %89
  %91 = load ptr, ptr %74, align 4
  %92 = load i32, ptr %76, align 16
  call void @__breadahead(ptr noundef %91, i64 noundef %90, i32 noundef %92) #12
  %93 = add nuw nsw i32 %88, 1
  %94 = load i16, ptr %57, align 4
  %95 = zext i16 %94 to i32
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %87, label %97

97:                                               ; preds = %87, %84
  br i1 %79, label %99, label %98

98:                                               ; preds = %97, %80
  call void @__brelse(ptr noundef nonnull %78) #12
  br label %99

99:                                               ; preds = %98, %97, %70, %54
  %100 = load i64, ptr %5, align 8
  %101 = load ptr, ptr %37, align 4
  %102 = load i32, ptr %38, align 16
  %103 = call ptr @__bread_gfp(ptr noundef %101, i64 noundef %100, i32 noundef %102, i32 noundef 8) #12
  store ptr %103, ptr %2, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load ptr, ptr %39, align 4
  %107 = getelementptr inbounds %struct.msdos_sb_info, ptr %106, i32 0, i32 30
  %108 = call i32 @___ratelimit(ptr noundef %107, ptr noundef nonnull @__func__.fat__get_entry) #12
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = load i64, ptr %5, align 8
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %34, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i64 noundef %111) #13
  br label %112

112:                                              ; preds = %110, %105
  %113 = add i64 %48, 1
  %114 = load i8, ptr %35, align 4
  %115 = zext i8 %114 to i64
  %116 = shl i64 %113, %115
  store i64 %116, ptr %1, align 8
  %117 = load ptr, ptr %2, align 4
  br label %40

118:                                              ; preds = %99
  %119 = load i64, ptr %1, align 8
  %120 = load i32, ptr %38, align 16
  %121 = add i32 %120, -1
  %122 = trunc i64 %119 to i32
  %123 = and i32 %121, %122
  %124 = add i64 %119, 32
  store i64 %124, ptr %1, align 8
  %125 = load ptr, ptr %2, align 4
  %126 = getelementptr inbounds %struct.buffer_head, ptr %125, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 %123
  store ptr %128, ptr %3, align 4
  br label %129

129:                                              ; preds = %118, %44
  %130 = phi i32 [ 0, %118 ], [ -1, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %131

131:                                              ; preds = %129, %27
  %132 = phi i32 [ 0, %27 ], [ %130, %129 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fat_parse_long(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load ptr, ptr @names_cachep, align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef 3264) #12
  store ptr %11, ptr %4, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %94, label %16

16:                                               ; preds = %13
  tail call void @__brelse(ptr noundef nonnull %14) #12
  br label %94

17:                                               ; preds = %9, %6
  %18 = load ptr, ptr %3, align 4
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, 64
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %94, label %22

22:                                               ; preds = %81, %17
  %23 = phi i8 [ %82, %81 ], [ %19, %17 ]
  %24 = phi ptr [ %61, %81 ], [ %18, %17 ]
  %25 = and i8 %23, -65
  %26 = add i8 %25, -1
  %27 = icmp ult i8 %26, 20
  br i1 %27, label %28, label %94

28:                                               ; preds = %22
  store i8 %25, ptr %5, align 1
  %29 = getelementptr inbounds %struct.msdos_dir_slot, ptr %24, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  br label %31

31:                                               ; preds = %70, %28
  %32 = phi ptr [ %24, %28 ], [ %61, %70 ]
  %33 = phi i8 [ %25, %28 ], [ %34, %70 ]
  %34 = add i8 %33, -1
  %35 = zext i8 %34 to i32
  %36 = mul nuw nsw i32 %35, 13
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i16, ptr %37, i32 %36
  %39 = getelementptr inbounds %struct.msdos_dir_slot, ptr %32, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(10) %38, ptr noundef align 1 dereferenceable(10) %39, i32 10, i1 false) #12
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i16, ptr %40, i32 5
  %42 = getelementptr i16, ptr %41, i32 %36
  %43 = getelementptr inbounds %struct.msdos_dir_slot, ptr %32, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(12) %42, ptr noundef align 1 dereferenceable(12) %43, i32 12, i1 false) #12
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr i16, ptr %44, i32 11
  %46 = getelementptr i16, ptr %45, i32 %36
  %47 = getelementptr inbounds %struct.msdos_dir_slot, ptr %32, i32 0, i32 7
  %48 = load i32, ptr %47, align 1
  store i32 %48, ptr %46, align 2
  %49 = load i8, ptr %32, align 2
  %50 = and i8 %49, 64
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %31
  %53 = load ptr, ptr %4, align 4
  %54 = add nuw nsw i32 %36, 13
  %55 = getelementptr i16, ptr %53, i32 %54
  store i16 0, ptr %55, align 2
  br label %56

56:                                               ; preds = %52, %31
  %57 = tail call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %56
  %60 = icmp eq i8 %34, 0
  %61 = load ptr, ptr %3, align 4
  br i1 %60, label %74, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.msdos_dir_slot, ptr %61, i32 0, i32 2
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 15
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load i8, ptr %61, align 2
  %68 = and i8 %67, -65
  %69 = icmp eq i8 %68, %34
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.msdos_dir_slot, ptr %61, i32 0, i32 4
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, %30
  br i1 %73, label %31, label %81

74:                                               ; preds = %59
  %75 = load i8, ptr %61, align 4
  %76 = icmp eq i8 %75, -27
  br i1 %76, label %94, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.msdos_dir_entry, ptr %61, i32 0, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 15
  br i1 %80, label %81, label %85

81:                                               ; preds = %77, %70, %66
  %82 = phi i8 [ %75, %77 ], [ %67, %66 ], [ %67, %70 ]
  %83 = and i8 %82, 64
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %94, label %22

85:                                               ; preds = %77
  %86 = icmp ne i8 %75, 0
  %87 = and i8 %79, 8
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = tail call fastcc zeroext i8 @fat_checksum(ptr noundef %61)
  %92 = icmp eq i8 %91, %30
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store i8 0, ptr %5, align 1
  br label %94

94:                                               ; preds = %93, %90, %85, %81, %74, %62, %56, %22, %17, %16, %13
  %95 = phi i32 [ 1, %85 ], [ 0, %93 ], [ 0, %90 ], [ -12, %13 ], [ -12, %16 ], [ 1, %17 ], [ 3, %56 ], [ 2, %62 ], [ 1, %74 ], [ 1, %22 ], [ 1, %81 ]
  ret i32 %95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fat_parse_short(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [14 x i16], align 2
  %6 = alloca [11 x i8], align 1
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 19, i32 12
  %10 = load i16, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 19, i32 7
  %12 = load i16, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msdos_sb_info, ptr %8, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #12
  %15 = and i16 %10, 16
  %16 = icmp eq i16 %15, 0
  %17 = icmp ne i32 %3, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %2, i32 1
  store i8 46, ptr %2, align 1
  br label %26

26:                                               ; preds = %24, %19, %4
  %27 = phi i32 [ 1, %24 ], [ 0, %19 ], [ 0, %4 ]
  %28 = phi ptr [ %25, %24 ], [ %2, %19 ], [ %2, %4 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %6, ptr noundef align 4 dereferenceable(11) %1, i32 11, i1 false)
  %29 = load i8, ptr %6, align 1
  %30 = icmp eq i8 %29, 5
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8 -27, ptr %6, align 1
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i8 [ -27, %31 ], [ %29, %26 ]
  %34 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 2
  %35 = and i16 %10, 512
  %36 = icmp eq i16 %35, 0
  %37 = icmp eq i8 %33, 0
  br i1 %37, label %88, label %38

38:                                               ; preds = %83, %32
  %39 = phi ptr [ %86, %83 ], [ %6, %32 ]
  %40 = phi i32 [ %79, %83 ], [ 0, %32 ]
  %41 = phi i32 [ %46, %83 ], [ 0, %32 ]
  %42 = phi i32 [ %80, %83 ], [ 0, %32 ]
  %43 = phi i32 [ %81, %83 ], [ 0, %32 ]
  %44 = phi i8 [ %85, %83 ], [ %33, %32 ]
  %45 = sub i32 8, %40
  %46 = add i32 %41, 1
  %47 = getelementptr [14 x i16], ptr %5, i32 0, i32 %41
  %48 = load i8, ptr %34, align 4
  %49 = and i8 %48, 8
  %50 = zext i8 %49 to i32
  %51 = call fastcc i32 @fat_shortname2uni(ptr noundef %14, ptr noundef %39, i32 noundef %45, ptr noundef %47, i16 noundef zeroext %12, i32 noundef %50)
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %66

53:                                               ; preds = %38
  br i1 %16, label %54, label %61

54:                                               ; preds = %53
  %55 = add i8 %44, -65
  %56 = icmp ult i8 %55, 26
  %57 = add i8 %44, 32
  %58 = select i1 %36, i1 %56, i1 false
  %59 = select i1 %58, i8 %57, i8 %44
  %60 = getelementptr i8, ptr %28, i32 %40
  store i8 %59, ptr %60, align 1
  br label %61

61:                                               ; preds = %54, %53
  %62 = add nsw i32 %40, 1
  %63 = icmp eq i8 %44, 32
  %64 = select i1 %63, i32 %42, i32 %62
  %65 = select i1 %63, i32 %43, i32 %46
  br label %78

66:                                               ; preds = %38
  br i1 %16, label %67, label %75

67:                                               ; preds = %66
  %68 = getelementptr i8, ptr %28, i32 %40
  %69 = add nsw i32 %51, -1
  %70 = sub i32 7, %40
  %71 = call i32 @llvm.umin.i32(i32 %70, i32 %69)
  %72 = add nuw nsw i32 %71, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 1 %39, i32 %72, i1 false)
  %73 = add nsw i32 %40, 1
  %74 = add i32 %73, %71
  br label %78

75:                                               ; preds = %66
  %76 = call i32 @llvm.smin.i32(i32 %51, i32 %45)
  %77 = add i32 %76, %40
  br label %78

78:                                               ; preds = %75, %67, %61
  %79 = phi i32 [ %62, %61 ], [ %77, %75 ], [ %74, %67 ]
  %80 = phi i32 [ %64, %61 ], [ %77, %75 ], [ %74, %67 ]
  %81 = phi i32 [ %65, %61 ], [ %46, %75 ], [ %46, %67 ]
  %82 = icmp slt i32 %79, 8
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr [11 x i8], ptr %6, i32 0, i32 %79
  %85 = load i8, ptr %84, align 1
  %86 = getelementptr [11 x i8], ptr %6, i32 0, i32 %79
  %87 = icmp eq i8 %85, 0
  br i1 %87, label %88, label %38

88:                                               ; preds = %83, %78, %32
  %89 = phi i32 [ 0, %32 ], [ %80, %83 ], [ %80, %78 ]
  %90 = phi i32 [ 0, %32 ], [ %81, %83 ], [ %81, %78 ]
  %91 = add i32 %90, 1
  %92 = getelementptr [14 x i16], ptr %5, i32 0, i32 %90
  %93 = getelementptr inbounds %struct.nls_table, ptr %14, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 %94(ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %92) #12
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i16 63, ptr %92, align 2
  br label %98

98:                                               ; preds = %97, %88
  br i1 %16, label %99, label %101

99:                                               ; preds = %98
  %100 = getelementptr i8, ptr %28, i32 %89
  store i8 46, ptr %100, align 1
  br label %101

101:                                              ; preds = %99, %98
  %102 = add i32 %89, 1
  br label %103

103:                                              ; preds = %150, %101
  %104 = phi i32 [ %90, %101 ], [ %154, %150 ]
  %105 = phi i32 [ %89, %101 ], [ %153, %150 ]
  %106 = phi i32 [ 8, %101 ], [ %152, %150 ]
  %107 = phi i32 [ %91, %101 ], [ %114, %150 ]
  %108 = phi i32 [ %102, %101 ], [ %151, %150 ]
  %109 = getelementptr [11 x i8], ptr %6, i32 0, i32 %106
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %156, label %112

112:                                              ; preds = %103
  %113 = sub i32 11, %106
  %114 = add i32 %107, 1
  %115 = getelementptr [14 x i16], ptr %5, i32 0, i32 %107
  %116 = load i8, ptr %34, align 4
  %117 = and i8 %116, 16
  %118 = zext i8 %117 to i32
  %119 = call fastcc i32 @fat_shortname2uni(ptr noundef %14, ptr noundef %109, i32 noundef %113, ptr noundef %115, i16 noundef zeroext %12, i32 noundef %118)
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %121, label %135

121:                                              ; preds = %112
  %122 = add nsw i32 %106, 1
  br i1 %16, label %123, label %130

123:                                              ; preds = %121
  %124 = add i8 %110, -65
  %125 = icmp ult i8 %124, 26
  %126 = add i8 %110, 32
  %127 = select i1 %36, i1 %125, i1 false
  %128 = select i1 %127, i8 %126, i8 %110
  %129 = getelementptr i8, ptr %28, i32 %108
  store i8 %128, ptr %129, align 1
  br label %130

130:                                              ; preds = %123, %121
  %131 = add i32 %108, 1
  %132 = icmp eq i8 %110, 32
  %133 = select i1 %132, i32 %105, i32 %131
  %134 = select i1 %132, i32 %104, i32 %114
  br label %150

135:                                              ; preds = %112
  br i1 %16, label %136, label %146

136:                                              ; preds = %135
  %137 = getelementptr i8, ptr %28, i32 %108
  %138 = add nsw i32 %119, -1
  %139 = sub i32 10, %106
  %140 = call i32 @llvm.umin.i32(i32 %139, i32 %138)
  %141 = add nuw nsw i32 %140, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %137, ptr align 1 %109, i32 %141, i1 false)
  %142 = add nsw i32 %106, 1
  %143 = add i32 %108, 1
  %144 = add i32 %143, %140
  %145 = add i32 %142, %140
  br label %150

146:                                              ; preds = %135
  %147 = call i32 @llvm.smin.i32(i32 %119, i32 %113)
  %148 = add i32 %147, %106
  %149 = add i32 %147, %108
  br label %150

150:                                              ; preds = %146, %136, %130
  %151 = phi i32 [ %131, %130 ], [ %149, %146 ], [ %144, %136 ]
  %152 = phi i32 [ %122, %130 ], [ %148, %146 ], [ %145, %136 ]
  %153 = phi i32 [ %133, %130 ], [ %149, %146 ], [ %144, %136 ]
  %154 = phi i32 [ %134, %130 ], [ %114, %146 ], [ %114, %136 ]
  %155 = icmp slt i32 %152, 11
  br i1 %155, label %103, label %156

156:                                              ; preds = %150, %103
  %157 = phi i32 [ %105, %103 ], [ %153, %150 ]
  %158 = phi i32 [ %104, %103 ], [ %154, %150 ]
  %159 = icmp sgt i32 %157, 0
  br i1 %159, label %160, label %237

160:                                              ; preds = %156
  %161 = add i32 %157, %27
  %162 = load i16, ptr %9, align 4
  %163 = and i16 %162, 16
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %237, label %165

165:                                              ; preds = %160
  %166 = getelementptr [14 x i16], ptr %5, i32 0, i32 %158
  store i16 0, ptr %166, align 2
  %167 = load ptr, ptr %7, align 4
  %168 = getelementptr inbounds %struct.msdos_sb_info, ptr %167, i32 0, i32 19, i32 12
  %169 = load i16, ptr %168, align 4
  %170 = and i16 %169, 32
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %165
  %173 = call i32 @utf16s_to_utf8s(ptr noundef nonnull %5, i32 noundef 261, i32 noundef 0, ptr noundef %2, i32 noundef 73) #12
  br label %237

174:                                              ; preds = %165
  %175 = load i16, ptr %5, align 2
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %232, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.msdos_sb_info, ptr %167, i32 0, i32 21
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.nls_table, ptr %179, i32 0, i32 2
  %181 = and i16 %169, 64
  %182 = icmp eq i16 %181, 0
  br label %183

183:                                              ; preds = %221, %177
  %184 = phi i16 [ %175, %177 ], [ %224, %221 ]
  %185 = phi ptr [ %2, %177 ], [ %223, %221 ]
  %186 = phi ptr [ %5, %177 ], [ %188, %221 ]
  %187 = phi i32 [ 73, %177 ], [ %222, %221 ]
  %188 = getelementptr i16, ptr %186, i32 1
  %189 = load ptr, ptr %180, align 4
  %190 = call i32 %189(i16 noundef zeroext %184, ptr noundef %185, i32 noundef 6) #12
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %183
  %193 = getelementptr i8, ptr %185, i32 %190
  %194 = sub i32 %187, %190
  br label %221

195:                                              ; preds = %183
  %196 = getelementptr i8, ptr %185, i32 1
  br i1 %182, label %219, label %197

197:                                              ; preds = %195
  store i8 58, ptr %185, align 1
  %198 = lshr i16 %184, 8
  %199 = zext i16 %198 to i32
  %200 = lshr i32 %199, 4
  %201 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %200
  %202 = load i8, ptr %201, align 1
  %203 = getelementptr i8, ptr %185, i32 2
  store i8 %202, ptr %196, align 1
  %204 = and i32 %199, 15
  %205 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %204
  %206 = load i8, ptr %205, align 1
  %207 = getelementptr i8, ptr %185, i32 3
  store i8 %206, ptr %203, align 1
  %208 = and i16 %184, 255
  %209 = zext i16 %208 to i32
  %210 = lshr i32 %209, 4
  %211 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %210
  %212 = load i8, ptr %211, align 1
  %213 = getelementptr i8, ptr %185, i32 4
  store i8 %212, ptr %207, align 1
  %214 = and i32 %209, 15
  %215 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %214
  %216 = load i8, ptr %215, align 1
  %217 = getelementptr i8, ptr %185, i32 5
  store i8 %216, ptr %213, align 1
  %218 = add i32 %187, -5
  br label %221

219:                                              ; preds = %195
  store i8 63, ptr %185, align 1
  %220 = add i32 %187, -1
  br label %221

221:                                              ; preds = %219, %197, %192
  %222 = phi i32 [ %194, %192 ], [ %218, %197 ], [ %220, %219 ]
  %223 = phi ptr [ %193, %192 ], [ %217, %197 ], [ %196, %219 ]
  %224 = load i16, ptr %188, align 2
  %225 = icmp ne i16 %224, 0
  %226 = add i32 %222, -6
  %227 = icmp sgt i32 %226, 0
  %228 = select i1 %225, i1 %227, i1 false
  br i1 %228, label %183, label %229

229:                                              ; preds = %221
  %230 = icmp eq i16 %224, 0
  br i1 %230, label %232, label %231, !prof !9

231:                                              ; preds = %229
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #13
  br label %232

232:                                              ; preds = %231, %229, %174
  %233 = phi ptr [ %223, %231 ], [ %223, %229 ], [ %2, %174 ]
  store i8 0, ptr %233, align 1
  %234 = ptrtoint ptr %233 to i32
  %235 = ptrtoint ptr %2 to i32
  %236 = sub i32 %234, %235
  br label %237

237:                                              ; preds = %232, %172, %160, %156
  %238 = phi i32 [ %161, %160 ], [ %157, %156 ], [ %173, %172 ], [ %236, %232 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i32 %238
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @__fat_readdir(ptr noundef %4, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_dir_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.fat_ioctl_filldir_callback, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = inttoptr i32 %2 to ptr
  switch i32 %1, label %9 [
    i32 -2112327166, label %11
    i32 -2112327167, label %8
  ]

8:                                                ; preds = %3
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @fat_generic_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #12
  br label %43

11:                                               ; preds = %8, %3
  %12 = phi i1 [ true, %3 ], [ false, %8 ]
  %13 = phi i32 [ 1, %3 ], [ 0, %8 ]
  %14 = getelementptr inbounds %struct.__fat_dirent, ptr %7, i32 0, i32 2
  %15 = tail call ptr @llvm.thread.pointer() #12
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #14, !srcloc !10
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %14, i16 0, i32 -1090519041) #12, !srcloc !13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false) #12
  store ptr @fat_ioctl_filldir, ptr %4, align 8
  %23 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %4, i32 0, i32 1
  store ptr %7, ptr %23, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_read(ptr noundef %24) #12
  %25 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.dir_context, ptr %4, i32 0, i32 1
  store i64 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  tail call void @up_read(ptr noundef %24) #12
  br label %41

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %4, i32 0, i32 2
  %35 = select i1 %12, ptr null, ptr %4
  %36 = call fastcc i32 @__fat_readdir(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %4, i32 noundef %13, ptr noundef %35) #12
  %37 = load i64, ptr %27, align 8
  store i64 %37, ptr %25, align 8
  call void @up_read(ptr noundef %24) #12
  %38 = load i32, ptr %34, align 4
  %39 = icmp slt i32 %36, 0
  %40 = select i1 %39, i32 %36, i32 %38
  br label %41

41:                                               ; preds = %33, %32
  %42 = phi i32 [ -2, %32 ], [ %40, %33 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %43

43:                                               ; preds = %41, %11, %9
  %44 = phi i32 [ %10, %9 ], [ %42, %41 ], [ -14, %11 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_get_dotdot_entry(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8
  store ptr null, ptr %2, align 4
  br label %5

5:                                                ; preds = %19, %3
  %6 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #12
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %22

8:                                                ; preds = %16, %5
  %9 = load ptr, ptr %2, align 4
  %10 = load i8, ptr %9, align 4
  switch i8 %10, label %11 [
    i8 0, label %16
    i8 -27, label %16
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.msdos_dir_entry, ptr %9, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %8, %8
  %17 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #12
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %8, label %22

19:                                               ; preds = %11
  %20 = tail call i32 @strncmp(ptr noundef %9, ptr noundef nonnull dereferenceable(12) @.str, i32 noundef 11)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %5

22:                                               ; preds = %19, %16, %5
  %23 = phi i32 [ -2, %16 ], [ -2, %5 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_dir_empty(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %2, align 4
  store i64 0, ptr %4, align 8
  %5 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %28

7:                                                ; preds = %18, %1
  %8 = load ptr, ptr %3, align 4
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %10 [
    i8 0, label %15
    i8 -27, label %15
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.msdos_dir_entry, ptr %8, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %7, %7
  %16 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %28

18:                                               ; preds = %25, %15
  br label %7

19:                                               ; preds = %10
  %20 = tail call i32 @strncmp(ptr noundef %8, ptr noundef nonnull dereferenceable(12) @.str.1, i32 noundef 11)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strncmp(ptr noundef %8, ptr noundef nonnull dereferenceable(12) @.str, i32 noundef 11)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %18, label %28

28:                                               ; preds = %25, %22, %15, %1
  %29 = phi i32 [ 0, %1 ], [ -39, %22 ], [ 0, %25 ], [ 0, %15 ]
  %30 = load ptr, ptr %2, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @__brelse(ptr noundef nonnull %30) #12
  br label %33

33:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_subdirs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %2, align 4
  store i64 0, ptr %4, align 8
  %5 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %27

7:                                                ; preds = %20, %1
  %8 = phi i32 [ %24, %20 ], [ 0, %1 ]
  br label %9

9:                                                ; preds = %17, %7
  %10 = load ptr, ptr %3, align 4
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %12 [
    i8 0, label %17
    i8 -27, label %17
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.msdos_dir_entry, ptr %10, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %9, %9
  %18 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %9, label %27

20:                                               ; preds = %12
  %21 = lshr i8 %14, 4
  %22 = and i8 %21, 1
  %23 = zext i8 %22 to i32
  %24 = add i32 %8, %23
  %25 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %7, label %27

27:                                               ; preds = %20, %17, %1
  %28 = phi i32 [ 0, %1 ], [ %8, %17 ], [ %24, %20 ]
  %29 = load ptr, ptr %2, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @__brelse(ptr noundef nonnull %29) #12
  br label %32

32:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_scan(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fat_slot_info, ptr %2, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.fat_slot_info, ptr %2, i32 0, i32 4
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %struct.fat_slot_info, ptr %2, i32 0, i32 3
  br label %9

9:                                                ; preds = %23, %3
  %10 = tail call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef %6, ptr noundef %7, ptr noundef %8) #12
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %47

12:                                               ; preds = %20, %9
  %13 = load ptr, ptr %8, align 4
  %14 = load i8, ptr %13, align 4
  switch i8 %14, label %15 [
    i8 0, label %20
    i8 -27, label %20
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.msdos_dir_entry, ptr %13, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %12, %12
  %21 = tail call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef %6, ptr noundef %7, ptr noundef %8) #12
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %12, label %47

23:                                               ; preds = %15
  %24 = tail call i32 @strncmp(ptr noundef %13, ptr noundef %1, i32 noundef 11)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %9

26:                                               ; preds = %23
  %27 = load i64, ptr %6, align 8
  %28 = add i64 %27, -32
  store i64 %28, ptr %6, align 8
  %29 = getelementptr inbounds %struct.fat_slot_info, ptr %2, i32 0, i32 2
  store i32 1, ptr %29, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 3
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.msdos_sb_info, ptr %34, i32 0, i32 24
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 %32, %37
  %39 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %13 to i32
  %42 = ptrtoint ptr %40 to i32
  %43 = sub i32 %41, %42
  %44 = ashr exact i32 %43, 5
  %45 = sext i32 %44 to i64
  %46 = or i64 %38, %45
  store i64 %46, ptr %2, align 8
  br label %47

47:                                               ; preds = %26, %20, %9
  %48 = phi i32 [ 0, %26 ], [ -2, %20 ], [ -2, %9 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_scan_logstart(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fat_slot_info, ptr %2, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.fat_slot_info, ptr %2, i32 0, i32 4
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %struct.fat_slot_info, ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  br label %10

10:                                               ; preds = %38, %3
  %11 = tail call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef %6, ptr noundef %7, ptr noundef %8) #12
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %61

13:                                               ; preds = %21, %10
  %14 = load ptr, ptr %8, align 4
  %15 = load i8, ptr %14, align 4
  switch i8 %15, label %16 [
    i8 0, label %21
    i8 -27, label %21
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.msdos_dir_entry, ptr %14, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %13, %13
  %22 = tail call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef %6, ptr noundef %7, ptr noundef %8) #12
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %13, label %61

24:                                               ; preds = %16
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr inbounds %struct.msdos_dir_entry, ptr %14, i32 0, i32 10
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.msdos_sb_info, ptr %25, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 32
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.msdos_dir_entry, ptr %14, i32 0, i32 7
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = shl nuw i32 %35, 16
  %37 = or i32 %36, %28
  br label %38

38:                                               ; preds = %32, %24
  %39 = phi i32 [ %37, %32 ], [ %28, %24 ]
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %10

41:                                               ; preds = %38
  %42 = load i64, ptr %6, align 8
  %43 = add i64 %42, -32
  store i64 %43, ptr %6, align 8
  %44 = getelementptr inbounds %struct.fat_slot_info, ptr %2, i32 0, i32 2
  store i32 1, ptr %44, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds %struct.buffer_head, ptr %45, i32 0, i32 3
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.msdos_sb_info, ptr %48, i32 0, i32 24
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 %47, %51
  %53 = getelementptr inbounds %struct.buffer_head, ptr %45, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = ptrtoint ptr %14 to i32
  %56 = ptrtoint ptr %54 to i32
  %57 = sub i32 %55, %56
  %58 = ashr exact i32 %57, 5
  %59 = sext i32 %58 to i64
  %60 = or i64 %52, %59
  store i64 %60, ptr %2, align 8
  br label %61

61:                                               ; preds = %41, %21, %10
  %62 = phi i32 [ 0, %41 ], [ -2, %21 ], [ -2, %10 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_remove_entries(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fat_slot_info, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fat_slot_info, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  store ptr null, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fat_slot_info, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  store ptr null, ptr %9, align 8
  %11 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %12 = icmp eq i32 %6, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %18, %2
  %14 = phi i32 [ %20, %18 ], [ %6, %2 ]
  %15 = phi ptr [ %19, %18 ], [ %8, %2 ]
  %16 = load ptr, ptr %11, align 4
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  store i8 -27, ptr %15, align 4
  %19 = getelementptr %struct.msdos_dir_entry, ptr %15, i32 -1
  %20 = add i32 %14, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %18, %13
  %23 = phi i32 [ %14, %13 ], [ 0, %18 ]
  %24 = xor i1 %17, true
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %27 = phi i1 [ true, %2 ], [ %24, %22 ]
  tail call void @mark_buffer_dirty_inode(ptr noundef %10, ptr noundef %0) #12
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 144
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 65
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33, %25
  %39 = tail call i32 @sync_dirty_buffer(ptr noundef %10) #12
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi i32 [ %39, %38 ], [ 0, %33 ]
  %42 = icmp eq ptr %10, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @__brelse(ptr noundef nonnull %10) #12
  br label %44

44:                                               ; preds = %43, %40
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %47 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %48 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %47, ptr elementtype(i64) %47) #12, !srcloc !15
  br label %49

49:                                               ; preds = %57, %46
  %50 = phi i64 [ %48, %46 ], [ %58, %57 ]
  %51 = add i64 %50, 2
  %52 = and i64 %51, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #12, !srcloc !17
  br label %53

53:                                               ; preds = %53, %49
  %54 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %47, ptr %47, i64 %50, i64 %52, ptr elementtype(i64) %47) #12, !srcloc !18
  %55 = extractvalue { i32, i64 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %53

57:                                               ; preds = %53
  %58 = extractvalue { i32, i64 } %54, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %59 = icmp eq i64 %58, %50
  br i1 %59, label %60, label %49, !prof !9

60:                                               ; preds = %57
  br i1 %27, label %67, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.fat_slot_info, ptr %1, i32 0, i32 1
  %63 = load i64, ptr %62, align 8
  %64 = tail call fastcc i32 @__fat_remove_entries(ptr noundef %0, i64 noundef %63, i32 noundef %26)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  br label %67

67:                                               ; preds = %66, %61, %60
  %68 = tail call i32 @fat_truncate_time(ptr noundef %0, ptr noundef null, i32 noundef 3) #12
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 144
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 65
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74, %67
  %80 = tail call i32 @fat_sync_inode(ptr noundef %0) #12
  br label %82

81:                                               ; preds = %74
  tail call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #12
  br label %82

82:                                               ; preds = %81, %79, %44
  %83 = phi i32 [ %41, %44 ], [ 0, %81 ], [ 0, %79 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__fat_remove_entries(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store i64 %1, ptr %4, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4, !annotation !8
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %61, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  br label %13

13:                                               ; preds = %53, %10
  %14 = phi i32 [ %2, %10 ], [ %35, %53 ]
  store ptr null, ptr %5, align 4
  %15 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %11, align 16
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = load ptr, ptr %6, align 4
  %24 = icmp ult ptr %23, %22
  br i1 %24, label %25, label %33

25:                                               ; preds = %25, %17
  %26 = phi i32 [ %29, %25 ], [ %14, %17 ]
  %27 = phi ptr [ %28, %25 ], [ %23, %17 ]
  store i8 -27, ptr %27, align 4
  %28 = getelementptr %struct.msdos_dir_entry, ptr %27, i32 1
  %29 = add i32 %26, -1
  %30 = icmp ne i32 %29, 0
  %31 = icmp ult ptr %28, %22
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %25, label %33

33:                                               ; preds = %25, %17
  %34 = phi ptr [ %23, %17 ], [ %28, %25 ]
  %35 = phi i32 [ %14, %17 ], [ %29, %25 ]
  store ptr %34, ptr %6, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %18, ptr noundef %0) #12
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 144
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, ptr %12, align 4
  %43 = and i32 %42, 65
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %33
  %46 = tail call i32 @sync_dirty_buffer(ptr noundef %18) #12
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ 0, %41 ]
  %49 = icmp eq ptr %18, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @__brelse(ptr noundef nonnull %18) #12
  br label %51

51:                                               ; preds = %50, %47
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %51
  %54 = sub i32 %14, %35
  %55 = shl i32 %54, 5
  %56 = add i32 %55, -32
  %57 = zext i32 %56 to i64
  %58 = load i64, ptr %4, align 8
  %59 = add i64 %58, %57
  store i64 %59, ptr %4, align 8
  %60 = icmp eq i32 %35, 0
  br i1 %60, label %61, label %13

61:                                               ; preds = %53, %51, %13, %3
  %62 = phi i32 [ 0, %3 ], [ -5, %13 ], [ %48, %51 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %62
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_alloc_new_dir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [8 x ptr], align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %12 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %12, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !8
  %13 = call i32 @fat_alloc_clusters(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %111

15:                                               ; preds = %2
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, -2
  %19 = load i16, ptr %11, align 4
  %20 = zext i16 %19 to i64
  %21 = mul nsw i64 %18, %20
  %22 = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 20
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %29 = load i32, ptr %28, align 16
  %30 = call ptr @__getblk_gfp(ptr noundef %27, i64 noundef %25, i32 noundef %29, i32 noundef 8) #12
  store ptr %30, ptr %3, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %107, label %32

32:                                               ; preds = %15
  call void @fat_time_unix2fat(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #12
  %33 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = load volatile i32, ptr %30, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %30) #12, !srcloc !17
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %30, ptr nonnull %30, i32 4, ptr nonnull elementtype(i32) %30) #12, !srcloc !20
  %40 = extractvalue { i32, i32, i32 } %39, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %32
  call void @__lock_buffer(ptr noundef nonnull %30) #12
  br label %44

44:                                               ; preds = %43, %38
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(11) %34, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i32 11, i1 false)
  %45 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(11) %45, ptr noundef nonnull align 1 dereferenceable(11) @.str, i32 11, i1 false)
  %46 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 1
  store i8 16, ptr %46, align 1
  %47 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 1
  store i8 16, ptr %47, align 1
  %48 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 2
  store i8 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 2
  store i8 0, ptr %49, align 4
  %50 = load i16, ptr %5, align 2
  %51 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 8
  store i16 %50, ptr %51, align 2
  %52 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 8
  store i16 %50, ptr %52, align 2
  %53 = load i16, ptr %4, align 2
  %54 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 9
  store i16 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 9
  store i16 %53, ptr %55, align 4
  %56 = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 19, i32 12
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, 16
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %44
  %61 = load i16, ptr %5, align 2
  %62 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 4
  store i16 %61, ptr %62, align 2
  %63 = load i8, ptr %6, align 1
  %64 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 3
  store i8 %63, ptr %64, align 1
  %65 = load i16, ptr %4, align 2
  br label %69

66:                                               ; preds = %44
  %67 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 4
  store i16 0, ptr %67, align 2
  %68 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 3
  store i8 0, ptr %68, align 1
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi i16 [ 0, %66 ], [ %61, %60 ]
  %71 = phi i8 [ 0, %66 ], [ %63, %60 ]
  %72 = phi i16 [ 0, %66 ], [ %65, %60 ]
  %73 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 4
  store i16 %70, ptr %73, align 2
  %74 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 3
  store i8 %71, ptr %74, align 1
  %75 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 5
  store i16 %72, ptr %75, align 4
  %76 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 6
  store i16 %72, ptr %76, align 2
  %77 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 5
  store i16 %72, ptr %77, align 4
  %78 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 6
  store i16 %72, ptr %78, align 2
  %79 = load i32, ptr %7, align 4
  %80 = trunc i32 %79 to i16
  %81 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 10
  store i16 %80, ptr %81, align 2
  %82 = lshr i32 %79, 16
  %83 = trunc i32 %82 to i16
  %84 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 7
  store i16 %83, ptr %84, align 4
  %85 = getelementptr i8, ptr %0, i32 -60
  %86 = load i32, ptr %85, align 4
  %87 = trunc i32 %86 to i16
  %88 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 10
  store i16 %87, ptr %88, align 2
  %89 = lshr i32 %86, 16
  %90 = trunc i32 %89 to i16
  %91 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 7
  store i16 %90, ptr %91, align 4
  %92 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 1, i32 11
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.msdos_dir_entry, ptr %34, i32 0, i32 11
  store i32 0, ptr %93, align 4
  %94 = getelementptr %struct.msdos_dir_entry, ptr %34, i32 2
  %95 = load i32, ptr %28, align 16
  %96 = add i32 %95, -64
  call void @llvm.memset.p0.i32(ptr align 4 %94, i8 0, i32 %96, i1 false)
  %97 = load ptr, ptr %3, align 4
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %69
  call void @_set_bit(i32 noundef 0, ptr noundef %97) #12
  br label %102

102:                                              ; preds = %101, %69
  call void @unlock_buffer(ptr noundef %97) #12
  call void @mark_buffer_dirty_inode(ptr noundef %97, ptr noundef %0) #12
  %103 = call fastcc i32 @fat_zeroed_cluster(ptr noundef %0, i64 noundef %25, i32 noundef 1, ptr noundef nonnull %3)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, ptr %7, align 4
  br label %111

107:                                              ; preds = %102, %15
  %108 = phi i32 [ %103, %102 ], [ -12, %15 ]
  %109 = load i32, ptr %7, align 4
  %110 = call i32 @fat_free_clusters(ptr noundef %0, i32 noundef %109) #12
  br label %111

111:                                              ; preds = %107, %105, %2
  %112 = phi i32 [ %106, %105 ], [ %13, %2 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_alloc_clusters(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fat_zeroed_cluster(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i64
  %11 = add i64 %10, %1
  %12 = sext i32 %2 to i64
  %13 = add i64 %12, %1
  %14 = icmp ult i64 %13, %11
  br i1 %14, label %15, label %111

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 20
  %17 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 3
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %19 = getelementptr ptr, ptr %3, i32 1
  %20 = getelementptr ptr, ptr %3, i32 2
  %21 = getelementptr ptr, ptr %3, i32 3
  %22 = getelementptr ptr, ptr %3, i32 4
  %23 = getelementptr ptr, ptr %3, i32 5
  %24 = getelementptr ptr, ptr %3, i32 6
  %25 = getelementptr ptr, ptr %3, i32 7
  br label %26

26:                                               ; preds = %106, %15
  %27 = phi i32 [ %2, %15 ], [ %107, %106 ]
  %28 = phi i64 [ %13, %15 ], [ %59, %106 ]
  %29 = load ptr, ptr %16, align 4
  %30 = load i32, ptr %17, align 16
  %31 = tail call ptr @__getblk_gfp(ptr noundef %29, i64 noundef %28, i32 noundef %30, i32 noundef 8) #12
  %32 = getelementptr ptr, ptr %3, i32 %27
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %137, label %34

34:                                               ; preds = %26
  %35 = load volatile i32, ptr %31, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %31) #12, !srcloc !17
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 4, ptr nonnull elementtype(i32) %31) #12, !srcloc !20
  %40 = extractvalue { i32, i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %34
  tail call void @__lock_buffer(ptr noundef nonnull %31) #12
  br label %44

44:                                               ; preds = %43, %38
  %45 = load ptr, ptr %32, align 4
  %46 = getelementptr inbounds %struct.buffer_head, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %17, align 16
  tail call void @llvm.memset.p0.i32(ptr align 1 %47, i8 0, i32 %48, i1 false)
  %49 = load ptr, ptr %32, align 4
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  tail call void @_set_bit(i32 noundef 0, ptr noundef %49) #12
  %54 = load ptr, ptr %32, align 4
  br label %55

55:                                               ; preds = %53, %44
  %56 = phi ptr [ %49, %44 ], [ %54, %53 ]
  tail call void @unlock_buffer(ptr noundef %56) #12
  %57 = load ptr, ptr %32, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %57, ptr noundef %0) #12
  %58 = add i32 %27, 1
  %59 = add nuw i64 %28, 1
  %60 = icmp eq i32 %58, 8
  br i1 %60, label %61, label %106

61:                                               ; preds = %55
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 144
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, ptr %18, align 4
  %69 = and i32 %68, 65
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67, %61
  %72 = tail call i32 @fat_sync_bhs(ptr noundef %3, i32 noundef 8) #12
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %141

74:                                               ; preds = %71, %67
  %75 = load ptr, ptr %3, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call void @__brelse(ptr noundef nonnull %75) #12
  br label %78

78:                                               ; preds = %77, %74
  %79 = load ptr, ptr %19, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void @__brelse(ptr noundef nonnull %79) #12
  br label %82

82:                                               ; preds = %81, %78
  %83 = load ptr, ptr %20, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @__brelse(ptr noundef nonnull %83) #12
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr %21, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void @__brelse(ptr noundef nonnull %87) #12
  br label %90

90:                                               ; preds = %89, %86
  %91 = load ptr, ptr %22, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call void @__brelse(ptr noundef nonnull %91) #12
  br label %94

94:                                               ; preds = %93, %90
  %95 = load ptr, ptr %23, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  tail call void @__brelse(ptr noundef nonnull %95) #12
  br label %98

98:                                               ; preds = %97, %94
  %99 = load ptr, ptr %24, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call void @__brelse(ptr noundef nonnull %99) #12
  br label %102

102:                                              ; preds = %101, %98
  %103 = load ptr, ptr %25, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void @__brelse(ptr noundef nonnull %103) #12
  br label %106

106:                                              ; preds = %105, %102, %55
  %107 = phi i32 [ %58, %55 ], [ 0, %105 ], [ 0, %102 ]
  %108 = icmp ult i64 %59, %11
  br i1 %108, label %26, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %5, align 4
  br label %111

111:                                              ; preds = %109, %4
  %112 = phi ptr [ %6, %4 ], [ %110, %109 ]
  %113 = phi i32 [ %2, %4 ], [ %107, %109 ]
  %114 = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 10
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 144
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 65
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118, %111
  %124 = tail call i32 @fat_sync_bhs(ptr noundef %3, i32 noundef %113) #12
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123, %118
  %127 = icmp sgt i32 %113, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %134, %126
  %129 = phi i32 [ %135, %134 ], [ 0, %126 ]
  %130 = getelementptr ptr, ptr %3, i32 %129
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  tail call void @__brelse(ptr noundef nonnull %131) #12
  br label %134

134:                                              ; preds = %133, %128
  %135 = add nuw nsw i32 %129, 1
  %136 = icmp eq i32 %135, %113
  br i1 %136, label %153, label %128

137:                                              ; preds = %123, %26
  %138 = phi i32 [ %124, %123 ], [ -12, %26 ]
  %139 = phi i32 [ %113, %123 ], [ %27, %26 ]
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %137, %71
  %142 = phi i32 [ %139, %137 ], [ 8, %71 ]
  %143 = phi i32 [ %138, %137 ], [ %72, %71 ]
  br label %144

144:                                              ; preds = %150, %141
  %145 = phi i32 [ %151, %150 ], [ 0, %141 ]
  %146 = getelementptr ptr, ptr %3, i32 %145
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  tail call void @__bforget(ptr noundef nonnull %147) #12
  br label %150

150:                                              ; preds = %149, %144
  %151 = add nuw nsw i32 %145, 1
  %152 = icmp eq i32 %151, %142
  br i1 %152, label %153, label %144

153:                                              ; preds = %150, %137, %134, %126
  %154 = phi i32 [ %138, %137 ], [ 0, %126 ], [ %143, %150 ], [ 0, %134 ]
  ret i32 %154
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_add_entries(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [8 x ptr], align 4
  %6 = alloca [2 x i32], align 8
  %7 = alloca ptr, align 4
  %8 = alloca [3 x ptr], align 4
  %9 = alloca ptr, align 4
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store ptr null, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %15 = getelementptr inbounds %struct.fat_slot_info, ptr %3, i32 0, i32 2
  store i32 %2, ptr %15, align 8
  store ptr null, ptr %7, align 4
  store i64 0, ptr %10, align 8
  %16 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %9)
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %57

18:                                               ; preds = %51, %4
  %19 = phi ptr [ %54, %51 ], [ null, %4 ]
  %20 = phi i32 [ %53, %51 ], [ 0, %4 ]
  %21 = phi i32 [ %52, %51 ], [ 0, %4 ]
  %22 = load i64, ptr %10, align 8
  %23 = icmp sgt i64 %22, 2097151
  br i1 %23, label %374, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %9, align 4
  %26 = load i8, ptr %25, align 4
  switch i8 %26, label %27 [
    i8 0, label %29
    i8 -27, label %29
  ]

27:                                               ; preds = %24
  %28 = icmp sgt i32 %21, 0
  br i1 %28, label %42, label %51

29:                                               ; preds = %24, %24
  %30 = load ptr, ptr %7, align 4
  %31 = icmp eq ptr %19, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #12, !srcloc !17
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #12, !srcloc !22
  %35 = getelementptr [3 x ptr], ptr %8, i32 0, i32 %21
  store ptr %30, ptr %35, align 4
  %36 = add i32 %21, 1
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i32 [ %36, %32 ], [ %21, %29 ]
  %39 = phi ptr [ %30, %32 ], [ %19, %29 ]
  %40 = add i32 %20, 1
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %74, label %51

42:                                               ; preds = %48, %27
  %43 = phi i32 [ %49, %48 ], [ 0, %27 ]
  %44 = getelementptr [3 x ptr], ptr %8, i32 0, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void @__brelse(ptr noundef nonnull %45) #12
  br label %48

48:                                               ; preds = %47, %42
  %49 = add nuw nsw i32 %43, 1
  %50 = icmp eq i32 %49, %21
  br i1 %50, label %51, label %42

51:                                               ; preds = %48, %37, %27
  %52 = phi i32 [ %38, %37 ], [ 0, %27 ], [ 0, %48 ]
  %53 = phi i32 [ %40, %37 ], [ 0, %27 ], [ 0, %48 ]
  %54 = phi ptr [ %39, %37 ], [ null, %27 ], [ null, %48 ]
  %55 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %9)
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %18, label %57

57:                                               ; preds = %51, %4
  %58 = phi i32 [ 0, %4 ], [ %52, %51 ]
  %59 = phi i32 [ 0, %4 ], [ %53, %51 ]
  %60 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 32
  br i1 %66, label %74, label %374

67:                                               ; preds = %57
  %68 = getelementptr i8, ptr %0, i32 -64
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr i8, ptr %0, i32 -48
  %73 = load i64, ptr %72, align 8
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i64 noundef %73) #13
  br label %374

74:                                               ; preds = %67, %63, %37
  %75 = phi i32 [ %58, %63 ], [ %58, %67 ], [ %38, %37 ]
  %76 = phi i32 [ %59, %63 ], [ %59, %67 ], [ %2, %37 ]
  %77 = shl i32 %76, 5
  %78 = zext i32 %77 to i64
  %79 = load i64, ptr %10, align 8
  %80 = sub i64 %79, %78
  store i64 %80, ptr %10, align 8
  %81 = sub i32 %2, %76
  %82 = icmp eq i32 %76, 0
  br i1 %82, label %185, label %83

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 3
  %85 = load i32, ptr %84, align 16
  %86 = add i32 %85, -1
  %87 = trunc i64 %80 to i32
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %76, %2
  %90 = sext i1 %89 to i32
  %91 = add i32 %75, %90
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %83
  %94 = sub i32 %85, %88
  %95 = tail call i32 @llvm.smin.i32(i32 %94, i32 %77)
  %96 = load ptr, ptr %8, align 4
  %97 = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 5
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 %88
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %99, ptr align 1 %1, i32 %95, i1 false)
  tail call void @mark_buffer_dirty_inode(ptr noundef %96, ptr noundef %0) #12
  %100 = getelementptr i8, ptr %1, i32 %95
  %101 = sub i32 %77, %95
  %102 = icmp eq i32 %91, 1
  br i1 %102, label %123, label %103

103:                                              ; preds = %103, %93
  %104 = phi ptr [ %113, %103 ], [ %100, %93 ]
  %105 = phi i32 [ %114, %103 ], [ %101, %93 ]
  %106 = phi i32 [ %115, %103 ], [ 1, %93 ]
  %107 = load i32, ptr %84, align 16
  %108 = tail call i32 @llvm.smin.i32(i32 %107, i32 %105)
  %109 = getelementptr [3 x ptr], ptr %8, i32 0, i32 %106
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.buffer_head, ptr %110, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %112, ptr align 1 %104, i32 %108, i1 false)
  tail call void @mark_buffer_dirty_inode(ptr noundef %110, ptr noundef %0) #12
  %113 = getelementptr i8, ptr %104, i32 %108
  %114 = sub i32 %105, %108
  %115 = add nuw nsw i32 %106, 1
  %116 = icmp eq i32 %115, %91
  br i1 %116, label %117, label %103, !llvm.loop !23

117:                                              ; preds = %103, %83
  %118 = phi i32 [ 0, %83 ], [ %91, %103 ]
  %119 = phi i32 [ %77, %83 ], [ %114, %103 ]
  %120 = phi i32 [ %88, %83 ], [ 0, %103 ]
  %121 = phi ptr [ %1, %83 ], [ %113, %103 ]
  %122 = icmp eq i32 %91, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %117, %93
  %124 = phi ptr [ %121, %117 ], [ %100, %93 ]
  %125 = phi i32 [ %120, %117 ], [ 0, %93 ]
  %126 = phi i32 [ %119, %117 ], [ %101, %93 ]
  %127 = phi i32 [ %118, %117 ], [ 1, %93 ]
  %128 = load ptr, ptr %11, align 4
  %129 = getelementptr inbounds %struct.super_block, ptr %128, i32 0, i32 10
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 144
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 65
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133, %123
  %139 = call i32 @fat_sync_bhs(ptr noundef nonnull %8, i32 noundef %91) #12
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %138, %133, %117
  %142 = phi ptr [ %121, %117 ], [ %124, %133 ], [ %124, %138 ]
  %143 = phi i32 [ %120, %117 ], [ %125, %133 ], [ %125, %138 ]
  %144 = phi i32 [ %119, %117 ], [ %126, %133 ], [ %126, %138 ]
  %145 = phi i32 [ %118, %117 ], [ %127, %133 ], [ %127, %138 ]
  %146 = icmp slt i32 %145, %75
  br i1 %146, label %147, label %170

147:                                              ; preds = %141
  %148 = load i32, ptr %84, align 16
  %149 = sub i32 %148, %143
  %150 = call i32 @llvm.smin.i32(i32 %149, i32 %144)
  %151 = getelementptr [3 x ptr], ptr %8, i32 0, i32 %145
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.buffer_head, ptr %152, i32 0, i32 5
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %154, i32 %143
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %155, ptr align 1 %142, i32 %150, i1 false)
  %156 = load ptr, ptr %151, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %156, ptr noundef %0) #12
  %157 = load ptr, ptr %11, align 4
  %158 = getelementptr inbounds %struct.super_block, ptr %157, i32 0, i32 10
  %159 = load i32, ptr %158, align 4
  %160 = and i32 %159, 144
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %147
  %163 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 65
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %162, %147
  %168 = load ptr, ptr %151, align 4
  %169 = call i32 @sync_dirty_buffer(ptr noundef %168) #12
  br label %170

170:                                              ; preds = %167, %162, %141, %138
  %171 = phi ptr [ %124, %138 ], [ %142, %141 ], [ %142, %167 ], [ %142, %162 ]
  %172 = phi i32 [ %139, %138 ], [ 0, %141 ], [ %169, %167 ], [ 0, %162 ]
  %173 = icmp sgt i32 %75, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %180, %170
  %175 = phi i32 [ %181, %180 ], [ 0, %170 ]
  %176 = getelementptr [3 x ptr], ptr %8, i32 0, i32 %175
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  call void @__brelse(ptr noundef nonnull %177) #12
  br label %180

180:                                              ; preds = %179, %174
  %181 = add nuw nsw i32 %175, 1
  %182 = icmp eq i32 %181, %75
  br i1 %182, label %183, label %174

183:                                              ; preds = %180, %170
  %184 = icmp eq i32 %172, 0
  br i1 %184, label %185, label %391

185:                                              ; preds = %183, %74
  %186 = phi ptr [ %171, %183 ], [ %1, %74 ]
  %187 = icmp eq i32 %76, %2
  br i1 %187, label %353, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %11, align 4
  %190 = getelementptr inbounds %struct.super_block, ptr %189, i32 0, i32 27
  %191 = load ptr, ptr %190, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !8
  %192 = shl i32 %81, 5
  %193 = getelementptr inbounds %struct.msdos_sb_info, ptr %191, i32 0, i32 2
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %192, -1
  %196 = add i32 %195, %194
  %197 = getelementptr inbounds %struct.msdos_sb_info, ptr %191, i32 0, i32 1
  %198 = load i16, ptr %197, align 2
  %199 = zext i16 %198 to i32
  %200 = lshr i32 %196, %199
  %201 = icmp sgt i32 %200, 2
  br i1 %201, label %202, label %203, !prof !25

202:                                              ; preds = %188
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1216, 0\0A.popsection", ""() #12, !srcloc !26
  unreachable

203:                                              ; preds = %188
  %204 = call i32 @fat_alloc_clusters(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %200) #12
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %313

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.msdos_sb_info, ptr %191, i32 0, i32 9
  %208 = getelementptr inbounds %struct.super_block, ptr %189, i32 0, i32 20
  %209 = getelementptr inbounds %struct.super_block, ptr %189, i32 0, i32 3
  %210 = call i32 @llvm.smax.i32(i32 %200, i32 1)
  br label %211

211:                                              ; preds = %267, %206
  %212 = phi i32 [ %269, %267 ], [ %192, %206 ]
  %213 = phi i32 [ %270, %267 ], [ 0, %206 ]
  %214 = phi i32 [ %272, %267 ], [ 0, %206 ]
  %215 = phi i32 [ %268, %267 ], [ 0, %206 ]
  %216 = phi ptr [ %271, %267 ], [ %186, %206 ]
  %217 = getelementptr [2 x i32], ptr %6, i32 0, i32 %214
  %218 = load i32, ptr %217, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, -2
  %221 = load i16, ptr %191, align 4
  %222 = zext i16 %221 to i64
  %223 = mul nsw i64 %220, %222
  %224 = load i32, ptr %207, align 4
  %225 = zext i32 %224 to i64
  %226 = add nsw i64 %223, %225
  %227 = add nsw i64 %226, %222
  %228 = icmp ult i64 %226, %227
  br i1 %228, label %229, label %267

229:                                              ; preds = %263, %211
  %230 = phi ptr [ %260, %263 ], [ %216, %211 ]
  %231 = phi i32 [ %264, %263 ], [ %215, %211 ]
  %232 = phi i32 [ %261, %263 ], [ %212, %211 ]
  %233 = phi i64 [ %265, %263 ], [ %226, %211 ]
  %234 = load ptr, ptr %208, align 4
  %235 = load i32, ptr %209, align 16
  %236 = call ptr @__getblk_gfp(ptr noundef %234, i64 noundef %233, i32 noundef %235, i32 noundef 8) #12
  %237 = getelementptr [8 x ptr], ptr %5, i32 0, i32 %231
  store ptr %236, ptr %237, align 4
  %238 = icmp eq ptr %236, null
  br i1 %238, label %298, label %239

239:                                              ; preds = %229
  %240 = load i32, ptr %209, align 16
  %241 = call i32 @llvm.umin.i32(i32 %232, i32 %240) #12
  %242 = load volatile i32, ptr %236, align 4
  %243 = and i32 %242, 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %239
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %236) #12, !srcloc !17
  %246 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %236, ptr nonnull %236, i32 4, ptr nonnull elementtype(i32) %236) #12, !srcloc !20
  %247 = extractvalue { i32, i32, i32 } %246, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %248 = and i32 %247, 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %245, %239
  call void @__lock_buffer(ptr noundef nonnull %236) #12
  br label %251

251:                                              ; preds = %250, %245
  %252 = getelementptr inbounds %struct.buffer_head, ptr %236, i32 0, i32 5
  %253 = load ptr, ptr %252, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %253, ptr align 1 %230, i32 %241, i1 false) #12
  %254 = load ptr, ptr %237, align 4
  %255 = load volatile i32, ptr %254, align 4
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %251
  call void @_set_bit(i32 noundef 0, ptr noundef %254) #12
  br label %259

259:                                              ; preds = %258, %251
  call void @unlock_buffer(ptr noundef %254) #12
  call void @mark_buffer_dirty_inode(ptr noundef %254, ptr noundef %0) #12
  %260 = getelementptr i8, ptr %230, i32 %241
  %261 = sub i32 %232, %241
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %259
  %264 = add i32 %231, 1
  %265 = add nuw i64 %233, 1
  %266 = icmp ult i64 %265, %227
  br i1 %266, label %229, label %267

267:                                              ; preds = %263, %259, %211
  %268 = phi i32 [ %215, %211 ], [ %231, %259 ], [ %264, %263 ]
  %269 = phi i32 [ %212, %211 ], [ 0, %259 ], [ %261, %263 ]
  %270 = phi i32 [ %213, %211 ], [ %241, %259 ], [ %241, %263 ]
  %271 = phi ptr [ %216, %211 ], [ %260, %259 ], [ %260, %263 ]
  %272 = add nuw nsw i32 %214, 1
  %273 = icmp eq i32 %272, %210
  br i1 %273, label %274, label %211

274:                                              ; preds = %267
  %275 = getelementptr [8 x ptr], ptr %5, i32 0, i32 %268
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.buffer_head, ptr %276, i32 0, i32 5
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr i8, ptr %278, i32 %270
  %280 = load i32, ptr %209, align 16
  %281 = sub i32 %280, %270
  call void @llvm.memset.p0.i32(ptr align 1 %279, i8 0, i32 %281, i1 false) #12
  %282 = add i32 %270, -32
  %283 = load ptr, ptr %275, align 4
  %284 = getelementptr inbounds %struct.buffer_head, ptr %283, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %284) #12, !srcloc !17
  %285 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %284, ptr %284, i32 1, ptr elementtype(i32) %284) #12, !srcloc !22
  store ptr %283, ptr %7, align 4
  %286 = getelementptr inbounds %struct.buffer_head, ptr %283, i32 0, i32 5
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr i8, ptr %287, i32 %282
  store ptr %288, ptr %9, align 4
  %289 = add i32 %268, 1
  %290 = call fastcc i32 @fat_zeroed_cluster(ptr noundef %0, i64 noundef %226, i32 noundef %289, ptr noundef nonnull %5) #12
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %274
  %293 = load i32, ptr %6, align 8
  br label %313

294:                                              ; preds = %274
  %295 = icmp eq ptr %283, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %294
  call void @__brelse(ptr noundef nonnull %283) #12
  br label %297

297:                                              ; preds = %296, %294
  store ptr null, ptr %7, align 4
  br label %309

298:                                              ; preds = %229
  %299 = icmp sgt i32 %231, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %306, %298
  %301 = phi i32 [ %307, %306 ], [ 0, %298 ]
  %302 = getelementptr [8 x ptr], ptr %5, i32 0, i32 %301
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %300
  call void @__bforget(ptr noundef nonnull %303) #12
  br label %306

306:                                              ; preds = %305, %300
  %307 = add nuw nsw i32 %301, 1
  %308 = icmp eq i32 %307, %231
  br i1 %308, label %309, label %300

309:                                              ; preds = %306, %298, %297
  %310 = phi i32 [ %290, %297 ], [ -12, %298 ], [ -12, %306 ]
  %311 = load i32, ptr %6, align 8
  %312 = call i32 @fat_free_clusters(ptr noundef %0, i32 noundef %311) #12
  br label %313

313:                                              ; preds = %309, %292, %203
  %314 = phi i32 [ %293, %292 ], [ %204, %203 ], [ %310, %309 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %391, label %316

316:                                              ; preds = %313
  %317 = call i32 @fat_chain_add(ptr noundef %0, i32 noundef %314, i32 noundef %200) #12
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %321, label %319

319:                                              ; preds = %316
  %320 = call i32 @fat_free_clusters(ptr noundef %0, i32 noundef %314) #12
  br label %391

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %323 = load i64, ptr %322, align 8
  %324 = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 2
  %325 = load i32, ptr %324, align 4
  %326 = add i32 %325, -1
  %327 = zext i32 %326 to i64
  %328 = and i64 %323, %327
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %321
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @.str.6) #13
  %331 = load i64, ptr %322, align 8
  %332 = load i32, ptr %324, align 4
  %333 = zext i32 %332 to i64
  %334 = add i64 %331, -1
  %335 = add i64 %334, %333
  %336 = sub nsw i64 0, %333
  %337 = and i64 %335, %336
  store i64 %337, ptr %322, align 8
  br label %338

338:                                              ; preds = %330, %321
  %339 = phi i64 [ %323, %321 ], [ %337, %330 ]
  %340 = getelementptr inbounds %struct.msdos_sb_info, ptr %14, i32 0, i32 1
  %341 = load i16, ptr %340, align 2
  %342 = zext i16 %341 to i32
  %343 = shl i32 %200, %342
  %344 = sext i32 %343 to i64
  %345 = add i64 %339, %344
  store i64 %345, ptr %322, align 8
  %346 = load i16, ptr %340, align 2
  %347 = zext i16 %346 to i32
  %348 = shl i32 %200, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr i8, ptr %0, i32 -72
  %351 = load i64, ptr %350, align 8
  %352 = add i64 %351, %349
  store i64 %352, ptr %350, align 8
  br label %353

353:                                              ; preds = %338, %185
  %354 = getelementptr inbounds %struct.fat_slot_info, ptr %3, i32 0, i32 1
  store i64 %80, ptr %354, align 8
  %355 = load ptr, ptr %9, align 4
  %356 = getelementptr inbounds %struct.fat_slot_info, ptr %3, i32 0, i32 3
  store ptr %355, ptr %356, align 4
  %357 = load ptr, ptr %7, align 4
  %358 = getelementptr inbounds %struct.fat_slot_info, ptr %3, i32 0, i32 4
  store ptr %357, ptr %358, align 8
  %359 = getelementptr inbounds %struct.buffer_head, ptr %357, i32 0, i32 3
  %360 = load i64, ptr %359, align 8
  %361 = load ptr, ptr %13, align 4
  %362 = getelementptr inbounds %struct.msdos_sb_info, ptr %361, i32 0, i32 24
  %363 = load i32, ptr %362, align 4
  %364 = zext i32 %363 to i64
  %365 = shl i64 %360, %364
  %366 = getelementptr inbounds %struct.buffer_head, ptr %357, i32 0, i32 5
  %367 = load ptr, ptr %366, align 4
  %368 = ptrtoint ptr %355 to i32
  %369 = ptrtoint ptr %367 to i32
  %370 = sub i32 %368, %369
  %371 = ashr exact i32 %370, 5
  %372 = sext i32 %371 to i64
  %373 = or i64 %365, %372
  store i64 %373, ptr %3, align 8
  br label %399

374:                                              ; preds = %71, %63, %18
  %375 = phi i32 [ %58, %63 ], [ %58, %71 ], [ %21, %18 ]
  %376 = phi i32 [ -28, %63 ], [ -5, %71 ], [ -28, %18 ]
  %377 = load ptr, ptr %7, align 4
  %378 = icmp eq ptr %377, null
  br i1 %378, label %380, label %379

379:                                              ; preds = %374
  tail call void @__brelse(ptr noundef nonnull %377) #12
  br label %380

380:                                              ; preds = %379, %374
  %381 = icmp sgt i32 %375, 0
  br i1 %381, label %382, label %399

382:                                              ; preds = %388, %380
  %383 = phi i32 [ %389, %388 ], [ 0, %380 ]
  %384 = getelementptr [3 x ptr], ptr %8, i32 0, i32 %383
  %385 = load ptr, ptr %384, align 4
  %386 = icmp eq ptr %385, null
  br i1 %386, label %388, label %387

387:                                              ; preds = %382
  tail call void @__brelse(ptr noundef nonnull %385) #12
  br label %388

388:                                              ; preds = %387, %382
  %389 = add nuw nsw i32 %383, 1
  %390 = icmp eq i32 %389, %375
  br i1 %390, label %399, label %382

391:                                              ; preds = %319, %313, %183
  %392 = phi i32 [ %172, %183 ], [ %314, %313 ], [ %317, %319 ]
  %393 = load ptr, ptr %7, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %396, label %395

395:                                              ; preds = %391
  call void @__brelse(ptr noundef nonnull %393) #12
  br label %396

396:                                              ; preds = %395, %391
  br i1 %82, label %399, label %397

397:                                              ; preds = %396
  %398 = call fastcc i32 @__fat_remove_entries(ptr noundef %0, i64 noundef %80, i32 noundef %76)
  br label %399

399:                                              ; preds = %397, %396, %388, %380, %353
  %400 = phi i32 [ 0, %353 ], [ %392, %397 ], [ %392, %396 ], [ %376, %380 ], [ %376, %388 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret i32 %400
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_bhs(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_chain_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_bmap(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__breadahead(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @fat_checksum(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i8, ptr %0, align 1
  %3 = tail call i8 @llvm.fshl.i8(i8 %2, i8 %2, i8 7)
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = add i8 %3, %5
  %7 = tail call i8 @llvm.fshl.i8(i8 %6, i8 %6, i8 7)
  %8 = getelementptr i8, ptr %0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %7, %9
  %11 = tail call i8 @llvm.fshl.i8(i8 %10, i8 %10, i8 7)
  %12 = getelementptr i8, ptr %0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = add i8 %11, %13
  %15 = tail call i8 @llvm.fshl.i8(i8 %14, i8 %14, i8 7)
  %16 = getelementptr i8, ptr %0, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = add i8 %15, %17
  %19 = tail call i8 @llvm.fshl.i8(i8 %18, i8 %18, i8 7)
  %20 = getelementptr i8, ptr %0, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = add i8 %19, %21
  %23 = tail call i8 @llvm.fshl.i8(i8 %22, i8 %22, i8 7)
  %24 = getelementptr i8, ptr %0, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = add i8 %23, %25
  %27 = tail call i8 @llvm.fshl.i8(i8 %26, i8 %26, i8 7)
  %28 = getelementptr i8, ptr %0, i32 7
  %29 = load i8, ptr %28, align 1
  %30 = add i8 %27, %29
  %31 = tail call i8 @llvm.fshl.i8(i8 %30, i8 %30, i8 7)
  %32 = getelementptr i8, ptr %0, i32 8
  %33 = load i8, ptr %32, align 1
  %34 = add i8 %31, %33
  %35 = tail call i8 @llvm.fshl.i8(i8 %34, i8 %34, i8 7)
  %36 = getelementptr i8, ptr %0, i32 9
  %37 = load i8, ptr %36, align 1
  %38 = add i8 %35, %37
  %39 = tail call i8 @llvm.fshl.i8(i8 %38, i8 %38, i8 7)
  %40 = getelementptr i8, ptr %0, i32 10
  %41 = load i8, ptr %40, align 1
  %42 = add i8 %39, %41
  ret i8 %42
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fat_shortname2uni(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i16 noundef zeroext %4, i32 noundef %5) unnamed_addr #3 {
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  %11 = zext i16 %4 to i32
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 0, ptr %9, align 2, !annotation !8
  %15 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %9) #12
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i16 63, ptr %3, align 2
  br label %39

20:                                               ; preds = %14
  %21 = icmp ult i32 %17, 2
  br i1 %21, label %22, label %37

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  %23 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %1, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i8 %25, i8 %28
  store i8 %30, ptr %10, align 1
  %31 = load ptr, ptr %15, align 4
  %32 = call i32 %31(ptr noundef nonnull %10, i32 noundef 1, ptr noundef %3) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i16 63, ptr %3, align 2
  br label %35

35:                                               ; preds = %34, %22
  %36 = phi i32 [ 1, %34 ], [ %32, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  br label %39

37:                                               ; preds = %20
  %38 = load i16, ptr %9, align 2
  store i16 %38, ptr %3, align 2
  br label %39

39:                                               ; preds = %37, %35, %19
  %40 = phi i32 [ 1, %19 ], [ %36, %35 ], [ %17, %37 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  br label %94

41:                                               ; preds = %6
  %42 = and i32 %11, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %44
  store i16 63, ptr %3, align 2
  br label %94

50:                                               ; preds = %41
  %51 = and i32 %11, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %88, label %53

53:                                               ; preds = %50
  %54 = icmp eq i32 %5, 0
  br i1 %54, label %82, label %55

55:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 0, ptr %7, align 2, !annotation !8
  %56 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i16 63, ptr %3, align 2
  br label %80

61:                                               ; preds = %55
  %62 = icmp ult i32 %58, 2
  br i1 %62, label %63, label %78

63:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  %64 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = load i8, ptr %1, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i8 %66, i8 %69
  store i8 %71, ptr %8, align 1
  %72 = load ptr, ptr %56, align 4
  %73 = call i32 %72(ptr noundef nonnull %8, i32 noundef 1, ptr noundef %3) #12
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  store i16 63, ptr %3, align 2
  br label %76

76:                                               ; preds = %75, %63
  %77 = phi i32 [ 1, %75 ], [ %73, %63 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  br label %80

78:                                               ; preds = %61
  %79 = load i16, ptr %7, align 2
  store i16 %79, ptr %3, align 2
  br label %80

80:                                               ; preds = %78, %76, %60
  %81 = phi i32 [ 1, %60 ], [ %77, %76 ], [ %58, %78 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %94

82:                                               ; preds = %53
  %83 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 %84(ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  store i16 63, ptr %3, align 2
  br label %94

88:                                               ; preds = %50
  %89 = getelementptr inbounds %struct.nls_table, ptr %0, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 %90(ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i16 63, ptr %3, align 2
  br label %94

94:                                               ; preds = %93, %88, %87, %82, %80, %49, %44, %39
  %95 = phi i32 [ %40, %39 ], [ %81, %80 ], [ 1, %49 ], [ %47, %44 ], [ 1, %87 ], [ %85, %82 ], [ 1, %93 ], [ %91, %88 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__fat_readdir(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = alloca [73 x i8], align 1
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store ptr null, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store ptr null, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(73) %10, i8 0, i32 73, i1 false), !annotation !8
  %16 = getelementptr inbounds %struct.msdos_sb_info, ptr %15, i32 0, i32 19, i32 12
  %17 = load i16, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  %18 = getelementptr inbounds %struct.msdos_sb_info, ptr %15, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.dir_context, ptr %2, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %11, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %55

24:                                               ; preds = %5
  switch i64 %20, label %55 [
    i64 0, label %25
    i64 1, label %37
    i64 2, label %54
  ]

25:                                               ; preds = %24
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = zext i32 %32 to i64
  %34 = tail call i32 %26(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 1, i64 noundef 0, i64 noundef %33, i32 noundef 4) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %315

36:                                               ; preds = %25
  store i64 1, ptr %19, align 8
  br label %37

37:                                               ; preds = %36, %24
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %41) #12
  %42 = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.dentry, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %48 = load i16, ptr %41, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %50 = zext i32 %47 to i64
  %51 = tail call i32 %38(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 2, i64 noundef 1, i64 noundef %50, i32 noundef 4) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %315

53:                                               ; preds = %37
  store i64 2, ptr %19, align 8
  br label %54

54:                                               ; preds = %53, %24
  store i64 0, ptr %11, align 8
  br label %58

55:                                               ; preds = %24, %5
  %56 = and i64 %20, 31
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %315

58:                                               ; preds = %55, %54
  %59 = phi i32 [ 1, %54 ], [ 0, %55 ]
  store ptr null, ptr %6, align 4
  %60 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %292, label %62

62:                                               ; preds = %58
  %63 = and i16 %17, 16
  %64 = icmp eq i16 %63, 0
  %65 = icmp ne i32 %3, 0
  %66 = or i1 %65, %64
  %67 = icmp eq ptr %4, null
  %68 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %4, i32 0, i32 3
  %69 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %4, i32 0, i32 4
  %70 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %4, i32 0, i32 5
  %71 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %4, i32 0, i32 6
  %72 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %73 = xor i1 %64, true
  br label %74

74:                                               ; preds = %286, %62
  %75 = phi i32 [ %59, %62 ], [ 0, %286 ]
  br label %76

76:                                               ; preds = %107, %74
  store i8 0, ptr %8, align 1
  %77 = load ptr, ptr %7, align 4
  br i1 %66, label %92, label %78

78:                                               ; preds = %76
  %79 = load i8, ptr %77, align 4
  %80 = icmp eq i8 %79, -27
  br i1 %80, label %286, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.msdos_dir_entry, ptr %77, i32 0, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 15
  %85 = and i8 %83, 8
  %86 = icmp eq i8 %85, 0
  %87 = or i1 %84, %86
  br i1 %87, label %88, label %286

88:                                               ; preds = %81
  %89 = xor i1 %84, true
  %90 = icmp eq i8 %79, 0
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %286, label %99

92:                                               ; preds = %76
  %93 = getelementptr inbounds %struct.msdos_dir_entry, ptr %77, i32 0, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = and i8 %94, 8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %286

97:                                               ; preds = %92
  %98 = load i8, ptr %77, align 4
  switch i8 %98, label %99 [
    i8 0, label %286
    i8 -27, label %286
  ]

99:                                               ; preds = %97, %88
  %100 = phi i8 [ %94, %97 ], [ %83, %88 ]
  %101 = icmp eq i8 %100, 15
  %102 = select i1 %73, i1 %101, i1 false
  br i1 %102, label %103, label %197

103:                                              ; preds = %99
  %104 = call fastcc i32 @fat_parse_long(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8)
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store ptr null, ptr %6, align 4
  br label %292

107:                                              ; preds = %103
  switch i32 %104, label %108 [
    i32 1, label %286
    i32 2, label %76
    i32 3, label %292
  ]

108:                                              ; preds = %107
  %109 = load i8, ptr %8, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load ptr, ptr %7, align 4
  br label %197

113:                                              ; preds = %108
  %114 = load ptr, ptr %9, align 4
  %115 = getelementptr i16, ptr %114, i32 261
  %116 = load ptr, ptr %14, align 4
  %117 = getelementptr inbounds %struct.msdos_sb_info, ptr %116, i32 0, i32 19, i32 12
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, 32
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %113
  %122 = call i32 @utf16s_to_utf8s(ptr noundef %114, i32 noundef 261, i32 noundef 0, ptr noundef %115, i32 noundef 3574) #12
  br label %186

123:                                              ; preds = %113
  %124 = load i16, ptr %114, align 2
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %181, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.msdos_sb_info, ptr %116, i32 0, i32 21
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.nls_table, ptr %128, i32 0, i32 2
  %130 = and i16 %118, 64
  %131 = icmp eq i16 %130, 0
  br label %132

132:                                              ; preds = %170, %126
  %133 = phi i16 [ %124, %126 ], [ %173, %170 ]
  %134 = phi ptr [ %115, %126 ], [ %172, %170 ]
  %135 = phi ptr [ %114, %126 ], [ %137, %170 ]
  %136 = phi i32 [ 3574, %126 ], [ %171, %170 ]
  %137 = getelementptr i16, ptr %135, i32 1
  %138 = load ptr, ptr %129, align 4
  %139 = call i32 %138(i16 noundef zeroext %133, ptr noundef %134, i32 noundef 6) #12
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = getelementptr i8, ptr %134, i32 %139
  %143 = sub i32 %136, %139
  br label %170

144:                                              ; preds = %132
  %145 = getelementptr i8, ptr %134, i32 1
  br i1 %131, label %168, label %146

146:                                              ; preds = %144
  store i8 58, ptr %134, align 1
  %147 = lshr i16 %133, 8
  %148 = zext i16 %147 to i32
  %149 = lshr i32 %148, 4
  %150 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %149
  %151 = load i8, ptr %150, align 1
  %152 = getelementptr i8, ptr %134, i32 2
  store i8 %151, ptr %145, align 1
  %153 = and i32 %148, 15
  %154 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %153
  %155 = load i8, ptr %154, align 1
  %156 = getelementptr i8, ptr %134, i32 3
  store i8 %155, ptr %152, align 1
  %157 = and i16 %133, 255
  %158 = zext i16 %157 to i32
  %159 = lshr i32 %158, 4
  %160 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %159
  %161 = load i8, ptr %160, align 1
  %162 = getelementptr i8, ptr %134, i32 4
  store i8 %161, ptr %156, align 1
  %163 = and i32 %158, 15
  %164 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %163
  %165 = load i8, ptr %164, align 1
  %166 = getelementptr i8, ptr %134, i32 5
  store i8 %165, ptr %162, align 1
  %167 = add i32 %136, -5
  br label %170

168:                                              ; preds = %144
  store i8 63, ptr %134, align 1
  %169 = add i32 %136, -1
  br label %170

170:                                              ; preds = %168, %146, %141
  %171 = phi i32 [ %143, %141 ], [ %167, %146 ], [ %169, %168 ]
  %172 = phi ptr [ %142, %141 ], [ %166, %146 ], [ %145, %168 ]
  %173 = load i16, ptr %137, align 2
  %174 = icmp ne i16 %173, 0
  %175 = add i32 %171, -6
  %176 = icmp sgt i32 %175, 0
  %177 = select i1 %174, i1 %176, i1 false
  br i1 %177, label %132, label %178

178:                                              ; preds = %170
  %179 = icmp eq i16 %173, 0
  br i1 %179, label %181, label %180, !prof !9

180:                                              ; preds = %178
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #13
  br label %181

181:                                              ; preds = %180, %178, %123
  %182 = phi ptr [ %172, %180 ], [ %172, %178 ], [ %115, %123 ]
  store i8 0, ptr %182, align 1
  %183 = ptrtoint ptr %182 to i32
  %184 = ptrtoint ptr %115 to i32
  %185 = sub i32 %183, %184
  br label %186

186:                                              ; preds = %181, %121
  %187 = phi i32 [ %122, %121 ], [ %185, %181 ]
  %188 = load ptr, ptr %7, align 4
  br i1 %67, label %205, label %189

189:                                              ; preds = %186
  %190 = load i16, ptr %16, align 4
  %191 = lshr i16 %190, 3
  %192 = and i16 %191, 1
  %193 = zext i16 %192 to i32
  %194 = call fastcc i32 @fat_parse_short(ptr noundef %13, ptr noundef %188, ptr noundef nonnull %10, i32 noundef %193)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %286, label %196

196:                                              ; preds = %189
  store ptr %115, ptr %68, align 8
  store i32 %187, ptr %69, align 4
  store ptr %10, ptr %70, align 8
  store i32 %194, ptr %71, align 4
  br label %205

197:                                              ; preds = %111, %99
  %198 = phi ptr [ %112, %111 ], [ %77, %99 ]
  %199 = load i16, ptr %16, align 4
  %200 = lshr i16 %199, 3
  %201 = and i16 %200, 1
  %202 = zext i16 %201 to i32
  %203 = call fastcc i32 @fat_parse_short(ptr noundef %13, ptr noundef %198, ptr noundef nonnull %10, i32 noundef %202)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %286, label %205

205:                                              ; preds = %197, %196, %186
  %206 = phi ptr [ %198, %197 ], [ %188, %196 ], [ %188, %186 ]
  %207 = phi ptr [ %10, %197 ], [ null, %196 ], [ %115, %186 ]
  %208 = phi i32 [ %203, %197 ], [ 0, %196 ], [ %187, %186 ]
  %209 = load i64, ptr %11, align 8
  %210 = load i8, ptr %8, align 1
  %211 = zext i8 %210 to i32
  %212 = shl nuw nsw i32 %211, 5
  %213 = add nuw nsw i32 %212, 32
  %214 = zext i32 %213 to i64
  %215 = sub i64 %209, %214
  %216 = icmp ne i32 %75, 0
  %217 = icmp slt i64 %215, 2
  %218 = select i1 %216, i1 %217, i1 false
  %219 = select i1 %218, i64 2, i64 %215
  store i64 %219, ptr %19, align 8
  %220 = call i32 @bcmp(ptr noundef dereferenceable(11) %206, ptr noundef nonnull dereferenceable(11) @.str.1, i32 11)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %205
  %223 = load ptr, ptr %2, align 8
  %224 = load ptr, ptr %72, align 4
  %225 = getelementptr inbounds %struct.dentry, ptr %224, i32 0, i32 5
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.inode, ptr %226, i32 0, i32 10
  %228 = load i32, ptr %227, align 4
  %229 = zext i32 %228 to i64
  %230 = call i32 %223(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 1, i64 noundef %219, i64 noundef %229, i32 noundef 4) #12
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %286, label %305

232:                                              ; preds = %205
  %233 = call i32 @bcmp(ptr noundef dereferenceable(11) %206, ptr noundef nonnull dereferenceable(11) @.str, i32 11)
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = load ptr, ptr %2, align 8
  %237 = load ptr, ptr %72, align 4
  %238 = getelementptr inbounds %struct.dentry, ptr %237, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %238) #12
  %239 = getelementptr inbounds %struct.dentry, ptr %237, i32 0, i32 3
  %240 = load ptr, ptr %239, align 8
  %241 = getelementptr inbounds %struct.dentry, ptr %240, i32 0, i32 5
  %242 = load ptr, ptr %241, align 8
  %243 = getelementptr inbounds %struct.inode, ptr %242, i32 0, i32 10
  %244 = load i32, ptr %243, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %245 = load i16, ptr %238, align 4
  %246 = add i16 %245, 1
  store i16 %246, ptr %238, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %247 = zext i32 %244 to i64
  %248 = call i32 %236(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 2, i64 noundef %219, i64 noundef %247, i32 noundef 4) #12
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %286, label %305

250:                                              ; preds = %232
  %251 = load ptr, ptr %6, align 4
  %252 = getelementptr inbounds %struct.buffer_head, ptr %251, i32 0, i32 3
  %253 = load i64, ptr %252, align 8
  %254 = load ptr, ptr %14, align 4
  %255 = getelementptr inbounds %struct.msdos_sb_info, ptr %254, i32 0, i32 24
  %256 = load i32, ptr %255, align 4
  %257 = zext i32 %256 to i64
  %258 = shl i64 %253, %257
  %259 = getelementptr inbounds %struct.buffer_head, ptr %251, i32 0, i32 5
  %260 = load ptr, ptr %259, align 4
  %261 = ptrtoint ptr %206 to i32
  %262 = ptrtoint ptr %260 to i32
  %263 = sub i32 %261, %262
  %264 = ashr exact i32 %263, 5
  %265 = sext i32 %264 to i64
  %266 = or i64 %258, %265
  %267 = call ptr @fat_iget(ptr noundef %13, i64 noundef %266) #12
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %250
  %270 = getelementptr inbounds %struct.inode, ptr %267, i32 0, i32 10
  %271 = load i32, ptr %270, align 4
  call void @iput(ptr noundef nonnull %267) #12
  br label %274

272:                                              ; preds = %250
  %273 = call i32 @iunique(ptr noundef %13, i32 noundef 1) #12
  br label %274

274:                                              ; preds = %272, %269
  %275 = phi i32 [ %271, %269 ], [ %273, %272 ]
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.msdos_dir_entry, ptr %206, i32 0, i32 1
  %278 = load i8, ptr %277, align 1
  %279 = and i8 %278, 16
  %280 = icmp eq i8 %279, 0
  %281 = select i1 %280, i32 8, i32 4
  %282 = load ptr, ptr %2, align 8
  %283 = load i64, ptr %19, align 8
  %284 = call i32 %282(ptr noundef %2, ptr noundef %207, i32 noundef %208, i64 noundef %283, i64 noundef %276, i32 noundef %281) #12
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %305

286:                                              ; preds = %274, %235, %222, %197, %189, %107, %97, %97, %92, %88, %81, %78
  %287 = load i64, ptr %11, align 8
  store i64 %287, ptr %19, align 8
  %288 = call fastcc i32 @fat_get_entry(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %74

290:                                              ; preds = %286
  %291 = load i64, ptr %11, align 8
  br label %299

292:                                              ; preds = %107, %106, %58
  %293 = phi i32 [ %75, %106 ], [ %59, %58 ], [ %75, %107 ]
  %294 = phi i32 [ %104, %106 ], [ 0, %58 ], [ 0, %107 ]
  %295 = icmp ne i32 %293, 0
  %296 = load i64, ptr %11, align 8
  %297 = icmp slt i64 %296, 2
  %298 = select i1 %295, i1 %297, i1 false
  br i1 %298, label %302, label %299

299:                                              ; preds = %292, %290
  %300 = phi i64 [ %291, %290 ], [ %296, %292 ]
  %301 = phi i32 [ 0, %290 ], [ %294, %292 ]
  br label %302

302:                                              ; preds = %299, %292
  %303 = phi i64 [ %300, %299 ], [ 2, %292 ]
  %304 = phi i32 [ %301, %299 ], [ %294, %292 ]
  store i64 %303, ptr %19, align 8
  br label %305

305:                                              ; preds = %302, %274, %235, %222
  %306 = phi i32 [ %304, %302 ], [ 0, %222 ], [ 0, %235 ], [ 0, %274 ]
  %307 = load ptr, ptr %6, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %310, label %309

309:                                              ; preds = %305
  call void @__brelse(ptr noundef nonnull %307) #12
  br label %310

310:                                              ; preds = %309, %305
  %311 = load ptr, ptr %9, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %310
  %314 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %314, ptr noundef nonnull %311) #12
  br label %315

315:                                              ; preds = %313, %310, %55, %37, %25
  %316 = phi i32 [ %306, %313 ], [ %306, %310 ], [ -2, %55 ], [ 0, %25 ], [ 0, %37 ]
  call void @mutex_unlock(ptr noundef %18) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i32 %316
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fat_iget(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_generic_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_ioctl_filldir(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr %struct.__fat_dirent, ptr %8, i32 1
  %10 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %146

13:                                               ; preds = %6
  store i32 1, ptr %10, align 4
  %14 = icmp eq ptr %1, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @llvm.umin.i32(i32 %2, i32 255)
  %17 = getelementptr %struct.__fat_dirent, ptr %8, i32 1, i32 3
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #14, !srcloc !10
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %17, i8 0, i32 -1090519041) #12, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %15
  %26 = getelementptr %struct.__fat_dirent, ptr %8, i32 1, i32 2
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #14, !srcloc !10
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %30 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %26, i16 0, i32 -1090519041) #12, !srcloc !32
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %145

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.__fat_dirent, ptr %8, i32 0, i32 3
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 %16, i32 -1090519040) #15, !srcloc !33
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #14, !srcloc !10
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %41 = tail call i32 @arm_copy_to_user(ptr noundef %33, ptr noundef nonnull %1, i32 noundef %16) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i32 [ %41, %37 ], [ %16, %32 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %145

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %33, i32 %16
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #14, !srcloc !10
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %50 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %46, i8 0, i32 -1090519041) #12, !srcloc !34
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %145

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.__fat_dirent, ptr %8, i32 0, i32 2
  %54 = trunc i32 %16 to i16
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #14, !srcloc !10
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %58 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %53, i16 %54, i32 -1090519041) #12, !srcloc !35
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %146, label %145

60:                                               ; preds = %13
  %61 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %0, i32 0, i32 5
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %0, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %62, i32 255)
  %68 = tail call i32 @llvm.umin.i32(i32 %66, i32 255)
  %69 = getelementptr %struct.__fat_dirent, ptr %8, i32 1, i32 3
  %70 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %69, i32 %67, i32 -1090519040) #15, !srcloc !33
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, ptr %0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = tail call ptr @llvm.thread.pointer() #12
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 3
  %78 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %77) #14, !srcloc !10
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %81 = tail call i32 @arm_copy_to_user(ptr noundef %69, ptr noundef %75, i32 noundef %67) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  br label %82

82:                                               ; preds = %73, %60
  %83 = phi i32 [ %81, %73 ], [ %67, %60 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %145

85:                                               ; preds = %82
  %86 = getelementptr i8, ptr %69, i32 %67
  %87 = tail call ptr @llvm.thread.pointer() #12
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %89 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #14, !srcloc !10
  %90 = and i32 %89, -13
  %91 = or i32 %90, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %92 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %86, i8 0, i32 -1090519041) #12, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %145

94:                                               ; preds = %85
  %95 = getelementptr %struct.__fat_dirent, ptr %8, i32 1, i32 2
  %96 = trunc i32 %67 to i16
  %97 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #14, !srcloc !10
  %98 = and i32 %97, -13
  %99 = or i32 %98, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %100 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %95, i16 %96, i32 -1090519041) #12, !srcloc !37
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %145

102:                                              ; preds = %94
  %103 = trunc i64 %4 to i32
  %104 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #14, !srcloc !10
  %105 = and i32 %104, -13
  %106 = or i32 %105, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %107 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 %103, i32 -1090519041) #12, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %145

109:                                              ; preds = %102
  %110 = getelementptr %struct.__fat_dirent, ptr %8, i32 1, i32 1
  %111 = trunc i64 %3 to i32
  %112 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #14, !srcloc !10
  %113 = and i32 %112, -13
  %114 = or i32 %113, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %114) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %115 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %110, i32 %111, i32 -1090519041) #12, !srcloc !39
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.__fat_dirent, ptr %8, i32 0, i32 3
  %119 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %118, i32 %68, i32 -1090519040) #15, !srcloc !33
  %120 = extractvalue { i32, i32 } %119, 0
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #14, !srcloc !10
  %124 = and i32 %123, -13
  %125 = or i32 %124, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %126 = tail call i32 @arm_copy_to_user(ptr noundef %118, ptr noundef %64, i32 noundef %68) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  br label %127

127:                                              ; preds = %122, %117
  %128 = phi i32 [ %126, %122 ], [ %68, %117 ]
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = getelementptr i8, ptr %118, i32 %68
  %132 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #14, !srcloc !10
  %133 = and i32 %132, -13
  %134 = or i32 %133, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %134) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %135 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %131, i8 0, i32 -1090519041) #12, !srcloc !40
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.__fat_dirent, ptr %8, i32 0, i32 2
  %139 = trunc i32 %68 to i16
  %140 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #14, !srcloc !10
  %141 = and i32 %140, -13
  %142 = or i32 %141, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %142) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %143 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %138, i16 %139, i32 -1090519041) #12, !srcloc !41
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %137, %130, %127, %109, %102, %94, %85, %82, %52, %45, %42, %25, %15
  store i32 -14, ptr %10, align 4
  br label %146

146:                                              ; preds = %145, %137, %52, %6
  %147 = phi i32 [ -14, %145 ], [ -22, %6 ], [ 0, %52 ], [ 0, %137 ]
  ret i32 %147
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 3739564}
!11 = !{i64 3739761}
!12 = !{i64 2151225040}
!13 = !{i64 2152806733, i64 2152807013, i64 2152807347, i64 2152807681}
!14 = !{i64 2151621994}
!15 = !{i64 779142, i64 779163}
!16 = !{i64 2148449359}
!17 = !{i64 789528, i64 2148279499, i64 2148279525, i64 2148279572, i64 2148279594, i64 2148279622, i64 2148279642}
!18 = !{i64 782757, i64 782783, i64 782811, i64 782829, i64 782847, i64 782869}
!19 = !{i64 2148449561}
!20 = !{i64 2148299376, i64 2148299408, i64 2148299437, i64 2148299471, i64 2148299502, i64 2148299525}
!21 = !{i64 2148400716}
!22 = !{i64 2148290914, i64 2148290940, i64 2148290969, i64 2148291003, i64 2148291034, i64 2148291057}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2152819198, i64 2152819676, i64 2152819235, i64 2152819291, i64 2152819325, i64 2152819349, i64 2152819390, i64 2152819411, i64 2152819439, i64 2152819473}
!27 = !{i64 2148958132}
!28 = !{i64 2148953956}
!29 = !{i64 2148954031, i64 2148954058, i64 2148954105, i64 2148954127, i64 2148954155, i64 2148954175}
!30 = !{i64 2148981135}
!31 = !{i64 2152721329, i64 2152721609, i64 2152721943, i64 2152722277}
!32 = !{i64 2152731304, i64 2152731584, i64 2152731918, i64 2152732252}
!33 = !{i64 2151244030, i64 2151244055}
!34 = !{i64 2152737691, i64 2152737971, i64 2152738305, i64 2152738639}
!35 = !{i64 2152747680, i64 2152747960, i64 2152748294, i64 2152748628}
!36 = !{i64 2152754067, i64 2152754347, i64 2152754681, i64 2152755015}
!37 = !{i64 2152764056, i64 2152764336, i64 2152764670, i64 2152765004}
!38 = !{i64 2152774020, i64 2152774300, i64 2152774634, i64 2152774968}
!39 = !{i64 2152782176, i64 2152782456, i64 2152782790, i64 2152783124}
!40 = !{i64 2152786754, i64 2152787034, i64 2152787368, i64 2152787702}
!41 = !{i64 2152796745, i64 2152797025, i64 2152797359, i64 2152797693}
