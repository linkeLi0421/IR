; ModuleID = '/llk/IR/fs/configfs/mount.c_pt.bc'
source_filename = "../fs/configfs/mount.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.configfs_dirent = type { %struct.atomic_t, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, i16, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.65 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.53, %struct.list_head, %struct.list_head, %union.anon.54 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.53 = type { %struct.list_head }
%union.anon.54 = type { %struct.hlist_node }

@configfs_root_group = internal global %struct.config_group { %struct.config_item { ptr getelementptr (i8, ptr @configfs_root_group, i64 4), [20 x i8] c"root\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 4
@__UNIQUE_ID_alias234 = internal constant [27 x i8] c"configfs.alias=fs-configfs\00", section ".modinfo", align 1
@configfs_fs_type = internal global %struct.file_system_type { ptr @.str.2, i32 0, ptr @configfs_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@configfs_mount = internal global ptr null, align 4
@configfs_mnt_count = internal global i32 0, align 4
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@configfs_dir_cachep = dso_local local_unnamed_addr global ptr null, align 4
@__UNIQUE_ID_author235 = internal constant [23 x i8] c"configfs.author=Oracle\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [35 x i8] c"configfs.file=fs/configfs/configfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [21 x i8] c"configfs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version238 = internal constant [23 x i8] c"configfs.version=0.0.2\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"configfs\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0.0.2\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.2, ptr @.str.3 }, section "__modver", align 4
@__UNIQUE_ID_description239 = internal constant [91 x i8] c"configfs.description=Simple RAM filesystem for user driven kernel subsystem configuration.\00", section ".modinfo", align 1
@__initcall__kmod_configfs__240_177_configfs_init1 = internal global ptr @configfs_init, section ".initcall1.init", align 4
@__exitcall_configfs_exit = internal global ptr @configfs_exit, section ".exitcall.exit", align 4
@configfs_context_ops = internal constant %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @configfs_get_tree, ptr null }, align 4
@configfs_ops = internal constant %struct.super_operations { ptr null, ptr null, ptr @configfs_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@configfs_root = internal global %struct.configfs_dirent { %struct.atomic_t zeroinitializer, i32 0, %struct.list_head { ptr getelementptr (i8, ptr @configfs_root, i64 8), ptr getelementptr (i8, ptr @configfs_root, i64 8) }, %struct.list_head { ptr getelementptr (i8, ptr @configfs_root, i64 16), ptr getelementptr (i8, ptr @configfs_root, i64 16) }, i32 0, ptr @configfs_root_group, i32 1, i16 0, ptr null, ptr null, ptr null }, align 4
@configfs_root_inode_operations = external dso_local constant %struct.inode_operations, align 64
@configfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@configfs_dentry_ops = external dso_local constant %struct.dentry_operations, align 64
@.str.4 = private unnamed_addr constant [19 x i8] c"configfs_dir_cache\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\013configfs: Unable to register filesystem!\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_version238, ptr @__exitcall_configfs_exit, ptr @__initcall__kmod_configfs__240_177_configfs_init1, ptr @__modver_attr, ptr @configfs_exit], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @configfs_is_root(ptr noundef readnone %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, @configfs_root_group
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @configfs_pin_fs() local_unnamed_addr #1 {
  %1 = tail call i32 @simple_pin_fs(ptr noundef nonnull @configfs_fs_type, ptr noundef nonnull @configfs_mount, ptr noundef nonnull @configfs_mnt_count) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = inttoptr i32 %1 to ptr
  br label %8

5:                                                ; preds = %0
  %6 = load ptr, ptr @configfs_mount, align 4
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %4, %3 ], [ %7, %5 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @configfs_release_fs() local_unnamed_addr #1 {
  tail call void @simple_release_fs(ptr noundef nonnull @configfs_mount, ptr noundef nonnull @configfs_mnt_count) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @configfs_exit() #3 section ".exit.text" {
  %1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @configfs_fs_type) #6
  %2 = load ptr, ptr @kernel_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %2, ptr noundef nonnull @.str) #6
  %3 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #6
  store ptr null, ptr @configfs_dir_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @configfs_init() #3 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 52, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  store ptr %1, ptr @configfs_dir_cachep, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @kernel_kobj, align 4
  %5 = tail call i32 @sysfs_create_mount_point(ptr noundef %4, ptr noundef nonnull @.str) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call i32 @register_filesystem(ptr noundef nonnull @configfs_fs_type) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  %12 = load ptr, ptr @kernel_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %12, ptr noundef nonnull @.str) #6
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %5, %3 ], [ %8, %10 ]
  %15 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %15) #6
  store ptr null, ptr @configfs_dir_cachep, align 4
  br label %16

16:                                               ; preds = %13, %7, %0
  %17 = phi i32 [ 0, %7 ], [ %14, %13 ], [ -12, %0 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @configfs_init_fs_context(ptr nocapture noundef writeonly %0) #4 {
  store ptr @configfs_context_ops, ptr %0, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_get_tree(ptr noundef %0) #1 {
  %2 = tail call i32 @get_tree_single(ptr noundef %0, ptr noundef nonnull @configfs_fill_super) #6
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_fill_super(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 4096, ptr %3, align 16
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 12, ptr %4, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 1650812272, ptr %5, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @configfs_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %7, align 32
  %8 = tail call ptr @configfs_new_inode(i16 noundef zeroext 16877, ptr noundef nonnull @configfs_root, ptr noundef %0) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 7
  store ptr @configfs_root_inode_operations, ptr %11, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 39
  store ptr @configfs_dir_operations, ptr %12, align 8
  tail call void @inc_nlink(ptr noundef nonnull %8) #6
  %13 = tail call ptr @d_make_root(ptr noundef nonnull %8) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  tail call void @config_group_init(ptr noundef nonnull @configfs_root_group) #6
  store ptr %13, ptr getelementptr inbounds (%struct.config_group, ptr @configfs_root_group, i32 0, i32 0, i32 7), align 4
  %16 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 11
  store ptr @configfs_root, ptr %16, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %13, ptr %17, align 64
  %18 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  store ptr @configfs_dentry_ops, ptr %18, align 16
  br label %19

19:                                               ; preds = %15, %10, %2
  %20 = phi i32 [ 0, %15 ], [ -12, %2 ], [ -12, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @configfs_new_inode(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @configfs_free_inode(ptr noundef %0) #1 {
  %2 = load i16, ptr %0, align 8
  %3 = and i16 %2, -4096
  %4 = icmp eq i16 %3, -24576
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #6
  br label %8

8:                                                ; preds = %5, %1
  tail call void @free_inode_nonrcu(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
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
