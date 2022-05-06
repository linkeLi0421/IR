; ModuleID = '/llk/IR/fs/fat/namei_msdos.c_pt.bc'
source_filename = "../fs/fat/namei_msdos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fat_slot_info = type { i64, i64, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { i64 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.anon = type { i32, i32 }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }

@__UNIQUE_ID_alias234 = internal constant [21 x i8] c"msdos.alias=fs-msdos\00", section ".modinfo", align 1
@msdos_fs_type = internal global %struct.file_system_type { ptr @.str, i32 33, ptr null, ptr null, ptr @msdos_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__UNIQUE_ID_file235 = internal constant [24 x i8] c"msdos.file=fs/fat/msdos\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [18 x i8] c"msdos.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [32 x i8] c"msdos.author=Werner Almesberger\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [44 x i8] c"msdos.description=MS-DOS filesystem support\00", section ".modinfo", align 1
@__initcall__kmod_msdos__239_688_init_msdos_fs6 = internal global ptr @init_msdos_fs, section ".initcall6.init", align 4
@__exitcall_exit_msdos_fs = internal global ptr @exit_msdos_fs, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [6 x i8] c"msdos\00", align 1
@msdos_dir_inode_operations = internal constant %struct.inode_operations { ptr @msdos_lookup, ptr null, ptr null, ptr null, ptr null, ptr @msdos_create, ptr null, ptr @msdos_unlink, ptr null, ptr @msdos_mkdir, ptr @msdos_rmdir, ptr null, ptr @msdos_rename, ptr @fat_setattr, ptr @fat_getattr, ptr null, ptr null, ptr @fat_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@msdos_dentry_operations = internal constant %struct.dentry_operations { ptr null, ptr null, ptr @msdos_hash, ptr @msdos_cmp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@bad_chars = internal global [7 x i8] c"*?<>|\22\00", align 1
@bad_if_strict = internal global [6 x i8] c"+=,; \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Filesystem corrupted (i_pos %lld)\00", align 1
@__func__.do_msdos_rename = private unnamed_addr constant [16 x i8] c"do_msdos_rename\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_exit_msdos_fs, ptr @__initcall__kmod_msdos__239_688_init_msdos_fs6, ptr @exit_msdos_fs], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_msdos_fs() #0 section ".exit.text" {
  %1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @msdos_fs_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_msdos_fs() #0 section ".init.text" {
  %1 = tail call i32 @register_filesystem(ptr noundef nonnull @msdos_fs_type) #12
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @msdos_mount(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = tail call ptr @mount_bdev(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @msdos_fill_super) #12
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msdos_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @fat_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull @setup) #12
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_fill_super(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @setup(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 22
  store ptr @msdos_dir_inode_operations, ptr %4, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  store ptr @msdos_dentry_operations, ptr %5, align 16
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 1024
  store i32 %8, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @msdos_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [11 x i8], align 1
  %5 = alloca %struct.fat_slot_info, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %4, i8 0, i32 11, i1 false) #12, !annotation !8
  %19 = getelementptr inbounds %struct.msdos_sb_info, ptr %18, i32 0, i32 19
  %20 = call fastcc i32 @msdos_format_name(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %4, ptr noundef %19) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %3
  %23 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.msdos_sb_info, ptr %18, i32 0, i32 19, i32 12
  %27 = load i16, ptr %26, align 4
  %28 = and i16 %27, 8
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.fat_slot_info, ptr %5, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load i8, ptr %13, align 1
  %35 = icmp eq i8 %34, 46
  %36 = getelementptr inbounds %struct.fat_slot_info, ptr %5, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.msdos_dir_entry, ptr %37, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %35, label %42, label %43

42:                                               ; preds = %33
  br i1 %41, label %44, label %50

43:                                               ; preds = %33
  br i1 %41, label %50, label %44

44:                                               ; preds = %43, %42
  %45 = getelementptr inbounds %struct.fat_slot_info, ptr %5, i32 0, i32 4
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void @__brelse(ptr noundef nonnull %46) #12
  br label %49

49:                                               ; preds = %48, %44, %3
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #12
  br label %62

50:                                               ; preds = %43, %42, %30
  %51 = phi ptr [ %32, %30 ], [ %37, %43 ], [ %37, %42 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #12
  %52 = load i64, ptr %5, align 8
  %53 = call ptr @fat_build_inode(ptr noundef %7, ptr noundef %51, i64 noundef %52) #12
  %54 = getelementptr inbounds %struct.fat_slot_info, ptr %5, i32 0, i32 4
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %61

57:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #12
  %58 = icmp eq i32 %23, -2
  %59 = inttoptr i32 %23 to ptr
  %60 = select i1 %58, ptr null, ptr %59
  br label %62

61:                                               ; preds = %50
  call void @__brelse(ptr noundef nonnull %55) #12
  br label %62

62:                                               ; preds = %61, %57, %50, %49
  %63 = phi ptr [ null, %49 ], [ %53, %50 ], [ %53, %61 ], [ %60, %57 ]
  %64 = load ptr, ptr %8, align 4
  %65 = getelementptr inbounds %struct.msdos_sb_info, ptr %64, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %65) #12
  %66 = call ptr @d_splice_alias(ptr noundef %63, ptr noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msdos_create(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #2 {
  %6 = alloca %struct.fat_slot_info, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca [11 x i8], align 1
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %8, i8 0, i32 11, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %15 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.msdos_sb_info, ptr %19, i32 0, i32 19
  %21 = call fastcc i32 @msdos_format_name(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %8, ptr noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %5
  %24 = load ptr, ptr %15, align 8
  %25 = load i8, ptr %24, align 1
  %26 = load i8, ptr %8, align 1
  %27 = call i32 @fat_scan(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %6) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.fat_slot_info, ptr %6, i32 0, i32 4
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %29
  call void @__brelse(ptr noundef nonnull %31) #12
  br label %56

34:                                               ; preds = %23
  %35 = icmp eq i8 %25, 46
  %36 = icmp ne i8 %26, 46
  %37 = select i1 %35, i1 %36, i1 false
  %38 = zext i1 %37 to i32
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef %1) #12
  %39 = call fastcc i32 @msdos_add_entry(ptr noundef %1, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %38, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.fat_slot_info, ptr %6, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = load i64, ptr %6, align 8
  %45 = call ptr @fat_build_inode(ptr noundef %10, ptr noundef %43, i64 noundef %44) #12
  %46 = getelementptr inbounds %struct.fat_slot_info, ptr %6, i32 0, i32 4
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  call void @__brelse(ptr noundef nonnull %47) #12
  br label %50

50:                                               ; preds = %49, %41
  %51 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = ptrtoint ptr %45 to i32
  br label %56

54:                                               ; preds = %50
  %55 = call i32 @fat_truncate_time(ptr noundef %45, ptr noundef nonnull %7, i32 noundef 7) #12
  call void @d_instantiate(ptr noundef %2, ptr noundef %45) #12
  br label %56

56:                                               ; preds = %54, %52, %34, %33, %29, %5
  %57 = phi ptr [ null, %5 ], [ null, %34 ], [ %45, %52 ], [ %45, %54 ], [ null, %29 ], [ null, %33 ]
  %58 = phi i32 [ %21, %5 ], [ %39, %34 ], [ %53, %52 ], [ 0, %54 ], [ -22, %29 ], [ -22, %33 ]
  %59 = load ptr, ptr %11, align 4
  %60 = getelementptr inbounds %struct.msdos_sb_info, ptr %59, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %60) #12
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @fat_flush_inodes(ptr noundef %10, ptr noundef %1, ptr noundef %57) #12
  br label %64

64:                                               ; preds = %62, %56
  %65 = phi i32 [ %58, %56 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msdos_unlink(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [11 x i8], align 1
  %4 = alloca %struct.fat_slot_info, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %13 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false) #12, !annotation !8
  %21 = getelementptr inbounds %struct.msdos_sb_info, ptr %20, i32 0, i32 19
  %22 = call fastcc i32 @msdos_format_name(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %3, ptr noundef %21) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %2
  %25 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.msdos_sb_info, ptr %20, i32 0, i32 19, i32 12
  %29 = load i16, ptr %28, align 4
  %30 = and i16 %29, 8
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27
  %33 = load i8, ptr %14, align 1
  %34 = icmp eq i8 %33, 46
  %35 = getelementptr inbounds %struct.fat_slot_info, ptr %4, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.msdos_dir_entry, ptr %36, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %34, label %41, label %42

41:                                               ; preds = %32
  br i1 %40, label %43, label %50

42:                                               ; preds = %32
  br i1 %40, label %50, label %43

43:                                               ; preds = %42, %41
  %44 = getelementptr inbounds %struct.fat_slot_info, ptr %4, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call void @__brelse(ptr noundef nonnull %45) #12
  br label %48

48:                                               ; preds = %47, %43, %24, %2
  %49 = phi i32 [ -2, %47 ], [ -2, %43 ], [ %25, %24 ], [ -2, %2 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #12
  br label %55

50:                                               ; preds = %42, %41, %27
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #12
  %51 = call i32 @fat_remove_entries(ptr noundef %0, ptr noundef nonnull %4) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @clear_nlink(ptr noundef %6) #12
  %54 = call i32 @fat_truncate_time(ptr noundef %6, ptr noundef null, i32 noundef 4) #12
  call void @fat_detach(ptr noundef %6) #12
  br label %55

55:                                               ; preds = %53, %50, %48
  %56 = phi i32 [ %51, %50 ], [ 0, %53 ], [ %49, %48 ]
  %57 = load ptr, ptr %9, align 4
  %58 = getelementptr inbounds %struct.msdos_sb_info, ptr %57, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %58) #12
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @fat_flush_inodes(ptr noundef %8, ptr noundef %0, ptr noundef %6) #12
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi i32 [ %56, %55 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msdos_mkdir(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.fat_slot_info, align 8
  %6 = alloca [11 x i8], align 1
  %7 = alloca %struct.timespec64, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %6, i8 0, i32 11, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msdos_sb_info, ptr %11, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.msdos_sb_info, ptr %18, i32 0, i32 19
  %20 = call fastcc i32 @msdos_format_name(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %6, ptr noundef %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %4
  %23 = load ptr, ptr %14, align 8
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 46
  %26 = load i8, ptr %6, align 1
  %27 = icmp ne i8 %26, 46
  %28 = select i1 %25, i1 %27, i1 false
  %29 = zext i1 %28 to i32
  %30 = call i32 @fat_scan(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.fat_slot_info, ptr %5, i32 0, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %32
  call void @__brelse(ptr noundef nonnull %34) #12
  br label %63

37:                                               ; preds = %22
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef %1) #12
  %38 = call i32 @fat_alloc_new_dir(ptr noundef %1, ptr noundef nonnull %7) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %37
  %41 = call fastcc i32 @msdos_add_entry(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %29, i32 noundef %38, ptr noundef nonnull %7, ptr noundef nonnull %5)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  call void @inc_nlink(ptr noundef %1) #12
  %44 = getelementptr inbounds %struct.fat_slot_info, ptr %5, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = load i64, ptr %5, align 8
  %47 = call ptr @fat_build_inode(ptr noundef %9, ptr noundef %45, i64 noundef %46) #12
  %48 = getelementptr inbounds %struct.fat_slot_info, ptr %5, i32 0, i32 4
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  call void @__brelse(ptr noundef nonnull %49) #12
  br label %52

52:                                               ; preds = %51, %43
  %53 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = ptrtoint ptr %47 to i32
  br label %63

56:                                               ; preds = %52
  call void @set_nlink(ptr noundef %47, i32 noundef 2) #12
  %57 = call i32 @fat_truncate_time(ptr noundef %47, ptr noundef nonnull %7, i32 noundef 7) #12
  call void @d_instantiate(ptr noundef %2, ptr noundef %47) #12
  %58 = load ptr, ptr %10, align 4
  %59 = getelementptr inbounds %struct.msdos_sb_info, ptr %58, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %59) #12
  %60 = call i32 @fat_flush_inodes(ptr noundef %9, ptr noundef %1, ptr noundef %47) #12
  br label %67

61:                                               ; preds = %40
  %62 = call i32 @fat_free_clusters(ptr noundef %1, i32 noundef %38) #12
  br label %63

63:                                               ; preds = %61, %54, %37, %36, %32, %4
  %64 = phi i32 [ %20, %4 ], [ %41, %61 ], [ %55, %54 ], [ %38, %37 ], [ -22, %32 ], [ -22, %36 ]
  %65 = load ptr, ptr %10, align 4
  %66 = getelementptr inbounds %struct.msdos_sb_info, ptr %65, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %66) #12
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi i32 [ %64, %63 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msdos_rmdir(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [11 x i8], align 1
  %4 = alloca %struct.fat_slot_info, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %11) #12
  %12 = tail call i32 @fat_dir_empty(ptr noundef %8) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %16 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false) #12, !annotation !8
  %23 = getelementptr inbounds %struct.msdos_sb_info, ptr %22, i32 0, i32 19
  %24 = call fastcc i32 @msdos_format_name(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %3, ptr noundef %23) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %14
  %27 = call i32 @fat_scan(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.msdos_sb_info, ptr %22, i32 0, i32 19, i32 12
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 8
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = load i8, ptr %17, align 1
  %36 = icmp eq i8 %35, 46
  %37 = getelementptr inbounds %struct.fat_slot_info, ptr %4, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.msdos_dir_entry, ptr %38, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 2
  %42 = icmp eq i8 %41, 0
  br i1 %36, label %43, label %44

43:                                               ; preds = %34
  br i1 %42, label %45, label %52

44:                                               ; preds = %34
  br i1 %42, label %52, label %45

45:                                               ; preds = %44, %43
  %46 = getelementptr inbounds %struct.fat_slot_info, ptr %4, i32 0, i32 4
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  call void @__brelse(ptr noundef nonnull %47) #12
  br label %50

50:                                               ; preds = %49, %45, %26, %14
  %51 = phi i32 [ -2, %49 ], [ -2, %45 ], [ %27, %26 ], [ -2, %14 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #12
  br label %57

52:                                               ; preds = %44, %43, %29
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #12
  %53 = call i32 @fat_remove_entries(ptr noundef %0, ptr noundef nonnull %4) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  call void @drop_nlink(ptr noundef %0) #12
  call void @clear_nlink(ptr noundef %8) #12
  %56 = call i32 @fat_truncate_time(ptr noundef %8, ptr noundef null, i32 noundef 4) #12
  call void @fat_detach(ptr noundef %8) #12
  br label %57

57:                                               ; preds = %55, %52, %50, %2
  %58 = phi i32 [ %12, %2 ], [ %53, %52 ], [ 0, %55 ], [ %51, %50 ]
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr inbounds %struct.msdos_sb_info, ptr %59, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %60) #12
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @fat_flush_inodes(ptr noundef %6, ptr noundef %0, ptr noundef %8) #12
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi i32 [ %58, %57 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msdos_rename(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #2 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.fat_slot_info, align 8
  %10 = alloca %struct.fat_slot_info, align 8
  %11 = alloca %struct.timespec64, align 8
  %12 = alloca %struct.timespec64, align 8
  %13 = alloca [11 x i8], align 1
  %14 = alloca [11 x i8], align 1
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %13) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %13, i8 0, i32 11, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %14) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %14, i8 0, i32 11, i1 false), !annotation !8
  %17 = icmp ult i32 %5, 2
  br i1 %17, label %18, label %289

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.msdos_sb_info, ptr %20, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %21) #12
  %22 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %23 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.msdos_sb_info, ptr %29, i32 0, i32 19
  %31 = call fastcc i32 @msdos_format_name(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %13, ptr noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %282

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4
  %35 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 27
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.msdos_sb_info, ptr %42, i32 0, i32 19
  %44 = call fastcc i32 @msdos_format_name(ptr noundef %36, i32 noundef %38, ptr noundef nonnull %14, ptr noundef %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %282

46:                                               ; preds = %33
  %47 = load ptr, ptr %35, align 8
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 46
  %50 = load i8, ptr %14, align 1
  %51 = icmp ne i8 %50, 46
  %52 = select i1 %49, i1 %51, i1 false
  %53 = zext i1 %52 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store ptr null, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i32 32, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i32 32, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i32 16, i1 false) #12, !annotation !8
  store ptr null, ptr %7, align 4
  %54 = getelementptr inbounds %struct.fat_slot_info, ptr %10, i32 0, i32 4
  store ptr null, ptr %54, align 8
  %55 = getelementptr inbounds %struct.fat_slot_info, ptr %9, i32 0, i32 4
  store ptr null, ptr %55, align 8
  %56 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 @fat_scan(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %9) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %235

62:                                               ; preds = %46
  %63 = load i16, ptr %57, align 8
  %64 = and i16 %63, -4096
  %65 = icmp eq i16 %64, 16384
  %66 = zext i1 %65 to i32
  %67 = icmp ne ptr %1, %3
  %68 = and i1 %67, %65
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = call i32 @fat_get_dotdot_entry(ptr noundef %57, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %235

72:                                               ; preds = %69, %62
  %73 = getelementptr i8, ptr %57, i32 -56
  %74 = load i32, ptr %73, align 8
  %75 = call i32 @fat_scan(ptr noundef %3, ptr noundef nonnull %14, ptr noundef nonnull %10) #12
  %76 = icmp ne i32 %75, 0
  %77 = icmp ne ptr %59, null
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %134, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.fat_slot_info, ptr %10, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.fat_slot_info, ptr %9, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %81, %83
  br i1 %84, label %85, label %235

85:                                               ; preds = %79
  %86 = load i32, ptr %73, align 8
  %87 = and i32 %86, -3
  %88 = select i1 %52, i32 2, i32 0
  %89 = or i32 %87, %88
  store i32 %89, ptr %73, align 8
  %90 = load ptr, ptr %15, align 4
  %91 = getelementptr inbounds %struct.super_block, ptr %90, i32 0, i32 10
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 144
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 65
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95, %85
  %101 = call i32 @fat_sync_inode(ptr noundef %57) #12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  store i32 %74, ptr %73, align 8
  br label %235

104:                                              ; preds = %95
  call void @__mark_inode_dirty(ptr noundef %57, i32 noundef 7) #12
  br label %105

105:                                              ; preds = %104, %100
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %106 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 33
  %107 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %106, ptr elementtype(i64) %106) #12, !srcloc !10
  br label %108

108:                                              ; preds = %116, %105
  %109 = phi i64 [ %107, %105 ], [ %117, %116 ]
  %110 = add i64 %109, 2
  %111 = and i64 %110, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #12, !srcloc !12
  br label %112

112:                                              ; preds = %112, %108
  %113 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %106, ptr %106, i64 %109, i64 %111, ptr elementtype(i64) %106) #12, !srcloc !13
  %114 = extractvalue { i32, i64 } %113, 0
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %112

116:                                              ; preds = %112
  %117 = extractvalue { i32, i64 } %113, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %118 = icmp eq i64 %117, %109
  br i1 %118, label %119, label %108, !prof !15

119:                                              ; preds = %116
  %120 = call i32 @fat_truncate_time(ptr noundef %1, ptr noundef null, i32 noundef 6) #12
  %121 = load ptr, ptr %15, align 4
  %122 = getelementptr inbounds %struct.super_block, ptr %121, i32 0, i32 10
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 144
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 65
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126, %119
  %132 = call i32 @fat_sync_inode(ptr noundef %1) #12
  br label %235

133:                                              ; preds = %126
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #12
  br label %235

134:                                              ; preds = %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %12, ptr noundef %57) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  br i1 %77, label %135, label %143

135:                                              ; preds = %134
  br i1 %76, label %235, label %136

136:                                              ; preds = %135
  br i1 %65, label %137, label %140

137:                                              ; preds = %136
  %138 = call i32 @fat_dir_empty(ptr noundef nonnull %59) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %235

140:                                              ; preds = %137, %136
  %141 = getelementptr i8, ptr %59, i32 -48
  %142 = load i64, ptr %141, align 8
  call void @fat_detach(ptr noundef nonnull %59) #12
  br label %148

143:                                              ; preds = %134
  %144 = call fastcc i32 @msdos_add_entry(ptr noundef %3, ptr noundef nonnull %14, i32 noundef %66, i32 noundef %53, i32 noundef 0, ptr noundef nonnull %11, ptr noundef nonnull %10) #12
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %235

146:                                              ; preds = %143
  %147 = load i64, ptr %10, align 8
  br label %148

148:                                              ; preds = %146, %140
  %149 = phi i64 [ %142, %140 ], [ %147, %146 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %150 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 33
  %151 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %150, ptr elementtype(i64) %150) #12, !srcloc !10
  br label %152

152:                                              ; preds = %160, %148
  %153 = phi i64 [ %151, %148 ], [ %161, %160 ]
  %154 = add i64 %153, 2
  %155 = and i64 %154, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %150) #12, !srcloc !12
  br label %156

156:                                              ; preds = %156, %152
  %157 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %150, ptr %150, i64 %153, i64 %155, ptr elementtype(i64) %150) #12, !srcloc !13
  %158 = extractvalue { i32, i64 } %157, 0
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %156

160:                                              ; preds = %156
  %161 = extractvalue { i32, i64 } %157, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %162 = icmp eq i64 %161, %153
  br i1 %162, label %163, label %152, !prof !15

163:                                              ; preds = %160
  call void @fat_detach(ptr noundef %57) #12
  call void @fat_attach(ptr noundef %57, i64 noundef %149) #12
  %164 = load i32, ptr %73, align 8
  %165 = and i32 %164, -3
  %166 = select i1 %52, i32 2, i32 0
  %167 = or i32 %165, %166
  store i32 %167, ptr %73, align 8
  %168 = load ptr, ptr %39, align 4
  %169 = getelementptr inbounds %struct.super_block, ptr %168, i32 0, i32 10
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, 144
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %163
  %174 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = and i32 %175, 65
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %173, %163
  %179 = call i32 @fat_sync_inode(ptr noundef %57) #12
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %182, label %263

181:                                              ; preds = %173
  call void @__mark_inode_dirty(ptr noundef %57, i32 noundef 7) #12
  br label %182

182:                                              ; preds = %181, %178
  br i1 %68, label %183, label %212

183:                                              ; preds = %182
  %184 = load ptr, ptr %8, align 4
  %185 = getelementptr i8, ptr %3, i32 -60
  %186 = load i32, ptr %185, align 4
  %187 = trunc i32 %186 to i16
  %188 = getelementptr inbounds %struct.msdos_dir_entry, ptr %184, i32 0, i32 10
  store i16 %187, ptr %188, align 2
  %189 = lshr i32 %186, 16
  %190 = trunc i32 %189 to i16
  %191 = getelementptr inbounds %struct.msdos_dir_entry, ptr %184, i32 0, i32 7
  store i16 %190, ptr %191, align 4
  %192 = load ptr, ptr %7, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %192, ptr noundef %57) #12
  %193 = load ptr, ptr %39, align 4
  %194 = getelementptr inbounds %struct.super_block, ptr %193, i32 0, i32 10
  %195 = load i32, ptr %194, align 4
  %196 = and i32 %195, 144
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %183
  %199 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %200 = load i32, ptr %199, align 4
  %201 = and i32 %200, 65
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %198, %183
  %204 = load ptr, ptr %7, align 4
  %205 = call i32 @sync_dirty_buffer(ptr noundef %204) #12
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %249

207:                                              ; preds = %203, %198
  call void @drop_nlink(ptr noundef %1) #12
  br i1 %77, label %209, label %208

208:                                              ; preds = %207
  call void @inc_nlink(ptr noundef %3) #12
  br label %209

209:                                              ; preds = %208, %207
  %210 = call i32 @fat_remove_entries(ptr noundef %1, ptr noundef nonnull %9) #12
  store ptr null, ptr %55, align 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %249

212:                                              ; preds = %182
  %213 = call i32 @fat_remove_entries(ptr noundef %1, ptr noundef nonnull %9) #12
  store ptr null, ptr %55, align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %263

215:                                              ; preds = %212, %209
  call fastcc void @inode_inc_iversion(ptr noundef %1) #12
  %216 = call i32 @fat_truncate_time(ptr noundef %1, ptr noundef nonnull %11, i32 noundef 6) #12
  %217 = load ptr, ptr %15, align 4
  %218 = getelementptr inbounds %struct.super_block, ptr %217, i32 0, i32 10
  %219 = load i32, ptr %218, align 4
  %220 = and i32 %219, 144
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %224 = load i32, ptr %223, align 4
  %225 = and i32 %224, 65
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %222, %215
  %228 = call i32 @fat_sync_inode(ptr noundef %1) #12
  br label %230

229:                                              ; preds = %222
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #12
  br label %230

230:                                              ; preds = %229, %227
  br i1 %77, label %231, label %235

231:                                              ; preds = %230
  call void @drop_nlink(ptr noundef nonnull %59) #12
  br i1 %65, label %232, label %233

232:                                              ; preds = %231
  call void @drop_nlink(ptr noundef nonnull %59) #12
  br label %233

233:                                              ; preds = %232, %231
  %234 = call i32 @fat_truncate_time(ptr noundef nonnull %59, ptr noundef nonnull %11, i32 noundef 4) #12
  br label %235

235:                                              ; preds = %278, %274, %267, %233, %230, %143, %137, %135, %133, %131, %103, %79, %69, %46
  %236 = phi i32 [ %264, %267 ], [ -22, %79 ], [ -5, %69 ], [ -5, %46 ], [ 0, %133 ], [ 0, %131 ], [ %101, %103 ], [ %144, %143 ], [ 0, %230 ], [ 0, %233 ], [ %264, %274 ], [ %264, %278 ], [ %138, %137 ], [ %75, %135 ]
  %237 = load ptr, ptr %54, align 8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  call void @__brelse(ptr noundef nonnull %237) #12
  br label %240

240:                                              ; preds = %271, %239, %235
  %241 = phi i32 [ %236, %235 ], [ %236, %239 ], [ %264, %271 ]
  %242 = load ptr, ptr %7, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  call void @__brelse(ptr noundef nonnull %242) #12
  br label %245

245:                                              ; preds = %244, %240
  %246 = load ptr, ptr %55, align 8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %281, label %248

248:                                              ; preds = %245
  call void @__brelse(ptr noundef nonnull %246) #12
  br label %281

249:                                              ; preds = %209, %203
  %250 = phi i32 [ %205, %203 ], [ %210, %209 ]
  %251 = load ptr, ptr %8, align 4
  %252 = getelementptr i8, ptr %1, i32 -60
  %253 = load i32, ptr %252, align 4
  %254 = trunc i32 %253 to i16
  %255 = getelementptr inbounds %struct.msdos_dir_entry, ptr %251, i32 0, i32 10
  store i16 %254, ptr %255, align 2
  %256 = lshr i32 %253, 16
  %257 = trunc i32 %256 to i16
  %258 = getelementptr inbounds %struct.msdos_dir_entry, ptr %251, i32 0, i32 7
  store i16 %257, ptr %258, align 4
  %259 = load ptr, ptr %7, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %259, ptr noundef %57) #12
  %260 = load ptr, ptr %7, align 4
  %261 = call i32 @sync_dirty_buffer(ptr noundef %260) #12
  %262 = or i32 %261, 1
  br label %263

263:                                              ; preds = %249, %212, %178
  %264 = phi i32 [ %179, %178 ], [ %250, %249 ], [ %213, %212 ]
  %265 = phi i32 [ 0, %178 ], [ %262, %249 ], [ 1, %212 ]
  call void @fat_detach(ptr noundef %57) #12
  %266 = load i64, ptr %9, align 8
  call void @fat_attach(ptr noundef %57, i64 noundef %266) #12
  store i32 %74, ptr %73, align 8
  br i1 %77, label %267, label %271

267:                                              ; preds = %263
  call void @fat_attach(ptr noundef nonnull %59, i64 noundef %149) #12
  %268 = icmp eq i32 %265, 0
  br i1 %268, label %235, label %269

269:                                              ; preds = %267
  %270 = call i32 @fat_sync_inode(ptr noundef nonnull %59) #12
  br label %274

271:                                              ; preds = %263
  %272 = call i32 @fat_remove_entries(ptr noundef %3, ptr noundef nonnull %10) #12
  %273 = icmp eq i32 %265, 0
  store ptr null, ptr %54, align 8
  br i1 %273, label %240, label %274

274:                                              ; preds = %271, %269
  %275 = phi i32 [ %270, %269 ], [ %272, %271 ]
  %276 = or i32 %275, %265
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %235

278:                                              ; preds = %274
  %279 = load ptr, ptr %39, align 4
  %280 = load i64, ptr %10, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %279, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.do_msdos_rename, i64 noundef %280) #13
  br label %235

281:                                              ; preds = %248, %245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %282

282:                                              ; preds = %281, %33, %18
  %283 = phi i32 [ %31, %18 ], [ %44, %33 ], [ %241, %281 ]
  %284 = load ptr, ptr %19, align 4
  %285 = getelementptr inbounds %struct.msdos_sb_info, ptr %284, i32 0, i32 15
  call void @mutex_unlock(ptr noundef %285) #12
  %286 = icmp eq i32 %283, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %282
  %288 = call i32 @fat_flush_inodes(ptr noundef %16, ptr noundef %1, ptr noundef %3) #12
  br label %289

289:                                              ; preds = %287, %282, %6
  %290 = phi i32 [ -22, %6 ], [ %283, %282 ], [ %288, %287 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %13) #12
  ret i32 %290
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_update_time(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fat_build_inode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msdos_format_name(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #6 {
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 46
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.fat_mount_options, ptr %3, i32 0, i32 12
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 8
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %192, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 1
  %14 = add i32 %1, -1
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %14, %12 ], [ %1, %4 ]
  %17 = phi ptr [ %13, %12 ], [ %0, %4 ]
  %18 = ptrtoint ptr %2 to i32
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %192, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.fat_mount_options, ptr %3, i32 0, i32 8
  %22 = getelementptr inbounds %struct.fat_mount_options, ptr %3, i32 0, i32 12
  br label %23

23:                                               ; preds = %61, %20
  %24 = phi i32 [ 1, %20 ], [ %63, %61 ]
  %25 = phi ptr [ %2, %20 ], [ %73, %61 ]
  %26 = phi ptr [ %17, %20 ], [ %28, %61 ]
  %27 = phi i32 [ %16, %20 ], [ %30, %61 ]
  %28 = getelementptr i8, ptr %26, i32 1
  %29 = load i8, ptr %26, align 1
  %30 = add i32 %27, -1
  %31 = load i8, ptr %21, align 2
  %32 = icmp eq i8 %31, 114
  br i1 %32, label %48, label %33

33:                                               ; preds = %23
  %34 = zext i8 %29 to i32
  %35 = tail call ptr @strchr(ptr noundef nonnull @bad_chars, i32 noundef %34)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %192

37:                                               ; preds = %33
  %38 = icmp eq i8 %31, 115
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = tail call ptr @strchr(ptr noundef nonnull @bad_if_strict, i32 noundef %34)
  %41 = icmp ne ptr %40, null
  %42 = add i8 %29, -65
  %43 = icmp ult i8 %42, 26
  %44 = select i1 %41, i1 true, i1 %43
  %45 = freeze i8 %29
  %46 = icmp ult i8 %45, 32
  %47 = or i1 %44, %46
  br i1 %47, label %192, label %54

48:                                               ; preds = %37, %23
  %49 = add i8 %29, -91
  %50 = icmp ult i8 %49, -26
  %51 = freeze i8 %29
  %52 = icmp ult i8 %51, 32
  %53 = and i1 %50, %52
  br i1 %53, label %192, label %54

54:                                               ; preds = %48, %39
  switch i8 %29, label %55 [
    i8 92, label %192
    i8 58, label %192
  ]

55:                                               ; preds = %54
  %56 = icmp eq ptr %25, %2
  %57 = icmp eq i8 %29, -27
  %58 = select i1 %56, i1 %57, i1 false
  %59 = select i1 %58, i8 5, i8 %29
  %60 = icmp eq i8 %59, 46
  br i1 %60, label %79, label %61

61:                                               ; preds = %55
  %62 = icmp eq i8 %59, 32
  %63 = zext i1 %62 to i32
  %64 = load i16, ptr %22, align 4
  %65 = and i16 %64, 512
  %66 = icmp eq i16 %65, 0
  %67 = icmp ugt i8 %59, 96
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp ult i8 %59, 123
  %70 = select i1 %68, i1 %69, i1 false
  %71 = add i8 %59, -32
  %72 = select i1 %70, i8 %71, i8 %59
  store i8 %72, ptr %25, align 1
  %73 = getelementptr i8, ptr %25, i32 1
  %74 = icmp ne i32 %30, 0
  %75 = ptrtoint ptr %73 to i32
  %76 = sub i32 %75, %18
  %77 = icmp slt i32 %76, 8
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %23, label %79

79:                                               ; preds = %61, %55
  %80 = phi ptr [ %73, %61 ], [ %25, %55 ]
  %81 = phi i32 [ %63, %61 ], [ %24, %55 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %192

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.fat_mount_options, ptr %3, i32 0, i32 8
  %85 = load i8, ptr %84, align 2
  %86 = icmp eq i8 %85, 115
  %87 = icmp ne i32 %30, 0
  %88 = select i1 %86, i1 %87, i1 false
  %89 = icmp ne i8 %59, 46
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = getelementptr i8, ptr %26, i32 2
  %93 = load i8, ptr %28, align 1
  %94 = add i32 %27, -2
  %95 = icmp eq i8 %93, 46
  br i1 %95, label %98, label %192

96:                                               ; preds = %83
  %97 = icmp eq i8 %59, 46
  br i1 %97, label %98, label %110

98:                                               ; preds = %114, %96, %91
  %99 = phi i32 [ %30, %96 ], [ %94, %91 ], [ %115, %114 ]
  %100 = phi ptr [ %28, %96 ], [ %92, %91 ], [ %116, %114 ]
  %101 = ptrtoint ptr %80 to i32
  %102 = sub i32 %101, %18
  %103 = icmp slt i32 %102, 8
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = add i32 %18, 8
  %106 = sub i32 %105, %101
  call void @llvm.memset.p0.i32(ptr align 1 %80, i8 32, i32 %106, i1 false)
  %107 = getelementptr i8, ptr %80, i32 %106
  %108 = ptrtoint ptr %107 to i32
  %109 = sub i32 %108, %18
  br label %119

110:                                              ; preds = %114, %96
  %111 = phi ptr [ %116, %114 ], [ %28, %96 ]
  %112 = phi i32 [ %115, %114 ], [ %30, %96 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %184, label %114

114:                                              ; preds = %110
  %115 = add i32 %112, -1
  %116 = getelementptr i8, ptr %111, i32 1
  %117 = load i8, ptr %111, align 1
  %118 = icmp eq i8 %117, 46
  br i1 %118, label %98, label %110

119:                                              ; preds = %104, %98
  %120 = phi i32 [ %109, %104 ], [ %102, %98 ]
  %121 = phi ptr [ %107, %104 ], [ %80, %98 ]
  %122 = icmp sgt i32 %99, 0
  %123 = icmp slt i32 %120, 11
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %177

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.fat_mount_options, ptr %3, i32 0, i32 12
  br label %127

127:                                              ; preds = %156, %125
  %128 = phi i32 [ 0, %125 ], [ %158, %156 ]
  %129 = phi ptr [ %121, %125 ], [ %167, %156 ]
  %130 = phi ptr [ %100, %125 ], [ %132, %156 ]
  %131 = phi i32 [ %99, %125 ], [ %134, %156 ]
  %132 = getelementptr i8, ptr %130, i32 1
  %133 = load i8, ptr %130, align 1
  %134 = add nsw i32 %131, -1
  %135 = load i8, ptr %84, align 2
  %136 = icmp eq i8 %135, 114
  br i1 %136, label %146, label %137

137:                                              ; preds = %127
  %138 = zext i8 %133 to i32
  %139 = tail call ptr @strchr(ptr noundef nonnull @bad_chars, i32 noundef %138)
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %192

141:                                              ; preds = %137
  %142 = icmp eq i8 %135, 115
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = tail call ptr @strchr(ptr noundef nonnull @bad_if_strict, i32 noundef %138)
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %192

146:                                              ; preds = %143, %141, %127
  %147 = phi i1 [ true, %143 ], [ false, %141 ], [ false, %127 ]
  %148 = freeze i8 %133
  %149 = icmp ult i8 %148, 32
  br i1 %149, label %192, label %150

150:                                              ; preds = %146
  switch i8 %148, label %152 [
    i8 92, label %192
    i8 58, label %192
    i8 46, label %151
  ]

151:                                              ; preds = %150
  br i1 %147, label %192, label %173

152:                                              ; preds = %150
  %153 = add i8 %148, -65
  %154 = icmp ult i8 %153, 26
  %155 = and i1 %154, %147
  br i1 %155, label %192, label %156

156:                                              ; preds = %152
  %157 = icmp eq i8 %148, 32
  %158 = zext i1 %157 to i32
  %159 = load i16, ptr %126, align 4
  %160 = and i16 %159, 512
  %161 = icmp eq i16 %160, 0
  %162 = add i8 %148, -97
  %163 = icmp ult i8 %162, 26
  %164 = and i1 %163, %161
  %165 = add i8 %148, -32
  %166 = select i1 %164, i8 %165, i8 %148
  %167 = getelementptr i8, ptr %129, i32 1
  store i8 %166, ptr %129, align 1
  %168 = icmp ugt i32 %131, 1
  %169 = ptrtoint ptr %167 to i32
  %170 = sub i32 %169, %18
  %171 = icmp slt i32 %170, 11
  %172 = select i1 %168, i1 %171, i1 false
  br i1 %172, label %127, label %173

173:                                              ; preds = %156, %151
  %174 = phi ptr [ %129, %151 ], [ %167, %156 ]
  %175 = phi i32 [ %128, %151 ], [ %158, %156 ]
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %173, %119
  %178 = phi i32 [ %134, %173 ], [ %99, %119 ]
  %179 = phi ptr [ %174, %173 ], [ %121, %119 ]
  %180 = load i8, ptr %84, align 2
  %181 = icmp eq i8 %180, 115
  %182 = icmp ne i32 %178, 0
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %192, label %184

184:                                              ; preds = %177, %110
  %185 = phi ptr [ %179, %177 ], [ %80, %110 ]
  %186 = ptrtoint ptr %185 to i32
  %187 = sub i32 %186, %18
  %188 = icmp slt i32 %187, 11
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = add i32 %18, 11
  %191 = sub i32 %190, %186
  call void @llvm.memset.p0.i32(ptr align 1 %185, i8 32, i32 %191, i1 false)
  br label %192

192:                                              ; preds = %189, %184, %177, %173, %152, %151, %150, %150, %146, %143, %137, %91, %79, %54, %54, %48, %39, %33, %15, %7
  %193 = phi i32 [ -22, %7 ], [ -22, %79 ], [ -22, %91 ], [ -22, %151 ], [ -22, %173 ], [ -22, %177 ], [ 0, %184 ], [ 0, %189 ], [ -22, %15 ], [ -22, %137 ], [ -22, %143 ], [ -22, %146 ], [ -22, %150 ], [ -22, %150 ], [ -22, %152 ], [ -22, %48 ], [ -22, %33 ], [ -22, %39 ], [ -22, %54 ], [ -22, %54 ]
  ret i32 %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msdos_add_entry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #2 {
  %8 = alloca %struct.msdos_dir_entry, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 0, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  store i16 0, ptr %10, align 2, !annotation !8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(11) %8, ptr noundef align 1 dereferenceable(11) %1, i32 11, i1 false)
  %15 = icmp eq i32 %2, 0
  %16 = select i1 %15, i8 32, i8 16
  %17 = getelementptr inbounds %struct.msdos_dir_entry, ptr %8, i32 0, i32 1
  %18 = icmp eq i32 %3, 0
  %19 = or i8 %16, 2
  %20 = select i1 %18, i8 %16, i8 %19
  store i8 %20, ptr %17, align 1
  %21 = getelementptr inbounds %struct.msdos_dir_entry, ptr %8, i32 0, i32 2
  store i8 0, ptr %21, align 4
  call void @fat_time_unix2fat(ptr noundef %14, ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null) #12
  %22 = getelementptr inbounds %struct.msdos_dir_entry, ptr %8, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(7) %22, i8 0, i64 7, i1 false)
  %23 = load i16, ptr %9, align 2
  %24 = getelementptr inbounds %struct.msdos_dir_entry, ptr %8, i32 0, i32 8
  store i16 %23, ptr %24, align 2
  %25 = load i16, ptr %10, align 2
  %26 = getelementptr inbounds %struct.msdos_dir_entry, ptr %8, i32 0, i32 9
  store i16 %25, ptr %26, align 4
  %27 = trunc i32 %4 to i16
  %28 = getelementptr inbounds %struct.msdos_dir_entry, ptr %8, i32 0, i32 10
  store i16 %27, ptr %28, align 2
  %29 = lshr i32 %4, 16
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.msdos_dir_entry, ptr %8, i32 0, i32 7
  store i16 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.msdos_dir_entry, ptr %8, i32 0, i32 11
  store i32 0, ptr %32, align 4
  %33 = call i32 @fat_add_entries(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 1, ptr noundef %6) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %7
  %36 = call i32 @fat_truncate_time(ptr noundef %0, ptr noundef %5, i32 noundef 6) #12
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 144
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 65
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42, %35
  %48 = call i32 @fat_sync_inode(ptr noundef %0) #12
  br label %50

49:                                               ; preds = %42
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #12
  br label %50

50:                                               ; preds = %49, %47, %7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_flush_inodes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_add_entries(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_sync_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_remove_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_alloc_new_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_dir_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_dotdot_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inode_inc_iversion(ptr noundef %0) unnamed_addr #9 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %3 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %2, ptr elementtype(i64) %2) #12, !srcloc !10
  br label %4

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %3, %1 ], [ %13, %12 ]
  %6 = add i64 %5, 2
  %7 = and i64 %6, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !12
  br label %8

8:                                                ; preds = %8, %4
  %9 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2, ptr %2, i64 %5, i64 %7, ptr elementtype(i64) %2) #12, !srcloc !13
  %10 = extractvalue { i32, i64 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i64 } %9, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %4, !prof !15

15:                                               ; preds = %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_attach(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msdos_hash(ptr noundef %0, ptr nocapture noundef %1) #6 {
  %3 = alloca [11 x i8], align 1
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = call fastcc i32 @msdos_format_name(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %3, ptr noundef %8)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @full_name_hash(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 11) #14
  store i32 %16, ptr %1, align 8
  br label %17

17:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msdos_cmp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #6 {
  %5 = alloca [11 x i8], align 1
  %6 = alloca [11 x i8], align 1
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %5, i8 0, i32 11, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %6, i8 0, i32 11, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = call fastcc i32 @msdos_format_name(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %5, ptr noundef %11)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = call fastcc i32 @msdos_format_name(ptr noundef %2, i32 noundef %1, ptr noundef nonnull %6, ptr noundef %11)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call i32 @memcmp(ptr noundef nonnull dereferenceable(11) %5, ptr noundef nonnull dereferenceable(11) %6, i32 noundef 11)
  br label %23

23:                                               ; preds = %28, %25, %21
  %24 = phi i32 [ %30, %28 ], [ 1, %25 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #12
  ret i32 %24

25:                                               ; preds = %18, %4
  %26 = load i32, ptr %14, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %23

28:                                               ; preds = %25
  %29 = load ptr, ptr %12, align 8
  %30 = call i32 @memcmp(ptr noundef %29, ptr noundef %2, i32 noundef %1)
  br label %23
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }

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
!9 = !{i64 2151580295}
!10 = !{i64 546641, i64 546662}
!11 = !{i64 2148216858}
!12 = !{i64 557027, i64 2148046998, i64 2148047024, i64 2148047071, i64 2148047093, i64 2148047121, i64 2148047141}
!13 = !{i64 550256, i64 550282, i64 550310, i64 550328, i64 550346, i64 550368}
!14 = !{i64 2148217060}
!15 = !{!"branch_weights", i32 2000, i32 1}
