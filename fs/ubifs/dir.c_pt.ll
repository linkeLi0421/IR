; ModuleID = '/llk/IR/fs/ubifs/dir.c_pt.bc'
source_filename = "../fs/ubifs/dir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.28 }
%union.anon.28 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.68 = type { ptr }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
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
%struct.list_lru = type { ptr }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.anon = type { i32, i32 }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str = private unnamed_addr constant [37 x i8] c"fscrypt_prepare_new_inode failed: %i\00", align 1
@ubifs_file_address_operations = external dso_local constant %struct.address_space_operations, align 4
@ubifs_file_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ubifs_file_operations = external dso_local constant %struct.file_operations, align 4
@ubifs_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @ubifs_lookup, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_create, ptr @ubifs_link, ptr @ubifs_unlink, ptr @ubifs_symlink, ptr @ubifs_mkdir, ptr @ubifs_rmdir, ptr @ubifs_mknod, ptr @ubifs_rename, ptr @ubifs_setattr, ptr @ubifs_getattr, ptr @ubifs_listxattr, ptr null, ptr @ubifs_update_time, ptr null, ptr @ubifs_tmpfile, ptr null, ptr @ubifs_fileattr_set, ptr @ubifs_fileattr_get, [36 x i8] undef }, align 64
@ubifs_dir_operations = dso_local constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_readdir, ptr null, ptr @ubifs_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @ubifs_dir_release, ptr @ubifs_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ubifs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str.1 = private unnamed_addr constant [21 x i8] c"out of inode numbers\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"running out of inode numbers (current %lu, max %u)\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"dead directory entry '%pd', error %d\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Inconsistent encryption contexts: %lu/%lu\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"!(hash & ~UBIFS_S_KEY_HASH_MASK)\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fs/ubifs/key.h\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"cannot create regular file, error %d\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"inode_is_locked(dir)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fs/ubifs/dir.c\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"inode_is_locked(inode)\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"cannot create directory, error %d\00", align 1
@__const.ubifs_rmdir.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 32, i8 0, i8 32, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@__const.ubifs_mknod.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 80, i8 0, i8 16, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"inode_is_locked(old_dir)\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"inode_is_locked(new_dir)\00", align 1
@__const.ubifs_xrename.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 48, i8 0, i8 32, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"fst_inode && snd_inode\00", align 1
@__const.do_rename.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 48, i8 0, i8 48, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"inode_is_locked(new_inode)\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"!whiteout_ui->dirty\00", align 1
@__const.do_tmpfile.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 80, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@__const.do_tmpfile.ino_req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [44 x i8] c"inode->i_op == &ubifs_file_inode_operations\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"ui->dirty\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"cannot create temporary file, error %d\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"!file->private_data\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"le64_to_cpu(dent->ch.sqnum) > ubifs_inode(dir)->creat_sqnum\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"cannot find next direntry, error %d\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@switch.table.ubifs_readdir = private unnamed_addr constant [7 x i32] [i32 8, i32 4, i32 10, i32 6, i32 2, i32 1, i32 12], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_new_inode(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = tail call ptr @new_inode(ptr noundef %5) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %96, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 128
  store i32 %11, ptr %9, align 4
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %6, ptr noundef %1, i16 noundef zeroext %2) #9
  %12 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 15
  %13 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14
  %14 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %13, ptr noundef align 8 dereferenceable(16) %14, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %12, ptr noundef align 8 dereferenceable(16) %14, i32 16, i1 false)
  %15 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 7
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 16384
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef -95) #9
  br label %94

23:                                               ; preds = %8
  %24 = and i16 %2, -4096
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, -4096
  %27 = lshr exact i32 %26, 12
  switch i32 %27, label %42 [
    i32 7, label %28
    i32 3, label %33
    i32 9, label %38
    i32 11, label %40
    i32 0, label %40
    i32 5, label %40
    i32 1, label %40
  ]

28:                                               ; preds = %23
  %29 = load ptr, ptr %15, align 8
  %30 = getelementptr inbounds %struct.address_space, ptr %29, i32 0, i32 9
  store ptr @ubifs_file_address_operations, ptr %30, align 4
  %31 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ubifs_file_inode_operations, ptr %31, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 39
  store ptr @ubifs_file_operations, ptr %32, align 8
  br label %43

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ubifs_dir_inode_operations, ptr %34, align 8
  %35 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 39
  store ptr @ubifs_dir_operations, ptr %35, align 8
  %36 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 11
  store i64 160, ptr %36, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  store i64 160, ptr %37, align 8
  br label %43

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ubifs_symlink_inode_operations, ptr %39, align 8
  br label %43

40:                                               ; preds = %23, %23, %23, %23
  %41 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ubifs_file_inode_operations, ptr %41, align 8
  br label %43

42:                                               ; preds = %23
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #9, !srcloc !8
  unreachable

43:                                               ; preds = %40, %38, %33, %28
  %44 = load i16, ptr %1, align 8
  %45 = and i16 %44, -4096
  %46 = icmp eq i16 %45, 16384
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 12
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i16 %24, 16384
  %51 = select i1 %50, i32 19, i32 3
  %52 = and i32 %49, %51
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i32 [ %52, %47 ], [ 0, %43 ]
  %55 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 12
  store i32 %54, ptr %55, align 8
  call void @ubifs_set_inode_flags(ptr noundef nonnull %6) #9
  %56 = icmp eq i16 %24, -32768
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %59 = load i16, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 6
  %61 = trunc i16 %59 to i8
  %62 = load i8, ptr %60, align 4
  %63 = lshr i8 %61, 3
  %64 = and i8 %63, 24
  %65 = and i8 %62, -25
  %66 = or i8 %64, %65
  store i8 %66, ptr %60, align 4
  br label %71

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 6
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, -25
  store i8 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %57
  %72 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 10
  store i64 0, ptr %72, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %73) #9
  %74 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = icmp ugt i32 %75, -1048577
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = icmp ugt i32 %75, -257
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %80 = load i16, ptr %73, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %73, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %94

82:                                               ; preds = %77
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %75, i32 noundef -256) #9
  %83 = load i32, ptr %74, align 8
  br label %84

84:                                               ; preds = %82, %71
  %85 = phi i32 [ %83, %82 ], [ %75, %71 ]
  %86 = add i32 %85, 1
  store i32 %86, ptr %74, align 8
  %87 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 3
  %89 = load i64, ptr %88, align 8
  %90 = add i64 %89, 1
  store i64 %90, ptr %88, align 8
  %91 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 1
  store i64 %90, ptr %91, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %92 = load i16, ptr %73, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %73, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %96

94:                                               ; preds = %79, %22
  %95 = phi ptr [ inttoptr (i32 -95 to ptr), %22 ], [ inttoptr (i32 -22 to ptr), %79 ]
  call void @make_bad_inode(ptr noundef nonnull %6) #9
  call void @iput(ptr noundef nonnull %6) #9
  br label %96

96:                                               ; preds = %94, %84, %3
  %97 = phi ptr [ %95, %94 ], [ %6, %84 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %97
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_check_dir_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.fscrypt_name, align 4
  %3 = alloca %union.ubifs_key, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %3, align 8
  %10 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 1073741824, ptr %10, align 4
  %11 = call ptr @ubifs_tnc_next_ent(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %2) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = ptrtoint ptr %11 to i32
  %15 = icmp eq ptr %11, inttoptr (i32 -2 to ptr)
  %16 = select i1 %15, i32 0, i32 %14
  br label %18

17:                                               ; preds = %1
  call void @kfree(ptr noundef %11) #9
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ -39, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret i32 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_getattr(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 %3, i32 %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 12
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = or i64 %17, 32
  store i64 %18, ptr %16, align 8
  %19 = load i32, ptr %11, align 8
  br label %20

20:                                               ; preds = %15, %5
  %21 = phi i32 [ %19, %15 ], [ %12, %5 ]
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %26 = load i64, ptr %25, align 8
  %27 = or i64 %26, 4
  store i64 %27, ptr %25, align 8
  %28 = load i32, ptr %11, align 8
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i32 [ %28, %24 ], [ %21, %20 ]
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %35 = load i64, ptr %34, align 8
  %36 = or i64 %35, 2048
  store i64 %36, ptr %34, align 8
  %37 = load i32, ptr %11, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %37, %33 ], [ %30, %29 ]
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 4
  %44 = load i64, ptr %43, align 8
  %45 = or i64 %44, 16
  store i64 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 5
  %48 = load i64, ptr %47, align 8
  %49 = or i64 %48, 2100
  store i64 %49, ptr %47, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #9
  %50 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 3
  store i32 4096, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 11
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 11
  store i64 %52, ptr %53, align 8
  %54 = load i16, ptr %9, align 8
  %55 = and i16 %54, -4096
  %56 = icmp eq i16 %55, -32768
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.ubifs_inode, ptr %9, i32 0, i32 3
  %59 = load i32, ptr %58, align 8
  %60 = zext i32 %59 to i64
  %61 = add i64 %52, 4095
  %62 = add i64 %61, %60
  %63 = ashr i64 %62, 9
  %64 = and i64 %63, -8
  br label %65

65:                                               ; preds = %57, %46
  %66 = phi i64 [ %64, %57 ], [ 0, %46 ]
  %67 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 16
  store i64 %66, ptr %67, align 8
  tail call void @mutex_unlock(ptr noundef %10) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ubifs_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %union.ubifs_key, align 8
  %5 = alloca %struct.fscrypt_name, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !13
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @generic_set_encrypted_ci_d_ops(ptr noundef %1) #9
  br label %97

15:                                               ; preds = %3
  %16 = getelementptr inbounds i8, ptr %5, i32 4
  %17 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %17, i8 0, i32 20, i1 false) #9
  %18 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  store ptr %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %16, align 4
  %21 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1, i32 1
  store i32 %22, ptr %23, align 4
  tail call void @generic_set_encrypted_ci_d_ops(ptr noundef %1) #9
  %24 = icmp ugt i32 %22, 255
  br i1 %24, label %93, label %25

25:                                               ; preds = %15
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3136, i32 noundef 312) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %93, label %29

29:                                               ; preds = %25
  %30 = icmp eq ptr %20, null
  %31 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  br i1 %30, label %33, label %36

33:                                               ; preds = %29
  store i32 %32, ptr %4, align 8
  %34 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 1073741824, ptr %34, align 4
  %35 = call i32 @ubifs_tnc_lookup_dh(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %27, i32 noundef 0) #9
  br label %46

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %9, i32 0, i32 66
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef nonnull %20, i32 noundef %22) #9
  %40 = icmp ult i32 %39, 536870912
  br i1 %40, label %42, label %41, !prof !14

41:                                               ; preds = %36
  tail call void @ubifs_assert_failed(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 152) #9
  br label %42

42:                                               ; preds = %41, %36
  store i32 %32, ptr %4, align 8
  %43 = or i32 %39, 1073741824
  %44 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = call i32 @ubifs_tnc_lookup_nm(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %27, ptr noundef nonnull %5) #9
  br label %46

46:                                               ; preds = %42, %33
  %47 = phi i32 [ %35, %33 ], [ %45, %42 ]
  switch i32 %47, label %48 [
    i32 0, label %50
    i32 -2, label %93
  ]

48:                                               ; preds = %46
  %49 = inttoptr i32 %47 to ptr
  br label %93

50:                                               ; preds = %46
  %51 = load i8, ptr @ubifs_dbg, align 4
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %9, i32 0, i32 194
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ubifs_debug_info, ptr %56, i32 0, i32 19
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %54, %50
  %62 = getelementptr inbounds %struct.ubifs_dent_node, ptr %27, i32 0, i32 5
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = load i32, ptr %23, align 4
  %66 = icmp eq i32 %65, %64
  br i1 %66, label %67, label %93

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ubifs_dent_node, ptr %27, i32 0, i32 7
  %69 = load ptr, ptr %16, align 4
  %70 = call i32 @bcmp(ptr %68, ptr %69, i32 %64) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %67, %54
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.ubifs_dent_node, ptr %27, i32 0, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call ptr @ubifs_iget(ptr noundef %73, i32 noundef %76) #9
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = ptrtoint ptr %77 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %80) #9
  call void @ubifs_ro_mode(ptr noundef %9, i32 noundef %80) #9
  br label %93

81:                                               ; preds = %72
  %82 = load i32, ptr %10, align 4
  %83 = and i32 %82, 16384
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load i16, ptr %77, align 8
  %87 = and i16 %86, -4096
  switch i16 %87, label %93 [
    i16 16384, label %88
    i16 -24576, label %88
  ]

88:                                               ; preds = %85, %85
  %89 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 10
  %92 = load i32, ptr %91, align 4
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %90, i32 noundef %92) #9
  call void @iput(ptr noundef %77) #9
  br label %93

93:                                               ; preds = %88, %85, %81, %79, %67, %61, %48, %46, %25, %15
  %94 = phi ptr [ %49, %48 ], [ %77, %79 ], [ inttoptr (i32 -1 to ptr), %88 ], [ %77, %81 ], [ null, %46 ], [ %77, %85 ], [ inttoptr (i32 -36 to ptr), %15 ], [ inttoptr (i32 -12 to ptr), %25 ], [ inttoptr (i32 -22 to ptr), %61 ], [ inttoptr (i32 -22 to ptr), %67 ]
  %95 = phi ptr [ %27, %48 ], [ %27, %79 ], [ %27, %88 ], [ %27, %81 ], [ %27, %46 ], [ %27, %85 ], [ null, %15 ], [ null, %25 ], [ %27, %61 ], [ %27, %67 ]
  call void @kfree(ptr noundef %95) #9
  %96 = call ptr @d_splice_alias(ptr noundef %94, ptr noundef %1) #9
  br label %97

97:                                               ; preds = %93, %14
  %98 = phi ptr [ inttoptr (i32 -95 to ptr), %14 ], [ %96, %93 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_create(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = alloca %struct.ubifs_budget_req, align 4
  %7 = alloca %struct.fscrypt_name, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @__const.ubifs_mknod.req, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !13
  %12 = call i32 @ubifs_budget_space(ptr noundef %11, ptr noundef nonnull %6) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 16384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %21 = getelementptr inbounds i8, ptr %7, i32 4
  %22 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %22, i8 0, i32 20, i1 false) #9
  store ptr %20, ptr %7, align 4
  %23 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %21, align 4
  %25 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fscrypt_name, ptr %7, i32 0, i32 1, i32 1
  store i32 %26, ptr %27, align 4
  %28 = add i32 %26, 64
  %29 = and i32 %28, -8
  %30 = call ptr @ubifs_new_inode(ptr noundef %11, ptr noundef %1, i16 noundef zeroext %3)
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = ptrtoint ptr %30 to i32
  br label %57

34:                                               ; preds = %19
  %35 = call i32 @ubifs_init_security(ptr noundef %1, ptr noundef %30, ptr noundef %20) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock(ptr noundef %38) #9
  %39 = sext i32 %29 to i64
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, %39
  store i64 %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %45 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %46 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %45, ptr noundef align 8 dereferenceable(16) %46, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %44, ptr noundef align 8 dereferenceable(16) %46, i32 16, i1 false)
  %47 = call i32 @ubifs_jnl_update(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %30, i32 noundef 0, i32 noundef 0) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  call void @mutex_unlock(ptr noundef %38) #9
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %6) #9
  %50 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  call void @__insert_inode_hash(ptr noundef %30, i32 noundef %51) #9
  call void @d_instantiate(ptr noundef %2, ptr noundef %30) #9
  br label %59

52:                                               ; preds = %37
  %53 = load i64, ptr %40, align 8
  %54 = sub i64 %53, %39
  store i64 %54, ptr %40, align 8
  store i64 %54, ptr %43, align 8
  call void @mutex_unlock(ptr noundef %38) #9
  br label %55

55:                                               ; preds = %52, %34
  %56 = phi i32 [ %35, %34 ], [ %47, %52 ]
  call void @make_bad_inode(ptr noundef %30) #9
  call void @iput(ptr noundef %30) #9
  br label %57

57:                                               ; preds = %55, %32, %14
  %58 = phi i32 [ -95, %14 ], [ %33, %32 ], [ %56, %55 ]
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %6) #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef %58) #9
  br label %59

59:                                               ; preds = %57, %49, %5
  %60 = phi i32 [ %58, %57 ], [ 0, %49 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_link(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.ubifs_budget_req, align 4
  %5 = alloca %struct.fscrypt_name, align 4
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 64
  %17 = and i32 %16, -8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  %18 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %18, align 4, !annotation !13
  store i32 2097168, ptr %4, align 4
  %19 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.ubifs_inode, ptr %12, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = trunc i32 %21 to i16
  %23 = add i16 %22, 7
  %24 = and i16 %23, 32760
  store i16 %24, ptr %19, align 4
  %25 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ubifs_budget_req, ptr %4, i32 0, i32 4
  store i32 0, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  %29 = load volatile i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32, !prof !15

31:                                               ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 709) #9
  br label %32

32:                                               ; preds = %31, %3
  %33 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 24
  %34 = load volatile i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37, !prof !15

36:                                               ; preds = %32
  tail call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 710) #9
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 16384
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %5, i32 4
  %44 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %44, i8 0, i32 20, i1 false) #9
  store ptr %13, ptr %5, align 4
  %45 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %46 = load ptr, ptr %45, align 8
  store ptr %46, ptr %43, align 4
  %47 = load i32, ptr %14, align 4
  %48 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1, i32 1
  store i32 %47, ptr %48, align 4
  %49 = tail call i32 @dbg_check_synced_i_size(ptr noundef %10, ptr noundef %12) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %42
  %52 = call i32 @ubifs_budget_space(ptr noundef %10, ptr noundef nonnull %4) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock(ptr noundef %55) #9
  %56 = getelementptr inbounds %struct.ubifs_inode, ptr %12, i32 0, i32 7
  call void @mutex_lock(ptr noundef %56) #9
  %57 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %62 = load i32, ptr %61, align 4
  call void @ubifs_delete_orphan(ptr noundef %10, i32 noundef %62) #9
  br label %63

63:                                               ; preds = %60, %54
  call void @inc_nlink(ptr noundef %12) #9
  call void @ihold(ptr noundef %12) #9
  %64 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %12) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  %65 = sext i32 %17 to i64
  %66 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, %65
  store i64 %68, ptr %66, align 8
  %69 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  store i64 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %71 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %71, ptr noundef align 8 dereferenceable(16) %64, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %70, ptr noundef align 8 dereferenceable(16) %64, i32 16, i1 false)
  %72 = call i32 @ubifs_jnl_update(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %12, i32 noundef 0, i32 noundef 0) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  call void @mutex_unlock(ptr noundef %56) #9
  call void @mutex_unlock(ptr noundef %55) #9
  call void @ubifs_release_budget(ptr noundef %10, ptr noundef nonnull %4) #9
  call void @d_instantiate(ptr noundef %2, ptr noundef %12) #9
  br label %85

75:                                               ; preds = %63
  %76 = load i64, ptr %66, align 8
  %77 = sub i64 %76, %65
  store i64 %77, ptr %66, align 8
  store i64 %77, ptr %69, align 8
  call void @drop_nlink(ptr noundef %12) #9
  %78 = load i32, ptr %57, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %82 = load i32, ptr %81, align 4
  %83 = call i32 @ubifs_add_orphan(ptr noundef %10, i32 noundef %82) #9
  br label %84

84:                                               ; preds = %80, %75
  call void @mutex_unlock(ptr noundef %56) #9
  call void @mutex_unlock(ptr noundef %55) #9
  call void @ubifs_release_budget(ptr noundef %10, ptr noundef nonnull %4) #9
  call void @iput(ptr noundef %12) #9
  br label %85

85:                                               ; preds = %84, %74, %51, %42, %37
  %86 = phi i32 [ 0, %74 ], [ -95, %37 ], [ %49, %42 ], [ %52, %51 ], [ %72, %84 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_unlink(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ubifs_budget_req, align 4
  %4 = alloca %struct.fscrypt_name, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @__const.ubifs_rmdir.req, i32 20, i1 false)
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %13 = load i32, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %20 = getelementptr inbounds i8, ptr %4, i32 4
  %21 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %21, i8 0, i32 20, i1 false) #9
  store ptr %19, ptr %4, align 4
  %22 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %20, align 4
  %24 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fscrypt_name, ptr %4, i32 0, i32 1, i32 1
  store i32 %25, ptr %26, align 4
  %27 = tail call i32 @ubifs_purge_xattrs(ptr noundef %11) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %18
  %30 = add i32 %25, 64
  %31 = and i32 %30, -8
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36, !prof !15

35:                                               ; preds = %29
  tail call void @ubifs_assert_failed(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 795) #9
  br label %36

36:                                               ; preds = %35, %29
  %37 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 24
  %38 = load volatile i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !prof !15

40:                                               ; preds = %36
  tail call void @ubifs_assert_failed(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 796) #9
  br label %41

41:                                               ; preds = %40, %36
  %42 = tail call i32 @dbg_check_synced_i_size(ptr noundef %9, ptr noundef %11) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = call i32 @ubifs_budget_space(ptr noundef %9, ptr noundef nonnull %3) #9
  %46 = icmp eq i32 %45, 0
  switch i32 %45, label %70 [
    i32 -28, label %47
    i32 0, label %47
  ]

47:                                               ; preds = %44, %44
  %48 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 7
  call void @mutex_lock(ptr noundef %48) #9
  %49 = getelementptr inbounds %struct.ubifs_inode, ptr %11, i32 0, i32 7
  call void @mutex_lock(ptr noundef %49) #9
  %50 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %0) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @drop_nlink(ptr noundef %11) #9
  %51 = sext i32 %31 to i64
  %52 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %53 = load i64, ptr %52, align 8
  %54 = sub i64 %53, %51
  store i64 %54, ptr %52, align 8
  %55 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 11
  store i64 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %57 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %57, ptr noundef align 8 dereferenceable(16) %50, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %56, ptr noundef align 8 dereferenceable(16) %50, i32 16, i1 false)
  %58 = call i32 @ubifs_jnl_update(ptr noundef %9, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %11, i32 noundef 1, i32 noundef 0) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %47
  call void @mutex_unlock(ptr noundef %49) #9
  call void @mutex_unlock(ptr noundef %48) #9
  br i1 %46, label %61, label %62

61:                                               ; preds = %60
  call void @ubifs_release_budget(ptr noundef %9, ptr noundef nonnull %3) #9
  br label %70

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %9, i32 0, i32 87, i32 6
  %64 = load i8, ptr %63, align 4
  %65 = and i8 %64, -4
  store i8 %65, ptr %63, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !16
  br label %70

66:                                               ; preds = %47
  %67 = load i64, ptr %52, align 8
  %68 = add i64 %67, %51
  store i64 %68, ptr %52, align 8
  store i64 %68, ptr %55, align 8
  call void @set_nlink(ptr noundef %11, i32 noundef %13) #9
  call void @mutex_unlock(ptr noundef %49) #9
  call void @mutex_unlock(ptr noundef %48) #9
  br i1 %46, label %69, label %70

69:                                               ; preds = %66
  call void @ubifs_release_budget(ptr noundef %9, ptr noundef nonnull %3) #9
  br label %70

70:                                               ; preds = %69, %66, %62, %61, %44, %41, %18, %2
  %71 = phi i32 [ %27, %18 ], [ -95, %2 ], [ 0, %62 ], [ 0, %61 ], [ %42, %41 ], [ %58, %69 ], [ %58, %66 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_symlink(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.ubifs_budget_req, align 4
  %6 = alloca %struct.fscrypt_name, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strlen(ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %12, align 4, !annotation !13
  %13 = shl i32 %11, 7
  %14 = add i32 %13, 896
  %15 = and i32 %14, 1047552
  %16 = or i32 %15, 1048656
  store i32 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.ubifs_budget_req, ptr %5, i32 0, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ubifs_budget_req, ptr %5, i32 0, i32 3
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ubifs_budget_req, ptr %5, i32 0, i32 4
  store i32 0, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !13
  %20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %89

24:                                               ; preds = %4
  %25 = add i32 %11, 1
  %26 = icmp ugt i32 %25, 4096
  br i1 %26, label %89, label %27

27:                                               ; preds = %24
  %28 = call i32 @ubifs_budget_space(ptr noundef %10, ptr noundef nonnull %5) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %89

30:                                               ; preds = %27
  %31 = load i32, ptr %20, align 4
  %32 = and i32 %31, 16384
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %36 = getelementptr inbounds i8, ptr %6, i32 4
  %37 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %37, i8 0, i32 20, i1 false) #9
  store ptr %35, ptr %6, align 4
  %38 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %39 = load ptr, ptr %38, align 8
  store ptr %39, ptr %36, align 4
  %40 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.fscrypt_name, ptr %6, i32 0, i32 1, i32 1
  store i32 %41, ptr %42, align 4
  %43 = add i32 %41, 64
  %44 = and i32 %43, -8
  %45 = call ptr @ubifs_new_inode(ptr noundef %10, ptr noundef %1, i16 noundef zeroext -24065)
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = ptrtoint ptr %45 to i32
  br label %87

49:                                               ; preds = %34
  %50 = call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3136) #11
  %51 = getelementptr inbounds %struct.ubifs_inode, ptr %45, i32 0, i32 16
  store ptr %50, ptr %51, align 8
  %52 = icmp eq ptr %50, null
  br i1 %52, label %85, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 16384
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %50, ptr align 1 %3, i32 %25, i1 false)
  %59 = load ptr, ptr %51, align 8
  %60 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 43
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ubifs_inode, ptr %45, i32 0, i32 15
  store i32 %11, ptr %61, align 4
  %62 = zext i32 %11 to i64
  %63 = getelementptr inbounds %struct.ubifs_inode, ptr %45, i32 0, i32 11
  store i64 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 13
  store i64 %62, ptr %64, align 8
  %65 = call i32 @ubifs_init_security(ptr noundef %1, ptr noundef %45, ptr noundef %35) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock(ptr noundef %68) #9
  %69 = sext i32 %44 to i64
  %70 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %71 = load i64, ptr %70, align 8
  %72 = add i64 %71, %69
  store i64 %72, ptr %70, align 8
  %73 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  store i64 %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %75 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %76 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %75, ptr noundef align 8 dereferenceable(16) %76, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %74, ptr noundef align 8 dereferenceable(16) %76, i32 16, i1 false)
  %77 = call i32 @ubifs_jnl_update(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %45, i32 noundef 0, i32 noundef 0) #9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  call void @mutex_unlock(ptr noundef %68) #9
  %80 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 10
  %81 = load i32, ptr %80, align 4
  call void @__insert_inode_hash(ptr noundef %45, i32 noundef %81) #9
  call void @d_instantiate(ptr noundef %2, ptr noundef %45) #9
  br label %87

82:                                               ; preds = %67
  %83 = load i64, ptr %70, align 8
  %84 = sub i64 %83, %69
  store i64 %84, ptr %70, align 8
  store i64 %84, ptr %73, align 8
  call void @mutex_unlock(ptr noundef %68) #9
  br label %85

85:                                               ; preds = %82, %58, %53, %49
  %86 = phi i32 [ %65, %58 ], [ %77, %82 ], [ -12, %49 ], [ -95, %53 ]
  call void @make_bad_inode(ptr noundef %45) #9
  call void @iput(ptr noundef %45) #9
  br label %87

87:                                               ; preds = %85, %79, %47, %30
  %88 = phi i32 [ -95, %30 ], [ %48, %47 ], [ %86, %85 ], [ 0, %79 ]
  call void @ubifs_release_budget(ptr noundef %10, ptr noundef nonnull %5) #9
  br label %89

89:                                               ; preds = %87, %27, %24, %4
  %90 = phi i32 [ %88, %87 ], [ %28, %27 ], [ -95, %4 ], [ -36, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_mkdir(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.ubifs_budget_req, align 4
  %6 = alloca %struct.fscrypt_name, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) @__const.do_tmpfile.req, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !13
  %11 = call i32 @ubifs_budget_space(ptr noundef %10, ptr noundef nonnull %5) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %20 = getelementptr inbounds i8, ptr %6, i32 4
  %21 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %21, i8 0, i32 20, i1 false) #9
  store ptr %19, ptr %6, align 4
  %22 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %20, align 4
  %24 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fscrypt_name, ptr %6, i32 0, i32 1, i32 1
  store i32 %25, ptr %26, align 4
  %27 = add i32 %25, 64
  %28 = and i32 %27, -8
  %29 = or i16 %3, 16384
  %30 = call ptr @ubifs_new_inode(ptr noundef %10, ptr noundef %1, i16 noundef zeroext %29)
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = ptrtoint ptr %30 to i32
  br label %57

34:                                               ; preds = %18
  %35 = call i32 @ubifs_init_security(ptr noundef %1, ptr noundef %30, ptr noundef %19) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock(ptr noundef %38) #9
  %39 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  call void @__insert_inode_hash(ptr noundef %30, i32 noundef %40) #9
  call void @inc_nlink(ptr noundef %30) #9
  call void @inc_nlink(ptr noundef %1) #9
  %41 = sext i32 %28 to i64
  %42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %43, %41
  store i64 %44, ptr %42, align 8
  %45 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %47 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %48 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %47, ptr noundef align 8 dereferenceable(16) %48, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %46, ptr noundef align 8 dereferenceable(16) %48, i32 16, i1 false)
  %49 = call i32 @ubifs_jnl_update(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %30, i32 noundef 0, i32 noundef 0) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %37
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %10, ptr noundef nonnull @.str.12, i32 noundef %49) #9
  %52 = load i64, ptr %42, align 8
  %53 = sub i64 %52, %41
  store i64 %53, ptr %42, align 8
  store i64 %53, ptr %45, align 8
  call void @drop_nlink(ptr noundef %1) #9
  call void @mutex_unlock(ptr noundef %38) #9
  br label %55

54:                                               ; preds = %37
  call void @mutex_unlock(ptr noundef %38) #9
  call void @ubifs_release_budget(ptr noundef %10, ptr noundef nonnull %5) #9
  call void @d_instantiate(ptr noundef %2, ptr noundef %30) #9
  br label %59

55:                                               ; preds = %51, %34
  %56 = phi i32 [ %35, %34 ], [ %49, %51 ]
  call void @make_bad_inode(ptr noundef %30) #9
  call void @iput(ptr noundef %30) #9
  br label %57

57:                                               ; preds = %55, %32, %13
  %58 = phi i32 [ -95, %13 ], [ %33, %32 ], [ %56, %55 ]
  call void @ubifs_release_budget(ptr noundef %10, ptr noundef nonnull %5) #9
  br label %59

59:                                               ; preds = %57, %54, %4
  %60 = phi i32 [ %58, %57 ], [ 0, %54 ], [ %11, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_rmdir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fscrypt_name, align 4
  %4 = alloca %union.ubifs_key, align 8
  %5 = alloca %struct.ubifs_budget_req, align 4
  %6 = alloca %struct.fscrypt_name, align 4
  %7 = alloca %struct.timespec64, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) @__const.ubifs_rmdir.req, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !15

17:                                               ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 887) #9
  br label %18

18:                                               ; preds = %17, %2
  %19 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 24
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !15

22:                                               ; preds = %18
  tail call void @ubifs_assert_failed(ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 888) #9
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr %12, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 27
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %29 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %4, align 8
  %31 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 1073741824, ptr %31, align 4
  %32 = call ptr @ubifs_tnc_next_ent(ptr noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = icmp eq ptr %32, inttoptr (i32 -2 to ptr)
  br i1 %35, label %37, label %42

36:                                               ; preds = %23
  call void @kfree(ptr noundef %32) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %83

37:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  %38 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 16384
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %83

42:                                               ; preds = %34
  %43 = ptrtoint ptr %32 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %83

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %46 = getelementptr inbounds i8, ptr %6, i32 4
  %47 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %47, i8 0, i32 20, i1 false) #9
  store ptr %45, ptr %6, align 4
  %48 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %49 = load ptr, ptr %48, align 8
  store ptr %49, ptr %46, align 4
  %50 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.fscrypt_name, ptr %6, i32 0, i32 1, i32 1
  store i32 %51, ptr %52, align 4
  %53 = call i32 @ubifs_purge_xattrs(ptr noundef %13) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %44
  %56 = call i32 @ubifs_budget_space(ptr noundef %11, ptr noundef nonnull %5) #9
  %57 = icmp eq i32 %56, 0
  switch i32 %56, label %83 [
    i32 -28, label %58
    i32 0, label %58
  ]

58:                                               ; preds = %55, %55
  %59 = add i32 %51, 64
  %60 = and i32 %59, -8
  %61 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 7
  call void @mutex_lock(ptr noundef %61) #9
  %62 = getelementptr inbounds %struct.ubifs_inode, ptr %13, i32 0, i32 7
  call void @mutex_lock(ptr noundef %62) #9
  %63 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef %0) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @clear_nlink(ptr noundef %13) #9
  call void @drop_nlink(ptr noundef %0) #9
  %64 = sext i32 %60 to i64
  %65 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %66 = load i64, ptr %65, align 8
  %67 = sub i64 %66, %64
  store i64 %67, ptr %65, align 8
  %68 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 11
  store i64 %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %70 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %70, ptr noundef align 8 dereferenceable(16) %63, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %69, ptr noundef align 8 dereferenceable(16) %63, i32 16, i1 false)
  %71 = call i32 @ubifs_jnl_update(ptr noundef %11, ptr noundef %0, ptr noundef nonnull %6, ptr noundef %13, i32 noundef 1, i32 noundef 0) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  call void @mutex_unlock(ptr noundef %62) #9
  call void @mutex_unlock(ptr noundef %61) #9
  br i1 %57, label %74, label %75

74:                                               ; preds = %73
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %5) #9
  br label %83

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.ubifs_info, ptr %11, i32 0, i32 87, i32 6
  %77 = load i8, ptr %76, align 4
  %78 = and i8 %77, -4
  store i8 %78, ptr %76, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !17
  br label %83

79:                                               ; preds = %58
  %80 = load i64, ptr %65, align 8
  %81 = add i64 %80, %64
  store i64 %81, ptr %65, align 8
  store i64 %81, ptr %68, align 8
  call void @inc_nlink(ptr noundef %0) #9
  call void @set_nlink(ptr noundef %13, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %62) #9
  call void @mutex_unlock(ptr noundef %61) #9
  br i1 %57, label %82, label %83

82:                                               ; preds = %79
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %5) #9
  br label %83

83:                                               ; preds = %82, %79, %75, %74, %55, %44, %42, %37, %36
  %84 = phi i32 [ %43, %42 ], [ %53, %44 ], [ -39, %36 ], [ -95, %37 ], [ 0, %75 ], [ 0, %74 ], [ %71, %82 ], [ %71, %79 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_mknod(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca %struct.ubifs_budget_req, align 4
  %7 = alloca %struct.fscrypt_name, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @__const.ubifs_mknod.req, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !13
  %12 = and i16 %3, -4096
  switch i16 %12, label %25 [
    i16 24576, label %13
    i16 8192, label %13
  ]

13:                                               ; preds = %5, %5
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3136, i32 noundef 8) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %87, label %17

17:                                               ; preds = %13
  %18 = and i32 %4, 255
  %19 = lshr i32 %4, 12
  %20 = and i32 %19, 1048320
  %21 = or i32 %20, %18
  %22 = shl i32 %4, 12
  %23 = and i32 %22, -1048576
  %24 = or i32 %21, %23
  store i32 %24, ptr %15, align 8
  br label %25

25:                                               ; preds = %17, %5
  %26 = phi ptr [ %15, %17 ], [ null, %5 ]
  %27 = phi i32 [ 4, %17 ], [ 0, %5 ]
  %28 = shl nuw nsw i32 %27, 7
  %29 = add nuw nsw i32 %28, 896
  %30 = and i32 %29, 1024
  %31 = or i32 %30, 1048656
  store i32 %31, ptr %6, align 4
  %32 = call i32 @ubifs_budget_space(ptr noundef %11, ptr noundef nonnull %6) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  call void @kfree(ptr noundef %26) #9
  br label %87

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 16384
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void @kfree(ptr noundef %26) #9
  br label %85

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %43 = getelementptr inbounds i8, ptr %7, i32 4
  %44 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %44, i8 0, i32 20, i1 false) #9
  store ptr %42, ptr %7, align 4
  %45 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %46 = load ptr, ptr %45, align 8
  store ptr %46, ptr %43, align 4
  %47 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.fscrypt_name, ptr %7, i32 0, i32 1, i32 1
  store i32 %48, ptr %49, align 4
  %50 = add i32 %48, 64
  %51 = and i32 %50, -8
  %52 = call ptr @ubifs_new_inode(ptr noundef %11, ptr noundef %1, i16 noundef zeroext %3)
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  call void @kfree(ptr noundef %26) #9
  %55 = ptrtoint ptr %52 to i32
  br label %85

56:                                               ; preds = %41
  %57 = load i16, ptr %52, align 8
  call void @init_special_inode(ptr noundef %52, i16 noundef zeroext %57, i32 noundef %4) #9
  %58 = zext i32 %27 to i64
  %59 = getelementptr inbounds %struct.ubifs_inode, ptr %52, i32 0, i32 11
  store i64 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 13
  store i64 %58, ptr %60, align 8
  %61 = getelementptr inbounds %struct.ubifs_inode, ptr %52, i32 0, i32 16
  store ptr %26, ptr %61, align 8
  %62 = getelementptr inbounds %struct.ubifs_inode, ptr %52, i32 0, i32 15
  store i32 %27, ptr %62, align 4
  %63 = call i32 @ubifs_init_security(ptr noundef %1, ptr noundef %52, ptr noundef %42) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock(ptr noundef %66) #9
  %67 = sext i32 %51 to i64
  %68 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %69, %67
  store i64 %70, ptr %68, align 8
  %71 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  store i64 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %73 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %74 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %73, ptr noundef align 8 dereferenceable(16) %74, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %72, ptr noundef align 8 dereferenceable(16) %74, i32 16, i1 false)
  %75 = call i32 @ubifs_jnl_update(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %52, i32 noundef 0, i32 noundef 0) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  call void @mutex_unlock(ptr noundef %66) #9
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %6) #9
  %78 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 10
  %79 = load i32, ptr %78, align 4
  call void @__insert_inode_hash(ptr noundef %52, i32 noundef %79) #9
  call void @d_instantiate(ptr noundef %2, ptr noundef %52) #9
  br label %87

80:                                               ; preds = %65
  %81 = load i64, ptr %68, align 8
  %82 = sub i64 %81, %67
  store i64 %82, ptr %68, align 8
  store i64 %82, ptr %71, align 8
  call void @mutex_unlock(ptr noundef %66) #9
  br label %83

83:                                               ; preds = %80, %56
  %84 = phi i32 [ %63, %56 ], [ %75, %80 ]
  call void @make_bad_inode(ptr noundef %52) #9
  call void @iput(ptr noundef %52) #9
  br label %85

85:                                               ; preds = %83, %54, %40
  %86 = phi i32 [ -95, %40 ], [ %55, %54 ], [ %84, %83 ]
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %6) #9
  br label %87

87:                                               ; preds = %85, %77, %34, %13
  %88 = phi i32 [ %32, %34 ], [ %86, %85 ], [ 0, %77 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_rename(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.fscrypt_name, align 4
  %8 = alloca %union.ubifs_key, align 8
  %9 = alloca ptr, align 4
  %10 = alloca %struct.ubifs_budget_req, align 4
  %11 = alloca %struct.ubifs_budget_req, align 4
  %12 = alloca %struct.timespec64, align 8
  %13 = alloca %struct.fscrypt_name, align 4
  %14 = alloca %struct.fscrypt_name, align 4
  %15 = alloca %struct.ubifs_budget_req, align 4
  %16 = alloca %struct.ubifs_budget_req, align 4
  %17 = alloca %struct.timespec64, align 8
  %18 = alloca %struct.fscrypt_name, align 4
  %19 = alloca %struct.fscrypt_name, align 4
  %20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ult i32 %5, 8
  br i1 %24, label %25, label %419

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !15

29:                                               ; preds = %25
  tail call void @ubifs_assert_failed(ptr noundef %23, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10, i32 noundef 1564) #9
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 24
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35, !prof !15

34:                                               ; preds = %30
  tail call void @ubifs_assert_failed(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 1565) #9
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 16384
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %419

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 16384
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %419

45:                                               ; preds = %40
  %46 = and i32 %5, 2
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr %20, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 27
  %50 = load ptr, ptr %49, align 4
  br i1 %47, label %137, label %51

51:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %16) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %16, ptr noundef nonnull align 4 dereferenceable(20) @__const.ubifs_xrename.req, i32 20, i1 false) #9
  %52 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 144
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %37, 65
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 144
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = and i32 %42, 65
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  br label %70

70:                                               ; preds = %66, %59, %51
  %71 = phi i32 [ 1, %51 ], [ 1, %59 ], [ %69, %66 ]
  %72 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %75 = load ptr, ptr %74, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i32 16, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #9
  %76 = icmp eq ptr %73, null
  %77 = icmp eq ptr %75, null
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %79, label %81, !prof !15

79:                                               ; preds = %70
  tail call void @ubifs_assert_failed(ptr noundef %50, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef 1511) #9
  %80 = load i32, ptr %36, align 4
  br label %81

81:                                               ; preds = %79, %70
  %82 = phi i32 [ %80, %79 ], [ %37, %70 ]
  %83 = and i32 %82, 16384
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %135

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %87 = getelementptr inbounds i8, ptr %18, i32 4
  %88 = getelementptr inbounds i8, ptr %18, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %88, i8 0, i32 20, i1 false) #9
  store ptr %86, ptr %18, align 4
  %89 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %90 = load ptr, ptr %89, align 8
  store ptr %90, ptr %87, align 4
  %91 = getelementptr inbounds %struct.anon, ptr %86, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.fscrypt_name, ptr %18, i32 0, i32 1, i32 1
  store i32 %92, ptr %93, align 4
  %94 = load i32, ptr %41, align 4
  %95 = and i32 %94, 16384
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %135

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4
  %99 = getelementptr inbounds i8, ptr %19, i32 4
  %100 = getelementptr inbounds i8, ptr %19, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %100, i8 0, i32 20, i1 false) #9
  store ptr %98, ptr %19, align 4
  %101 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, i32 1
  %102 = load ptr, ptr %101, align 8
  store ptr %102, ptr %99, align 4
  %103 = getelementptr inbounds %struct.anon, ptr %98, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.fscrypt_name, ptr %19, i32 0, i32 1, i32 1
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %106) #9
  %107 = icmp eq ptr %3, %1
  br i1 %107, label %110, label %108

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %109) #9
  br label %110

110:                                              ; preds = %108, %97
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %17, ptr noundef %1) #9
  %111 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %111, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 16, i1 false) #9
  %112 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %112, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 16, i1 false) #9
  %113 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %114 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %114, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 16, i1 false) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %113, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 16, i1 false) #9
  %115 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  %116 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %116, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 16, i1 false) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %115, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 16, i1 false) #9
  br i1 %107, label %128, label %117

117:                                              ; preds = %110
  %118 = load i16, ptr %73, align 8
  %119 = and i16 %118, -4096
  %120 = icmp eq i16 %119, 16384
  %121 = load i16, ptr %75, align 8
  %122 = and i16 %121, -4096
  %123 = icmp eq i16 %122, 16384
  br i1 %120, label %124, label %126

124:                                              ; preds = %117
  br i1 %123, label %130, label %125

125:                                              ; preds = %124
  call void @inc_nlink(ptr noundef %3) #9
  call void @drop_nlink(ptr noundef %1) #9
  br label %130

126:                                              ; preds = %117
  br i1 %123, label %127, label %130

127:                                              ; preds = %126
  call void @drop_nlink(ptr noundef %3) #9
  call void @inc_nlink(ptr noundef %1) #9
  br label %130

128:                                              ; preds = %110
  %129 = call i32 @ubifs_jnl_xrename(ptr noundef %50, ptr noundef %1, ptr noundef %73, ptr noundef nonnull %18, ptr noundef %1, ptr noundef %75, ptr noundef nonnull %19, i32 noundef %71) #9
  br label %133

130:                                              ; preds = %127, %126, %125, %124
  %131 = call i32 @ubifs_jnl_xrename(ptr noundef %50, ptr noundef %1, ptr noundef %73, ptr noundef nonnull %18, ptr noundef %3, ptr noundef %75, ptr noundef nonnull %19, i32 noundef %71) #9
  %132 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %132) #9
  br label %133

133:                                              ; preds = %130, %128
  %134 = phi i32 [ %129, %128 ], [ %131, %130 ]
  call void @mutex_unlock(ptr noundef %106) #9
  call void @ubifs_release_budget(ptr noundef %50, ptr noundef nonnull %16) #9
  br label %135

135:                                              ; preds = %133, %85, %81
  %136 = phi i32 [ %134, %133 ], [ -95, %81 ], [ -95, %85 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %16) #9
  br label %419

137:                                              ; preds = %45
  %138 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %141 = load ptr, ptr %140, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store ptr null, ptr %9, align 4
  %142 = icmp eq ptr %3, %1
  %143 = load i16, ptr %139, align 8
  %144 = and i16 %143, -4096
  %145 = icmp eq i16 %144, 16384
  %146 = icmp eq ptr %141, null
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) @__const.do_rename.req, i32 20, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #9
  %147 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 0, ptr %147, align 4, !annotation !13
  store i32 1048576, ptr %11, align 4
  %148 = getelementptr inbounds %struct.ubifs_inode, ptr %139, i32 0, i32 15
  %149 = load i32, ptr %148, align 4
  %150 = trunc i32 %149 to i16
  %151 = add i16 %150, 7
  %152 = and i16 %151, 32760
  store i16 %152, ptr %147, align 4
  %153 = getelementptr inbounds %struct.ubifs_budget_req, ptr %11, i32 0, i32 2
  store i32 0, ptr %153, align 4
  %154 = getelementptr inbounds %struct.ubifs_budget_req, ptr %11, i32 0, i32 3
  store i32 0, ptr %154, align 4
  %155 = getelementptr inbounds %struct.ubifs_budget_req, ptr %11, i32 0, i32 4
  store i32 0, ptr %155, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i32 16, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #9
  br i1 %146, label %181, label %156

156:                                              ; preds = %137
  %157 = getelementptr inbounds %struct.inode, ptr %141, i32 0, i32 24
  %158 = load volatile i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161, !prof !15

160:                                              ; preds = %156
  tail call void @ubifs_assert_failed(ptr noundef %50, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 1285) #9
  br label %161

161:                                              ; preds = %160, %156
  %162 = tail call i32 @ubifs_purge_xattrs(ptr noundef nonnull %141) #9
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %417

164:                                              ; preds = %161
  br i1 %145, label %165, label %181

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.inode, ptr %141, i32 0, i32 8
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.super_block, ptr %167, i32 0, i32 27
  %169 = load ptr, ptr %168, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %170 = getelementptr inbounds %struct.inode, ptr %141, i32 0, i32 10
  %171 = load i32, ptr %170, align 4
  store i32 %171, ptr %8, align 8
  %172 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  store i32 1073741824, ptr %172, align 4
  %173 = call ptr @ubifs_tnc_next_ent(ptr noundef %169, ptr noundef nonnull %8, ptr noundef nonnull %7) #9
  %174 = icmp ugt ptr %173, inttoptr (i32 -4096 to ptr)
  br i1 %174, label %175, label %177

175:                                              ; preds = %165
  %176 = icmp eq ptr %173, inttoptr (i32 -2 to ptr)
  br i1 %176, label %178, label %179

177:                                              ; preds = %165
  call void @kfree(ptr noundef %173) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  br label %417

178:                                              ; preds = %175
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  br label %181

179:                                              ; preds = %175
  %180 = ptrtoint ptr %173 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  br label %417

181:                                              ; preds = %178, %164, %137
  %182 = load i32, ptr %36, align 4
  %183 = and i32 %182, 16384
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %417

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %187 = getelementptr inbounds i8, ptr %13, i32 4
  %188 = getelementptr inbounds i8, ptr %13, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %188, i8 0, i32 20, i1 false) #9
  store ptr %186, ptr %13, align 4
  %189 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %190 = load ptr, ptr %189, align 8
  store ptr %190, ptr %187, align 4
  %191 = getelementptr inbounds %struct.anon, ptr %186, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds %struct.fscrypt_name, ptr %13, i32 0, i32 1, i32 1
  store i32 %192, ptr %193, align 4
  %194 = load i32, ptr %41, align 4
  %195 = and i32 %194, 16384
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %417

197:                                              ; preds = %185
  %198 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4
  %199 = getelementptr inbounds i8, ptr %14, i32 4
  %200 = getelementptr inbounds i8, ptr %14, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %200, i8 0, i32 20, i1 false) #9
  store ptr %198, ptr %14, align 4
  %201 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, i32 1
  %202 = load ptr, ptr %201, align 8
  store ptr %202, ptr %199, align 4
  %203 = getelementptr inbounds %struct.anon, ptr %198, i32 0, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr inbounds %struct.fscrypt_name, ptr %14, i32 0, i32 1, i32 1
  store i32 %204, ptr %205, align 4
  %206 = add i32 %204, 64
  %207 = and i32 %206, -8
  %208 = add i32 %192, 64
  %209 = and i32 %208, -8
  %210 = call i32 @ubifs_budget_space(ptr noundef %50, ptr noundef nonnull %10) #9
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %417

212:                                              ; preds = %197
  %213 = call i32 @ubifs_budget_space(ptr noundef %50, ptr noundef nonnull %11) #9
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %212
  call void @ubifs_release_budget(ptr noundef %50, ptr noundef nonnull %10) #9
  br label %417

216:                                              ; preds = %212
  %217 = and i32 %5, 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %245, label %219

219:                                              ; preds = %216
  %220 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %221 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %220, i32 noundef 3136, i32 noundef 8) #10
  %222 = icmp eq ptr %221, null
  br i1 %222, label %415, label %223

223:                                              ; preds = %219
  %224 = call fastcc i32 @do_tmpfile(ptr noundef %1, ptr noundef %2, i16 noundef zeroext 8192, ptr noundef nonnull %9) #9
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %223
  call void @kfree(ptr noundef nonnull %221) #9
  br label %415

227:                                              ; preds = %223
  %228 = load ptr, ptr %9, align 4
  %229 = getelementptr inbounds %struct.inode, ptr %228, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %229) #9
  %230 = load ptr, ptr %9, align 4
  %231 = getelementptr inbounds %struct.inode, ptr %230, i32 0, i32 23
  %232 = load i32, ptr %231, align 4
  %233 = or i32 %232, 1024
  store i32 %233, ptr %231, align 4
  %234 = getelementptr inbounds %struct.inode, ptr %230, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %235 = load i16, ptr %234, align 4
  %236 = add i16 %235, 1
  store i16 %236, ptr %234, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %237 = load ptr, ptr %9, align 4
  %238 = getelementptr inbounds %struct.ubifs_inode, ptr %237, i32 0, i32 16
  store ptr %221, ptr %238, align 8
  store i32 0, ptr %221, align 8
  %239 = getelementptr inbounds %struct.ubifs_inode, ptr %237, i32 0, i32 15
  store i32 4, ptr %239, align 4
  %240 = getelementptr inbounds %struct.ubifs_inode, ptr %237, i32 0, i32 6
  %241 = load i8, ptr %240, align 4
  %242 = and i8 %241, 1
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %245, label %244, !prof !14

244:                                              ; preds = %227
  call void @ubifs_assert_failed(ptr noundef %50, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10, i32 noundef 1347) #9
  br label %245

245:                                              ; preds = %244, %227, %216
  %246 = phi ptr [ null, %216 ], [ %237, %244 ], [ %237, %227 ]
  %247 = load ptr, ptr %9, align 4
  call fastcc void @lock_4_inodes(ptr noundef %1, ptr noundef %3, ptr noundef %141, ptr noundef %247) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %12, ptr noundef %1) #9
  %248 = getelementptr inbounds %struct.inode, ptr %139, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %248, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false) #9
  br i1 %145, label %249, label %254

249:                                              ; preds = %245
  br i1 %142, label %252, label %250

250:                                              ; preds = %249
  call void @drop_nlink(ptr noundef %1) #9
  br i1 %146, label %251, label %254

251:                                              ; preds = %250
  call void @inc_nlink(ptr noundef %3) #9
  br label %254

252:                                              ; preds = %249
  br i1 %146, label %254, label %253

253:                                              ; preds = %252
  call void @drop_nlink(ptr noundef %1) #9
  br label %254

254:                                              ; preds = %253, %252, %251, %250, %245
  %255 = sext i32 %209 to i64
  %256 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %257 = load i64, ptr %256, align 8
  %258 = sub i64 %257, %255
  store i64 %258, ptr %256, align 8
  %259 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  store i64 %258, ptr %259, align 8
  %260 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %261 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %261, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %260, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false) #9
  %262 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  %263 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %263, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %262, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false) #9
  br i1 %146, label %271, label %264

264:                                              ; preds = %254
  %265 = getelementptr inbounds %struct.inode, ptr %141, i32 0, i32 11
  %266 = load i32, ptr %265, align 8
  br i1 %145, label %267, label %268

267:                                              ; preds = %264
  call void @clear_nlink(ptr noundef nonnull %141) #9
  br label %269

268:                                              ; preds = %264
  call void @drop_nlink(ptr noundef nonnull %141) #9
  br label %269

269:                                              ; preds = %268, %267
  %270 = getelementptr inbounds %struct.inode, ptr %141, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %270, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 16, i1 false) #9
  br label %277

271:                                              ; preds = %254
  %272 = sext i32 %207 to i64
  %273 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 13
  %274 = load i64, ptr %273, align 8
  %275 = add i64 %274, %272
  store i64 %275, ptr %273, align 8
  %276 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 11
  store i64 %275, ptr %276, align 8
  br label %277

277:                                              ; preds = %271, %269
  %278 = phi i32 [ %266, %269 ], [ 0, %271 ]
  %279 = getelementptr inbounds %struct.inode, ptr %139, i32 0, i32 8
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.super_block, ptr %280, i32 0, i32 10
  %282 = load i32, ptr %281, align 4
  %283 = and i32 %282, 16
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %277
  %286 = getelementptr inbounds %struct.inode, ptr %139, i32 0, i32 4
  %287 = load i32, ptr %286, align 4
  %288 = and i32 %287, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %326, label %290

290:                                              ; preds = %285, %277
  %291 = load ptr, ptr %20, align 4
  %292 = getelementptr inbounds %struct.super_block, ptr %291, i32 0, i32 10
  %293 = load i32, ptr %292, align 4
  %294 = and i32 %293, 144
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %311

296:                                              ; preds = %290
  %297 = load i32, ptr %36, align 4
  %298 = and i32 %297, 65
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %302 = load ptr, ptr %301, align 4
  %303 = getelementptr inbounds %struct.super_block, ptr %302, i32 0, i32 10
  %304 = load i32, ptr %303, align 4
  %305 = and i32 %304, 144
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %300
  %308 = load i32, ptr %41, align 4
  %309 = and i32 %308, 65
  %310 = icmp ne i32 %309, 0
  br label %311

311:                                              ; preds = %307, %300, %296, %290
  %312 = phi i1 [ true, %296 ], [ true, %290 ], [ true, %300 ], [ %310, %307 ]
  br i1 %146, label %326, label %313

313:                                              ; preds = %311
  %314 = getelementptr inbounds %struct.inode, ptr %141, i32 0, i32 8
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.super_block, ptr %315, i32 0, i32 10
  %317 = load i32, ptr %316, align 4
  %318 = and i32 %317, 16
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %313
  %321 = getelementptr inbounds %struct.inode, ptr %141, i32 0, i32 4
  %322 = load i32, ptr %321, align 4
  %323 = and i32 %322, 1
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %326, label %325

325:                                              ; preds = %320, %313
  br label %326

326:                                              ; preds = %325, %320, %311, %285
  %327 = phi i1 [ true, %325 ], [ %312, %320 ], [ %312, %311 ], [ false, %285 ]
  %328 = zext i1 %327 to i32
  %329 = load ptr, ptr %9, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %362, label %331

331:                                              ; preds = %326
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %15) #9
  %332 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 0, ptr %332, align 4, !annotation !13
  store i32 1048576, ptr %15, align 4
  %333 = getelementptr inbounds %struct.ubifs_inode, ptr %329, i32 0, i32 15
  %334 = load i32, ptr %333, align 4
  %335 = trunc i32 %334 to i16
  %336 = add i16 %335, 7
  %337 = and i16 %336, 32760
  store i16 %337, ptr %332, align 4
  %338 = getelementptr inbounds %struct.ubifs_budget_req, ptr %15, i32 0, i32 2
  store i32 0, ptr %338, align 4
  %339 = getelementptr inbounds %struct.ubifs_budget_req, ptr %15, i32 0, i32 3
  store i32 0, ptr %339, align 4
  %340 = getelementptr inbounds %struct.ubifs_budget_req, ptr %15, i32 0, i32 4
  store i32 0, ptr %340, align 4
  %341 = call i32 @ubifs_budget_space(ptr noundef %50, ptr noundef nonnull %15) #9
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %331
  %344 = load ptr, ptr %9, align 4
  call void @inc_nlink(ptr noundef %344) #9
  %345 = load ptr, ptr %9, align 4
  call void @__mark_inode_dirty(ptr noundef %345, i32 noundef 7) #9
  %346 = load ptr, ptr %9, align 4
  %347 = getelementptr inbounds %struct.inode, ptr %346, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %347) #9
  %348 = load ptr, ptr %9, align 4
  %349 = getelementptr inbounds %struct.inode, ptr %348, i32 0, i32 23
  %350 = load i32, ptr %349, align 4
  %351 = and i32 %350, -1025
  store i32 %351, ptr %349, align 4
  %352 = getelementptr inbounds %struct.inode, ptr %348, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %353 = load i16, ptr %352, align 4
  %354 = add i16 %353, 1
  store i16 %354, ptr %352, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %355 = load ptr, ptr %9, align 4
  call void @iput(ptr noundef %355) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %15) #9
  %356 = load ptr, ptr %9, align 4
  br label %362

357:                                              ; preds = %331
  %358 = getelementptr inbounds %struct.ubifs_inode, ptr %246, i32 0, i32 16
  %359 = load ptr, ptr %358, align 8
  call void @kfree(ptr noundef %359) #9
  %360 = getelementptr inbounds %struct.ubifs_inode, ptr %246, i32 0, i32 15
  store i32 0, ptr %360, align 4
  %361 = load ptr, ptr %9, align 4
  call void @iput(ptr noundef %361) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %15) #9
  br label %415

362:                                              ; preds = %343, %326
  %363 = phi ptr [ %356, %343 ], [ null, %326 ]
  %364 = call i32 @ubifs_jnl_rename(ptr noundef %50, ptr noundef %1, ptr noundef %139, ptr noundef nonnull %13, ptr noundef %3, ptr noundef %141, ptr noundef nonnull %14, ptr noundef %363, i32 noundef %328) #9
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %391

366:                                              ; preds = %362
  %367 = load ptr, ptr %9, align 4
  call fastcc void @unlock_4_inodes(ptr noundef %1, ptr noundef %3, ptr noundef %141, ptr noundef %367) #9
  call void @ubifs_release_budget(ptr noundef %50, ptr noundef nonnull %10) #9
  %368 = getelementptr inbounds %struct.ubifs_inode, ptr %139, i32 0, i32 7
  call void @mutex_lock(ptr noundef %368) #9
  %369 = getelementptr inbounds %struct.ubifs_inode, ptr %139, i32 0, i32 6
  %370 = load i8, ptr %369, align 4
  %371 = and i8 %370, 1
  call void @__mark_inode_dirty(ptr noundef %139, i32 noundef 1) #9
  call void @mutex_unlock(ptr noundef %368) #9
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %366
  call void @ubifs_release_budget(ptr noundef %50, ptr noundef nonnull %11) #9
  br label %374

374:                                              ; preds = %373, %366
  %375 = load ptr, ptr %279, align 4
  %376 = getelementptr inbounds %struct.super_block, ptr %375, i32 0, i32 10
  %377 = load i32, ptr %376, align 4
  %378 = and i32 %377, 16
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.inode, ptr %139, i32 0, i32 4
  %382 = load i32, ptr %381, align 4
  %383 = and i32 %382, 1
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %417, label %385

385:                                              ; preds = %380, %374
  %386 = getelementptr inbounds %struct.super_block, ptr %375, i32 0, i32 6
  %387 = load ptr, ptr %386, align 4
  %388 = getelementptr inbounds %struct.super_operations, ptr %387, i32 0, i32 4
  %389 = load ptr, ptr %388, align 4
  %390 = call i32 %389(ptr noundef %139, ptr noundef null) #9
  br label %417

391:                                              ; preds = %362
  br i1 %146, label %393, label %392

392:                                              ; preds = %391
  call void @set_nlink(ptr noundef nonnull %141, i32 noundef %278) #9
  br label %399

393:                                              ; preds = %391
  %394 = sext i32 %207 to i64
  %395 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 13
  %396 = load i64, ptr %395, align 8
  %397 = sub i64 %396, %394
  store i64 %397, ptr %395, align 8
  %398 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 11
  store i64 %397, ptr %398, align 8
  br label %399

399:                                              ; preds = %393, %392
  %400 = load i64, ptr %256, align 8
  %401 = add i64 %400, %255
  store i64 %401, ptr %256, align 8
  store i64 %401, ptr %259, align 8
  br i1 %145, label %402, label %407

402:                                              ; preds = %399
  br i1 %142, label %405, label %403

403:                                              ; preds = %402
  call void @inc_nlink(ptr noundef %1) #9
  br i1 %146, label %404, label %407

404:                                              ; preds = %403
  call void @drop_nlink(ptr noundef %3) #9
  br label %407

405:                                              ; preds = %402
  br i1 %146, label %407, label %406

406:                                              ; preds = %405
  call void @inc_nlink(ptr noundef %1) #9
  br label %407

407:                                              ; preds = %406, %405, %404, %403, %399
  %408 = load ptr, ptr %9, align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %413, label %410

410:                                              ; preds = %407
  call void @drop_nlink(ptr noundef nonnull %408) #9
  %411 = load ptr, ptr %9, align 4
  call void @iput(ptr noundef %411) #9
  %412 = load ptr, ptr %9, align 4
  br label %413

413:                                              ; preds = %410, %407
  %414 = phi ptr [ %412, %410 ], [ null, %407 ]
  call fastcc void @unlock_4_inodes(ptr noundef %1, ptr noundef %3, ptr noundef %141, ptr noundef %414) #9
  br label %415

415:                                              ; preds = %413, %357, %226, %219
  %416 = phi i32 [ %341, %357 ], [ %364, %413 ], [ %224, %226 ], [ -12, %219 ]
  call void @ubifs_release_budget(ptr noundef %50, ptr noundef nonnull %11) #9
  call void @ubifs_release_budget(ptr noundef %50, ptr noundef nonnull %10) #9
  br label %417

417:                                              ; preds = %415, %385, %380, %215, %197, %185, %181, %179, %177, %161
  %418 = phi i32 [ %213, %215 ], [ %416, %415 ], [ %162, %161 ], [ %180, %179 ], [ -39, %177 ], [ -95, %181 ], [ -95, %185 ], [ %210, %197 ], [ %390, %385 ], [ 0, %380 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %419

419:                                              ; preds = %417, %135, %40, %35, %6
  %420 = phi i32 [ %136, %135 ], [ %418, %417 ], [ -22, %6 ], [ -95, %35 ], [ -95, %40 ]
  ret i32 %420
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_time(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_tmpfile(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = tail call fastcc i32 @do_tmpfile(ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef null)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_readdir(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fscrypt_name, align 4
  %4 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !13
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16384
  %14 = icmp ne i32 %13, 0
  %15 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = icmp sgt i64 %16, 536870911
  %18 = icmp eq i64 %16, 2
  %19 = or i1 %17, %18
  %20 = select i1 %19, i1 true, i1 %14
  %21 = select i1 %19, i32 0, i32 -95
  br i1 %20, label %158, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %28 = load ptr, ptr %27, align 8
  tail call void @kfree(ptr noundef %28) #9
  store ptr null, ptr %27, align 8
  br label %29

29:                                               ; preds = %26, %22
  store i64 1, ptr %23, align 8
  %30 = load i64, ptr %15, align 8
  %31 = icmp slt i64 %30, 2
  %32 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %33 = load ptr, ptr %32, align 8
  br i1 %31, label %34, label %81

34:                                               ; preds = %29
  %35 = icmp eq ptr %33, null
  br i1 %35, label %38, label %36, !prof !14

36:                                               ; preds = %34
  tail call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.10, i32 noundef 549) #9
  %37 = load i64, ptr %15, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %37, %36 ], [ %30, %34 ]
  switch i64 %39, label %69 [
    i64 0, label %40
    i64 1, label %52
  ]

40:                                               ; preds = %38
  %41 = load ptr, ptr %1, align 8
  %42 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dentry, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = zext i32 %47 to i64
  %49 = tail call i32 %41(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef 1, i64 noundef 0, i64 noundef %48, i32 noundef 4) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %158

51:                                               ; preds = %40
  store i64 1, ptr %15, align 8
  br label %52

52:                                               ; preds = %51, %38
  %53 = load ptr, ptr %1, align 8
  %54 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %56) #9
  %57 = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.dentry, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 10
  %62 = load i32, ptr %61, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %63 = load i16, ptr %56, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %56, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %65 = zext i32 %62 to i64
  %66 = tail call i32 %53(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef 2, i64 noundef 1, i64 noundef %65, i32 noundef 4) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %158

68:                                               ; preds = %52
  store i64 2, ptr %15, align 8
  br label %69

69:                                               ; preds = %68, %38
  %70 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %4, align 8
  %72 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 1073741824, ptr %72, align 4
  %73 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  store i32 0, ptr %73, align 4
  %74 = call ptr @ubifs_tnc_next_ent(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %149, label %76

76:                                               ; preds = %69
  %77 = getelementptr %struct.ubifs_dent_node, ptr %74, i32 0, i32 1, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 536870911
  %80 = zext i32 %79 to i64
  store i64 %80, ptr %15, align 8
  store ptr %74, ptr %32, align 8
  br label %81

81:                                               ; preds = %76, %29
  %82 = phi ptr [ %74, %76 ], [ %33, %29 ]
  %83 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %84 = icmp eq ptr %82, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %87 = load i32, ptr %86, align 4
  %88 = load i64, ptr %15, align 8
  %89 = trunc i64 %88 to i32
  %90 = icmp ult i32 %89, 536870912
  br i1 %90, label %92, label %91, !prof !14

91:                                               ; preds = %85
  call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 169) #9
  br label %92

92:                                               ; preds = %91, %85
  store i32 %87, ptr %4, align 8
  %93 = or i32 %89, 1073741824
  %94 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  store i32 0, ptr %95, align 4
  %96 = call ptr @ubifs_tnc_next_ent(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %149, label %98

98:                                               ; preds = %92
  %99 = getelementptr %struct.ubifs_dent_node, ptr %96, i32 0, i32 1, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 536870911
  %102 = zext i32 %101 to i64
  store i64 %102, ptr %15, align 8
  store ptr %96, ptr %83, align 8
  br label %103

103:                                              ; preds = %98, %81
  %104 = phi ptr [ %82, %81 ], [ %96, %98 ]
  %105 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 1
  %106 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1
  %107 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  %108 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  br label %109

109:                                              ; preds = %142, %103
  %110 = phi ptr [ %104, %103 ], [ %140, %142 ]
  %111 = getelementptr inbounds %struct.ubifs_ch, ptr %110, i32 0, i32 2
  %112 = load i64, ptr %111, align 1
  %113 = load i64, ptr %105, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %116, label %115, !prof !14

115:                                              ; preds = %109
  call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, i32 noundef 591) #9
  br label %116

116:                                              ; preds = %115, %109
  %117 = getelementptr inbounds %struct.ubifs_dent_node, ptr %110, i32 0, i32 5
  %118 = load i16, ptr %117, align 1
  %119 = zext i16 %118 to i32
  store i32 %119, ptr %107, align 4
  %120 = getelementptr inbounds %struct.ubifs_dent_node, ptr %110, i32 0, i32 7
  store ptr %120, ptr %106, align 4
  %121 = getelementptr inbounds %struct.ubifs_dent_node, ptr %110, i32 0, i32 4
  %122 = load i8, ptr %121, align 1
  %123 = icmp ult i8 %122, 7
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 475, 0\0A.popsection", ""() #9, !srcloc !18
  unreachable

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.ubifs_dent_node, ptr %110, i32 0, i32 2
  %127 = load i64, ptr %126, align 1
  %128 = sext i8 %122 to i32
  %129 = getelementptr inbounds [7 x i32], ptr @switch.table.ubifs_readdir, i32 0, i32 %128
  %130 = load i32, ptr %129, align 4
  %131 = load ptr, ptr %1, align 8
  %132 = load i64, ptr %15, align 8
  %133 = call i32 %131(ptr noundef %1, ptr noundef %120, i32 noundef %119, i64 noundef %132, i64 noundef %127, i32 noundef %130) #9
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.ubifs_dent_node, ptr %110, i32 0, i32 1
  %137 = load i32, ptr %136, align 8
  store i32 %137, ptr %4, align 8
  %138 = getelementptr %struct.ubifs_dent_node, ptr %110, i32 0, i32 1, i32 4
  %139 = load i32, ptr %138, align 4
  store i32 %139, ptr %108, align 4
  %140 = call ptr @ubifs_tnc_next_ent(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %141 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %149, label %142

142:                                              ; preds = %135
  %143 = load ptr, ptr %83, align 8
  call void @kfree(ptr noundef %143) #9
  %144 = getelementptr %struct.ubifs_dent_node, ptr %140, i32 0, i32 1, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, 536870911
  %147 = zext i32 %146 to i64
  store i64 %147, ptr %15, align 8
  store ptr %140, ptr %83, align 8
  %148 = call i32 @__cond_resched() #9
  br label %109

149:                                              ; preds = %135, %92, %69
  %150 = phi ptr [ %74, %69 ], [ %96, %92 ], [ %140, %135 ]
  %151 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %152 = load ptr, ptr %151, align 8
  call void @kfree(ptr noundef %152) #9
  store ptr null, ptr %151, align 8
  %153 = icmp eq ptr %150, inttoptr (i32 -2 to ptr)
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = ptrtoint ptr %150 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %10, ptr noundef nonnull @.str.23, i32 noundef %155) #9
  br label %156

156:                                              ; preds = %154, %149
  %157 = phi i32 [ %155, %154 ], [ 0, %149 ]
  store i64 2, ptr %15, align 8
  br label %158

158:                                              ; preds = %156, %125, %52, %40, %2
  %159 = phi i32 [ %157, %156 ], [ %21, %2 ], [ 0, %52 ], [ 0, %40 ], [ 0, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i32 %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_dir_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #9
  store ptr null, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_set_encrypted_ci_d_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_lookup_dh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_lookup_nm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_budget_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_init_security(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_budget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_synced_i_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_delete_orphan(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_orphan(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_purge_xattrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_4_inodes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = icmp eq ptr %1, %0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %7, %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %12) #9
  br label %13

13:                                               ; preds = %11, %9
  %14 = icmp eq ptr %3, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %16) #9
  br label %17

17:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_xrename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unlock_4_inodes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %7) #9
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %0, %1
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %15) #9
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %17) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_tmpfile(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.ubifs_budget_req, align 4
  %6 = alloca %struct.ubifs_budget_req, align 4
  %7 = alloca %struct.fscrypt_name, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) @__const.do_tmpfile.req, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @__const.do_tmpfile.ino_req, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %4
  %18 = getelementptr inbounds i8, ptr %7, i32 4
  %19 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %19, i8 0, i32 20, i1 false) #9
  store ptr %12, ptr %7, align 4
  %20 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %18, align 4
  %22 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fscrypt_name, ptr %7, i32 0, i32 1, i32 1
  store i32 %23, ptr %24, align 4
  %25 = call i32 @ubifs_budget_space(ptr noundef %11, ptr noundef nonnull %5) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %17
  %28 = call i32 @ubifs_budget_space(ptr noundef %11, ptr noundef nonnull %6) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %5) #9
  br label %71

31:                                               ; preds = %27
  %32 = call ptr @ubifs_new_inode(ptr noundef %11, ptr noundef %0, i16 noundef zeroext %2)
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = ptrtoint ptr %32 to i32
  br label %66

36:                                               ; preds = %31
  %37 = icmp eq ptr %3, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = load i16, ptr %32, align 8
  call void @init_special_inode(ptr noundef %32, i16 noundef zeroext %39, i32 noundef 0) #9
  %40 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 7
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, @ubifs_file_inode_operations
  br i1 %42, label %44, label %43, !prof !14

43:                                               ; preds = %38
  call void @ubifs_assert_failed(ptr noundef %11, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10, i32 noundef 397) #9
  br label %44

44:                                               ; preds = %43, %38, %36
  %45 = call i32 @ubifs_init_security(ptr noundef %0, ptr noundef %32, ptr noundef %12) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ubifs_inode, ptr %32, i32 0, i32 7
  call void @mutex_lock(ptr noundef %48) #9
  %49 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 10
  %50 = load i32, ptr %49, align 4
  call void @__insert_inode_hash(ptr noundef %32, i32 noundef %50) #9
  br i1 %37, label %52, label %51

51:                                               ; preds = %47
  call void @__mark_inode_dirty(ptr noundef %32, i32 noundef 7) #9
  call void @drop_nlink(ptr noundef %32) #9
  store ptr %32, ptr %3, align 4
  br label %53

52:                                               ; preds = %47
  call void @d_tmpfile(ptr noundef %1, ptr noundef %32) #9
  br label %53

53:                                               ; preds = %52, %51
  %54 = getelementptr inbounds %struct.ubifs_inode, ptr %32, i32 0, i32 6
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59, !prof !15

58:                                               ; preds = %53
  call void @ubifs_assert_failed(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, i32 noundef 414) #9
  br label %59

59:                                               ; preds = %58, %53
  call void @mutex_unlock(ptr noundef %48) #9
  %60 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 7
  call void @mutex_lock(ptr noundef %60) #9
  %61 = call i32 @ubifs_jnl_update(ptr noundef %11, ptr noundef %0, ptr noundef nonnull %7, ptr noundef %32, i32 noundef 1, i32 noundef 0) #9
  %62 = icmp eq i32 %61, 0
  call void @mutex_unlock(ptr noundef %60) #9
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %5) #9
  br label %71

64:                                               ; preds = %44
  call void @make_bad_inode(ptr noundef %32) #9
  call void @iput(ptr noundef %32) #9
  br label %66

65:                                               ; preds = %59
  call void @make_bad_inode(ptr noundef %32) #9
  br label %68

66:                                               ; preds = %64, %34
  %67 = phi i32 [ %45, %64 ], [ %35, %34 ]
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %5) #9
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi ptr [ %5, %65 ], [ %6, %66 ]
  %70 = phi i32 [ %61, %65 ], [ %67, %66 ]
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %69) #9
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %70) #9
  br label %71

71:                                               ; preds = %68, %63, %30, %17, %4
  %72 = phi i32 [ %28, %30 ], [ %70, %68 ], [ 0, %63 ], [ -95, %4 ], [ %25, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{i64 2153461817, i64 2153462296, i64 2153461854, i64 2153461910, i64 2153461944, i64 2153461968, i64 2153462009, i64 2153462030, i64 2153462058, i64 2153462092}
!9 = !{i64 2149116216}
!10 = !{i64 2149112040}
!11 = !{i64 2149112115, i64 2149112142, i64 2149112189, i64 2149112211, i64 2149112239, i64 2149112259}
!12 = !{i64 2149139219}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2153481481}
!17 = !{i64 2153484596}
!18 = !{i64 2153469730, i64 2153470209, i64 2153469767, i64 2153469823, i64 2153469857, i64 2153469881, i64 2153469922, i64 2153469943, i64 2153469971, i64 2153470005}
