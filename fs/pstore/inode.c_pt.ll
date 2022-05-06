; ModuleID = '/llk/IR/fs/pstore/inode.c_pt.bc'
source_filename = "../fs/pstore/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.match_token = type { i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.pstore_private = type { %struct.list_head, ptr, ptr, i32 }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pstore_ftrace_seq_data = type { ptr, i32, i32 }
%struct.pstore_ftrace_record = type { i32, i32, i64 }
%struct.substring_t = type { ptr, ptr }

@records_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @records_list_lock, i64 12), ptr getelementptr (i8, ptr @records_list_lock, i64 12) } }, align 4
@records_list = internal global %struct.list_head { ptr @records_list, ptr @records_list }, align 4
@.str = private unnamed_addr constant [18 x i8] c"fs/pstore/inode.c\00", align 1
@pstore_file_operations = internal constant %struct.file_operations { ptr null, ptr @pstore_file_llseek, ptr @pstore_file_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pstore_file_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s-%s-%llu%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c".enc.z\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@psinfo = external dso_local local_unnamed_addr global ptr, align 4
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"pstore\00", align 1
@pstore_fs_type = internal global %struct.file_system_type { ptr @.str.4, i32 0, ptr null, ptr null, ptr @pstore_mount, ptr @pstore_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@pstore_sb_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pstore_sb_lock, i64 12), ptr getelementptr (i8, ptr @pstore_sb_lock, i64 12) } }, align 4
@pstore_sb = internal unnamed_addr global ptr null, align 4
@pstore_ftrace_seq_ops = internal constant %struct.seq_operations { ptr @pstore_ftrace_seq_start, ptr @pstore_ftrace_seq_stop, ptr @pstore_ftrace_seq_next, ptr @pstore_ftrace_seq_show }, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"CPU:%d ts:%llu %08lx  %08lx  %ps <- %pS\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pstore_ops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr @pstore_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @pstore_remount, ptr null, ptr @pstore_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pstore_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pstore_unlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@kmsg_bytes = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c",kmsg_bytes=%lu\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = internal constant [2 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.8 }, %struct.match_token { i32 1, ptr null }], align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"kmsg_bytes=%u\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @pstore_exit_fs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pstore_put_backend_records(ptr noundef readnone %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pstore_sb_lock) #8
  %2 = load ptr, ptr @psinfo, align 4
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @pstore_sb, align 4
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #8
  br label %44

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 13
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 24
  tail call void @down_write(ptr noundef %13) #8
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #8
  %14 = icmp eq ptr %10, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @records_list_lock) #8
  %16 = load ptr, ptr @records_list, align 4
  %17 = icmp eq ptr %16, @records_list
  br i1 %17, label %40, label %18

18:                                               ; preds = %38, %15
  %19 = phi ptr [ %20, %38 ], [ %16, %15 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pstore_private, ptr %19, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %20, ptr %27, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %26, align 4
  %29 = load ptr, ptr %11, align 8
  %30 = getelementptr inbounds %struct.pstore_private, ptr %19, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @simple_unlink(ptr noundef %29, ptr noundef %31) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !8

34:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #8
  br label %40

35:                                               ; preds = %25
  %36 = load ptr, ptr %30, align 4
  tail call void @d_drop(ptr noundef %36) #8
  %37 = load ptr, ptr %30, align 4
  tail call void @dput(ptr noundef %37) #8
  store ptr null, ptr %30, align 4
  br label %38

38:                                               ; preds = %35, %18
  %39 = icmp eq ptr %20, @records_list
  br i1 %39, label %40, label %18

40:                                               ; preds = %38, %34, %15
  %41 = phi i32 [ %32, %34 ], [ 0, %15 ], [ 0, %38 ]
  tail call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #8
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 24
  tail call void @up_write(ptr noundef %43) #8
  br label %44

44:                                               ; preds = %40, %8, %7
  %45 = phi i32 [ %41, %40 ], [ 0, %8 ], [ 0, %7 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pstore_mkfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, %6
  %10 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 24
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !10

15:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef null) #8
  br label %99

16:                                               ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @records_list_lock) #8
  %17 = load ptr, ptr @records_list, align 4
  %18 = icmp eq ptr %17, @records_list
  br i1 %18, label %42, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 2
  br label %23

23:                                               ; preds = %39, %19
  %24 = phi ptr [ %17, %19 ], [ %40, %39 ]
  %25 = getelementptr inbounds %struct.pstore_private, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pstore_record, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.pstore_record, ptr %26, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = load i64, ptr %22, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load ptr, ptr %26, align 8
  %37 = load ptr, ptr %1, align 8
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %97, label %39

39:                                               ; preds = %35, %30, %23
  %40 = load ptr, ptr %24, align 4
  %41 = icmp eq ptr %40, @records_list
  br i1 %41, label %42, label %23

42:                                               ; preds = %39, %16
  %43 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = tail call ptr @new_inode(ptr noundef %44) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %97, label %47

47:                                               ; preds = %42
  %48 = tail call i32 @get_next_ino() #8
  %49 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 10
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 14
  %51 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 15
  %52 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %45) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %51, ptr noundef align 8 dereferenceable(16) %52, i32 16, i1 false) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %50, ptr noundef align 8 dereferenceable(16) %52, i32 16, i1 false) #8
  store i16 -32476, ptr %45, align 8
  %53 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 39
  store ptr @pstore_file_operations, ptr %53, align 8
  %54 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = call ptr @pstore_type_to_name(i32 noundef %55) #8
  %57 = load ptr, ptr %1, align 8
  %58 = getelementptr inbounds %struct.pstore_info, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 10
  %63 = load i8, ptr %62, align 8, !range !11
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, ptr @.str.3, ptr @.str.2
  %66 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %56, ptr noundef %59, i64 noundef %61, ptr noundef nonnull %65) #8
  %67 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %68 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 20) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %96, label %70

70:                                               ; preds = %47
  %71 = call ptr @d_alloc_name(ptr noundef %0, ptr noundef nonnull %4) #8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.pstore_private, ptr %68, i32 0, i32 1
  store ptr %71, ptr %74, align 8
  %75 = getelementptr inbounds %struct.pstore_private, ptr %68, i32 0, i32 2
  store ptr %1, ptr %75, align 4
  %76 = getelementptr inbounds %struct.pstore_private, ptr %68, i32 0, i32 3
  store i32 %9, ptr %76, align 8
  %77 = zext i32 %9 to i64
  %78 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 13
  store i64 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 47
  store ptr %68, ptr %79, align 4
  %80 = getelementptr inbounds %struct.pstore_record, ptr %1, i32 0, i32 3
  %81 = load i64, ptr %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %52, ptr noundef align 8 dereferenceable(16) %80, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %51, ptr noundef align 8 dereferenceable(16) %80, i32 16, i1 false)
  br label %84

84:                                               ; preds = %83, %73
  call void @d_add(ptr noundef nonnull %71, ptr noundef nonnull %45) #8
  %85 = load ptr, ptr @records_list, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %68, ptr %86, align 4
  store ptr %85, ptr %68, align 8
  %87 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr @records_list, ptr %87, align 4
  store volatile ptr %68, ptr @records_list, align 4
  call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #8
  br label %99

88:                                               ; preds = %70
  %89 = getelementptr inbounds %struct.pstore_private, ptr %68, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.pstore_record, ptr %90, i32 0, i32 4
  %94 = load ptr, ptr %93, align 8
  call void @kfree(ptr noundef %94) #8
  call void @kfree(ptr noundef nonnull %90) #8
  br label %95

95:                                               ; preds = %92, %88
  call void @kfree(ptr noundef nonnull %68) #8
  br label %96

96:                                               ; preds = %95, %47
  call void @iput(ptr noundef nonnull %45) #8
  br label %97

97:                                               ; preds = %96, %42, %35
  %98 = phi i32 [ -12, %96 ], [ -12, %42 ], [ -17, %35 ]
  call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #8
  br label %99

99:                                               ; preds = %97, %84, %15
  %100 = phi i32 [ -22, %15 ], [ %98, %97 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret i32 %100
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pstore_type_to_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pstore_get_records(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pstore_sb_lock) #8
  %2 = load ptr, ptr @psinfo, align 4
  %3 = icmp ne ptr %2, null
  %4 = load ptr, ptr @pstore_sb, align 4
  %5 = icmp ne ptr %4, null
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #8
  br label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 13
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 24
  tail call void @down_write(ptr noundef %13) #8
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #8
  %14 = icmp eq ptr %10, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @psinfo, align 4
  tail call void @pstore_get_backend_records(ptr noundef %16, ptr noundef nonnull %10, i32 noundef %0) #8
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 24
  tail call void @up_write(ptr noundef %18) #8
  br label %19

19:                                               ; preds = %15, %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_get_backend_records(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @pstore_init_fs() local_unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr @fs_kobj, align 4
  %2 = tail call i32 @sysfs_create_mount_point(ptr noundef %1, ptr noundef nonnull @.str.4) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = tail call i32 @register_filesystem(ptr noundef nonnull @pstore_fs_type) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load ptr, ptr @fs_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %8, ptr noundef nonnull @.str.4) #8
  br label %9

9:                                                ; preds = %7, %4, %0
  %10 = phi i32 [ %2, %0 ], [ %5, %7 ], [ %5, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @pstore_exit_fs() #5 section ".exit.text" {
  %1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @pstore_fs_type) #8
  %2 = load ptr, ptr @fs_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @pstore_file_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i64 @seq_lseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #8
  br label %13

11:                                               ; preds = %3
  %12 = tail call i64 @default_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i64 [ %10, %9 ], [ %12, %11 ]
  ret i64 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pstore_file_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pstore_private, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pstore_record, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = tail call i32 @seq_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #8
  br label %22

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.pstore_record, ptr %10, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.pstore_private, ptr %8, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %18, i32 noundef %20) #8
  br label %22

22:                                               ; preds = %16, %14
  %23 = phi i32 [ %15, %14 ], [ %21, %16 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pstore_file_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pstore_private, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pstore_record, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  %10 = select i1 %9, ptr @pstore_ftrace_seq_ops, ptr null
  %11 = tail call i32 @seq_open(ptr noundef %1, ptr noundef %10) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.seq_file, ptr %15, i32 0, i32 11
  store ptr %4, ptr %16, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i32 [ 0, %13 ], [ %11, %2 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pstore_ftrace_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 12) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pstore_private, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 15
  %12 = getelementptr inbounds %struct.pstore_ftrace_seq_data, ptr %6, i32 0, i32 1
  %13 = load i64, ptr %1, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 4
  %16 = or i32 %15, %11
  store i32 %16, ptr %12, align 4
  %17 = add i32 %16, 16
  %18 = load i32, ptr %9, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #8
  br label %21

21:                                               ; preds = %20, %8, %2
  %22 = phi ptr [ null, %20 ], [ null, %2 ], [ %6, %8 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pstore_ftrace_seq_stop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @pstore_ftrace_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #6 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.pstore_ftrace_seq_data, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 16
  store i32 %10, ptr %8, align 4
  %11 = add i32 %9, 32
  %12 = getelementptr inbounds %struct.pstore_private, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  %15 = select i1 %14, ptr null, ptr %1
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pstore_ftrace_seq_show(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.pstore_private, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pstore_record, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pstore_ftrace_seq_data, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr inbounds %struct.pstore_ftrace_record, ptr %13, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 255
  %18 = lshr i64 %15, 8
  %19 = load i32, ptr %13, align 8
  %20 = getelementptr inbounds %struct.pstore_ftrace_record, ptr %13, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = inttoptr i32 %19 to ptr
  %23 = inttoptr i32 %21 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %17, i64 noundef %18, i32 noundef %19, i32 noundef %21, ptr noundef %22, ptr noundef %23) #8
  br label %24

24:                                               ; preds = %4, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pstore_mount(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = tail call ptr @mount_single(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull @pstore_fill_super) #8
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pstore_kill_sb(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pstore_sb_lock) #8
  %2 = load ptr, ptr @pstore_sb, align 4
  %3 = icmp ne ptr %2, null
  %4 = icmp ne ptr %2, %0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef null) #8
  br label %7

7:                                                ; preds = %6, %1
  tail call void @kill_litter_super(ptr noundef %0) #8
  store ptr null, ptr @pstore_sb, align 4
  tail call void @mutex_lock(ptr noundef nonnull @records_list_lock) #8
  store volatile ptr @records_list, ptr @records_list, align 4
  store ptr @records_list, ptr getelementptr inbounds (%struct.list_head, ptr @records_list, i32 0, i32 1), align 4
  tail call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #8
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_single(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pstore_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4
  store i64 17592186040320, ptr %5, align 8
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 4096, ptr %6, align 16
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 12, ptr %7, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 1634035564, ptr %8, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @pstore_ops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %10, align 32
  tail call fastcc void @parse_options(ptr noundef %1)
  %11 = tail call ptr @new_inode(ptr noundef %0) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = tail call i32 @get_next_ino() #8
  %15 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 10
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 14
  %17 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 15
  %18 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef nonnull %11) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %17, ptr noundef align 8 dereferenceable(16) %18, i32 16, i1 false) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %16, ptr noundef align 8 dereferenceable(16) %18, i32 16, i1 false) #8
  store i16 16872, ptr %11, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 7
  store ptr @pstore_dir_inode_operations, ptr %19, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %20, align 8
  call void @inc_nlink(ptr noundef nonnull %11) #8
  br label %21

21:                                               ; preds = %13, %3
  %22 = call ptr @d_make_root(ptr noundef %11) #8
  %23 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %22, ptr %23, align 64
  %24 = icmp eq ptr %22, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void @mutex_lock(ptr noundef nonnull @pstore_sb_lock) #8
  store ptr %0, ptr @pstore_sb, align 4
  call void @mutex_unlock(ptr noundef nonnull @pstore_sb_lock) #8
  call void @pstore_get_records(i32 noundef 0)
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ 0, %25 ], [ -12, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @parse_options(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca [3 x %struct.substring_t], align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.7) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %21, %6
  %10 = phi ptr [ %22, %21 ], [ %7, %6 ]
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = call i32 @match_token(ptr noundef nonnull %10, ptr noundef nonnull @tokens, ptr noundef nonnull %3) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = call i32 @match_int(ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 4
  call void @pstore_set_kmsg_bytes(i32 noundef %20) #8
  br label %21

21:                                               ; preds = %19, %16, %13, %9
  %22 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.7) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %9

24:                                               ; preds = %21, %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pstore_evict_inode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %3 = load ptr, ptr %2, align 4
  tail call void @clear_inode(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pstore_private, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pstore_record, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  tail call void @kfree(ptr noundef %11) #8
  %12 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %9, %5
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pstore_remount(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @sync_filesystem(ptr noundef %0) #8
  tail call fastcc void @parse_options(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pstore_show_options(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr @kmsg_bytes, align 4
  %4 = icmp eq i32 %3, 10240
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %3) #8
  br label %6

6:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_set_kmsg_bytes(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pstore_unlink(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pstore_private, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pstore_info, ptr %9, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @records_list_lock) #8
  %14 = load volatile ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.pstore_private, ptr %6, i32 0, i32 1
  store ptr null, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #8
  br label %32

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %14, ptr %20, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %19, align 4
  %22 = getelementptr inbounds %struct.pstore_private, ptr %6, i32 0, i32 1
  store ptr null, ptr %22, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @records_list_lock) #8
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds %struct.pstore_info, ptr %23, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %24) #8
  %25 = load ptr, ptr %8, align 8
  %26 = getelementptr inbounds %struct.pstore_info, ptr %25, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %8) #8
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %struct.pstore_info, ptr %29, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %30) #8
  %31 = tail call i32 @simple_unlink(ptr noundef %0, ptr noundef %1) #8
  br label %32

32:                                               ; preds = %18, %16, %2
  %33 = phi i32 [ %31, %18 ], [ -1, %2 ], [ -2, %16 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
