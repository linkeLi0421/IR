; ModuleID = '/llk/IR/fs/nfs/filelayout/filelayout.c_pt.bc'
source_filename = "../fs/nfs/filelayout/filelayout.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nfs_pageio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_commit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.nfs4_filelayout = type { %struct.pnfs_layout_hdr, %struct.pnfs_ds_commit_info }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_stateid_struct = type { %union.anon.122, i32 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, [12 x i8] }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_layoutget_res = type { %struct.nfs4_sequence_res, i32, i32, %struct.pnfs_layout_range, i32, %struct.nfs4_stateid_struct, ptr }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.nfs4_layoutdriver_data = type { ptr, i32, i32 }
%struct.nfs4_filelayout_segment = type { %struct.pnfs_layout_segment, i32, i32, i32, i32, i64, %struct.nfs4_deviceid, ptr, i32, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.134, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.135, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.136, ptr, %struct.address_space, %struct.list_head, %union.anon.137, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.134 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.135 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.136 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.137 = type { ptr }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.114, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.114 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.119, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.119 = type { %struct.anon.121 }
%struct.anon.121 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.124 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.126 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs4_pnfs_ds = type { %struct.list_head, ptr, %struct.list_head, ptr, %struct.refcount_struct, i32 }
%struct.nfs4_file_layout_dsaddr = type { %struct.nfs4_deviceid_node, i32, ptr, i32, [0 x ptr] }
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
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.112 }
%union.anon.112 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.117, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.117 = type { %struct.work_struct }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }

@__UNIQUE_ID_file649 = internal constant [71 x i8] c"nfs_layout_nfsv41_files.file=fs/nfs/filelayout/nfs_layout_nfsv41_files\00", section ".modinfo", align 1
@__UNIQUE_ID_license650 = internal constant [36 x i8] c"nfs_layout_nfsv41_files.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author651 = internal constant [68 x i8] c"nfs_layout_nfsv41_files.author=Dean Hildebrand <dhildebz@umich.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description652 = internal constant [65 x i8] c"nfs_layout_nfsv41_files.description=The NFSv4 file layout driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [49 x i8] c"\016%s: NFSv4 File Layout Driver Unregistering...\0A\00", align 1
@__func__.nfs4filelayout_exit = private unnamed_addr constant [20 x i8] c"nfs4filelayout_exit\00", align 1
@filelayout_type = internal global %struct.pnfs_layoutdriver_type { %struct.list_head zeroinitializer, i32 1, ptr @.str.1, ptr null, i32 8, i32 0, i32 4096, ptr null, ptr null, ptr @filelayout_alloc_layout_hdr, ptr @filelayout_free_layout_hdr, ptr @filelayout_alloc_lseg, ptr @filelayout_free_lseg, ptr null, ptr null, ptr @filelayout_pg_read_ops, ptr @filelayout_pg_write_ops, ptr @filelayout_get_ds_info, ptr @pnfs_nfs_generic_sync, ptr @filelayout_read_pagelist, ptr @filelayout_write_pagelist, ptr @filelayout_free_deviceid_node, ptr @filelayout_alloc_deviceid_node, ptr null, ptr null, ptr null, ptr null }, align 4
@__UNIQUE_ID_alias658 = internal constant [48 x i8] c"nfs_layout_nfsv41_files.alias=nfs-layouttype4-1\00", section ".modinfo", align 1
@__initcall__kmod_nfs_layout_nfsv41_files__659_1144_nfs4filelayout_init6 = internal global ptr @nfs4filelayout_init, section ".initcall6.init", align 4
@__exitcall_nfs4filelayout_exit = internal global ptr @nfs4filelayout_exit, section ".exitcall.exit", align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"LAYOUT_NFSV4_1_FILES\00", align 1
@filelayout_pg_read_ops = internal constant %struct.nfs_pageio_ops { ptr @filelayout_pg_init_read, ptr @filelayout_pg_test, ptr @pnfs_generic_pg_readpages, ptr null, ptr @pnfs_generic_pg_cleanup, ptr null, ptr null }, align 4
@filelayout_pg_write_ops = internal constant %struct.nfs_pageio_ops { ptr @filelayout_pg_init_write, ptr @filelayout_pg_test, ptr @pnfs_generic_pg_writepages, ptr null, ptr @pnfs_generic_pg_cleanup, ptr null, ptr null }, align 4
@filelayout_commit_ops = internal constant %struct.pnfs_commit_ops { ptr @filelayout_setup_ds_info, ptr @filelayout_release_ds_info, ptr @filelayout_commit_pagelist, ptr @filelayout_mark_request_commit, ptr @pnfs_generic_clear_request_commit, ptr @pnfs_generic_scan_commit_lists, ptr @pnfs_generic_recover_commit_reqs, ptr @pnfs_generic_search_commit_reqs }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@filelayout_commit_call_ops = internal constant %struct.rpc_call_ops { ptr @filelayout_commit_prepare, ptr @pnfs_generic_write_commit_done, ptr @filelayout_commit_count_stats, ptr @pnfs_generic_commit_release }, align 4
@__tracepoint_nfs4_pnfs_commit_ds = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"\013NFS: Too big fh %d received %d\0A\00", align 1
@filelayout_pg_test.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"fs/nfs/filelayout/filelayout.c\00", align 1
@filelayout_read_call_ops = internal constant %struct.rpc_call_ops { ptr @filelayout_read_prepare, ptr @filelayout_read_call_done, ptr @filelayout_read_count_stats, ptr @pnfs_generic_rw_release }, align 4
@__tracepoint_nfs4_pnfs_read = external dso_local global %struct.tracepoint, align 4
@filelayout_write_call_ops = internal constant %struct.rpc_call_ops { ptr @filelayout_write_prepare, ptr @filelayout_write_call_done, ptr @filelayout_write_count_stats, ptr @pnfs_generic_rw_release }, align 4
@__tracepoint_nfs4_pnfs_write = external dso_local global %struct.tracepoint, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"\016%s: NFSv4 File Layout Driver Registering...\0A\00", align 1
@__func__.nfs4filelayout_init = private unnamed_addr constant [20 x i8] c"nfs4filelayout_init\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias658, ptr @__UNIQUE_ID_author651, ptr @__UNIQUE_ID_description652, ptr @__UNIQUE_ID_file649, ptr @__UNIQUE_ID_license650, ptr @__exitcall_nfs4filelayout_exit, ptr @__initcall__kmod_nfs_layout_nfsv41_files__659_1144_nfs4filelayout_init6, ptr @nfs4filelayout_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @filelayout_test_devid_unavailable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %0) #12
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i1 [ true, %1 ], [ %7, %6 ]
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nfs4filelayout_exit() #2 section ".exit.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nfs4filelayout_exit) #13
  tail call void @pnfs_unregister_layoutdriver(ptr noundef nonnull @filelayout_type) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_unregister_layoutdriver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nfs4filelayout_init() #2 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.nfs4filelayout_init) #13
  %2 = tail call i32 @pnfs_register_layoutdriver(ptr noundef nonnull @filelayout_type) #12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @filelayout_alloc_layout_hdr(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = or i32 %1, 256
  %4 = and i32 %1, 17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !8

6:                                                ; preds = %2
  %7 = and i32 %1, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %11, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %3, i32 noundef 136) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nfs4_filelayout, ptr %14, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nfs4_filelayout, ptr %14, i32 0, i32 1, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs4_filelayout, ptr %14, i32 0, i32 1, i32 3
  store ptr @filelayout_commit_ops, ptr %19, align 8
  br label %20

20:                                               ; preds = %16, %10
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_free_layout_hdr(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %0, i32 0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %4, ptr noundef nonnull inttoptr (i32 104 to ptr)) #12
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @filelayout_alloc_lseg(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.xdr_stream, align 4
  %5 = alloca %struct.xdr_buf, align 4
  %6 = or i32 %2, 256
  %7 = and i32 %2, 17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !8

9:                                                ; preds = %3
  %10 = and i32 %2, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 0, %3 ], [ %12, %9 ]
  %15 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %14, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef %6, i32 noundef 120) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %150, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false) #12, !annotation !9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false) #12, !annotation !9
  %20 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  br label %132

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nfs4_layoutdriver_data, ptr %25, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %26, i32 noundef %28) #12
  %29 = call ptr @page_address(ptr noundef nonnull %20) #12
  %30 = getelementptr inbounds %struct.xdr_stream, ptr %4, i32 0, i32 4
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.xdr_stream, ptr %4, i32 0, i32 4, i32 1
  store i32 4096, ptr %31, align 4
  %32 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 36) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %117, label %34, !prof !10

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %35, ptr noundef nonnull align 4 dereferenceable(16) %32, i32 16, i1 false) #12
  %36 = getelementptr i32, ptr %32, i32 4
  %37 = getelementptr i32, ptr %32, i32 5
  %38 = load i32, ptr %36, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #12
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 2
  store i32 1, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = and i32 %39, 1
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 1, i32 2
  %48 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 1
  store i32 %47, ptr %48, align 8
  %49 = and i32 %39, -64
  %50 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 3
  store i32 %49, ptr %50, align 8
  %51 = getelementptr i32, ptr %32, i32 6
  %52 = load i32, ptr %37, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #12
  %54 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 4
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 5
  %56 = load i64, ptr %51, align 1
  %57 = call i64 @llvm.bswap.i64(i64 %56) #12
  store i64 %57, ptr %55, align 8
  %58 = getelementptr i32, ptr %32, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #12
  %61 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 8
  store i32 %60, ptr %61, align 4
  %62 = icmp ugt i32 %60, 4096
  br i1 %62, label %117, label %63

63:                                               ; preds = %44
  %64 = icmp eq i32 %59, 0
  br i1 %64, label %118, label %65

65:                                               ; preds = %63
  %66 = shl nuw nsw i32 %60, 2
  %67 = call noalias align 64 ptr @__kmalloc(i32 noundef %66, i32 noundef %6) #15
  %68 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 9
  store ptr %67, ptr %68, align 8
  %69 = icmp eq ptr %67, null
  br i1 %69, label %117, label %70

70:                                               ; preds = %65
  %71 = and i32 %2, 1
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 1, i32 2
  %74 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 9
  br label %75

75:                                               ; preds = %109, %70
  %76 = phi i32 [ 0, %70 ], [ %114, %109 ]
  br i1 %8, label %78, label %77, !prof !8

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ 0, %75 ], [ %73, %77 ]
  %80 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %79, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef %2, i32 noundef 130) #14
  %83 = load ptr, ptr %74, align 8
  %84 = getelementptr ptr, ptr %83, i32 %76
  store ptr %82, ptr %84, align 4
  %85 = load ptr, ptr %74, align 8
  %86 = getelementptr ptr, ptr %85, i32 %76
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %117, label %89

89:                                               ; preds = %78
  %90 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #12
  %91 = icmp eq ptr %90, null
  br i1 %91, label %117, label %92, !prof !10

92:                                               ; preds = %89
  %93 = load i32, ptr %90, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #12
  %95 = trunc i32 %94 to i16
  %96 = load ptr, ptr %86, align 4
  store i16 %95, ptr %96, align 2
  %97 = load ptr, ptr %74, align 8
  %98 = getelementptr ptr, ptr %97, i32 %76
  %99 = load ptr, ptr %98, align 4
  %100 = load i16, ptr %99, align 2
  %101 = icmp ugt i16 %100, 128
  %102 = zext i16 %100 to i32
  br i1 %101, label %103, label %106

103:                                              ; preds = %92
  %104 = zext i16 %100 to i32
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %76, i32 noundef %104) #13
  br label %117

106:                                              ; preds = %92
  %107 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef %102) #12
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109, !prof !10

109:                                              ; preds = %106
  %110 = load ptr, ptr %98, align 4
  %111 = getelementptr inbounds %struct.nfs_fh, ptr %110, i32 0, i32 1
  %112 = load i16, ptr %110, align 2
  %113 = zext i16 %112 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %111, ptr nonnull align 4 %107, i32 %113, i1 false) #12
  %114 = add nuw i32 %76, 1
  %115 = load i32, ptr %61, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %75, label %118

117:                                              ; preds = %106, %103, %89, %78, %65, %44, %23
  call void @__free_pages(ptr noundef nonnull %20, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  br label %132

118:                                              ; preds = %109, %63
  call void @__free_pages(ptr noundef nonnull %20, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  %119 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 3, i32 1
  %120 = load i64, ptr %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 3, i32 2
  %124 = load i64, ptr %123, align 8
  %125 = icmp eq i64 %124, -1
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i64, ptr %55, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, ptr %50, align 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %129, %126, %122, %118, %117, %22
  %133 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 9
  %134 = load ptr, ptr %133, align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %149, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %17, i32 0, i32 8
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %145, %136
  %141 = phi i32 [ %146, %145 ], [ 0, %136 ]
  %142 = getelementptr ptr, ptr %134, i32 %141
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  call void @kfree(ptr noundef nonnull %143) #12
  %146 = add nuw i32 %141, 1
  %147 = icmp ult i32 %146, %138
  br i1 %147, label %140, label %148

148:                                              ; preds = %145, %140, %136
  call void @kfree(ptr noundef nonnull %134) #12
  br label %149

149:                                              ; preds = %148, %132
  call void @kfree(ptr noundef nonnull %17) #12
  br label %150

150:                                              ; preds = %149, %129, %13
  %151 = phi ptr [ null, %149 ], [ null, %13 ], [ %17, %129 ]
  ret ptr %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_free_lseg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @nfs4_fl_put_deviceid(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %12, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.nfs4_filelayout, ptr %12, i32 0, i32 1
  tail call void @pnfs_generic_ds_cinfo_release_lseg(ptr noundef %16, ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %17 = load i16, ptr %15, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %19

19:                                               ; preds = %10, %6
  %20 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 9
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %33, %23
  %28 = phi ptr [ %37, %33 ], [ %21, %23 ]
  %29 = phi i32 [ %34, %33 ], [ 0, %23 ]
  %30 = getelementptr ptr, ptr %28, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %31) #12
  %34 = add nuw i32 %29, 1
  %35 = load i32, ptr %24, align 4
  %36 = icmp ult i32 %34, %35
  %37 = load ptr, ptr %20, align 8
  br i1 %36, label %27, label %38

38:                                               ; preds = %33, %27, %23
  %39 = phi ptr [ %21, %23 ], [ %28, %27 ], [ %37, %33 ]
  tail call void @kfree(ptr noundef %39) #12
  br label %40

40:                                               ; preds = %38, %19
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @filelayout_get_ds_info(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.nfs4_filelayout, ptr %3, i32 0, i32 1
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_nfs_generic_sync(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filelayout_read_pagelist(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 5
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 @nfs4_fl_calc_j_index(ptr noundef %3, i64 noundef %5) #12
  %7 = tail call i32 @nfs4_fl_calc_ds_index(ptr noundef %3, i32 noundef %6) #12
  %8 = tail call ptr @nfs4_fl_prepare_ds(ptr noundef %3, i32 noundef %7) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %89, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 8
  %14 = tail call ptr @nfs4_find_or_create_ds_client(ptr noundef %12, ptr noundef %13) #12
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %89, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #12, !srcloc !15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #12, !srcloc !16
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !10

21:                                               ; preds = %16
  %22 = add i32 %19, 1
  %23 = or i32 %22, %19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25, !prof !8

25:                                               ; preds = %21, %16
  %26 = phi i32 [ 2, %16 ], [ 1, %21 ]
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef %26) #12
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 26
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 27
  store i32 %7, ptr %30, align 4
  %31 = tail call ptr @nfs4_fl_select_ds_fh(ptr noundef %3, i32 noundef %6) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 1
  store ptr %31, ptr %34, align 8
  br label %35

35:                                               ; preds = %33, %27
  %36 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %3, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  switch i32 %37, label %74 [
    i32 1, label %75
    i32 2, label %38
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %3, i32 0, i32 3
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %3, i32 0, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %44, %40
  %46 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %3, i32 0, i32 5
  %47 = load i64, ptr %46, align 8
  %48 = sub i64 %5, %47
  %49 = icmp ult i64 %48, 4294967296
  br i1 %49, label %50, label %54, !prof !8

50:                                               ; preds = %38
  %51 = trunc i64 %48 to i32
  %52 = udiv i32 %51, %45
  %53 = zext i32 %52 to i64
  br label %57

54:                                               ; preds = %38
  %55 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %48) #16, !srcloc !17
  %56 = extractvalue { i64, i64 } %55, 1
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %53, %50 ], [ %56, %54 ]
  %59 = icmp ult i64 %48, 4294967296
  br i1 %59, label %60, label %63, !prof !8

60:                                               ; preds = %57
  %61 = trunc i64 %48 to i32
  %62 = urem i32 %61, %40
  br label %68

63:                                               ; preds = %57
  %64 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %48) #16, !srcloc !17
  %65 = extractvalue { i64, i64 } %64, 0
  %66 = lshr i64 %65, 32
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi i32 [ %62, %60 ], [ %67, %63 ]
  %70 = zext i32 %40 to i64
  %71 = mul i64 %58, %70
  %72 = zext i32 %69 to i64
  %73 = add i64 %71, %72
  br label %75

74:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/filelayout/filelayout.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #12, !srcloc !18
  unreachable

75:                                               ; preds = %68, %35
  %76 = phi i64 [ %73, %68 ], [ %5, %35 ]
  store i64 %76, ptr %4, align 8
  %77 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 24
  store i64 %5, ptr %77, align 8
  %78 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr inbounds %struct.inode, ptr %80, i32 0, i32 8
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 27
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nfs_client, ptr %85, i32 0, i32 12
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 @nfs_initiate_pgio(ptr noundef %14, ptr noundef %0, ptr noundef %79, ptr noundef %87, ptr noundef nonnull @filelayout_read_call_ops, i32 noundef 0, i32 noundef 1024) #12
  br label %89

89:                                               ; preds = %75, %10, %1
  %90 = phi i32 [ 0, %75 ], [ 1, %1 ], [ 1, %10 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filelayout_write_pagelist(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 @nfs4_fl_calc_j_index(ptr noundef %4, i64 noundef %6) #12
  %8 = tail call i32 @nfs4_fl_calc_ds_index(ptr noundef %4, i32 noundef %7) #12
  %9 = tail call ptr @nfs4_fl_prepare_ds(ptr noundef %4, i32 noundef %8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 8
  %15 = tail call ptr @nfs4_find_or_create_ds_client(ptr noundef %13, ptr noundef %14) #12
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %90, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 23
  store ptr @filelayout_write_done_cb, ptr %18, align 4
  %19 = load ptr, ptr %12, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #12, !srcloc !15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #12, !srcloc !16
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !10

23:                                               ; preds = %17
  %24 = add i32 %21, 1
  %25 = or i32 %24, %21
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %29, label %27, !prof !8

27:                                               ; preds = %23, %17
  %28 = phi i32 [ 2, %17 ], [ 1, %23 ]
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef %28) #12
  br label %29

29:                                               ; preds = %27, %23
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 26
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 27
  store i32 %8, ptr %32, align 4
  %33 = tail call ptr @nfs4_fl_select_ds_fh(ptr noundef %4, i32 noundef %7) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 1
  store ptr %33, ptr %36, align 8
  br label %37

37:                                               ; preds = %35, %29
  %38 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %4, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  switch i32 %39, label %76 [
    i32 1, label %77
    i32 2, label %40
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %4, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %4, i32 0, i32 7
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, %42
  %48 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %4, i32 0, i32 5
  %49 = load i64, ptr %48, align 8
  %50 = sub i64 %6, %49
  %51 = icmp ult i64 %50, 4294967296
  br i1 %51, label %52, label %56, !prof !8

52:                                               ; preds = %40
  %53 = trunc i64 %50 to i32
  %54 = udiv i32 %53, %47
  %55 = zext i32 %54 to i64
  br label %59

56:                                               ; preds = %40
  %57 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %47, i64 %50) #16, !srcloc !17
  %58 = extractvalue { i64, i64 } %57, 1
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i64 [ %55, %52 ], [ %58, %56 ]
  %61 = icmp ult i64 %50, 4294967296
  br i1 %61, label %62, label %65, !prof !8

62:                                               ; preds = %59
  %63 = trunc i64 %50 to i32
  %64 = urem i32 %63, %42
  br label %70

65:                                               ; preds = %59
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %42, i64 %50) #16, !srcloc !17
  %67 = extractvalue { i64, i64 } %66, 0
  %68 = lshr i64 %67, 32
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i32 [ %64, %62 ], [ %69, %65 ]
  %72 = zext i32 %42 to i64
  %73 = mul i64 %60, %72
  %74 = zext i32 %71 to i64
  %75 = add i64 %73, %74
  br label %77

76:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/filelayout/filelayout.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #12, !srcloc !18
  unreachable

77:                                               ; preds = %70, %37
  %78 = phi i64 [ %75, %70 ], [ %6, %37 ]
  store i64 %78, ptr %5, align 8
  %79 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %0, align 8
  %82 = getelementptr inbounds %struct.inode, ptr %81, i32 0, i32 8
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.super_block, ptr %83, i32 0, i32 27
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nfs_client, ptr %86, i32 0, i32 12
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @nfs_initiate_pgio(ptr noundef %15, ptr noundef %0, ptr noundef %80, ptr noundef %88, ptr noundef nonnull @filelayout_write_call_ops, i32 noundef %1, i32 noundef 1024) #12
  br label %90

90:                                               ; preds = %77, %11, %2
  %91 = phi i32 [ 0, %77 ], [ 1, %2 ], [ 1, %11 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_free_deviceid_node(ptr noundef %0) #0 {
  tail call void @nfs4_fl_free_deviceid(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @filelayout_alloc_deviceid_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @nfs4_fl_alloc_deviceid_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_setup_ds_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  %10 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %11, i32 0, i32 1
  %14 = select i1 %9, ptr %12, ptr %13
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @pnfs_alloc_commit_array(i32 noundef %15, i32 noundef 3072) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %19) #12
  %20 = tail call ptr @pnfs_add_commit_array(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %1) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %21 = load i16, ptr %19, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %23 = icmp eq ptr %20, %16
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @pnfs_free_commit_array(ptr noundef nonnull %16) #12
  br label %25

25:                                               ; preds = %24, %18, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_release_ds_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  tail call void @pnfs_generic_ds_cinfo_destroy(ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filelayout_commit_pagelist(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @pnfs_generic_commit_pagelist(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull @filelayout_initiate_commit) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_mark_request_commit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @nfs_request_add_commit_list(ptr noundef %0, ptr noundef %2) #12
  br label %26

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 12
  %14 = getelementptr inbounds %struct.nfs_page, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %13, %16
  %18 = tail call i32 @nfs4_fl_calc_j_index(ptr noundef %1, i64 noundef %17) #12
  %19 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %9
  %23 = tail call i32 @nfs4_fl_calc_ds_index(ptr noundef %1, i32 noundef %18) #12
  br label %24

24:                                               ; preds = %22, %9
  %25 = phi i32 [ %23, %22 ], [ %18, %9 ]
  tail call void @pnfs_layout_mark_request_commit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %25) #12
  br label %26

26:                                               ; preds = %24, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_clear_request_commit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_scan_commit_lists(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_recover_commit_reqs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_generic_search_commit_reqs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_alloc_commit_array(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_add_commit_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_free_commit_array(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_ds_cinfo_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_commit_pagelist(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filelayout_initiate_commit(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @nfs4_fl_calc_ds_index(ptr noundef %4, i32 noundef %6) #12
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ %6, %2 ]
  %14 = tail call ptr @nfs4_fl_prepare_ds(ptr noundef %4, i32 noundef %13) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %64, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @nfs4_find_or_create_ds_client(ptr noundef %18, ptr noundef %20) #12
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %64, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 17
  store ptr @filelayout_commit_done_cb, ptr %24, align 8
  %25 = load ptr, ptr %17, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #12, !srcloc !15
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #12, !srcloc !16
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !10

29:                                               ; preds = %23
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %29, %23
  %34 = phi i32 [ 2, %23 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #12
  br label %35

35:                                               ; preds = %33, %29
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 12
  store ptr %36, ptr %37, align 8
  %38 = load i32, ptr %5, align 4
  %39 = load i32, ptr %7, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %4, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %44 [
    i32 1, label %45
    i32 0, label %54
  ]

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %41, %35
  %46 = phi i32 [ %38, %35 ], [ 0, %41 ], [ %38, %44 ]
  %47 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %4, i32 0, i32 9
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr ptr, ptr %48, i32 %46
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 8, i32 1
  store ptr %50, ptr %53, align 8
  br label %54

54:                                               ; preds = %52, %45, %41
  %55 = load ptr, ptr %19, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 27
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nfs_client, ptr %60, i32 0, i32 12
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @nfs_initiate_commit(ptr noundef %21, ptr noundef %0, ptr noundef %62, ptr noundef nonnull @filelayout_commit_call_ops, i32 noundef %1, i32 noundef 1024) #12
  br label %65

64:                                               ; preds = %16, %12
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %0) #12
  tail call void @pnfs_generic_commit_release(ptr noundef %0) #12
  br label %65

65:                                               ; preds = %64, %54
  %66 = phi i32 [ -11, %64 ], [ %63, %54 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_fl_prepare_ds(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_or_create_ds_client(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filelayout_commit_done_cb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_commit_ds, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #12
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %19 = tail call i32 @__traceiter_nfs4_pnfs_commit_ds(ptr noundef null, ptr noundef %1, i32 noundef %4) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %20

20:                                               ; preds = %18, %7, %2
  %21 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 12
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = tail call fastcc i32 @filelayout_async_handle_error(ptr noundef %0, ptr noundef %22, ptr noundef %24)
  switch i32 %25, label %29 [
    i32 -12001, label %26
    i32 -11, label %27
  ]

26:                                               ; preds = %20
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %1) #12
  br label %35

27:                                               ; preds = %20
  %28 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #12
  br label %35

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 14
  %34 = load i64, ptr %33, align 8
  tail call void @pnfs_set_layoutcommit(ptr noundef %31, ptr noundef %32, i64 noundef %34) #12
  br label %35

35:                                               ; preds = %29, %27, %26
  %36 = phi i32 [ 0, %29 ], [ -11, %27 ], [ -11, %26 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_initiate_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_prepare_to_resend_writes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_commit_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_fl_calc_ds_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @filelayout_async_handle_error(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %2, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %2, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 36
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  switch i32 %13, label %24 [
    i32 -10052, label %16
    i32 -10053, label %16
    i32 -10077, label %16
    i32 -10078, label %16
    i32 -10055, label %16
    i32 -10076, label %16
    i32 -10063, label %16
    i32 -10008, label %17
    i32 -10013, label %17
    i32 -10068, label %23
    i32 -13, label %18
    i32 -10080, label %18
    i32 -116, label %18
    i32 -521, label %18
    i32 -21, label %18
    i32 -10014, label %18
    i32 -10083, label %18
    i32 -111, label %21
    i32 -112, label %21
    i32 -113, label %21
    i32 -101, label %21
    i32 -5, label %21
    i32 -110, label %21
    i32 -32, label %21
  ]

16:                                               ; preds = %15, %15, %15, %15, %15, %15, %15
  tail call void @nfs4_schedule_session_recovery(ptr noundef %11, i32 noundef %13) #12
  br label %23

17:                                               ; preds = %15, %15
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 1500) #12
  br label %23

18:                                               ; preds = %15, %15, %15, %15, %15, %15, %15
  %19 = getelementptr i8, ptr %7, i32 -296
  tail call void @pnfs_destroy_layout(ptr noundef %19) #12
  %20 = getelementptr inbounds %struct.nfs4_session, ptr %11, i32 0, i32 6, i32 4
  tail call void @rpc_wake_up(ptr noundef %20) #12
  br label %24

21:                                               ; preds = %15, %15, %15, %15, %15, %15, %15
  tail call void @nfs4_mark_deviceid_unavailable(ptr noundef %9) #12
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %7, ptr noundef %2) #12
  tail call void @pnfs_set_lo_fail(ptr noundef %2) #12
  %22 = getelementptr inbounds %struct.nfs4_session, ptr %11, i32 0, i32 6, i32 4
  tail call void @rpc_wake_up(ptr noundef %22) #12
  br label %24

23:                                               ; preds = %17, %16, %15
  store i32 0, ptr %12, align 4
  br label %24

24:                                               ; preds = %23, %21, %18, %15, %3
  %25 = phi i32 [ -11, %23 ], [ 0, %3 ], [ -12001, %18 ], [ -12001, %15 ], [ -12001, %21 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_set_layoutcommit(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_commit_ds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_session_recovery(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_layout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_unavailable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_error_mark_layout_for_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_set_lo_fail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_commit_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 8
  %6 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 9
  %7 = tail call i32 @nfs4_setup_sequence(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_write_commit_done(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_commit_count_stats(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_clnt, ptr %10, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  tail call void @rpc_count_iostats(ptr noundef %0, ptr noundef %12) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_setup_sequence(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_count_iostats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_request_add_commit_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_fl_calc_j_index(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_layout_mark_request_commit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_fl_put_deviceid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_ds_cinfo_release_lseg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_pg_init_read(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @pnfs_generic_pg_check_layout(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_lock_context, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc ptr @fl_pnfs_update_layout(ptr noundef %7, ptr noundef %11, i32 noundef 1, i32 noundef 3264)
  store ptr %12, ptr %3, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = ptrtoint ptr %12 to i32
  %16 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  store ptr null, ptr %3, align 4
  br label %20

17:                                               ; preds = %6
  %18 = icmp eq ptr %12, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @nfs_pageio_reset_read_mds(ptr noundef %0) #12
  br label %20

20:                                               ; preds = %19, %17, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filelayout_pg_test(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %5, i32 0, i32 3, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @pnfs_generic_pg_test(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %86, label %12

12:                                               ; preds = %3
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.nfs_page, ptr %2, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_page, ptr %2, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %16 to i64
  %20 = shl nuw nsw i64 %19, 12
  %21 = zext i32 %18 to i64
  %22 = sub i64 %21, %7
  %23 = add i64 %22, %20
  br label %64

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 12
  %29 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = zext i32 %30 to i64
  %32 = sub i64 %31, %7
  %33 = add i64 %32, %28
  %34 = getelementptr inbounds %struct.nfs_page, ptr %2, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 12
  %38 = getelementptr inbounds %struct.nfs_page, ptr %2, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = sub i64 %40, %7
  %42 = add i64 %41, %37
  %43 = icmp ult i64 %33, 4294967296
  br i1 %43, label %44, label %48, !prof !8

44:                                               ; preds = %24
  %45 = trunc i64 %33 to i32
  %46 = udiv i32 %45, %9
  %47 = zext i32 %46 to i64
  br label %51

48:                                               ; preds = %24
  %49 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %33) #16, !srcloc !17
  %50 = extractvalue { i64, i64 } %49, 1
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i64 [ %47, %44 ], [ %50, %48 ]
  %53 = icmp ult i64 %42, 4294967296
  br i1 %53, label %54, label %58, !prof !8

54:                                               ; preds = %51
  %55 = trunc i64 %42 to i32
  %56 = udiv i32 %55, %9
  %57 = zext i32 %56 to i64
  br label %61

58:                                               ; preds = %51
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %42) #16, !srcloc !17
  %60 = extractvalue { i64, i64 } %59, 1
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i64 [ %57, %54 ], [ %60, %58 ]
  %63 = icmp eq i64 %52, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %61, %14
  %65 = phi i64 [ %23, %14 ], [ %42, %61 ]
  %66 = icmp ult i64 %65, 4294967296
  br i1 %66, label %67, label %70, !prof !8

67:                                               ; preds = %64
  %68 = trunc i64 %65 to i32
  %69 = urem i32 %68, %9
  br label %82

70:                                               ; preds = %64
  %71 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %65) #16, !srcloc !17
  %72 = extractvalue { i64, i64 } %71, 0
  %73 = lshr i64 %72, 32
  %74 = trunc i64 %73 to i32
  %75 = icmp ult i32 %9, %74
  %76 = load i1, ptr @filelayout_pg_test.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !10

79:                                               ; preds = %70
  store i1 true, ptr @filelayout_pg_test.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 820, i32 noundef 9, ptr noundef null) #12
  br label %80

80:                                               ; preds = %79, %70
  %81 = icmp ugt i32 %9, %74
  br i1 %81, label %82, label %86

82:                                               ; preds = %80, %67
  %83 = phi i32 [ %69, %67 ], [ %74, %80 ]
  %84 = sub i32 %9, %83
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %10)
  br label %86

86:                                               ; preds = %82, %80, %61, %3
  %87 = phi i32 [ %85, %82 ], [ 0, %3 ], [ 0, %61 ], [ 0, %80 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_readpages(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_check_layout(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fl_pnfs_update_layout(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @pnfs_update_layout(ptr noundef %0, ptr noundef %1, i64 noundef 0, i64 noundef -1, i32 noundef %2, i1 noundef zeroext false, i32 noundef %3) #12
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %67, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %67

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -24
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %5, i32 0, i32 6
  %23 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %15, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr @nfs4_find_get_deviceid(ptr noundef %21, ptr noundef %22, ptr noundef %24, i32 noundef %3) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %66, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %25, i32 0, i32 4
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %25) #12
  br i1 %33, label %64, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %5, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %25, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %5, i32 0, i32 1
  %42 = load i32, ptr %41, align 8
  switch i32 %42, label %55 [
    i32 1, label %43
    i32 2, label %51
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %5, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %25, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %55, label %64

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %5, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %38
  br i1 %54, label %55, label %64

55:                                               ; preds = %51, %47, %43, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %56 = ptrtoint ptr %25 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !15
  br label %57

57:                                               ; preds = %57, %55
  %58 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %10, i32 0, i32 %56) #12, !srcloc !22
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %57

61:                                               ; preds = %57
  %62 = extractvalue { i32, i32 } %58, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %65

64:                                               ; preds = %51, %47, %34, %32, %27
  tail call void @nfs4_fl_put_deviceid(ptr noundef nonnull %25) #12
  br label %66

65:                                               ; preds = %61
  tail call void @nfs4_fl_put_deviceid(ptr noundef nonnull %25) #12
  br label %67

66:                                               ; preds = %64, %13
  tail call void @pnfs_put_lseg(ptr noundef nonnull %5) #12
  br label %67

67:                                               ; preds = %66, %65, %61, %9, %4
  %68 = phi ptr [ %5, %4 ], [ null, %66 ], [ %5, %65 ], [ %5, %9 ], [ %5, %61 ]
  ret ptr %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_read_mds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_update_layout(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_lseg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_get_deviceid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_test(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_pg_init_write(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @pnfs_generic_pg_check_layout(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_lock_context, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc ptr @fl_pnfs_update_layout(ptr noundef %7, ptr noundef %11, i32 noundef 2, i32 noundef 3136)
  store ptr %12, ptr %3, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = ptrtoint ptr %12 to i32
  %16 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  store ptr null, ptr %3, align 4
  br label %20

17:                                               ; preds = %6
  %18 = icmp eq ptr %12, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  tail call void @nfs_pageio_reset_write_mds(ptr noundef %0) #12
  br label %20

20:                                               ; preds = %19, %17, %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_writepages(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_write_mds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_fl_select_ds_fh(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_initiate_pgio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_read_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20
  %4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_open_context, ptr %5, i32 0, i32 7
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %42, !prof !8

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %14, i32 0, i32 4
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %14) #12
  br i1 %20, label %21, label %28

21:                                               ; preds = %19, %10
  %22 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %23 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %22) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = tail call i32 @pnfs_read_done_resend_to_mds(ptr noundef %1) #12
  %27 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 18, i32 1
  store i32 %26, ptr %27, align 4
  br label %42

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 23
  store ptr @filelayout_read_done_cb, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 26
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21
  %33 = tail call i32 @nfs4_setup_sequence(ptr noundef %31, ptr noundef %3, ptr noundef %32, ptr noundef %0) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @nfs4_set_rw_stateid(ptr noundef %36, ptr noundef %37, ptr noundef %39, i32 noundef 1) #12
  %41 = icmp eq i32 %40, -5
  br i1 %41, label %42, label %44

42:                                               ; preds = %35, %25, %21, %2
  %43 = phi i32 [ -5, %2 ], [ 0, %21 ], [ 0, %25 ], [ -5, %35 ]
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %43) #12
  br label %44

44:                                               ; preds = %42, %35, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_read_call_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21
  %13 = tail call i32 @nfs41_sequence_done(ptr noundef %0, ptr noundef %12) #12
  br label %19

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rpc_call_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, ptr noundef %1) #12
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_read_count_stats(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  tail call void @rpc_count_iostats(ptr noundef %0, ptr noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_rw_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filelayout_read_done_cb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_read, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #12
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %19 = tail call i32 @__traceiter_nfs4_pnfs_read(ptr noundef null, ptr noundef %1, i32 noundef %4) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  br label %20

20:                                               ; preds = %18, %7, %2
  %21 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 26
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = tail call fastcc i32 @filelayout_async_handle_error(ptr noundef %0, ptr noundef %22, ptr noundef %24)
  switch i32 %25, label %37 [
    i32 -12001, label %26
    i32 -11, label %35
  ]

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %28 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = tail call i32 @pnfs_read_done_resend_to_mds(ptr noundef %1) #12
  %32 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 18, i32 1
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, ptr %3, align 4
  br label %37

35:                                               ; preds = %20
  %36 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #12
  br label %37

37:                                               ; preds = %35, %33, %20
  %38 = phi i32 [ -11, %35 ], [ %34, %33 ], [ 0, %20 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_set_rw_stateid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_read_done_resend_to_mds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs41_sequence_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filelayout_write_done_cb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_write, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #12
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  %19 = tail call i32 @__traceiter_nfs4_pnfs_write(ptr noundef null, ptr noundef %1, i32 noundef %4) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  br label %20

20:                                               ; preds = %18, %7, %2
  %21 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 26
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = tail call fastcc i32 @filelayout_async_handle_error(ptr noundef %0, ptr noundef %22, ptr noundef %24)
  switch i32 %25, label %37 [
    i32 -12001, label %26
    i32 -11, label %35
  ]

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %28 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = tail call i32 @pnfs_write_done_resend_to_mds(ptr noundef %1) #12
  %32 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 18, i32 1
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, ptr %3, align 4
  br label %61

35:                                               ; preds = %20
  %36 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #12
  br label %61

37:                                               ; preds = %20
  %38 = load ptr, ptr %23, align 4
  %39 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nfs_writeverf, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %53 [
    i32 2, label %56
    i32 1, label %47
  ]

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 24
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, %49
  br label %53

53:                                               ; preds = %47, %42
  %54 = phi i64 [ %52, %47 ], [ 0, %42 ]
  %55 = load ptr, ptr %1, align 8
  tail call void @pnfs_set_layoutcommit(ptr noundef %55, ptr noundef %38, i64 noundef %54) #12
  br label %56

56:                                               ; preds = %53, %42, %37
  %57 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 19
  store i32 0, ptr %57, align 8
  %58 = load i32, ptr %3, align 4
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  tail call void @nfs_writeback_update_inode(ptr noundef %1) #12
  br label %61

61:                                               ; preds = %60, %56, %35, %33
  %62 = phi i32 [ -11, %35 ], [ %34, %33 ], [ 0, %60 ], [ 0, %56 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_writeback_update_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_write_done_resend_to_mds(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_write_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20
  %4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_open_context, ptr %5, i32 0, i32 7
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %41, !prof !8

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %14, i32 0, i32 4
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %14) #12
  br i1 %20, label %21, label %28

21:                                               ; preds = %19, %10
  %22 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %23 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %22) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = tail call i32 @pnfs_write_done_resend_to_mds(ptr noundef %1) #12
  %27 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 18, i32 1
  store i32 %26, ptr %27, align 4
  br label %41

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 26
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21
  %32 = tail call i32 @nfs4_setup_sequence(ptr noundef %30, ptr noundef %3, ptr noundef %31, ptr noundef %0) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 4
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @nfs4_set_rw_stateid(ptr noundef %35, ptr noundef %36, ptr noundef %38, i32 noundef 2) #12
  %40 = icmp eq i32 %39, -5
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %25, %21, %2
  %42 = phi i32 [ -5, %2 ], [ 0, %21 ], [ 0, %25 ], [ -5, %34 ]
  tail call void @rpc_exit(ptr noundef %0, i32 noundef %42) #12
  br label %43

43:                                               ; preds = %41, %34, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_write_call_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21
  %13 = tail call i32 @nfs41_sequence_done(ptr noundef %0, ptr noundef %12) #12
  br label %19

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rpc_call_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, ptr noundef %1) #12
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @filelayout_write_count_stats(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  tail call void @rpc_count_iostats(ptr noundef %0, ptr noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_fl_free_deviceid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_fl_alloc_deviceid_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_register_layoutdriver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

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
!11 = !{i64 2148967720}
!12 = !{i64 2148963544}
!13 = !{i64 2148963619, i64 2148963646, i64 2148963693, i64 2148963715, i64 2148963743, i64 2148963763}
!14 = !{i64 2148990723}
!15 = !{i64 523028, i64 2148012999, i64 2148013025, i64 2148013072, i64 2148013094, i64 2148013122, i64 2148013142}
!16 = !{i64 2148026669, i64 2148026701, i64 2148026730, i64 2148026764, i64 2148026795, i64 2148026818}
!17 = !{i64 2148438391, i64 2148438671, i64 2148439005, i64 2148439339}
!18 = !{i64 2158226239, i64 2158226733, i64 2158226276, i64 2158226332, i64 2158226366, i64 2158226390, i64 2158226431, i64 2158226452, i64 2158226480, i64 2158226514}
!19 = !{i64 2157683394}
!20 = !{i64 2157683566}
!21 = !{i64 2158232252}
!22 = !{i64 535199, i64 535220, i64 535243, i64 535262, i64 535281}
!23 = !{i64 2158232642}
!24 = !{i64 2157613774}
!25 = !{i64 2157613934}
!26 = !{i64 2157646371}
!27 = !{i64 2157646533}
