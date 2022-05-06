; ModuleID = '/llk/IR/fs/squashfs/super.c_pt.bc'
source_filename = "../fs/squashfs/super.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.p_log = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.76 }
%union.anon.76 = type { i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { i64 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.squashfs_super_block = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.squashfs_inode_info = type { i64, i32, i64, i32, i32, %union.anon.77, %struct.inode }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i64, i32, i32, i64 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@squashfs_fs_type = internal global %struct.file_system_type { ptr @.str, i32 1, ptr @squashfs_init_fs_context, ptr @squashfs_fs_parameters, ptr null, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__UNIQUE_ID_alias261 = internal constant [27 x i8] c"squashfs.alias=fs-squashfs\00", section ".modinfo", align 1
@__initcall__kmod_squashfs__262_616_init_squashfs_fs6 = internal global ptr @init_squashfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_squashfs_fs = internal global ptr @exit_squashfs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_description263 = internal constant [69 x i8] c"squashfs.description=squashfs 4.0, a compressed read-only filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_author264 = internal constant [58 x i8] c"squashfs.author=Phillip Lougher <phillip@squashfs.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file265 = internal constant [35 x i8] c"squashfs.file=fs/squashfs/squashfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [21 x i8] c"squashfs.license=GPL\00", section ".modinfo", align 1
@squashfs_inode_cachep = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [9 x i8] c"squashfs\00", align 1
@squashfs_fs_parameters = internal constant [2 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.25, ptr @fs_param_is_enum, i8 0, i16 0, ptr @squashfs_param_errors }, %struct.fs_parameter_spec zeroinitializer], align 4
@squashfs_context_ops = internal constant %struct.fs_context_operations { ptr @squashfs_free_fs_context, ptr null, ptr @squashfs_parse_param, ptr null, ptr @squashfs_get_tree, ptr @squashfs_reconfigure }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"squashfs init bdi failed\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"\013squashfs: SQUASHFS error: Failed to allocate squashfs_sb_info\0A\00", align 1
@squashfs_fill_super.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"&msblk->meta_index_mutex\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"unable to read squashfs_super_block\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Can't find a SQUASHFS superblock on %pg\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"Page size > filesystem block size (%d).  This is currently not supported!\00", align 1
@squashfs_super_ops = internal constant %struct.super_operations { ptr @squashfs_alloc_inode, ptr null, ptr @squashfs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr @squashfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @squashfs_statfs, ptr null, ptr null, ptr @squashfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to allocate read_page block\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"unable to read xattr id index table\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"unable to read id index table\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"unable to read inode lookup table\00", align 1
@squashfs_export_ops = external dso_local constant %struct.export_operations, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"fragment\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"unable to read fragment index table\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"\013squashfs: SQUASHFS error: Root inode create failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"squashfs image failed sanity check\00", align 1
@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"squashfs_%u_%u\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"Major/Minor mismatch, older Squashfs %d.%d filesystems are unsupported\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"Major/Minor mismatch, trying to mount newer %d.%d filesystem\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Please update your kernel\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"Filesystem uses \22%s\22 compression. This is not supported\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"\013squashfs: SQUASHFS error: Xattrs in filesystem, these will be ignored\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@squashfs_param_errors = internal constant [3 x %struct.constant_table] [%struct.constant_table { ptr @.str.26, i32 0 }, %struct.constant_table { ptr @.str.27, i32 1 }, %struct.constant_table zeroinitializer], align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"\016squashfs: version 4.0 (2009/01/31) Phillip Lougher\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"squashfs_inode_cache\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias261, ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__exitcall_exit_squashfs_fs, ptr @__initcall__kmod_squashfs__262_616_init_squashfs_fs6, ptr @exit_squashfs_fs], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_squashfs_fs() #0 section ".exit.text" {
  %1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @squashfs_fs_type) #10
  tail call void @rcu_barrier() #10
  %2 = load ptr, ptr @squashfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_squashfs_fs() #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.29, i32 noundef 448, i32 noundef 0, i32 noundef 139264, ptr noundef nonnull @init_once) #10
  store ptr %1, ptr @squashfs_inode_cachep, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_filesystem(ptr noundef nonnull @squashfs_fs_type) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  tail call void @rcu_barrier() #10
  %7 = load ptr, ptr @squashfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #10
  br label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %10

10:                                               ; preds = %8, %6, %0
  %11 = phi i32 [ %4, %6 ], [ 0, %8 ], [ -12, %0 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @squashfs_init_fs_context(ptr nocapture noundef writeonly %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %3, ptr %6, align 4
  store ptr @squashfs_context_ops, ptr %0, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @squashfs_free_fs_context(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @squashfs_parse_param(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.fs_parse_result, align 8
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %7 = call i32 @__fs_parse(ptr noundef %6, ptr noundef nonnull @squashfs_fs_parameters, ptr noundef %1, ptr noundef nonnull %3) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %5, align 4
  br label %14

14:                                               ; preds = %11, %9, %2
  %15 = phi i32 [ 0, %11 ], [ %7, %2 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @squashfs_get_tree(ptr noundef %0) #2 {
  %2 = tail call i32 @get_tree_bdev(ptr noundef %0, ptr noundef nonnull @squashfs_fill_super) #10
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @squashfs_reconfigure(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @sync_filesystem(ptr noundef %5) #10
  %11 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = load i32, ptr %9, align 4
  %15 = icmp eq i32 %14, 1
  %16 = getelementptr inbounds %struct.squashfs_sb_info, ptr %7, i32 0, i32 24
  %17 = zext i1 %15 to i8
  store i8 %17, ptr %16, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_bdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @squashfs_fill_super(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 20
  %8 = and i32 %6, 1048575
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  tail call void @bdi_put(ptr noundef %10) #10
  store ptr @noop_backing_dev_info, ptr %9, align 8
  %11 = tail call i32 (ptr, ptr, ...) @super_setup_bdi_name(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %7, i32 noundef %8) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %15, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.1) #10
  br label %289

16:                                               ; preds = %2
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds %struct.backing_dev_info, ptr %17, i32 0, i32 3
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds %struct.backing_dev_info, ptr %19, i32 0, i32 4
  store i32 0, ptr %20, align 8
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 136) #12
  %23 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %289

27:                                               ; preds = %16
  %28 = load i32, ptr %4, align 4
  %29 = icmp eq i32 %28, 1
  %30 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 24
  %31 = zext i1 %29 to i8
  store i8 %31, ptr %30, align 8
  %32 = tail call i32 @sb_min_blocksize(ptr noundef %0, i32 noundef 1024) #10
  %33 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = tail call i32 @llvm.cttz.i32(i32 %32, i1 false) #10, !range !9
  %35 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 2
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @squashfs_fill_super.__key) #10
  %37 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 19
  store i64 96, ptr %37, align 8
  %38 = tail call ptr @squashfs_read_table(ptr noundef %0, i64 noundef 0, i32 noundef 96) #10
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %42, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.4) #10
  %43 = ptrtoint ptr %38 to i32
  br label %271

44:                                               ; preds = %27
  %45 = load i32, ptr %38, align 8
  %46 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 %45, ptr %46, align 4
  %47 = icmp eq i32 %45, 1936814952
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 13
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 32768
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %271

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %57 = load ptr, ptr %56, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %55, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %57) #10
  br label %271

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 9
  %60 = load i16, ptr %59, align 4
  %61 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 10
  %62 = load i16, ptr %61, align 2
  %63 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 5
  %64 = load i16, ptr %63, align 4
  %65 = sext i16 %60 to i32
  %66 = icmp slt i16 %60, 4
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = sext i16 %62 to i32
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %69, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.18, i32 noundef %65, i32 noundef %70) #10
  br label %91

71:                                               ; preds = %58
  %72 = icmp ne i16 %60, 4
  %73 = icmp sgt i16 %62, 0
  %74 = or i1 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = sext i16 %62 to i32
  %77 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %78 = load ptr, ptr %77, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %78, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.19, i32 noundef %65, i32 noundef %76) #10
  %79 = load ptr, ptr %77, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %79, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.20) #10
  br label %91

80:                                               ; preds = %71
  %81 = sext i16 %64 to i32
  %82 = tail call ptr @squashfs_lookup_decompressor(i32 noundef %81) #10
  %83 = getelementptr inbounds %struct.squashfs_decompressor, ptr %82, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.squashfs_decompressor, ptr %82, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %88, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.21, ptr noundef %90) #10
  br label %91

91:                                               ; preds = %86, %75, %67
  store ptr null, ptr %22, align 8
  br label %271

92:                                               ; preds = %80
  store ptr %82, ptr %22, align 8
  %93 = icmp eq ptr %82, null
  br i1 %93, label %271, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 12
  %96 = load i64, ptr %95, align 8
  store i64 %96, ptr %37, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %271, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.block_device, ptr %100, i32 0, i32 1
  %102 = load i64, ptr %101, align 8
  %103 = shl i64 %102, 9
  %104 = icmp sgt i64 %96, %103
  br i1 %104, label %271, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 17
  store i32 %107, ptr %108, align 8
  %109 = icmp ugt i32 %107, 1048576
  br i1 %109, label %267, label %110

110:                                              ; preds = %105
  %111 = icmp ult i32 %107, 4096
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %114 = load ptr, ptr %113, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %114, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.6, i32 noundef %107) #10
  br label %271

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 6
  %117 = load i16, ptr %116, align 2
  %118 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 18
  store i16 %117, ptr %118, align 4
  %119 = icmp ugt i16 %117, 20
  br i1 %119, label %271, label %120

120:                                              ; preds = %115
  %121 = zext i16 %117 to i32
  %122 = shl nuw nsw i32 1, %121
  %123 = icmp eq i32 %107, %122
  br i1 %123, label %124, label %267

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 11
  %126 = load i64, ptr %125, align 8
  %127 = and i64 %126, 65535
  %128 = icmp ugt i64 %127, 8192
  br i1 %128, label %267, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 15
  %131 = load i64, ptr %130, align 8
  %132 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 14
  store i64 %131, ptr %132, align 8
  %133 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 16
  %134 = load i64, ptr %133, align 8
  %135 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 15
  store i64 %134, ptr %135, align 8
  %136 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 20
  store i32 %137, ptr %138, align 8
  %139 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 4
  %140 = load i32, ptr %139, align 8
  %141 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 21
  store i32 %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 8
  %143 = load i16, ptr %142, align 2
  %144 = zext i16 %143 to i32
  %145 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 23
  store i32 %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 7
  %147 = load i16, ptr %146, align 8
  %148 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4
  store i64 17592186040320, ptr %148, align 8
  %149 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29
  store i64 0, ptr %149, align 8
  %150 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 30
  store i64 4294967295, ptr %150, align 16
  %151 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %152 = load i32, ptr %151, align 4
  %153 = or i32 %152, 1
  store i32 %153, ptr %151, align 4
  %154 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @squashfs_super_ops, ptr %154, align 4
  %155 = tail call ptr @squashfs_cache_init(ptr noundef nonnull @.str.7, i32 noundef 8, i32 noundef 8192) #10
  %156 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 3
  store ptr %155, ptr %156, align 4
  %157 = icmp eq ptr %155, null
  br i1 %157, label %271, label %158

158:                                              ; preds = %129
  %159 = tail call i32 @squashfs_max_decompressors() #10
  %160 = load i32, ptr %108, align 8
  %161 = tail call ptr @squashfs_cache_init(ptr noundef nonnull @.str.8, i32 noundef %159, i32 noundef %160) #10
  %162 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 5
  store ptr %161, ptr %162, align 4
  %163 = icmp eq ptr %161, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %166 = load ptr, ptr %165, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %166, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.9) #10
  br label %271

167:                                              ; preds = %158
  %168 = tail call ptr @squashfs_decompressor_setup(ptr noundef %0, i16 noundef zeroext %147) #10
  %169 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 12
  store ptr %168, ptr %169, align 8
  %170 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = ptrtoint ptr %168 to i32
  store ptr null, ptr %169, align 8
  br label %267

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 17
  store ptr null, ptr %174, align 4
  %175 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 14
  %176 = load i64, ptr %175, align 8
  %177 = icmp eq i64 %176, -1
  br i1 %177, label %189, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 16
  %180 = tail call fastcc ptr @squashfs_read_xattr_id_table(ptr noundef %0, i64 noundef %176, ptr noundef %179)
  %181 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 9
  store ptr %180, ptr %181, align 4
  %182 = icmp ugt ptr %180, inttoptr (i32 -4096 to ptr)
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %185 = load ptr, ptr %184, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %185, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.10) #10
  %186 = load ptr, ptr %181, align 4
  %187 = ptrtoint ptr %186 to i32
  store ptr null, ptr %181, align 4
  %188 = icmp eq ptr %186, inttoptr (i32 -524 to ptr)
  br i1 %188, label %189, label %271

189:                                              ; preds = %183, %178, %173
  %190 = phi ptr [ %37, %173 ], [ %179, %183 ], [ %179, %178 ]
  %191 = load i64, ptr %190, align 8
  %192 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 13
  %193 = load i64, ptr %192, align 8
  %194 = load i32, ptr %145, align 4
  %195 = trunc i32 %194 to i16
  %196 = tail call ptr @squashfs_read_id_index_table(ptr noundef %0, i64 noundef %193, i64 noundef %191, i16 noundef zeroext %195) #10
  %197 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 7
  store ptr %196, ptr %197, align 4
  %198 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  br i1 %198, label %199, label %204

199:                                              ; preds = %189
  %200 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %201 = load ptr, ptr %200, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %201, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.11) #10
  %202 = load ptr, ptr %197, align 4
  %203 = ptrtoint ptr %202 to i32
  store ptr null, ptr %197, align 4
  br label %271

204:                                              ; preds = %189
  %205 = load i64, ptr %196, align 8
  %206 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 18
  %207 = load i64, ptr %206, align 8
  %208 = icmp eq i64 %207, -1
  br i1 %208, label %222, label %209

209:                                              ; preds = %204
  %210 = load i32, ptr %138, align 8
  %211 = tail call ptr @squashfs_read_inode_lookup_table(ptr noundef %0, i64 noundef %207, i64 noundef %205, i32 noundef %210) #10
  %212 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 13
  store ptr %211, ptr %212, align 4
  %213 = icmp ugt ptr %211, inttoptr (i32 -4096 to ptr)
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %216 = load ptr, ptr %215, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %216, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.12) #10
  %217 = load ptr, ptr %212, align 4
  %218 = ptrtoint ptr %217 to i32
  store ptr null, ptr %212, align 4
  br label %271

219:                                              ; preds = %209
  %220 = load i64, ptr %211, align 8
  %221 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 9
  store ptr @squashfs_export_ops, ptr %221, align 16
  br label %222

222:                                              ; preds = %219, %204
  %223 = phi i64 [ %205, %204 ], [ %220, %219 ]
  %224 = load i32, ptr %141, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %244, label %226

226:                                              ; preds = %222
  %227 = load i32, ptr %108, align 8
  %228 = tail call ptr @squashfs_cache_init(ptr noundef nonnull @.str.13, i32 noundef 3, i32 noundef %227) #10
  %229 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 4
  store ptr %228, ptr %229, align 8
  %230 = icmp eq ptr %228, null
  br i1 %230, label %271, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.squashfs_super_block, ptr %38, i32 0, i32 17
  %233 = load i64, ptr %232, align 8
  %234 = tail call ptr @squashfs_read_fragment_index_table(ptr noundef %0, i64 noundef %233, i64 noundef %223, i32 noundef %224) #10
  %235 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 8
  store ptr %234, ptr %235, align 8
  %236 = icmp ugt ptr %234, inttoptr (i32 -4096 to ptr)
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %239 = load ptr, ptr %238, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %239, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.14) #10
  %240 = load ptr, ptr %235, align 8
  %241 = ptrtoint ptr %240 to i32
  store ptr null, ptr %235, align 8
  br label %271

242:                                              ; preds = %231
  %243 = load i64, ptr %234, align 8
  br label %244

244:                                              ; preds = %242, %222
  %245 = phi i64 [ %223, %222 ], [ %243, %242 ]
  %246 = load i64, ptr %135, align 8
  %247 = icmp ugt i64 %246, %245
  br i1 %247, label %267, label %248

248:                                              ; preds = %244
  %249 = load i64, ptr %132, align 8
  %250 = icmp ult i64 %249, %246
  br i1 %250, label %251, label %267

251:                                              ; preds = %248
  %252 = tail call ptr @new_inode(ptr noundef %0) #10
  %253 = icmp eq ptr %252, null
  br i1 %253, label %271, label %254

254:                                              ; preds = %251
  %255 = tail call i32 @squashfs_read_inode(ptr noundef nonnull %252, i64 noundef %126) #10
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %254
  tail call void @make_bad_inode(ptr noundef nonnull %252) #10
  tail call void @iput(ptr noundef nonnull %252) #10
  br label %271

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.inode, ptr %252, i32 0, i32 10
  %260 = load i32, ptr %259, align 4
  tail call void @__insert_inode_hash(ptr noundef nonnull %252, i32 noundef %260) #10
  %261 = tail call ptr @d_make_root(ptr noundef nonnull %252) #10
  %262 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %261, ptr %262, align 64
  %263 = icmp eq ptr %261, null
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %271

266:                                              ; preds = %258
  tail call void @kfree(ptr noundef %38) #10
  br label %289

267:                                              ; preds = %248, %244, %171, %124, %120, %105
  %268 = phi i32 [ -22, %105 ], [ -22, %120 ], [ -22, %124 ], [ %172, %171 ], [ -22, %244 ], [ -22, %248 ]
  %269 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %270 = load ptr, ptr %269, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %270, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.16) #10
  br label %271

271:                                              ; preds = %267, %264, %257, %251, %237, %226, %214, %199, %183, %164, %129, %115, %112, %98, %94, %92, %91, %53, %48, %40
  %272 = phi i32 [ %43, %40 ], [ -22, %48 ], [ -22, %53 ], [ -22, %92 ], [ -22, %94 ], [ -22, %98 ], [ %268, %267 ], [ -22, %112 ], [ -22, %115 ], [ -12, %129 ], [ -12, %164 ], [ %203, %199 ], [ %255, %257 ], [ -12, %264 ], [ %241, %237 ], [ %218, %214 ], [ %187, %183 ], [ -12, %226 ], [ -12, %251 ], [ -22, %91 ]
  %273 = phi ptr [ null, %40 ], [ %38, %48 ], [ %38, %53 ], [ %38, %92 ], [ %38, %94 ], [ %38, %98 ], [ %38, %267 ], [ %38, %112 ], [ %38, %115 ], [ %38, %129 ], [ %38, %164 ], [ %38, %199 ], [ %38, %257 ], [ %38, %264 ], [ %38, %237 ], [ %38, %214 ], [ %38, %183 ], [ %38, %226 ], [ %38, %251 ], [ %38, %91 ]
  %274 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 3
  %275 = load ptr, ptr %274, align 4
  tail call void @squashfs_cache_delete(ptr noundef %275) #10
  %276 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 4
  %277 = load ptr, ptr %276, align 8
  tail call void @squashfs_cache_delete(ptr noundef %277) #10
  %278 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 5
  %279 = load ptr, ptr %278, align 4
  tail call void @squashfs_cache_delete(ptr noundef %279) #10
  tail call void @squashfs_decompressor_destroy(ptr noundef nonnull %22) #10
  %280 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 13
  %281 = load ptr, ptr %280, align 4
  tail call void @kfree(ptr noundef %281) #10
  %282 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 8
  %283 = load ptr, ptr %282, align 8
  tail call void @kfree(ptr noundef %283) #10
  %284 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 7
  %285 = load ptr, ptr %284, align 4
  tail call void @kfree(ptr noundef %285) #10
  %286 = getelementptr inbounds %struct.squashfs_sb_info, ptr %22, i32 0, i32 9
  %287 = load ptr, ptr %286, align 4
  tail call void @kfree(ptr noundef %287) #10
  %288 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %288) #10
  store ptr null, ptr %23, align 4
  tail call void @kfree(ptr noundef %273) #10
  br label %289

289:                                              ; preds = %271, %266, %25, %13
  %290 = phi i32 [ %11, %13 ], [ -12, %25 ], [ %272, %271 ], [ 0, %266 ]
  ret i32 %290
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_table(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_cache_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_max_decompressors() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_decompressor_setup(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @squashfs_read_xattr_id_table(ptr noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = tail call ptr @squashfs_read_table(ptr noundef %0, i64 noundef %1, i32 noundef 16) #10
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  store i64 %7, ptr %2, align 8
  tail call void @kfree(ptr noundef %4) #10
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ inttoptr (i32 -524 to ptr), %6 ], [ %4, %3 ]
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_id_index_table(ptr noundef, i64 noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_inode_lookup_table(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_fragment_index_table(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_inode(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @squashfs_cache_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @squashfs_decompressor_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_lookup_decompressor(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @squashfs_alloc_inode(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr @squashfs_inode_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #10
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.squashfs_inode_info, ptr %3, i32 0, i32 6
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @squashfs_free_inode(ptr noundef %0) #2 {
  %2 = load ptr, ptr @squashfs_inode_cachep, align 4
  %3 = getelementptr i8, ptr %0, i32 -56
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @squashfs_put_super(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @squashfs_cache_delete(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  tail call void @squashfs_cache_delete(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @squashfs_cache_delete(ptr noundef %11) #10
  tail call void @squashfs_decompressor_destroy(ptr noundef nonnull %3) #10
  %12 = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  tail call void @kfree(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #10
  %18 = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #10
  %22 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %22) #10
  store ptr null, ptr %2, align 4
  br label %23

23:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @squashfs_statfs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 255
  %12 = lshr i32 %10, 12
  %13 = and i32 %12, 1048320
  %14 = or i32 %13, %11
  %15 = shl i32 %10, 12
  %16 = and i32 %15, -1048576
  %17 = or i32 %14, %16
  store i32 1936814952, ptr %1, align 8
  %18 = getelementptr inbounds %struct.squashfs_sb_info, ptr %6, i32 0, i32 17
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.squashfs_sb_info, ptr %6, i32 0, i32 19
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %22, -1
  %24 = getelementptr inbounds %struct.squashfs_sb_info, ptr %6, i32 0, i32 18
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i64
  %27 = ashr i64 %23, %26
  %28 = add i64 %27, 1
  %29 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 2
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 3
  %31 = getelementptr inbounds %struct.squashfs_sb_info, ptr %6, i32 0, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %32 = load i32, ptr %31, align 8
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 5
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 6
  store i64 0, ptr %35, align 8
  %36 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 8
  store i32 256, ptr %36, align 8
  %37 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 7
  %38 = zext i32 %17 to i64
  store i64 %38, ptr %37, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @squashfs_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.squashfs_sb_info, ptr %6, i32 0, i32 24
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.23, ptr @.str.22
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %10) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.squashfs_inode_info, ptr %0, i32 0, i32 6
  tail call void @inode_init_once(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
