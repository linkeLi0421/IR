; ModuleID = '/llk/IR/fs/nfs/proc.c_pt.bc'
source_filename = "../fs/nfs/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs2_fsstat = type { i32, i32, i32, i32, i32 }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.128 }
%union.anon.128 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.nfs_sattrargs = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.151, %struct.list_head, %struct.list_head, %union.anon.152 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.149 }
%union.anon.149 = type { i64 }
%union.anon.151 = type { %struct.list_head }
%union.anon.152 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.145, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.146, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.147, ptr, %struct.address_space, %struct.list_head, %union.anon.148, i32, i32, ptr, ptr }
%union.anon.145 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.146 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.147 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.148 = type { ptr }
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
%struct.nfs_diropargs = type { ptr, ptr, i32 }
%struct.nfs_diropok = type { ptr, ptr }
%struct.anon = type { i32, i32 }
%struct.nfs_readlinkargs = type { ptr, i32, i32, ptr }
%struct.nfs_createargs = type { ptr, ptr, i32, ptr }
%struct.nfs_createdata = type { %struct.nfs_createargs, %struct.nfs_diropok, %struct.nfs_fh, %struct.nfs_fattr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.134, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.134 = type { %struct.anon.136 }
%struct.anon.136 = type { i64 }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs_linkargs = type { ptr, ptr, ptr, i32 }
%struct.nfs_symlinkargs = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.nfs_readdirargs = type { ptr, i32, i32, ptr }
%struct.nfs_readdir_arg = type { ptr, ptr, ptr, i64, ptr, i32, i8 }
%struct.nfs_fsstat = type { ptr, i64, i64, i64, i64, i64, i64 }
%struct.nfs_pathconf = type { ptr, i32, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.130, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.130 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.139 }
%struct.nfs4_stateid_struct = type { %union.anon.137, i32 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, [12 x i8] }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.141 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.127 }
%union.anon.127 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }

@nfs_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@nfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @nfs_lookup, ptr null, ptr @nfs_permission, ptr null, ptr null, ptr @nfs_create, ptr @nfs_link, ptr @nfs_unlink, ptr @nfs_symlink, ptr @nfs_mkdir, ptr @nfs_rmdir, ptr @nfs_mknod, ptr @nfs_rename, ptr @nfs_setattr, ptr @nfs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@nfs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @nfs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_setattr, ptr @nfs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@nfs_file_operations = external dso_local constant %struct.file_operations, align 4
@nfs_v2_clientops = dso_local local_unnamed_addr constant %struct.nfs_rpc_ops { i32 2, ptr @nfs_dentry_operations, ptr @nfs_dir_inode_operations, ptr @nfs_file_inode_operations, ptr @nfs_file_operations, ptr null, ptr @nfs_proc_get_root, ptr @nfs_submount, ptr @nfs_try_get_tree, ptr @nfs_proc_getattr, ptr @nfs_proc_setattr, ptr @nfs_proc_lookup, ptr null, ptr null, ptr @nfs_proc_readlink, ptr @nfs_proc_create, ptr @nfs_proc_remove, ptr @nfs_proc_unlink_setup, ptr @nfs_proc_unlink_rpc_prepare, ptr @nfs_proc_unlink_done, ptr @nfs_proc_rename_setup, ptr @nfs_proc_rename_rpc_prepare, ptr @nfs_proc_rename_done, ptr @nfs_proc_link, ptr @nfs_proc_symlink, ptr @nfs_proc_mkdir, ptr @nfs_proc_rmdir, ptr @nfs_proc_readdir, ptr @nfs_proc_mknod, ptr @nfs_proc_statfs, ptr @nfs_proc_fsinfo, ptr @nfs_proc_pathconf, ptr null, ptr @nfs2_decode_dirent, ptr @nfs_proc_pgio_rpc_prepare, ptr @nfs_proc_read_setup, ptr @nfs_read_done, ptr @nfs_proc_write_setup, ptr @nfs_write_done, ptr @nfs_proc_commit_setup, ptr @nfs_proc_commit_rpc_prepare, ptr null, ptr @nfs_proc_lock, ptr @nfs_lock_check_bounds, ptr null, ptr @nfs_close_context, ptr null, ptr @nfs_have_delegation, ptr @nfs_alloc_client, ptr @nfs_init_client, ptr @nfs_free_client, ptr @nfs_create_server, ptr @nfs_clone_server, ptr null }, align 4
@nfs_procedures = external dso_local constant [0 x %struct.rpc_procinfo], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.nfs_proc_mkdir.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs_procedures, i64 448), ptr null, ptr null, ptr null }, align 4
@__const.nfs_proc_mknod.msg = private unnamed_addr constant %struct.rpc_message { ptr getelementptr (i8, ptr @nfs_procedures, i64 288), ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_get_root(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.nfs2_fsstat, align 4
  %5 = alloca %struct.rpc_message, align 4
  %6 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 1), ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %9, align 4
  tail call void @nfs_fattr_init(ptr noundef %6) #10
  %10 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @rpc_call_sync(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.nfs_client, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %10, align 4
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %50, label %20

20:                                               ; preds = %14
  %21 = call i32 @rpc_call_sync(ptr noundef %17, ptr noundef nonnull %5, i32 noundef 0) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20, %3
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 17), ptr %5, align 4
  store ptr %4, ptr %8, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @rpc_call_sync(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 0) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.nfs_client, ptr %28, i32 0, i32 11
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %10, align 4
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %50, label %33

33:                                               ; preds = %27
  %34 = call i32 @rpc_call_sync(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 0) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33, %23
  %37 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 1
  store i32 8192, ptr %37, align 4
  %38 = load i32, ptr %4, align 4
  %39 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 2
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.nfs2_fsstat, ptr %4, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 4
  store i32 8192, ptr %43, align 8
  %44 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 5
  store i32 %38, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 6
  store i32 %41, ptr %45, align 8
  %46 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 7
  store i32 %38, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 8
  store i64 2147483647, ptr %47, align 8
  %48 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 10
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 15
  store i32 4, ptr %49, align 8
  br label %50

50:                                               ; preds = %36, %33, %27, %20, %14
  %51 = phi i32 [ 0, %36 ], [ %21, %20 ], [ %34, %33 ], [ %12, %14 ], [ %25, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_submount(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_try_get_tree(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_getattr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone %3) #0 {
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 1), ptr %5, align 4
  %6 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 11
  %14 = and i32 %13, 4096
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi i32 [ 0, %4 ], [ %14, %10 ]
  tail call void @nfs_fattr_init(ptr noundef %2) #10
  %17 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @rpc_call_sync(ptr noundef %18, ptr noundef nonnull %5, i32 noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_setattr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nfs_sattrargs, align 8
  %5 = alloca %struct.rpc_message, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %8 = getelementptr i8, ptr %7, i32 -288
  store ptr %8, ptr %4, align 8
  %9 = getelementptr inbounds %struct.nfs_sattrargs, ptr %4, i32 0, i32 1
  store ptr %2, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 2), ptr %5, align 4
  %10 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 4095
  store i16 %15, ptr %13, align 4
  %16 = load i32, ptr %2, align 8
  %17 = and i32 %16, 8192
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 15
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nfs_open_context, ptr %25, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23, %19
  %31 = phi ptr [ %29, %27 ], [ null, %19 ], [ null, %23 ]
  store ptr %31, ptr %12, align 4
  br label %32

32:                                               ; preds = %30, %3
  call void @nfs_fattr_init(ptr noundef %1) #10
  %33 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 27
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs_server, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @rpc_call_sync(ptr noundef %38, ptr noundef nonnull %5, i32 noundef 0) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  call void @nfs_setattr_update_inode(ptr noundef %7, ptr noundef %2, ptr noundef %1) #10
  br label %42

42:                                               ; preds = %41, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.nfs_diropargs, align 4
  %6 = alloca %struct.nfs_diropok, align 8
  %7 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %8 = getelementptr i8, ptr %0, i32 -288
  store ptr %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.nfs_diropargs, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %9, align 4
  %13 = getelementptr inbounds %struct.nfs_diropargs, ptr %5, i32 0, i32 2
  %14 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store ptr %2, ptr %6, align 8
  %16 = getelementptr inbounds %struct.nfs_diropok, ptr %6, i32 0, i32 1
  store ptr %3, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 4), ptr %7, align 4
  %17 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 1
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 2
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 3
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfs_server, ptr %23, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 8388608
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %4
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 7340032
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %34, i32 -288
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  %38 = select i1 %37, i32 0, i32 4096
  br label %39

39:                                               ; preds = %32, %28, %4
  %40 = phi i32 [ 0, %4 ], [ 0, %28 ], [ %38, %32 ]
  call void @nfs_fattr_init(ptr noundef %3) #10
  %41 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 27
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nfs_server, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @rpc_call_sync(ptr noundef %46, ptr noundef nonnull %7, i32 noundef %40) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_readlink(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.nfs_readlinkargs, align 4
  %7 = alloca %struct.rpc_message, align 4
  store ptr %1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %8 = getelementptr i8, ptr %0, i32 -288
  store ptr %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.nfs_readlinkargs, ptr %6, i32 0, i32 1
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfs_readlinkargs, ptr %6, i32 0, i32 2
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nfs_readlinkargs, ptr %6, i32 0, i32 3
  store ptr %5, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 5), ptr %7, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 1
  store ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 2
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 3
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs_server, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @rpc_call_sync(ptr noundef %20, ptr noundef nonnull %7, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.nfs_proc_mknod.msg, i32 16, i1 false)
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 360) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -288
  store ptr %10, ptr %7, align 8
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nfs_createargs, ptr %7, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_createargs, ptr %7, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nfs_createargs, ptr %7, i32 0, i32 3
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs_createdata, ptr %7, i32 0, i32 3
  tail call void @nfs_fattr_init(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.nfs_createdata, ptr %7, i32 0, i32 2
  store i16 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nfs_createdata, ptr %7, i32 0, i32 1
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nfs_createdata, ptr %7, i32 0, i32 1, i32 1
  store ptr %19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 27
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfs_server, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @rpc_call_sync(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 0) #10
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %32) #10
  %33 = getelementptr i8, ptr %0, i32 -152
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 824
  store i32 %35, ptr %33, align 8
  %36 = load i16, ptr %0, align 8
  %37 = and i16 %36, -4096
  %38 = icmp eq i16 %37, 16384
  br i1 %38, label %39, label %41

39:                                               ; preds = %9
  %40 = or i32 %34, 826
  store i32 %40, ptr %33, align 8
  br label %41

41:                                               ; preds = %39, %9
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %42 = load i16, ptr %32, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %32, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %44 = icmp eq i32 %31, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load ptr, ptr %21, align 8
  %47 = load ptr, ptr %22, align 4
  %48 = call i32 @nfs_instantiate(ptr noundef %1, ptr noundef %46, ptr noundef %47) #10
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %48, %45 ], [ %31, %41 ]
  call void @kfree(ptr noundef nonnull %7) #10
  br label %51

51:                                               ; preds = %49, %4
  %52 = phi i32 [ %50, %49 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_remove(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nfs_removeargs, align 8
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  %5 = getelementptr inbounds %struct.nfs_removeargs, ptr %3, i32 0, i32 1
  %6 = getelementptr i8, ptr %0, i32 -288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %6, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nfs_removeargs, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %7, ptr noundef align 8 dereferenceable(16) %8, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 10), ptr %4, align 4
  %9 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nfs_server, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @rpc_call_sync(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 0) #10
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %19) #10
  %20 = getelementptr i8, ptr %0, i32 -152
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 824
  store i32 %22, ptr %20, align 8
  %23 = load i16, ptr %0, align 8
  %24 = and i16 %23, -4096
  %25 = icmp eq i16 %24, 16384
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = or i32 %21, 826
  store i32 %27, ptr %20, align 8
  br label %28

28:                                               ; preds = %26, %2
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %29 = load i16, ptr %19, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs_proc_unlink_setup(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 10), ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_proc_unlink_rpc_prepare(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @rpc_call_start(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_unlink_done(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %1, i32 -152
  %5 = load i32, ptr %4, align 8
  %6 = or i32 %5, 824
  store i32 %6, ptr %4, align 8
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, 16384
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = or i32 %5, 826
  store i32 %11, ptr %4, align 8
  br label %12

12:                                               ; preds = %10, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %13 = load i16, ptr %3, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs_proc_rename_setup(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 11), ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_proc_rename_rpc_prepare(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @rpc_call_start(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_rename_done(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = getelementptr i8, ptr %1, i32 -152
  %6 = load i32, ptr %5, align 8
  %7 = or i32 %6, 824
  store i32 %7, ptr %5, align 8
  %8 = load i16, ptr %1, align 8
  %9 = and i16 %8, -4096
  %10 = icmp eq i16 %9, 16384
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = or i32 %6, 826
  store i32 %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %11, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %14 = load i16, ptr %4, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %16 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %16) #10
  %17 = getelementptr i8, ptr %2, i32 -152
  %18 = load i32, ptr %17, align 8
  %19 = or i32 %18, 824
  store i32 %19, ptr %17, align 8
  %20 = load i16, ptr %2, align 8
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, 16384
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = or i32 %18, 826
  store i32 %24, ptr %17, align 8
  br label %25

25:                                               ; preds = %23, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %26 = load i16, ptr %16, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_link(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.nfs_linkargs, align 4
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %6 = getelementptr i8, ptr %0, i32 -288
  store ptr %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nfs_linkargs, ptr %4, i32 0, i32 1
  %8 = getelementptr i8, ptr %1, i32 -288
  store ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_linkargs, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.qstr, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.nfs_linkargs, ptr %4, i32 0, i32 3
  %13 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 12), ptr %5, align 4
  %15 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @rpc_call_sync(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 0) #10
  %25 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %25) #10
  %26 = getelementptr i8, ptr %0, i32 -152
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, 824
  store i32 %28, ptr %26, align 8
  %29 = load i16, ptr %0, align 8
  %30 = and i16 %29, -4096
  %31 = icmp eq i16 %30, 16384
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = or i32 %27, 826
  store i32 %33, ptr %26, align 8
  br label %34

34:                                               ; preds = %32, %3
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %35 = load i16, ptr %25, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %37) #10
  %38 = getelementptr i8, ptr %1, i32 -152
  %39 = load i32, ptr %38, align 8
  %40 = or i32 %39, 824
  store i32 %40, ptr %38, align 8
  %41 = load i16, ptr %1, align 8
  %42 = and i16 %41, -4096
  %43 = icmp eq i16 %42, 16384
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = or i32 %39, 826
  store i32 %45, ptr %38, align 8
  br label %46

46:                                               ; preds = %44, %34
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %47 = load i16, ptr %37, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %37, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_symlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.nfs_symlinkargs, align 4
  %8 = alloca %struct.rpc_message, align 4
  store ptr %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %9 = getelementptr i8, ptr %0, i32 -288
  store ptr %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %10, align 4
  %14 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %7, i32 0, i32 2
  %15 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %7, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %7, i32 0, i32 4
  store i32 %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %7, i32 0, i32 5
  store ptr %4, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 13), ptr %8, align 4
  %20 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 1
  store ptr %7, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 2
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 3
  store ptr null, ptr %22, align 4
  %23 = icmp ugt i32 %3, 1024
  br i1 %23, label %55, label %24

24:                                               ; preds = %5
  %25 = call ptr @nfs_alloc_fhandle() #10
  %26 = call ptr @nfs_alloc_fattr() #10
  %27 = icmp eq ptr %25, null
  %28 = icmp eq ptr %26, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %53, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nfs_server, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @rpc_call_sync(ptr noundef %36, ptr noundef nonnull %8, i32 noundef 0) #10
  %38 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %38) #10
  %39 = getelementptr i8, ptr %0, i32 -152
  %40 = load i32, ptr %39, align 8
  %41 = or i32 %40, 824
  store i32 %41, ptr %39, align 8
  %42 = load i16, ptr %0, align 8
  %43 = and i16 %42, -4096
  %44 = icmp eq i16 %43, 16384
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = or i32 %40, 826
  store i32 %46, ptr %39, align 8
  br label %47

47:                                               ; preds = %45, %30
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %48 = load i16, ptr %38, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %38, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %50 = icmp eq i32 %37, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @nfs_instantiate(ptr noundef %1, ptr noundef nonnull %25, ptr noundef nonnull %26) #10
  br label %53

53:                                               ; preds = %51, %47, %24
  %54 = phi i32 [ -12, %24 ], [ %52, %51 ], [ %37, %47 ]
  call void @kfree(ptr noundef %26) #10
  call void @kfree(ptr noundef %25) #10
  br label %55

55:                                               ; preds = %53, %5
  %56 = phi i32 [ -36, %5 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_mkdir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.nfs_proc_mkdir.msg, i32 16, i1 false)
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 360) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -288
  store ptr %9, ptr %6, align 8
  %10 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs_createargs, ptr %6, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nfs_createargs, ptr %6, i32 0, i32 2
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nfs_createargs, ptr %6, i32 0, i32 3
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs_createdata, ptr %6, i32 0, i32 3
  tail call void @nfs_fattr_init(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.nfs_createdata, ptr %6, i32 0, i32 2
  store i16 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nfs_createdata, ptr %6, i32 0, i32 1
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nfs_createdata, ptr %6, i32 0, i32 1, i32 1
  store ptr %18, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %6, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs_server, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @rpc_call_sync(ptr noundef %29, ptr noundef nonnull %4, i32 noundef 0) #10
  %31 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %31) #10
  %32 = getelementptr i8, ptr %0, i32 -152
  %33 = load i32, ptr %32, align 8
  %34 = or i32 %33, 824
  store i32 %34, ptr %32, align 8
  %35 = load i16, ptr %0, align 8
  %36 = and i16 %35, -4096
  %37 = icmp eq i16 %36, 16384
  br i1 %37, label %38, label %40

38:                                               ; preds = %8
  %39 = or i32 %33, 826
  store i32 %39, ptr %32, align 8
  br label %40

40:                                               ; preds = %38, %8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %41 = load i16, ptr %31, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %43 = icmp eq i32 %30, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load ptr, ptr %20, align 8
  %46 = load ptr, ptr %21, align 4
  %47 = call i32 @nfs_instantiate(ptr noundef %1, ptr noundef %45, ptr noundef %46) #10
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %47, %44 ], [ %30, %40 ]
  call void @kfree(ptr noundef nonnull %6) #10
  br label %50

50:                                               ; preds = %48, %3
  %51 = phi i32 [ %49, %48 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_rmdir(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nfs_diropargs, align 4
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %5 = getelementptr i8, ptr %0, i32 -288
  store ptr %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nfs_diropargs, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.nfs_diropargs, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 15), ptr %4, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs_server, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @rpc_call_sync(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 0) #10
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %22) #10
  %23 = getelementptr i8, ptr %0, i32 -152
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, 824
  store i32 %25, ptr %23, align 8
  %26 = load i16, ptr %0, align 8
  %27 = and i16 %26, -4096
  %28 = icmp eq i16 %27, 16384
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = or i32 %24, 826
  store i32 %30, ptr %23, align 8
  br label %31

31:                                               ; preds = %29, %2
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %32 = load i16, ptr %22, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %22, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_readdir(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nfs_readdirargs, align 4
  %4 = alloca %struct.rpc_message, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %8 = getelementptr i8, ptr %7, i32 -288
  store ptr %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.nfs_readdirargs, ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %9, align 4
  %13 = getelementptr inbounds %struct.nfs_readdirargs, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.nfs_readdirargs, ptr %3, i32 0, i32 3
  %17 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 16), ptr %4, align 4
  %19 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs_server, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @rpc_call_sync(ptr noundef %29, ptr noundef nonnull %4, i32 noundef 0) #10
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store i32 0, ptr %32, align 4
  %33 = load ptr, ptr %1, align 4
  store i32 0, ptr %33, align 4
  call void @nfs_invalidate_atime(ptr noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_mknod(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.nfs_proc_mknod.msg, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, 4096
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = and i16 %7, 4095
  %12 = or i16 %11, 8192
  store i16 %12, ptr %6, align 4
  %13 = load i32, ptr %2, align 8
  %14 = and i32 %13, -9
  store i32 %14, ptr %2, align 8
  br label %28

15:                                               ; preds = %4
  switch i16 %8, label %28 [
    i16 8192, label %16
    i16 24576, label %16
  ]

16:                                               ; preds = %15, %15
  %17 = load i32, ptr %2, align 8
  %18 = or i32 %17, 8
  store i32 %18, ptr %2, align 8
  %19 = and i32 %3, 255
  %20 = lshr i32 %3, 12
  %21 = and i32 %20, 1048320
  %22 = or i32 %21, %19
  %23 = shl i32 %3, 12
  %24 = and i32 %23, -1048576
  %25 = or i32 %22, %24
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  store i64 %26, ptr %27, align 8
  br label %28

28:                                               ; preds = %16, %15, %10
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 360) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %87, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 -288
  store ptr %33, ptr %30, align 8
  %34 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %35 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nfs_createargs, ptr %30, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nfs_createargs, ptr %30, i32 0, i32 2
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.nfs_createargs, ptr %30, i32 0, i32 3
  store ptr %2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nfs_createdata, ptr %30, i32 0, i32 3
  tail call void @nfs_fattr_init(ptr noundef %42) #10
  %43 = getelementptr inbounds %struct.nfs_createdata, ptr %30, i32 0, i32 2
  store i16 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.nfs_createdata, ptr %30, i32 0, i32 1
  store ptr %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.nfs_createdata, ptr %30, i32 0, i32 1, i32 1
  store ptr %42, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %30, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %44, ptr %47, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nfs_server, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 @rpc_call_sync(ptr noundef %53, ptr noundef nonnull %5, i32 noundef 0) #10
  %55 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %55) #10
  %56 = getelementptr i8, ptr %0, i32 -152
  %57 = load i32, ptr %56, align 8
  %58 = or i32 %57, 824
  store i32 %58, ptr %56, align 8
  %59 = load i16, ptr %0, align 8
  %60 = and i16 %59, -4096
  %61 = icmp eq i16 %60, 16384
  br i1 %61, label %62, label %64

62:                                               ; preds = %32
  %63 = or i32 %57, 826
  store i32 %63, ptr %56, align 8
  br label %64

64:                                               ; preds = %62, %32
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %65 = load i16, ptr %55, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %67 = icmp ne i32 %54, -22
  %68 = xor i1 %9, true
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %64
  store i16 %7, ptr %6, align 4
  %71 = load ptr, ptr %45, align 4
  call void @nfs_fattr_init(ptr noundef %71) #10
  %72 = load ptr, ptr %48, align 4
  %73 = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 27
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nfs_server, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @rpc_call_sync(ptr noundef %76, ptr noundef nonnull %5, i32 noundef 0) #10
  br label %78

78:                                               ; preds = %70, %64
  %79 = phi i32 [ %77, %70 ], [ %54, %64 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load ptr, ptr %44, align 8
  %83 = load ptr, ptr %45, align 4
  %84 = call i32 @nfs_instantiate(ptr noundef %1, ptr noundef %82, ptr noundef %83) #10
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i32 [ %84, %81 ], [ %79, %78 ]
  call void @kfree(ptr noundef nonnull %30) #10
  br label %87

87:                                               ; preds = %85, %28
  %88 = phi i32 [ %86, %85 ], [ -12, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_statfs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.nfs2_fsstat, align 4
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 17), ptr %5, align 4
  %6 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = load ptr, ptr %2, align 8
  call void @nfs_fattr_init(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @rpc_call_sync(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.nfs2_fsstat, ptr %4, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nfs2_fsstat, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  %21 = mul nuw i64 %20, %17
  %22 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 1
  store i64 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nfs2_fsstat, ptr %4, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = mul nuw i64 %25, %20
  %27 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 2
  store i64 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nfs2_fsstat, ptr %4, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  %31 = mul nuw i64 %30, %20
  %32 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 3
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  br label %34

34:                                               ; preds = %14, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_fsinfo(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.nfs2_fsstat, align 4
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 17), ptr %5, align 4
  %6 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = load ptr, ptr %2, align 8
  call void @nfs_fattr_init(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @rpc_call_sync(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 1
  store i32 8192, ptr %15, align 4
  %16 = load i32, ptr %4, align 4
  %17 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nfs2_fsstat, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 4
  store i32 8192, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 5
  store i32 %16, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 6
  store i32 %19, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 7
  store i32 %16, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 8
  store i64 2147483647, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 10
  store i32 0, ptr %26, align 8
  br label %27

27:                                               ; preds = %14, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nfs_proc_pathconf(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.nfs_pathconf, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nfs_pathconf, ptr %2, i32 0, i32 2
  store i32 255, ptr %5, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs2_decode_dirent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_pgio_rpc_prepare(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @rpc_call_start(ptr noundef %0) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs_proc_read_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #2 {
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 6), ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_read_done(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8
  tail call void @nfs_invalidate_atime(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @nfs_refresh_inode(ptr noundef %3, ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14, %7
  %19 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = add i64 %20, %12
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds %struct.nfs_fattr, ptr %22, i32 0, i32 6
  %24 = load i64, ptr %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %18, %14
  %27 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4, i32 0, i32 1
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %18, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs_proc_write_setup(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 9, i32 0, i32 2
  store i32 2, ptr %4, align 4
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs_procedures, i32 0, i32 8), ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_write_done(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  store i64 %9, ptr %10, align 8
  tail call void @nfs_writeback_update_inode(ptr noundef %1) #10
  br label %11

11:                                               ; preds = %6, %2
  ret i32 0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_proc_commit_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #3 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/proc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 653, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_proc_commit_rpc_prepare(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #3 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/proc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 646, 0\0A.popsection", ""() #10, !srcloc !14
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_proc_lock(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @nlmclnt_proc(ptr noundef %11, i32 noundef %1, ptr noundef %2, ptr noundef null) #10
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nfs_lock_check_bounds(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 12
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = sext i32 %4 to i64
  %6 = icmp eq i64 %3, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 13
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, 9223372036854775807
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = trunc i64 %9 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %9, %13
  %15 = icmp slt i32 %4, 0
  %16 = select i1 %14, i1 true, i1 %15
  %17 = icmp slt i32 %12, %4
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %21, label %22

19:                                               ; preds = %7
  %20 = icmp slt i32 %4, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19, %11, %1
  br label %22

22:                                               ; preds = %21, %19, %11
  %23 = phi i32 [ -22, %21 ], [ 0, %19 ], [ 0, %11 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_close_context(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nfs_have_delegation(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_client(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_init_client(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_client(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_create_server(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_clone_server(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_lookup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_link(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_unlink(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_rmdir(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_setattr_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_instantiate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_call_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fhandle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_invalidate_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_refresh_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_writeback_update_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_proc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i64 2149048945}
!10 = !{i64 2149044769}
!11 = !{i64 2149044844, i64 2149044871, i64 2149044918, i64 2149044940, i64 2149044968, i64 2149044988}
!12 = !{i64 2149071948}
!13 = !{i64 2156145309, i64 2156145787, i64 2156145346, i64 2156145402, i64 2156145436, i64 2156145460, i64 2156145501, i64 2156145522, i64 2156145550, i64 2156145584}
!14 = !{i64 2156140352, i64 2156140830, i64 2156140389, i64 2156140445, i64 2156140479, i64 2156140503, i64 2156140544, i64 2156140565, i64 2156140593, i64 2156140627}
