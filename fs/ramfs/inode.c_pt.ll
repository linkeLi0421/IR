; ModuleID = '/llk/IR/fs/ramfs/inode.c_pt.bc'
source_filename = "../fs/ramfs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
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
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.p_log = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.fs_parse_result = type { i8, %union.anon.37 }
%union.anon.37 = type { i64 }
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
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@init_user_ns = external dso_local global %struct.user_namespace, align 1
@ram_aops = external dso_local constant %struct.address_space_operations, align 4
@ramfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ramfs_file_operations = external dso_local constant %struct.file_operations, align 4
@ramfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr @ramfs_create, ptr @simple_link, ptr @simple_unlink, ptr @ramfs_symlink, ptr @ramfs_mkdir, ptr @simple_rmdir, ptr @ramfs_mknod, ptr @simple_rename, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ramfs_tmpfile, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@ramfs_fs_parameters = dso_local constant [2 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str, ptr @fs_param_is_u32, i8 0, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec zeroinitializer], align 4
@ramfs_context_ops = internal constant %struct.fs_context_operations { ptr @ramfs_free_fc, ptr null, ptr @ramfs_parse_param, ptr null, ptr @ramfs_get_tree, ptr null }, align 4
@__initcall__kmod_ramfs__236_299_init_ramfs_fs5 = internal global ptr @init_ramfs_fs, section ".initcall5.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ramfs_ops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @ramfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c",mode=%o\00", align 1
@ramfs_fs_type = internal global %struct.file_system_type { ptr @.str.2, i32 8, ptr @ramfs_init_fs_context, ptr @ramfs_fs_parameters, ptr null, ptr @ramfs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ramfs\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_ramfs__236_299_init_ramfs_fs5], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ramfs_get_inode(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = tail call ptr @new_inode(ptr noundef %0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @get_next_ino() #8
  %10 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  store i32 %9, ptr %10, align 4
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %6, ptr noundef %1, i16 noundef zeroext %2) #8
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 9
  store ptr @ram_aops, ptr %13, align 4
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 3
  store i32 1051842, ptr %15, align 4
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14
  %19 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 15
  %20 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef nonnull %6) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %19, ptr noundef align 8 dereferenceable(16) %20, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %18, ptr noundef align 8 dereferenceable(16) %20, i32 16, i1 false)
  %21 = and i16 %2, -4096
  switch i16 %21, label %22 [
    i16 -32768, label %23
    i16 16384, label %26
    i16 -24576, label %29
  ]

22:                                               ; preds = %8
  call void @init_special_inode(ptr noundef nonnull %6, i16 noundef zeroext %2, i32 noundef %3) #8
  br label %31

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ramfs_file_inode_operations, ptr %24, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 39
  store ptr @ramfs_file_operations, ptr %25, align 8
  br label %31

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ramfs_dir_inode_operations, ptr %27, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %28, align 8
  call void @inc_nlink(ptr noundef nonnull %6) #8
  br label %31

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @page_symlink_inode_operations, ptr %30, align 8
  call void @inode_nohighmem(ptr noundef nonnull %6) #8
  br label %31

31:                                               ; preds = %29, %26, %23, %22, %4
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ramfs_init_fs_context(ptr nocapture noundef writeonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  store i16 493, ptr %3, align 8
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12
  store ptr %3, ptr %6, align 4
  store ptr @ramfs_context_ops, ptr %0, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_ramfs_fs() #4 section ".init.text" {
  %1 = tail call i32 @register_filesystem(ptr noundef nonnull @ramfs_fs_type) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramfs_create(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = or i16 %3, -32768
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @ramfs_get_inode(ptr noundef %9, ptr noundef %1, i16 noundef zeroext %7, i32 noundef 0) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  tail call void @d_instantiate(ptr noundef %2, ptr noundef nonnull %10) #8
  %13 = icmp eq ptr %2, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %15) #8
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %1) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %17, ptr noundef align 8 dereferenceable(16) %18, i32 16, i1 false) #8
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i32 [ 0, %16 ], [ -28, %5 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramfs_symlink(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @ramfs_get_inode(ptr noundef %7, ptr noundef %1, i16 noundef zeroext -24065, i32 noundef 0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @strlen(ptr noundef %3)
  %12 = add i32 %11, 1
  %13 = tail call i32 @page_symlink(ptr noundef nonnull %8, ptr noundef %3, i32 noundef %12) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  tail call void @d_instantiate(ptr noundef %2, ptr noundef nonnull %8) #8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %18) #8
  br label %19

19:                                               ; preds = %17, %15
  %20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %21 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %1) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %20, ptr noundef align 8 dereferenceable(16) %21, i32 16, i1 false)
  br label %23

22:                                               ; preds = %10
  tail call void @iput(ptr noundef nonnull %8) #8
  br label %23

23:                                               ; preds = %22, %19, %4
  %24 = phi i32 [ -28, %4 ], [ %13, %22 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramfs_mkdir(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = or i16 %3, 16384
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @ramfs_get_inode(ptr noundef %8, ptr noundef %1, i16 noundef zeroext %6, i32 noundef 0) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  tail call void @d_instantiate(ptr noundef %2, ptr noundef nonnull %9) #8
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %14) #8
  br label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %1) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %16, ptr noundef align 8 dereferenceable(16) %17, i32 16, i1 false) #8
  call void @inc_nlink(ptr noundef %1) #8
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i32 [ 0, %15 ], [ -28, %4 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rmdir(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramfs_mknod(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @ramfs_get_inode(ptr noundef %8, ptr noundef %1, i16 noundef zeroext %3, i32 noundef %4)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  tail call void @d_instantiate(ptr noundef %2, ptr noundef nonnull %9) #8
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %14) #8
  br label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %1) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %16, ptr noundef align 8 dereferenceable(16) %17, i32 16, i1 false)
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i32 [ 0, %15 ], [ -28, %5 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramfs_tmpfile(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @ramfs_get_inode(ptr noundef %6, ptr noundef %1, i16 noundef zeroext %3, i32 noundef 0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @d_tmpfile(ptr noundef %2, ptr noundef nonnull %7) #8
  br label %10

10:                                               ; preds = %9, %4
  %11 = phi i32 [ 0, %9 ], [ -28, %4 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_symlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ramfs_free_fc(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramfs_parse_param(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fs_parse_result, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %7 = call i32 @__fs_parse(ptr noundef %6, ptr noundef nonnull @ramfs_fs_parameters, ptr noundef %1, ptr noundef nonnull %3) #8
  %8 = icmp eq i32 %7, -519
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = call i32 @vfs_parse_fs_param_source(ptr noundef %0, ptr noundef %1) #8
  %11 = icmp eq i32 %10, -519
  %12 = select i1 %11, i32 0, i32 %10
  br label %22

13:                                               ; preds = %2
  %14 = icmp slt i32 %7, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %13
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = trunc i32 %19 to i16
  %21 = and i16 %20, 4095
  store i16 %21, ptr %5, align 2
  br label %22

22:                                               ; preds = %17, %15, %13, %9
  %23 = phi i32 [ %12, %9 ], [ %7, %13 ], [ 0, %15 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramfs_get_tree(ptr noundef %0) #0 {
  %2 = tail call i32 @get_tree_nodev(ptr noundef %0, ptr noundef nonnull @ramfs_fill_super) #8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramfs_fill_super(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4
  store i64 17592186040320, ptr %5, align 8
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 4096, ptr %6, align 16
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 12, ptr %7, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 -2054924042, ptr %8, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @ramfs_ops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %10, align 32
  %11 = load i16, ptr %4, align 2
  %12 = or i16 %11, 16384
  %13 = tail call ptr @ramfs_get_inode(ptr noundef %0, ptr noundef null, i16 noundef zeroext %12, i32 noundef 0)
  %14 = tail call ptr @d_make_root(ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %14, ptr %15, align 64
  %16 = icmp eq ptr %14, null
  %17 = select i1 %16, i32 -12, i32 0
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ramfs_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 493
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %10) #8
  br label %11

11:                                               ; preds = %9, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ramfs_kill_sb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  tail call void @kill_litter_super(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
