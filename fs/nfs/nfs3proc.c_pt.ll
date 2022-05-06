; ModuleID = '/llk/IR/fs/nfs/nfs3proc.c_pt.bc'
source_filename = "../fs/nfs/nfs3proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nlmclnt_operations = type { ptr, ptr, ptr }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.atomic_t = type { i32 }
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
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.123, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.103 }
%struct.llist_node = type { ptr }
%union.anon.103 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.123 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nfs3_sattrargs = type { ptr, ptr, i32, %struct.timespec64 }
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
%struct.path = type { ptr, ptr }
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
%struct.anon = type { i32, i32 }
%struct.nfs3_accessargs = type { ptr, i32 }
%struct.nfs3_accessres = type { ptr, i32 }
%struct.nfs_access_entry = type { %struct.rb_node, %struct.list_head, %struct.kuid_t, %struct.kgid_t, ptr, i32, %struct.callback_head }
%struct.nfs3_readlinkargs = type { ptr, i32, i32, ptr }
%struct.nfs3_createdata = type { %struct.rpc_message, %union.anon.158, %struct.nfs3_diropres, %struct.nfs_fh, %struct.nfs_fattr, %struct.nfs_fattr }
%union.anon.158 = type { %struct.nfs3_createargs }
%struct.nfs3_createargs = type { ptr, ptr, i32, ptr, i32, [2 x i32] }
%struct.nfs3_diropres = type { ptr, ptr, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.134, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.134 = type { %struct.anon.136 }
%struct.anon.136 = type { i64 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.0 }
%union.anon.0 = type { %struct.kuid_t }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs_removeres = type { %struct.nfs4_sequence_res, ptr, ptr, %struct.nfs4_change_info }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_change_info = type { i32, i64, i64 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.130, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.130 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.nfs_iostats = type { [8 x i64], [27 x i32], [20 x i8] }
%struct.nfs_renameres = type { %struct.nfs4_sequence_res, ptr, %struct.nfs4_change_info, ptr, %struct.nfs4_change_info, ptr }
%struct.nfs3_linkargs = type { ptr, ptr, ptr, i32 }
%struct.nfs3_linkres = type { ptr, ptr }
%struct.nfs3_diropargs = type { ptr, ptr, i32 }
%struct.nfs3_readdirargs = type { ptr, i64, [2 x i32], i8, i32, ptr }
%struct.nfs3_readdirres = type { ptr, ptr, i8 }
%struct.nfs_readdir_arg = type { ptr, ptr, ptr, i64, ptr, i32, i8 }
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
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.127 }
%union.anon.127 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }

@nfs_dentry_operations = external dso_local constant %struct.dentry_operations, align 64
@nfs3_dir_inode_operations = internal constant %struct.inode_operations { ptr @nfs_lookup, ptr null, ptr @nfs_permission, ptr @nfs3_get_acl, ptr null, ptr @nfs_create, ptr @nfs_link, ptr @nfs_unlink, ptr @nfs_symlink, ptr @nfs_mkdir, ptr @nfs_rmdir, ptr @nfs_mknod, ptr @nfs_rename, ptr @nfs_setattr, ptr @nfs_getattr, ptr @nfs3_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @nfs3_set_acl, ptr null, ptr null, [36 x i8] undef }, align 64
@nfs3_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @nfs_permission, ptr @nfs3_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_setattr, ptr @nfs_getattr, ptr @nfs3_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @nfs3_set_acl, ptr null, ptr null, [36 x i8] undef }, align 64
@nfs_file_operations = external dso_local constant %struct.file_operations, align 4
@nlmclnt_fl_close_lock_ops = internal constant %struct.nlmclnt_operations { ptr @nfs3_nlm_alloc_call, ptr @nfs3_nlm_unlock_prepare, ptr @nfs3_nlm_release_call }, align 4
@nfs_v3_clientops = dso_local local_unnamed_addr constant %struct.nfs_rpc_ops { i32 3, ptr @nfs_dentry_operations, ptr @nfs3_dir_inode_operations, ptr @nfs3_file_inode_operations, ptr @nfs_file_operations, ptr @nlmclnt_fl_close_lock_ops, ptr @nfs3_proc_get_root, ptr @nfs_submount, ptr @nfs_try_get_tree, ptr @nfs3_proc_getattr, ptr @nfs3_proc_setattr, ptr @nfs3_proc_lookup, ptr @nfs3_proc_lookupp, ptr @nfs3_proc_access, ptr @nfs3_proc_readlink, ptr @nfs3_proc_create, ptr @nfs3_proc_remove, ptr @nfs3_proc_unlink_setup, ptr @nfs3_proc_unlink_rpc_prepare, ptr @nfs3_proc_unlink_done, ptr @nfs3_proc_rename_setup, ptr @nfs3_proc_rename_rpc_prepare, ptr @nfs3_proc_rename_done, ptr @nfs3_proc_link, ptr @nfs3_proc_symlink, ptr @nfs3_proc_mkdir, ptr @nfs3_proc_rmdir, ptr @nfs3_proc_readdir, ptr @nfs3_proc_mknod, ptr @nfs3_proc_statfs, ptr @nfs3_proc_fsinfo, ptr @nfs3_proc_pathconf, ptr null, ptr @nfs3_decode_dirent, ptr @nfs3_proc_pgio_rpc_prepare, ptr @nfs3_proc_read_setup, ptr @nfs3_read_done, ptr @nfs3_proc_write_setup, ptr @nfs3_write_done, ptr @nfs3_proc_commit_setup, ptr @nfs3_proc_commit_rpc_prepare, ptr @nfs3_commit_done, ptr @nfs3_proc_lock, ptr null, ptr @forget_all_cached_acls, ptr @nfs_close_context, ptr null, ptr @nfs3_have_delegation, ptr @nfs_alloc_client, ptr @nfs_init_client, ptr @nfs_free_client, ptr @nfs3_create_server, ptr @nfs3_clone_server, ptr null }, align 4
@nfs3_procedures = external dso_local constant [0 x %struct.rpc_procinfo], align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__const.nfs3_proc_lookupp.dotdot = private unnamed_addr constant [3 x i8] c"..\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_get_root(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @do_proc_get_root(ptr noundef %5, ptr noundef %1, ptr noundef %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @do_proc_get_root(ptr noundef %11, ptr noundef %1, ptr noundef %2)
  br label %16

16:                                               ; preds = %14, %8, %3
  %17 = phi i32 [ %15, %14 ], [ %6, %8 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_submount(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_try_get_tree(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_getattr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone %3) #0 {
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 1), ptr %5, align 4
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
  tail call void @nfs_fattr_init(ptr noundef %2) #13
  %17 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %45, %15
  %20 = call i32 @rpc_call_sync(ptr noundef %18, ptr noundef nonnull %5, i32 noundef %16) #13
  %21 = icmp eq i32 %20, -528
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #13
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 1073741824
  store i32 %26, ptr %24, align 4
  %27 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %28 = load i32, ptr %24, align 4
  %29 = and i32 %28, -1073741825
  store i32 %29, ptr %24, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %30 = load volatile i32, ptr @system_freezing_cnt, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !10

32:                                               ; preds = %22
  %33 = call zeroext i1 @freezing_slow_path(ptr noundef %23) #13
  br i1 %33, label %34, label %36, !prof !11

34:                                               ; preds = %32
  %35 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %36

36:                                               ; preds = %34, %32, %22
  %37 = load volatile i32, ptr %23, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 98, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 1
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i32 [ 0, %36 ], [ %44, %40 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %19, label %48

48:                                               ; preds = %45, %19
  %49 = phi i32 [ %20, %19 ], [ -512, %45 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_setattr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nfs3_sattrargs, align 8
  %5 = alloca %struct.rpc_message, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %8 = getelementptr i8, ptr %7, i32 -288
  %9 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr %8, ptr %4, align 8
  %10 = getelementptr inbounds %struct.nfs3_sattrargs, ptr %4, i32 0, i32 1
  store ptr %2, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 2), ptr %5, align 4
  %11 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %13, align 4
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nfs_open_context, ptr %23, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21, %17
  %29 = phi ptr [ %27, %25 ], [ null, %17 ], [ null, %21 ]
  store ptr %29, ptr %13, align 4
  br label %30

30:                                               ; preds = %28, %3
  call void @nfs_fattr_init(ptr noundef %1) #13
  %31 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nfs_server, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %62, %30
  %38 = call i32 @rpc_call_sync(ptr noundef %36, ptr noundef nonnull %5, i32 noundef 0) #13
  switch i32 %38, label %71 [
    i32 -528, label %39
    i32 0, label %65
  ]

39:                                               ; preds = %37
  %40 = tail call ptr @llvm.thread.pointer() #13
  %41 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 1073741824
  store i32 %43, ptr %41, align 4
  %44 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %45 = load i32, ptr %41, align 4
  %46 = and i32 %45, -1073741825
  store i32 %46, ptr %41, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %47 = load volatile i32, ptr @system_freezing_cnt, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !10

49:                                               ; preds = %39
  %50 = call zeroext i1 @freezing_slow_path(ptr noundef %40) #13
  br i1 %50, label %51, label %53, !prof !11

51:                                               ; preds = %49
  %52 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %53

53:                                               ; preds = %51, %49, %39
  %54 = load volatile i32, ptr %40, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 98, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 8
  %61 = and i32 %60, 1
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i32 [ 0, %53 ], [ %61, %57 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %37, label %71

65:                                               ; preds = %37
  call void @nfs_setattr_update_inode(ptr noundef %7, ptr noundef %2, ptr noundef %1) #13
  %66 = getelementptr i8, ptr %7, i32 -152
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  call void @nfs_zap_acl_cache(ptr noundef %7) #13
  br label %71

71:                                               ; preds = %70, %65, %62, %37
  %72 = phi i32 [ 0, %70 ], [ 0, %65 ], [ %38, %37 ], [ -512, %62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 7340032
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 -288
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  %23 = select i1 %22, i16 0, i16 4096
  br label %24

24:                                               ; preds = %17, %13, %4
  %25 = phi i16 [ 0, %4 ], [ 0, %13 ], [ %23, %17 ]
  %26 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %27 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call fastcc i32 @__nfs3_proc_lookup(ptr noundef %0, ptr noundef %28, i32 noundef %30, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %25)
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_lookupp(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @__const.nfs3_proc_lookupp.dotdot, i32 3, i1 false)
  %5 = call i32 @strlen(ptr noundef nonnull %4)
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 11
  %13 = trunc i32 %12 to i16
  %14 = and i16 %13, 4096
  %15 = call fastcc i32 @__nfs3_proc_lookup(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %14)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #13
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_access(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nfs3_accessargs, align 8
  %5 = alloca %struct.nfs3_accessres, align 8
  %6 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %7 = getelementptr i8, ptr %0, i32 -288
  store ptr %7, ptr %4, align 8
  %8 = getelementptr inbounds %struct.nfs3_accessargs, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nfs_access_entry, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 4), ptr %6, align 4
  %11 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 1
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 2
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 3
  store ptr %2, ptr %13, align 4
  %14 = call ptr @nfs_alloc_fattr() #13
  store ptr %14, ptr %5, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %65, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %49, %16
  %24 = call i32 @rpc_call_sync(ptr noundef %22, ptr noundef nonnull %6, i32 noundef 0) #13
  %25 = icmp eq i32 %24, -528
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = tail call ptr @llvm.thread.pointer() #13
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 1073741824
  store i32 %30, ptr %28, align 4
  %31 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %32 = load i32, ptr %28, align 4
  %33 = and i32 %32, -1073741825
  store i32 %33, ptr %28, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %34 = load volatile i32, ptr @system_freezing_cnt, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !10

36:                                               ; preds = %26
  %37 = call zeroext i1 @freezing_slow_path(ptr noundef %27) #13
  br i1 %37, label %38, label %40, !prof !11

38:                                               ; preds = %36
  %39 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %40

40:                                               ; preds = %38, %36, %26
  %41 = load volatile i32, ptr %27, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 98, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, 1
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i32 [ 0, %40 ], [ %48, %44 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %23, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %5, align 8
  %54 = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef %53) #13
  br label %62

55:                                               ; preds = %23
  %56 = load ptr, ptr %5, align 8
  %57 = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef %56) #13
  %58 = icmp eq i32 %24, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.nfs3_accessres, ptr %5, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  call void @nfs_access_set_mask(ptr noundef %1, i32 noundef %61) #13
  br label %62

62:                                               ; preds = %59, %55, %52
  %63 = phi i32 [ -512, %52 ], [ 0, %59 ], [ %24, %55 ]
  %64 = load ptr, ptr %5, align 8
  call void @kfree(ptr noundef %64) #13
  br label %65

65:                                               ; preds = %62, %3
  %66 = phi i32 [ -12, %3 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_readlink(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.nfs3_readlinkargs, align 4
  %7 = alloca %struct.rpc_message, align 4
  store ptr %1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %8 = getelementptr i8, ptr %0, i32 -288
  store ptr %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %6, i32 0, i32 1
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %6, i32 0, i32 2
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %6, i32 0, i32 3
  store ptr %5, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 5), ptr %7, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 1
  store ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 3
  store ptr null, ptr %13, align 4
  %14 = call ptr @nfs_alloc_fattr() #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 2
  store ptr %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %50, %16
  %25 = call i32 @rpc_call_sync(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 0) #13
  %26 = icmp eq i32 %25, -528
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = tail call ptr @llvm.thread.pointer() #13
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 1073741824
  store i32 %31, ptr %29, align 4
  %32 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %33 = load i32, ptr %29, align 4
  %34 = and i32 %33, -1073741825
  store i32 %34, ptr %29, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %35 = load volatile i32, ptr @system_freezing_cnt, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !10

37:                                               ; preds = %27
  %38 = call zeroext i1 @freezing_slow_path(ptr noundef %28) #13
  br i1 %38, label %39, label %41, !prof !11

39:                                               ; preds = %37
  %40 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %41

41:                                               ; preds = %39, %37, %27
  %42 = load volatile i32, ptr %28, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 98, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 8
  %49 = and i32 %48, 1
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i32 [ 0, %41 ], [ %49, %45 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %24, label %53

53:                                               ; preds = %50, %24
  %54 = phi i32 [ %25, %24 ], [ -512, %50 ]
  %55 = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef nonnull %14) #13
  call void @kfree(ptr noundef nonnull %14) #13
  br label %56

56:                                               ; preds = %53, %4
  %57 = phi i32 [ -12, %4 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !12
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 592) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %119, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 2
  %14 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 2
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 3
  %16 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 4
  %18 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 2, i32 2
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 5
  store ptr %19, ptr %13, align 4
  tail call void @nfs_fattr_init(ptr noundef %17) #13
  %20 = load ptr, ptr %13, align 4
  tail call void @nfs_fattr_init(ptr noundef %20) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 8), ptr %8, align 8
  %21 = getelementptr i8, ptr %0, i32 -288
  store ptr %21, ptr %11, align 8
  %22 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %23 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 2
  store i32 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 3
  store ptr %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %30, align 8
  %31 = and i32 %3, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %10
  store i32 2, ptr %30, align 8
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = tail call ptr @llvm.thread.pointer() #13
  %38 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 52
  %39 = load i32, ptr %38, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = getelementptr %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 %40, ptr %41, align 8
  br label %42

42:                                               ; preds = %33, %10
  %43 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %44 = call i32 @posix_acl_create(ptr noundef %0, ptr noundef %43, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %119

46:                                               ; preds = %56, %42
  %47 = call fastcc ptr @nfs3_do_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8)
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %49 = ptrtoint ptr %47 to i32
  %50 = select i1 %48, i32 %49, i32 0
  switch i32 %50, label %92 [
    i32 -524, label %51
    i32 0, label %59
  ]

51:                                               ; preds = %46
  %52 = load i32, ptr %30, align 8
  switch i32 %52, label %56 [
    i32 2, label %54
    i32 1, label %53
    i32 0, label %94
  ]

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ 0, %53 ], [ 1, %51 ]
  store i32 %55, ptr %30, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = load ptr, ptr %13, align 4
  call void @nfs_fattr_init(ptr noundef %57) #13
  %58 = load ptr, ptr %18, align 4
  call void @nfs_fattr_init(ptr noundef %58) #13
  br label %46

59:                                               ; preds = %46
  %60 = icmp eq ptr %47, null
  %61 = select i1 %60, ptr %1, ptr %47
  %62 = load i32, ptr %30, align 8
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32, ptr %2, align 8
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %66, 0
  %68 = or i32 %65, 16
  %69 = select i1 %67, i32 %68, i32 %65
  %70 = and i32 %69, 256
  %71 = icmp eq i32 %70, 0
  %72 = or i1 %67, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = or i32 %69, 32
  %75 = select i1 %71, i32 %74, i32 %69
  store i32 %75, ptr %2, align 8
  br label %76

76:                                               ; preds = %73, %64
  %77 = load ptr, ptr %18, align 4
  %78 = call i32 @nfs3_proc_setattr(ptr noundef %61, ptr noundef %77, ptr noundef %2)
  %79 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 5
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %18, align 4
  %82 = call i32 @nfs_post_op_update_inode(ptr noundef %80, ptr noundef %81) #13
  %83 = icmp eq i32 %78, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %76, %59
  %85 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 5
  %86 = load ptr, ptr %85, align 8
  %87 = load ptr, ptr %6, align 4
  %88 = load ptr, ptr %5, align 4
  %89 = call i32 @nfs3_proc_setacls(ptr noundef %86, ptr noundef %87, ptr noundef %88) #13
  br label %90

90:                                               ; preds = %84, %76
  %91 = phi i32 [ %78, %76 ], [ %89, %84 ]
  call void @dput(ptr noundef %47) #13
  br label %94

92:                                               ; preds = %46
  %93 = ptrtoint ptr %47 to i32
  br label %94

94:                                               ; preds = %92, %90, %51
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ], [ -524, %51 ]
  %96 = load ptr, ptr %6, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %94
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %96) #13, !srcloc !14
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %96, ptr nonnull %96, i32 1, ptr nonnull elementtype(i32) %96) #13, !srcloc !15
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = icmp sgt i32 %100, 0
  br i1 %103, label %107, label %104, !prof !10

104:                                              ; preds = %102
  call void @refcount_warn_saturate(ptr noundef nonnull %96, i32 noundef 3) #13
  br label %107

105:                                              ; preds = %98
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %106 = getelementptr inbounds %struct.posix_acl, ptr %96, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %106, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %107

107:                                              ; preds = %105, %104, %102, %94
  %108 = load ptr, ptr %5, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %108) #13, !srcloc !14
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %108, ptr nonnull %108, i32 1, ptr nonnull elementtype(i32) %108) #13, !srcloc !15
  %112 = extractvalue { i32, i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = icmp sgt i32 %112, 0
  br i1 %115, label %119, label %116, !prof !10

116:                                              ; preds = %114
  call void @refcount_warn_saturate(ptr noundef nonnull %108, i32 noundef 3) #13
  br label %119

117:                                              ; preds = %110
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %118 = getelementptr inbounds %struct.posix_acl, ptr %108, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %118, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %119

119:                                              ; preds = %117, %116, %114, %107, %42, %4
  %120 = phi i32 [ %44, %42 ], [ %95, %107 ], [ %95, %114 ], [ %95, %116 ], [ %95, %117 ], [ -12, %4 ]
  call void @kfree(ptr noundef %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_remove(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nfs_removeargs, align 8
  %4 = alloca %struct.nfs_removeres, align 8
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.nfs_removeargs, ptr %3, i32 0, i32 1
  %7 = getelementptr i8, ptr %0, i32 -288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfs_removeargs, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %8, ptr noundef align 8 dereferenceable(16) %9, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 12), ptr %5, align 4
  %10 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %12, align 4
  %13 = call ptr @nfs_alloc_fattr() #13
  %14 = getelementptr inbounds %struct.nfs_removeres, ptr %4, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %57, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs_server, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %49, %16
  %24 = call i32 @rpc_call_sync(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 0) #13
  %25 = icmp eq i32 %24, -528
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = tail call ptr @llvm.thread.pointer() #13
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 1073741824
  store i32 %30, ptr %28, align 4
  %31 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %32 = load i32, ptr %28, align 4
  %33 = and i32 %32, -1073741825
  store i32 %33, ptr %28, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %34 = load volatile i32, ptr @system_freezing_cnt, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !10

36:                                               ; preds = %26
  %37 = call zeroext i1 @freezing_slow_path(ptr noundef %27) #13
  br i1 %37, label %38, label %40, !prof !11

38:                                               ; preds = %36
  %39 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %40

40:                                               ; preds = %38, %36, %26
  %41 = load volatile i32, ptr %27, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 98, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, 1
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i32 [ 0, %40 ], [ %48, %44 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %23, label %52

52:                                               ; preds = %49, %23
  %53 = phi i32 [ %24, %23 ], [ -512, %49 ]
  %54 = load ptr, ptr %14, align 4
  %55 = call i32 @nfs_post_op_update_inode(ptr noundef %0, ptr noundef %54) #13
  %56 = load ptr, ptr %14, align 4
  call void @kfree(ptr noundef %56) #13
  br label %57

57:                                               ; preds = %52, %2
  %58 = phi i32 [ -12, %2 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i32 %58
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs3_proc_unlink_setup(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 12), ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_proc_unlink_rpc_prepare(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @rpc_call_start(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_unlink_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -528
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !17
  %12 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %struct.nfs_iostats, ptr %13, i32 0, i32 1, i32 24
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #12, !srcloc !18
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #13, !srcloc !19
  store i32 0, ptr %3, align 4
  %23 = tail call i32 @rpc_restart_call(ptr noundef %0) #13
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 500) #13
  br label %30

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nfs_removeres, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @nfs_post_op_update_inode(ptr noundef %1, ptr noundef %28) #13
  br label %30

30:                                               ; preds = %24, %6
  %31 = phi i32 [ 1, %24 ], [ 0, %6 ]
  ret i32 %31
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs3_proc_rename_setup(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 14), ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_proc_rename_rpc_prepare(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @rpc_call_start(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_rename_done(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -528
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !17
  %13 = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr %struct.nfs_iostats, ptr %14, i32 0, i32 1, i32 24
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #12, !srcloc !18
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #13, !srcloc !19
  store i32 0, ptr %4, align 4
  %24 = tail call i32 @rpc_restart_call(ptr noundef %0) #13
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 500) #13
  br label %34

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nfs_renameres, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @nfs_post_op_update_inode(ptr noundef %1, ptr noundef %29) #13
  %31 = getelementptr inbounds %struct.nfs_renameres, ptr %27, i32 0, i32 5
  %32 = load ptr, ptr %31, align 8
  %33 = tail call i32 @nfs_post_op_update_inode(ptr noundef %2, ptr noundef %32) #13
  br label %34

34:                                               ; preds = %25, %7
  %35 = phi i32 [ 1, %25 ], [ 0, %7 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_link(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.nfs3_linkargs, align 4
  %5 = alloca %struct.nfs3_linkres, align 8
  %6 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %7 = getelementptr i8, ptr %0, i32 -288
  store ptr %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.nfs3_linkargs, ptr %4, i32 0, i32 1
  %9 = getelementptr i8, ptr %1, i32 -288
  store ptr %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs3_linkargs, ptr %4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.qstr, ptr %2, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.nfs3_linkargs, ptr %4, i32 0, i32 3
  %14 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 15), ptr %6, align 4
  %16 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 1
  store ptr %4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 2
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 3
  store ptr null, ptr %18, align 4
  %19 = call ptr @nfs_alloc_fattr() #13
  %20 = getelementptr inbounds %struct.nfs3_linkres, ptr %5, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = call ptr @nfs_alloc_fattr() #13
  store ptr %21, ptr %5, align 8
  %22 = load ptr, ptr %20, align 4
  %23 = icmp eq ptr %22, null
  %24 = icmp eq ptr %21, null
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %69, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 27
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nfs_server, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %59, %26
  %34 = call i32 @rpc_call_sync(ptr noundef %32, ptr noundef nonnull %6, i32 noundef 0) #13
  %35 = icmp eq i32 %34, -528
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = tail call ptr @llvm.thread.pointer() #13
  %38 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 1073741824
  store i32 %40, ptr %38, align 4
  %41 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %42 = load i32, ptr %38, align 4
  %43 = and i32 %42, -1073741825
  store i32 %43, ptr %38, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %44 = load volatile i32, ptr @system_freezing_cnt, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !10

46:                                               ; preds = %36
  %47 = call zeroext i1 @freezing_slow_path(ptr noundef %37) #13
  br i1 %47, label %48, label %50, !prof !11

48:                                               ; preds = %46
  %49 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %50

50:                                               ; preds = %48, %46, %36
  %51 = load volatile i32, ptr %37, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 98, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 8
  %58 = and i32 %57, 1
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i32 [ 0, %50 ], [ %58, %54 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %33, label %62

62:                                               ; preds = %59, %33
  %63 = phi i32 [ %34, %33 ], [ -512, %59 ]
  %64 = load ptr, ptr %5, align 8
  %65 = call i32 @nfs_post_op_update_inode(ptr noundef %1, ptr noundef %64) #13
  %66 = load ptr, ptr %20, align 4
  %67 = call i32 @nfs_post_op_update_inode(ptr noundef %0, ptr noundef %66) #13
  %68 = load ptr, ptr %5, align 8
  br label %69

69:                                               ; preds = %62, %3
  %70 = phi ptr [ %21, %3 ], [ %68, %62 ]
  %71 = phi i32 [ -12, %3 ], [ %63, %62 ]
  call void @kfree(ptr noundef %70) #13
  %72 = load ptr, ptr %20, align 4
  call void @kfree(ptr noundef %72) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_symlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  store ptr %2, ptr %6, align 4
  %7 = icmp ugt i32 %3, 4096
  br i1 %7, label %41, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 592) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.rpc_message, ptr %10, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 2
  %16 = getelementptr inbounds %struct.rpc_message, ptr %10, i32 0, i32 2
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 3
  %18 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 2, i32 1
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 4
  %20 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 2, i32 2
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 5
  store ptr %21, ptr %15, align 4
  tail call void @nfs_fattr_init(ptr noundef %19) #13
  %22 = load ptr, ptr %15, align 4
  tail call void @nfs_fattr_init(ptr noundef %22) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 10), ptr %10, align 8
  %23 = getelementptr i8, ptr %0, i32 -288
  store ptr %23, ptr %13, align 8
  %24 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %25 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 1, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 1, i32 0, i32 2
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 1, i32 0, i32 3
  store ptr %6, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 1, i32 0, i32 4
  store i32 %3, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nfs3_createdata, ptr %10, i32 0, i32 1, i32 0, i32 5
  store ptr %4, ptr %33, align 4
  %34 = call fastcc ptr @nfs3_do_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10)
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %34 to i32
  %37 = select i1 %35, i32 %36, i32 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %12
  call void @dput(ptr noundef %34) #13
  br label %40

40:                                               ; preds = %39, %12
  call void @kfree(ptr noundef nonnull %10) #13
  br label %41

41:                                               ; preds = %40, %8, %5
  %42 = phi i32 [ -36, %5 ], [ %37, %40 ], [ -12, %8 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_mkdir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !12
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 592) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 2
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 2, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 4
  %17 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 2, i32 2
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 5
  store ptr %18, ptr %12, align 4
  tail call void @nfs_fattr_init(ptr noundef %16) #13
  %19 = load ptr, ptr %12, align 4
  tail call void @nfs_fattr_init(ptr noundef %19) #13
  %20 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %21 = call i32 @posix_acl_create(ptr noundef %0, ptr noundef %20, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %9
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 9), ptr %7, align 8
  %24 = getelementptr i8, ptr %0, i32 -288
  store ptr %24, ptr %10, align 8
  %25 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %26 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 1, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 1, i32 0, i32 2
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nfs3_createdata, ptr %7, i32 0, i32 1, i32 0, i32 3
  store ptr %2, ptr %32, align 4
  %33 = call fastcc ptr @nfs3_do_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7)
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %35 = ptrtoint ptr %33 to i32
  br i1 %34, label %44, label %36

36:                                               ; preds = %23
  %37 = icmp eq ptr %33, null
  %38 = select i1 %37, ptr %1, ptr %33
  %39 = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %5, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = call i32 @nfs3_proc_setacls(ptr noundef %40, ptr noundef %41, ptr noundef %42) #13
  call void @dput(ptr noundef %33) #13
  br label %44

44:                                               ; preds = %36, %23
  %45 = phi i32 [ %35, %23 ], [ %43, %36 ]
  %46 = load ptr, ptr %5, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %46) #13, !srcloc !14
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %46, ptr nonnull %46, i32 1, ptr nonnull elementtype(i32) %46) #13, !srcloc !15
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %57, label %54, !prof !10

54:                                               ; preds = %52
  call void @refcount_warn_saturate(ptr noundef nonnull %46, i32 noundef 3) #13
  br label %57

55:                                               ; preds = %48
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %56 = getelementptr inbounds %struct.posix_acl, ptr %46, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %56, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %57

57:                                               ; preds = %55, %54, %52, %44
  %58 = load ptr, ptr %4, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %58) #13, !srcloc !14
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %58, ptr nonnull %58, i32 1, ptr nonnull elementtype(i32) %58) #13, !srcloc !15
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %69, label %66, !prof !10

66:                                               ; preds = %64
  call void @refcount_warn_saturate(ptr noundef nonnull %58, i32 noundef 3) #13
  br label %69

67:                                               ; preds = %60
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %68 = getelementptr inbounds %struct.posix_acl, ptr %58, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %68, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %69

69:                                               ; preds = %67, %66, %64, %57, %9, %3
  %70 = phi i32 [ %21, %9 ], [ %45, %57 ], [ %45, %64 ], [ %45, %66 ], [ %45, %67 ], [ -12, %3 ]
  call void @kfree(ptr noundef %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_rmdir(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nfs3_diropargs, align 4
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %5 = getelementptr i8, ptr %0, i32 -288
  store ptr %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.nfs3_diropargs, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.nfs3_diropargs, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 13), ptr %4, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  store ptr null, ptr %13, align 4
  %14 = call ptr @nfs_alloc_fattr() #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %50, %16
  %25 = call i32 @rpc_call_sync(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 0) #13
  %26 = icmp eq i32 %25, -528
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = tail call ptr @llvm.thread.pointer() #13
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 1073741824
  store i32 %31, ptr %29, align 4
  %32 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %33 = load i32, ptr %29, align 4
  %34 = and i32 %33, -1073741825
  store i32 %34, ptr %29, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %35 = load volatile i32, ptr @system_freezing_cnt, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !10

37:                                               ; preds = %27
  %38 = call zeroext i1 @freezing_slow_path(ptr noundef %28) #13
  br i1 %38, label %39, label %41, !prof !11

39:                                               ; preds = %37
  %40 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %41

41:                                               ; preds = %39, %37, %27
  %42 = load volatile i32, ptr %28, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 98, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 8
  %49 = and i32 %48, 1
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i32 [ 0, %41 ], [ %49, %45 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %24, label %53

53:                                               ; preds = %50, %24
  %54 = phi i32 [ %25, %24 ], [ -512, %50 ]
  %55 = call i32 @nfs_post_op_update_inode(ptr noundef %0, ptr noundef nonnull %14) #13
  call void @kfree(ptr noundef nonnull %14) #13
  br label %56

56:                                               ; preds = %53, %2
  %57 = phi i32 [ -12, %2 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_readdir(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nfs3_readdirargs, align 8
  %4 = alloca %struct.nfs3_readdirres, align 4
  %5 = alloca %struct.rpc_message, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  %9 = getelementptr i8, ptr %8, i32 -288
  store ptr %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 3
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %3, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 6
  %16 = load i8, ptr %15, align 8, !range !20
  store i8 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %3, i32 0, i32 4
  %18 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %3, i32 0, i32 5
  %21 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %23 = getelementptr inbounds %struct.nfs3_readdirres, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %24 = load ptr, ptr %1, align 4
  store ptr %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs3_readdirres, ptr %4, i32 0, i32 2
  store i8 %16, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 16), ptr %5, align 4
  %26 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store ptr %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  %29 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %28, align 4
  %31 = icmp eq i8 %16, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 17), ptr %5, align 4
  br label %33

33:                                               ; preds = %32, %2
  %34 = icmp eq i64 %12, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.nfs_readdir_arg, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = load i64, ptr %37, align 4
  store i64 %38, ptr %13, align 8
  br label %39

39:                                               ; preds = %35, %33
  %40 = call ptr @nfs_alloc_fattr() #13
  store ptr %40, ptr %4, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %83, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 27
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nfs_server, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %75, %42
  %50 = call i32 @rpc_call_sync(ptr noundef %48, ptr noundef nonnull %5, i32 noundef 0) #13
  %51 = icmp eq i32 %50, -528
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = tail call ptr @llvm.thread.pointer() #13
  %54 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 1073741824
  store i32 %56, ptr %54, align 4
  %57 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %58 = load i32, ptr %54, align 4
  %59 = and i32 %58, -1073741825
  store i32 %59, ptr %54, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %60 = load volatile i32, ptr @system_freezing_cnt, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62, !prof !10

62:                                               ; preds = %52
  %63 = call zeroext i1 @freezing_slow_path(ptr noundef %53) #13
  br i1 %63, label %64, label %66, !prof !11

64:                                               ; preds = %62
  %65 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %66

66:                                               ; preds = %64, %62, %52
  %67 = load volatile i32, ptr %53, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 98, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %72, 8
  %74 = and i32 %73, 1
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i32 [ 0, %66 ], [ %74, %70 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %49, label %78

78:                                               ; preds = %75, %49
  %79 = phi i32 [ %50, %49 ], [ -512, %75 ]
  call void @nfs_invalidate_atime(ptr noundef %8) #13
  %80 = load ptr, ptr %4, align 4
  %81 = call i32 @nfs_refresh_inode(ptr noundef %8, ptr noundef %80) #13
  %82 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %82) #13
  br label %83

83:                                               ; preds = %78, %39
  %84 = phi i32 [ -12, %39 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_mknod(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !12
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 592) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %79, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 2
  %14 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 2
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 3
  %16 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 4
  %18 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 2, i32 2
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 5
  store ptr %19, ptr %13, align 4
  tail call void @nfs_fattr_init(ptr noundef %17) #13
  %20 = load ptr, ptr %13, align 4
  tail call void @nfs_fattr_init(ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %22 = call i32 @posix_acl_create(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %79

24:                                               ; preds = %10
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 11), ptr %8, align 8
  %25 = getelementptr i8, ptr %0, i32 -288
  store ptr %25, ptr %11, align 8
  %26 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %27 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 2
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 4
  store ptr %2, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 5
  store i32 %3, ptr %34, align 4
  %35 = load i16, ptr %21, align 4
  %36 = and i16 %35, -4096
  switch i16 %36, label %54 [
    i16 24576, label %40
    i16 8192, label %37
    i16 4096, label %38
    i16 -16384, label %39
  ]

37:                                               ; preds = %24
  br label %40

38:                                               ; preds = %24
  br label %40

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %38, %37, %24
  %41 = phi i32 [ 6, %39 ], [ 7, %38 ], [ 4, %37 ], [ 3, %24 ]
  %42 = getelementptr inbounds %struct.nfs3_createdata, ptr %8, i32 0, i32 1, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = call fastcc ptr @nfs3_do_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8)
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %45 = ptrtoint ptr %43 to i32
  br i1 %44, label %54, label %46

46:                                               ; preds = %40
  %47 = icmp eq ptr %43, null
  %48 = select i1 %47, ptr %1, ptr %43
  %49 = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %6, align 4
  %52 = load ptr, ptr %5, align 4
  %53 = call i32 @nfs3_proc_setacls(ptr noundef %50, ptr noundef %51, ptr noundef %52) #13
  call void @dput(ptr noundef %43) #13
  br label %54

54:                                               ; preds = %46, %40, %24
  %55 = phi i32 [ %45, %40 ], [ %53, %46 ], [ -22, %24 ]
  %56 = load ptr, ptr %6, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %56) #13, !srcloc !14
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %56, ptr nonnull %56, i32 1, ptr nonnull elementtype(i32) %56) #13, !srcloc !15
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = icmp sgt i32 %60, 0
  br i1 %63, label %67, label %64, !prof !10

64:                                               ; preds = %62
  call void @refcount_warn_saturate(ptr noundef nonnull %56, i32 noundef 3) #13
  br label %67

65:                                               ; preds = %58
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %66 = getelementptr inbounds %struct.posix_acl, ptr %56, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %66, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %67

67:                                               ; preds = %65, %64, %62, %54
  %68 = load ptr, ptr %5, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %68) #13, !srcloc !14
  %71 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %68, ptr nonnull %68, i32 1, ptr nonnull elementtype(i32) %68) #13, !srcloc !15
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = icmp sgt i32 %72, 0
  br i1 %75, label %79, label %76, !prof !10

76:                                               ; preds = %74
  call void @refcount_warn_saturate(ptr noundef nonnull %68, i32 noundef 3) #13
  br label %79

77:                                               ; preds = %70
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %78 = getelementptr inbounds %struct.posix_acl, ptr %68, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %78, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %79

79:                                               ; preds = %77, %76, %74, %67, %10, %4
  %80 = phi i32 [ %22, %10 ], [ %55, %67 ], [ %55, %74 ], [ %55, %76 ], [ %55, %77 ], [ -12, %4 ]
  call void @kfree(ptr noundef %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_statfs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 18), ptr %4, align 4
  %5 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  store ptr null, ptr %7, align 4
  %8 = load ptr, ptr %2, align 8
  tail call void @nfs_fattr_init(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %37, %3
  %12 = call i32 @rpc_call_sync(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 0) #13
  %13 = icmp eq i32 %12, -528
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #13
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 1073741824
  store i32 %18, ptr %16, align 4
  %19 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %20 = load i32, ptr %16, align 4
  %21 = and i32 %20, -1073741825
  store i32 %21, ptr %16, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %22 = load volatile i32, ptr @system_freezing_cnt, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %14
  %25 = call zeroext i1 @freezing_slow_path(ptr noundef %15) #13
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %24
  %27 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %28

28:                                               ; preds = %26, %24, %14
  %29 = load volatile i32, ptr %15, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 98, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 8
  %36 = and i32 %35, 1
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i32 [ 0, %28 ], [ %36, %32 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %11, label %40

40:                                               ; preds = %37, %11
  %41 = phi i32 [ %12, %11 ], [ -512, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_fsinfo(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @do_proc_fsinfo(ptr noundef %5, ptr noundef %1, ptr noundef %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @do_proc_fsinfo(ptr noundef %11, ptr noundef %1, ptr noundef %2)
  br label %16

16:                                               ; preds = %14, %8, %3
  %17 = phi i32 [ %15, %14 ], [ %6, %8 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_pathconf(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 20), ptr %4, align 4
  %5 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  store ptr null, ptr %7, align 4
  %8 = load ptr, ptr %2, align 4
  tail call void @nfs_fattr_init(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %37, %3
  %12 = call i32 @rpc_call_sync(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 0) #13
  %13 = icmp eq i32 %12, -528
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #13
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 1073741824
  store i32 %18, ptr %16, align 4
  %19 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %20 = load i32, ptr %16, align 4
  %21 = and i32 %20, -1073741825
  store i32 %21, ptr %16, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %22 = load volatile i32, ptr @system_freezing_cnt, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %14
  %25 = call zeroext i1 @freezing_slow_path(ptr noundef %15) #13
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %24
  %27 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %28

28:                                               ; preds = %26, %24, %14
  %29 = load volatile i32, ptr %15, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 98, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 8
  %36 = and i32 %35, 1
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i32 [ 0, %28 ], [ %36, %32 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %11, label %40

40:                                               ; preds = %37, %11
  %41 = phi i32 [ %12, %11 ], [ -512, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3_decode_dirent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_pgio_rpc_prepare(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @rpc_call_start(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @nfs3_proc_read_setup(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #3 {
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 6), ptr %1, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 64
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 9
  store i32 %9, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_read_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %0, ptr noundef %1) #13
  br label %48

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -528
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !17
  %19 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr %struct.nfs_iostats, ptr %20, i32 0, i32 1, i32 24
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #12, !srcloc !18
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #13, !srcloc !19
  store i32 0, ptr %14, align 4
  %30 = tail call i32 @rpc_restart_call(ptr noundef %0) #13
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 500) #13
  br label %48

31:                                               ; preds = %13
  %32 = icmp sgt i32 %15, -1
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 64
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  %38 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4
  %39 = load i32, ptr %38, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #13, !srcloc !14
  br label %40

40:                                               ; preds = %40, %37
  %41 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %34, i32 0, i32 %39) #13, !srcloc !22
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %40

44:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  br label %45

45:                                               ; preds = %44, %33, %31
  tail call void @nfs_invalidate_atime(ptr noundef %3) #13
  %46 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 19
  %47 = tail call i32 @nfs_refresh_inode(ptr noundef %3, ptr noundef %46) #13
  br label %48

48:                                               ; preds = %45, %17, %11
  %49 = phi i32 [ %12, %11 ], [ 0, %45 ], [ -11, %17 ]
  ret i32 %49
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs3_proc_write_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #2 {
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 7), ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_write_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #13
  br label %34

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -528
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !17
  %19 = getelementptr inbounds %struct.nfs_server, ptr %17, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr %struct.nfs_iostats, ptr %20, i32 0, i32 1, i32 24
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #12, !srcloc !18
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #13, !srcloc !19
  store i32 0, ptr %9, align 4
  %30 = tail call i32 @rpc_restart_call(ptr noundef %0) #13
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 500) #13
  br label %34

31:                                               ; preds = %8
  %32 = icmp sgt i32 %10, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call void @nfs_writeback_update_inode(ptr noundef %1) #13
  br label %34

34:                                               ; preds = %33, %31, %12, %6
  %35 = phi i32 [ %7, %6 ], [ -11, %12 ], [ 0, %33 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @nfs3_proc_commit_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #2 {
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 21), ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_proc_commit_rpc_prepare(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @rpc_call_start(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_commit_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #13
  br label %36

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -528
  %13 = load ptr, ptr %9, align 8
  br i1 %12, label %14, label %32

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !17
  %20 = getelementptr inbounds %struct.nfs_server, ptr %18, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr %struct.nfs_iostats, ptr %21, i32 0, i32 1, i32 24
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #12, !srcloc !18
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #13, !srcloc !19
  store i32 0, ptr %10, align 4
  %31 = tail call i32 @rpc_restart_call(ptr noundef %0) #13
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 500) #13
  br label %36

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 9, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @nfs_refresh_inode(ptr noundef %13, ptr noundef %34) #13
  br label %36

36:                                               ; preds = %32, %14, %6
  %37 = phi i32 [ %7, %6 ], [ 0, %32 ], [ -11, %14 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_proc_lock(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @nfs_get_lock_context(ptr noundef %7) #13
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nfs_open_context, ptr %7, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %16) #13
  br label %17

17:                                               ; preds = %15, %12, %3
  %18 = phi ptr [ %13, %15 ], [ null, %3 ], [ null, %12 ]
  %19 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nfs_server, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @nlmclnt_proc(ptr noundef %24, i32 noundef %1, ptr noundef %2, ptr noundef %18) #13
  %26 = icmp eq ptr %18, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  tail call void @nfs_put_lock_context(ptr noundef nonnull %18) #13
  br label %28

28:                                               ; preds = %27, %17
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_all_cached_acls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_close_context(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nfs3_have_delegation(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_client(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_init_client(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_client(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs3_create_server(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs3_clone_server(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_lookup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_permission(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs3_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3_listxattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_nlm_alloc_call(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nfs_lock_context, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_open_context, ptr %5, i32 0, i32 7
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @get_nfs_open_context(ptr noundef %5) #13
  %12 = load ptr, ptr %4, align 4
  %13 = tail call ptr @nfs_get_lock_context(ptr noundef %12) #13
  br label %14

14:                                               ; preds = %10, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nfs3_nlm_unlock_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nfs_lock_context, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_open_context, ptr %6, i32 0, i32 7
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call zeroext i1 @nfs_async_iocounter_wait(ptr noundef %0, ptr noundef nonnull %1) #13
  br label %13

13:                                               ; preds = %11, %4, %2
  %14 = phi i1 [ %12, %11 ], [ false, %4 ], [ false, %2 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_nlm_release_call(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nfs_lock_context, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_open_context, ptr %5, i32 0, i32 7
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @nfs_put_lock_context(ptr noundef nonnull %0) #13
  tail call void @put_nfs_open_context(ptr noundef %5) #13
  br label %11

11:                                               ; preds = %10, %3, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_lock_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_async_iocounter_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_lock_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_proc_get_root(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 19), ptr %4, align 4
  %5 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  store ptr null, ptr %7, align 4
  %8 = load ptr, ptr %2, align 8
  tail call void @nfs_fattr_init(ptr noundef %8) #13
  br label %9

9:                                                ; preds = %34, %3
  %10 = call i32 @rpc_call_sync(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #13
  switch i32 %10, label %72 [
    i32 -528, label %11
    i32 0, label %37
  ]

11:                                               ; preds = %9
  %12 = tail call ptr @llvm.thread.pointer() #13
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 1073741824
  store i32 %15, ptr %13, align 4
  %16 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %17 = load i32, ptr %13, align 4
  %18 = and i32 %17, -1073741825
  store i32 %18, ptr %13, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %19 = load volatile i32, ptr @system_freezing_cnt, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !10

21:                                               ; preds = %11
  %22 = call zeroext i1 @freezing_slow_path(ptr noundef %12) #13
  br i1 %22, label %23, label %25, !prof !11

23:                                               ; preds = %21
  %24 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %25

25:                                               ; preds = %23, %21, %11
  %26 = load volatile i32, ptr %12, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 98, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 8
  %33 = and i32 %32, 1
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ 0, %25 ], [ %33, %29 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %9, label %72

37:                                               ; preds = %9
  %38 = load ptr, ptr %2, align 8
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 162943
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 1), ptr %4, align 4
  store ptr %38, ptr %6, align 4
  br label %43

43:                                               ; preds = %69, %42
  %44 = call i32 @rpc_call_sync(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #13
  %45 = icmp eq i32 %44, -528
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = tail call ptr @llvm.thread.pointer() #13
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 1073741824
  store i32 %50, ptr %48, align 4
  %51 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %52 = load i32, ptr %48, align 4
  %53 = and i32 %52, -1073741825
  store i32 %53, ptr %48, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %54 = load volatile i32, ptr @system_freezing_cnt, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56, !prof !10

56:                                               ; preds = %46
  %57 = call zeroext i1 @freezing_slow_path(ptr noundef %47) #13
  br i1 %57, label %58, label %60, !prof !11

58:                                               ; preds = %56
  %59 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %60

60:                                               ; preds = %58, %56, %46
  %61 = load volatile i32, ptr %47, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 98, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 8
  %68 = and i32 %67, 1
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i32 [ 0, %60 ], [ %68, %64 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %43, label %72

72:                                               ; preds = %69, %43, %37, %34, %9
  %73 = phi i32 [ 0, %37 ], [ -512, %69 ], [ %44, %43 ], [ %10, %9 ], [ -512, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %73
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_killable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_setattr_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_zap_acl_cache(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__nfs3_proc_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i16 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.nfs3_diropargs, align 4
  %8 = alloca %struct.nfs3_diropres, align 4
  %9 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %10 = getelementptr i8, ptr %0, i32 -288
  store ptr %10, ptr %7, align 4
  %11 = getelementptr inbounds %struct.nfs3_diropargs, ptr %7, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs3_diropargs, ptr %7, i32 0, i32 2
  store i32 %2, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  %13 = getelementptr inbounds %struct.nfs3_diropres, ptr %8, i32 0, i32 1
  store i32 0, ptr %8, align 4
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs3_diropres, ptr %8, i32 0, i32 2
  store ptr %4, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 3), ptr %9, align 4
  %15 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 1
  store ptr %7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 2
  store ptr %8, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_message, ptr %9, i32 0, i32 3
  store ptr null, ptr %17, align 4
  %18 = call ptr @nfs_alloc_fattr() #13
  store ptr %18, ptr %8, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %106, label %20

20:                                               ; preds = %6
  call void @nfs_fattr_init(ptr noundef %4) #13
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs_server, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = zext i16 %5 to i32
  br label %28

28:                                               ; preds = %54, %20
  %29 = call i32 @rpc_call_sync(ptr noundef %26, ptr noundef nonnull %9, i32 noundef %27) #13
  %30 = icmp eq i32 %29, -528
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  %32 = tail call ptr @llvm.thread.pointer() #13
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 1073741824
  store i32 %35, ptr %33, align 4
  %36 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %37 = load i32, ptr %33, align 4
  %38 = and i32 %37, -1073741825
  store i32 %38, ptr %33, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %39 = load volatile i32, ptr @system_freezing_cnt, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !10

41:                                               ; preds = %31
  %42 = call zeroext i1 @freezing_slow_path(ptr noundef %32) #13
  br i1 %42, label %43, label %45, !prof !11

43:                                               ; preds = %41
  %44 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %45

45:                                               ; preds = %43, %41, %31
  %46 = load volatile i32, ptr %32, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 98, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 8
  %53 = and i32 %52, 1
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i32 [ 0, %45 ], [ %53, %49 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %28, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %8, align 4
  %59 = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef %58) #13
  br label %103

60:                                               ; preds = %28
  %61 = load ptr, ptr %8, align 4
  %62 = call i32 @nfs_refresh_inode(ptr noundef %0, ptr noundef %61) #13
  %63 = icmp sgt i32 %29, -1
  br i1 %63, label %64, label %103

64:                                               ; preds = %60
  %65 = load i32, ptr %4, align 8
  %66 = and i32 %65, 162943
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %103

68:                                               ; preds = %64
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 1), ptr %9, align 4
  store ptr %3, ptr %15, align 4
  store ptr %4, ptr %16, align 4
  %69 = load ptr, ptr %21, align 4
  %70 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 27
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nfs_server, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %100, %68
  %75 = call i32 @rpc_call_sync(ptr noundef %73, ptr noundef nonnull %9, i32 noundef %27) #13
  %76 = icmp eq i32 %75, -528
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = tail call ptr @llvm.thread.pointer() #13
  %79 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = or i32 %80, 1073741824
  store i32 %81, ptr %79, align 4
  %82 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %83 = load i32, ptr %79, align 4
  %84 = and i32 %83, -1073741825
  store i32 %84, ptr %79, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %85 = load volatile i32, ptr @system_freezing_cnt, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87, !prof !10

87:                                               ; preds = %77
  %88 = call zeroext i1 @freezing_slow_path(ptr noundef %78) #13
  br i1 %88, label %89, label %91, !prof !11

89:                                               ; preds = %87
  %90 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %91

91:                                               ; preds = %89, %87, %77
  %92 = load volatile i32, ptr %78, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 98, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %97, 8
  %99 = and i32 %98, 1
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi i32 [ 0, %91 ], [ %99, %95 ]
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %74, label %103

103:                                              ; preds = %100, %74, %64, %60, %57
  %104 = phi i32 [ %29, %64 ], [ %29, %60 ], [ -512, %57 ], [ -512, %100 ], [ %75, %74 ]
  %105 = load ptr, ptr %8, align 4
  call void @kfree(ptr noundef %105) #13
  br label %106

106:                                              ; preds = %103, %6
  %107 = phi i32 [ %104, %103 ], [ -12, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_refresh_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_access_set_mask(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nfs3_do_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %36, %3
  %11 = tail call i32 @rpc_call_sync(ptr noundef %9, ptr noundef %2, i32 noundef 0) #13
  %12 = icmp eq i32 %11, -528
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = tail call ptr @llvm.thread.pointer() #13
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 1073741824
  store i32 %17, ptr %15, align 4
  %18 = tail call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %19 = load i32, ptr %15, align 4
  %20 = and i32 %19, -1073741825
  store i32 %20, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %21 = load volatile i32, ptr @system_freezing_cnt, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !10

23:                                               ; preds = %13
  %24 = tail call zeroext i1 @freezing_slow_path(ptr noundef %14) #13
  br i1 %24, label %25, label %27, !prof !11

25:                                               ; preds = %23
  %26 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %27

27:                                               ; preds = %25, %23, %13
  %28 = load volatile i32, ptr %14, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 98, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 1
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i32 [ 0, %27 ], [ %35, %31 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %10, label %39

39:                                               ; preds = %36, %10
  %40 = phi i32 [ %11, %10 ], [ -512, %36 ]
  %41 = getelementptr inbounds %struct.nfs3_createdata, ptr %2, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @nfs_post_op_update_inode(ptr noundef %0, ptr noundef %42) #13
  %44 = icmp eq i32 %40, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = inttoptr i32 %40 to ptr
  br label %53

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.nfs3_createdata, ptr %2, i32 0, i32 2, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nfs3_createdata, ptr %2, i32 0, i32 2, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = tail call ptr @nfs_add_or_obtain(ptr noundef %1, ptr noundef %49, ptr noundef %51) #13
  br label %53

53:                                               ; preds = %47, %45
  %54 = phi ptr [ %46, %45 ], [ %52, %47 ]
  ret ptr %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_post_op_update_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs3_proc_setacls(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_add_or_obtain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_call_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_invalidate_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_proc_fsinfo(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  store ptr getelementptr inbounds ([0 x %struct.rpc_procinfo], ptr @nfs3_procedures, i32 0, i32 19), ptr %4, align 4
  %5 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  store ptr null, ptr %7, align 4
  %8 = load ptr, ptr %2, align 8
  tail call void @nfs_fattr_init(ptr noundef %8) #13
  br label %9

9:                                                ; preds = %35, %3
  %10 = call i32 @rpc_call_sync(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #13
  %11 = icmp eq i32 %10, -528
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #13
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 1073741824
  store i32 %16, ptr %14, align 4
  %17 = call i32 @schedule_timeout_killable(i32 noundef 500) #13
  %18 = load i32, ptr %14, align 4
  %19 = and i32 %18, -1073741825
  store i32 %19, ptr %14, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %20 = load volatile i32, ptr @system_freezing_cnt, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !10

22:                                               ; preds = %12
  %23 = call zeroext i1 @freezing_slow_path(ptr noundef %13) #13
  br i1 %23, label %24, label %26, !prof !11

24:                                               ; preds = %22
  %25 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %26

26:                                               ; preds = %24, %22, %12
  %27 = load volatile i32, ptr %13, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 98, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 8
  %34 = and i32 %33, 1
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i32 [ 0, %26 ], [ %34, %30 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %9, label %38

38:                                               ; preds = %35, %9
  %39 = phi i32 [ %10, %9 ], [ -512, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_writeback_update_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_proc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2156020370}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"auto-init"}
!13 = !{i64 2148468536}
!14 = !{i64 865470, i64 2148355441, i64 2148355467, i64 2148355514, i64 2148355536, i64 2148355564, i64 2148355584}
!15 = !{i64 2148370671, i64 2148370703, i64 2148370732, i64 2148370766, i64 2148370797, i64 2148370820}
!16 = !{i64 2149381888}
!17 = !{i64 771148, i64 771209}
!18 = !{i64 789848}
!19 = !{i64 774165}
!20 = !{i8 0, i8 2}
!21 = !{i64 2156191315}
!22 = !{i64 876844, i64 876865, i64 876888, i64 876907, i64 876926}
!23 = !{i64 2156195765}
