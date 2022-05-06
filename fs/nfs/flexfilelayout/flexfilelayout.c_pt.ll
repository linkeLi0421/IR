; ModuleID = '/llk/IR/fs/nfs/flexfilelayout/flexfilelayout.c_pt.bc'
source_filename = "../fs/nfs/flexfilelayout/flexfilelayout.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.85 }
%union.anon.85 = type { ptr }
%struct.nfs_pageio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_commit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs4_xdr_opaque_ops = type { ptr, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.nfs4_stateid_struct = type { %union.anon, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.151 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.152 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.154 = type { ptr }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.87 }
%union.anon.87 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.nfs4_ff_layout_ds_err = type { %struct.list_head, i64, i64, i32, i32, %struct.nfs4_stateid_struct, %struct.nfs4_deviceid }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.nfs42_layout_error = type { i64, i64, %struct.nfs4_stateid_struct, [1 x %struct.nfs42_device_error] }
%struct.nfs42_device_error = type { %struct.nfs4_deviceid, i32, i32 }
%struct.nfs4_flexfile_layout = type { %struct.pnfs_layout_hdr, %struct.pnfs_ds_commit_info, %struct.list_head, %struct.list_head, i64 }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_layoutget_res = type { %struct.nfs4_sequence_res, i32, i32, %struct.pnfs_layout_range, i32, %struct.nfs4_stateid_struct, ptr }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_layoutdriver_data = type { ptr, i32, i32 }
%struct.nfs4_ff_layout_segment = type { %struct.pnfs_layout_segment, i64, i32, i32, [0 x ptr] }
%struct.nfs4_ff_layout_mirror = type { ptr, %struct.list_head, i32, i32, %struct.nfs4_deviceid, ptr, i32, ptr, %struct.nfs4_stateid_struct, ptr, ptr, %struct.refcount_struct, %struct.spinlock, i32, %struct.nfs4_ff_layoutstat, %struct.nfs4_ff_layoutstat, i64, i32 }
%struct.nfs4_ff_layoutstat = type { %struct.nfs4_ff_io_stat, %struct.nfs4_ff_busy_timer }
%struct.nfs4_ff_io_stat = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nfs4_ff_busy_timer = type { i64, %struct.atomic_t }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.145, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.125 }
%struct.llist_node = type { ptr }
%union.anon.125 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.126 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.145 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.14 = type { %struct.callback_head }
%struct.nfs_pgio_header = type { ptr, ptr, %struct.list_head, ptr, %struct.nfs_writeverf, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rpc_task, %struct.nfs_fattr, %struct.nfs_pgio_args, %struct.nfs_pgio_res, i32, ptr, i64, %struct.nfs_page_array, ptr, i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.89, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.89 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.115, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.115 = type { %struct.anon.117 }
%struct.anon.117 = type { i64 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.118 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { ptr, [3 x i32], i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.120 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i32, i32 }
%struct.nfs_page_array = type { ptr, i32, [8 x ptr] }
%struct.nfs4_pnfs_ds = type { %struct.list_head, ptr, %struct.list_head, ptr, %struct.refcount_struct, i32 }
%struct.nfs4_ff_layout_ds = type { %struct.nfs4_deviceid_node, i32, ptr, ptr }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs4_layoutreturn_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.pnfs_layout_range, %struct.nfs4_stateid_struct, i32, ptr }
%struct.nfs4_flexfile_layoutreturn_args = type { %struct.list_head, [4 x %struct.nfs42_layoutstat_devinfo], i32, i32, [1 x ptr] }
%struct.nfs42_layoutstat_devinfo = type { %struct.nfs4_deviceid, i64, i64, i64, i64, i64, i64, i32, %struct.nfs4_xdr_opaque_data }
%struct.nfs4_xdr_opaque_data = type { ptr, ptr }
%struct.nfs42_layoutstat_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.nfs4_stateid_struct, i32, ptr }
%struct.nfs_commit_data = type { %struct.rpc_task, ptr, ptr, %struct.nfs_fattr, %struct.nfs_writeverf, %struct.list_head, %struct.list_head, ptr, %struct.nfs_commitargs, %struct.nfs_commitres, ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nfs_iostats = type { [8 x i64], [27 x i32], [20 x i8] }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs_page = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, %struct.kref, i32, %struct.nfs_write_verifier, ptr, ptr, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.114, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.114 = type { %struct.work_struct }
%struct.rpc_iostats = type { %struct.spinlock, i32, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.nfs_pageio_descriptor = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [1 x %struct.nfs_pgio_mirror], ptr, i32, i16, i8 }
%struct.nfs_pgio_mirror = type { %struct.list_head, i32, i32, i32, i32, i8 }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs4_ff_ds_version = type { i32, i32, i32, i32, i8 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_pgio_completion_ops = type { ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.22, %union.anon.37, %struct.atomic_t }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.37 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [53 x i8] c"\016%s: NFSv4 Flexfile Layout Driver Unregistering...\0A\00", align 1
@__func__.nfs4flexfilelayout_exit = private unnamed_addr constant [24 x i8] c"nfs4flexfilelayout_exit\00", align 1
@flexfilelayout_type = internal global %struct.pnfs_layoutdriver_type { %struct.list_head zeroinitializer, i32 4, ptr @.str.1, ptr null, i32 8, i32 0, i32 4096, ptr @ff_layout_set_layoutdriver, ptr null, ptr @ff_layout_alloc_layout_hdr, ptr @ff_layout_free_layout_hdr, ptr @ff_layout_alloc_lseg, ptr @ff_layout_free_lseg, ptr @ff_layout_add_lseg, ptr null, ptr @ff_layout_pg_read_ops, ptr @ff_layout_pg_write_ops, ptr @ff_layout_get_ds_info, ptr @pnfs_nfs_generic_sync, ptr @ff_layout_read_pagelist, ptr @ff_layout_write_pagelist, ptr @ff_layout_free_deviceid_node, ptr @ff_layout_alloc_deviceid_node, ptr @ff_layout_prepare_layoutreturn, ptr null, ptr null, ptr @ff_layout_prepare_layoutstats }, align 4
@__UNIQUE_ID_alias670 = internal constant [45 x i8] c"nfs_layout_flexfiles.alias=nfs-layouttype4-4\00", section ".modinfo", align 1
@__UNIQUE_ID_file671 = internal constant [69 x i8] c"nfs_layout_flexfiles.file=fs/nfs/flexfilelayout/nfs_layout_flexfiles\00", section ".modinfo", align 1
@__UNIQUE_ID_license672 = internal constant [33 x i8] c"nfs_layout_flexfiles.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description673 = internal constant [66 x i8] c"nfs_layout_flexfiles.description=The NFSv4 flexfile layout driver\00", section ".modinfo", align 1
@__initcall__kmod_nfs_layout_flexfiles__674_2528_nfs4flexfilelayout_init6 = internal global ptr @nfs4flexfilelayout_init, section ".initcall6.init", align 4
@__exitcall_nfs4flexfilelayout_exit = internal global ptr @nfs4flexfilelayout_exit, section ".exitcall.exit", align 4
@__param_str_io_maxretrans = internal constant [35 x i8] c"nfs_layout_flexfiles.io_maxretrans\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@io_maxretrans = internal global i16 0, align 2
@__param_io_maxretrans = internal constant %struct.kernel_param { ptr @__param_str_io_maxretrans, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.85 { ptr @io_maxretrans } }, section "__param", align 4
@__UNIQUE_ID_io_maxretranstype675 = internal constant [51 x i8] c"nfs_layout_flexfiles.parmtype=io_maxretrans:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_io_maxretrans676 = internal constant [131 x i8] c"nfs_layout_flexfiles.parm=io_maxretrans:The  number of times the NFSv4.1 client retries an I/O request before returning an error. \00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"LAYOUT_FLEX_FILES\00", align 1
@ff_layout_pg_read_ops = internal constant %struct.nfs_pageio_ops { ptr @ff_layout_pg_init_read, ptr @pnfs_generic_pg_test, ptr @pnfs_generic_pg_readpages, ptr null, ptr @pnfs_generic_pg_cleanup, ptr null, ptr null }, align 4
@ff_layout_pg_write_ops = internal constant %struct.nfs_pageio_ops { ptr @ff_layout_pg_init_write, ptr @pnfs_generic_pg_test, ptr @pnfs_generic_pg_writepages, ptr @ff_layout_pg_get_mirror_count_write, ptr @pnfs_generic_pg_cleanup, ptr @ff_layout_pg_get_mirror_write, ptr @ff_layout_pg_set_mirror_write }, align 4
@ff_layout_commit_ops = internal constant %struct.pnfs_commit_ops { ptr @ff_layout_setup_ds_info, ptr @ff_layout_release_ds_info, ptr @ff_layout_commit_pagelist, ptr @pnfs_layout_mark_request_commit, ptr @pnfs_generic_clear_request_commit, ptr @pnfs_generic_scan_commit_lists, ptr @pnfs_generic_recover_commit_reqs, ptr null }, align 4
@ff_layout_commit_call_ops_v3 = internal constant %struct.rpc_call_ops { ptr @ff_layout_commit_prepare_v3, ptr @ff_layout_commit_done, ptr @ff_layout_commit_count_stats, ptr @ff_layout_commit_release }, align 4
@ff_layout_commit_call_ops_v4 = internal constant %struct.rpc_call_ops { ptr @ff_layout_commit_prepare_v4, ptr @ff_layout_commit_done, ptr @ff_layout_commit_count_stats, ptr @ff_layout_commit_release }, align 4
@__tracepoint_ff_layout_commit_error = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@ff_layout_async_handle_error.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"fs/nfs/flexfilelayout/flexfilelayout.c\00", align 1
@__tracepoint_nfs4_pnfs_commit_ds = external dso_local global %struct.tracepoint, align 4
@layoutstats_timer = external dso_local local_unnamed_addr global i32, align 4
@nfs4_ff_end_busy_timer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\013NFS flexfiles: Too big fh received %d\0A\00", align 1
@__tracepoint_pnfs_mds_fallback_pg_init_read = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pnfs_mds_fallback_pg_init_write = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pnfs_mds_fallback_pg_get_mirror_count = external dso_local global %struct.tracepoint, align 4
@ff_layout_read_call_ops_v3 = internal constant %struct.rpc_call_ops { ptr @ff_layout_read_prepare_v3, ptr @ff_layout_read_call_done, ptr @ff_layout_read_count_stats, ptr @ff_layout_read_release }, align 4
@ff_layout_read_call_ops_v4 = internal constant %struct.rpc_call_ops { ptr @ff_layout_read_prepare_v4, ptr @ff_layout_read_call_done, ptr @ff_layout_read_count_stats, ptr @ff_layout_read_release }, align 4
@__tracepoint_ff_layout_read_error = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_pnfs_read = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pnfs_mds_fallback_read_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pnfs_mds_fallback_read_pagelist = external dso_local global %struct.tracepoint, align 4
@ff_layout_write_call_ops_v3 = internal constant %struct.rpc_call_ops { ptr @ff_layout_write_prepare_v3, ptr @ff_layout_write_call_done, ptr @ff_layout_write_count_stats, ptr @ff_layout_write_release }, align 4
@ff_layout_write_call_ops_v4 = internal constant %struct.rpc_call_ops { ptr @ff_layout_write_prepare_v4, ptr @ff_layout_write_call_done, ptr @ff_layout_write_count_stats, ptr @ff_layout_write_release }, align 4
@__tracepoint_ff_layout_write_error = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_pnfs_write = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pnfs_mds_fallback_write_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pnfs_mds_fallback_write_pagelist = external dso_local global %struct.tracepoint, align 4
@layoutreturn_ops = internal constant %struct.nfs4_xdr_opaque_ops { ptr @ff_layout_encode_layoutreturn, ptr @ff_layout_free_layoutreturn }, align 4
@layoutstat_ops = internal constant %struct.nfs4_xdr_opaque_ops { ptr @ff_layout_encode_layoutstats, ptr @ff_layout_free_layoutstats }, align 4
@ff_layout_encode_netaddr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".%u.%u\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"::ffff:%pI4\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%pI6c\00", align 1
@encode_opaque_fixed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\016%s: NFSv4 Flexfile Layout Driver Registering...\0A\00", align 1
@__func__.nfs4flexfilelayout_init = private unnamed_addr constant [24 x i8] c"nfs4flexfilelayout_init\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias670, ptr @__UNIQUE_ID_description673, ptr @__UNIQUE_ID_file671, ptr @__UNIQUE_ID_io_maxretrans676, ptr @__UNIQUE_ID_io_maxretranstype675, ptr @__UNIQUE_ID_license672, ptr @__exitcall_nfs4flexfilelayout_exit, ptr @__initcall__kmod_nfs_layout_flexfiles__674_2528_nfs4flexfilelayout_init6, ptr @__param_io_maxretrans, ptr @nfs4flexfilelayout_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ff_layout_send_layouterror(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %4, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_server, ptr %11, i32 0, i32 10
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 67108864
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3
  %18 = call i32 @ff_layout_fetch_ds_ioerr(ptr noundef %4, ptr noundef %17, ptr noundef nonnull %2, i32 noundef -1) #18
  %19 = load volatile ptr, ptr %2, align 8
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %66, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %23 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3136, i32 noundef 320) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %65, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 8
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %64, label %28

28:                                               ; preds = %60, %25
  %29 = phi ptr [ %61, %60 ], [ %26, %25 ]
  %30 = phi i32 [ %62, %60 ], [ 0, %25 ]
  %31 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %29, i32 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr %struct.nfs42_layout_error, ptr %23, i32 %30
  store i64 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %29, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr %struct.nfs42_layout_error, ptr %23, i32 %30, i32 1
  store i64 %35, ptr %36, align 8
  %37 = getelementptr %struct.nfs42_layout_error, ptr %23, i32 %30, i32 2
  %38 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %29, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %37, ptr noundef align 4 dereferenceable(16) %38, i32 16, i1 false) #18
  %39 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %29, i32 0, i32 5, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.nfs42_layout_error, ptr %23, i32 %30, i32 2, i32 1
  store i32 %40, ptr %41, align 8
  %42 = getelementptr %struct.nfs42_layout_error, ptr %23, i32 %30, i32 3
  %43 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %29, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %42, ptr noundef align 4 dereferenceable(16) %43, i32 16, i1 false)
  %44 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %29, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nfs42_device_error, ptr %42, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %29, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nfs42_device_error, ptr %42, i32 0, i32 2
  store i32 %48, ptr %49, align 8
  %50 = add i32 %30, 1
  %51 = load ptr, ptr %29, align 4
  %52 = icmp ne ptr %51, %2
  %53 = icmp ult i32 %50, 5
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %60, label %55

55:                                               ; preds = %28
  %56 = call i32 @nfs42_proc_layouterror(ptr noundef %0, ptr noundef nonnull %23, i32 noundef %50) #18
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %29, align 8
  br label %60

60:                                               ; preds = %58, %28
  %61 = phi ptr [ %51, %28 ], [ %59, %58 ]
  %62 = phi i32 [ %50, %28 ], [ 0, %58 ]
  %63 = icmp eq ptr %61, %2
  br i1 %63, label %64, label %28

64:                                               ; preds = %60, %55, %25
  call void @kfree(ptr noundef nonnull %23) #18
  br label %65

65:                                               ; preds = %64, %21
  call void @ff_layout_free_ds_ioerr(ptr noundef nonnull %2) #18
  br label %66

66:                                               ; preds = %65, %16, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ff_layout_fetch_ds_ioerr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_layouterror(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ff_layout_free_ds_ioerr(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nfs4flexfilelayout_exit() #5 section ".exit.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nfs4flexfilelayout_exit) #20
  tail call void @pnfs_unregister_layoutdriver(ptr noundef nonnull @flexfilelayout_type) #18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_unregister_layoutdriver(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nfs4flexfilelayout_init() #5 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.nfs4flexfilelayout_init) #20
  %2 = tail call i32 @pnfs_register_layoutdriver(ptr noundef nonnull @flexfilelayout_type) #18
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ff_layout_set_layoutdriver(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #10 {
  %3 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 4194304
  store i32 %5, ptr %3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ff_layout_alloc_layout_hdr(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = or i32 %1, 256
  %4 = and i32 %1, 17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !9

6:                                                ; preds = %2
  %7 = and i32 %1, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %11, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %3, i32 noundef 160) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %14, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %14, i32 0, i32 1, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %14, i32 0, i32 1, i32 3
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %14, i32 0, i32 3
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %14, i32 0, i32 3, i32 1
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %14, i32 0, i32 2
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %14, i32 0, i32 2, i32 1
  store ptr %22, ptr %23, align 8
  %24 = tail call i64 @ktime_get() #18
  %25 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %14, i32 0, i32 4
  store i64 %24, ptr %25, align 8
  store ptr @ff_layout_commit_ops, ptr %19, align 8
  br label %26

26:                                               ; preds = %16, %10
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_free_layout_hdr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #18
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  %13 = icmp eq ptr %0, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %0, i32 0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %15, ptr noundef nonnull inttoptr (i32 104 to ptr)) #18
  br label %16

16:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ff_layout_alloc_lseg(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.xdr_stream, align 4
  %5 = alloca %struct.xdr_buf, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !10
  %7 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %293, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs4_layoutdriver_data, ptr %11, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %12, i32 noundef %14) #18
  %15 = call ptr @page_address(ptr noundef nonnull %7) #18
  %16 = getelementptr inbounds %struct.xdr_stream, ptr %4, i32 0, i32 4
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.xdr_stream, ptr %4, i32 0, i32 4, i32 1
  store i32 4096, ptr %17, align 4
  %18 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 12) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %290, label %20

20:                                               ; preds = %9
  %21 = load i64, ptr %18, align 1
  %22 = call i64 @llvm.bswap.i64(i64 %21) #18
  %23 = getelementptr i32, ptr %18, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #18
  %26 = add i32 %25, -4097
  %27 = icmp ult i32 %26, -4096
  br i1 %27, label %290, label %28

28:                                               ; preds = %20
  %29 = or i32 %2, 256
  %30 = shl nuw nsw i32 %25, 2
  %31 = add nuw nsw i32 %30, 80
  %32 = call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef %29) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %290, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 3
  store i32 %25, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 1
  store i64 %22, ptr %36, align 64
  %37 = icmp eq i32 %24, 0
  br i1 %37, label %206, label %38

38:                                               ; preds = %34
  %39 = and i32 %2, 17
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %2, 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 1, i32 2
  %44 = and i32 %2, 128
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 3
  br label %47

47:                                               ; preds = %202, %38
  %48 = phi i32 [ 0, %38 ], [ %203, %202 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !10
  %49 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #18
  %50 = icmp eq ptr %49, null
  br i1 %50, label %267, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 4
  %53 = icmp eq i32 %52, 16777216
  br i1 %53, label %54, label %267

54:                                               ; preds = %51
  br i1 %40, label %56, label %55, !prof !9

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi i32 [ 0, %54 ], [ %43, %55 ]
  %58 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %57, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef %29, i32 noundef 248) #19
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = getelementptr %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 4, i32 %48
  store ptr null, ptr %63, align 4
  br label %267

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %60, i32 0, i32 12
  store i32 0, ptr %65, align 8
  %66 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %60, i32 0, i32 11
  store volatile i32 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %60, i32 0, i32 1
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %60, i32 0, i32 1, i32 1
  store ptr %67, ptr %68, align 8
  %69 = getelementptr %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 4, i32 %48
  store ptr %60, ptr %69, align 4
  %70 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %60, i32 0, i32 2
  store i32 1, ptr %70, align 4
  %71 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 16) #18
  %72 = icmp eq ptr %71, null
  br i1 %72, label %267, label %73, !prof !11

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %60, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %74, ptr noundef nonnull align 4 dereferenceable(16) %71, i32 16, i1 false) #18
  %75 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #18
  %76 = icmp eq ptr %75, null
  br i1 %76, label %267, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %75, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #18
  %80 = load ptr, ptr %69, align 4
  %81 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %80, i32 0, i32 3
  store i32 %79, ptr %81, align 8
  %82 = load ptr, ptr %69, align 4
  %83 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 16) #18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %267, label %85, !prof !11

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %82, i32 0, i32 8
  %87 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %82, i32 0, i32 8, i32 1
  store i32 6, ptr %87, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %86, ptr noundef nonnull align 4 dereferenceable(16) %83, i32 16, i1 false) #18
  %88 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #18
  %89 = icmp eq ptr %88, null
  br i1 %89, label %267, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %88, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #18
  %93 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %92, i32 130) #18
  %94 = extractvalue { i32, i1 } %93, 1
  br i1 %94, label %98, label %95, !prof !11

95:                                               ; preds = %90
  %96 = extractvalue { i32, i1 } %93, 0
  %97 = call noalias align 64 ptr @__kmalloc(i32 noundef %96, i32 noundef %29) #21
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi ptr [ %97, %95 ], [ null, %90 ]
  %100 = load ptr, ptr %69, align 4
  %101 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %100, i32 0, i32 7
  store ptr %99, ptr %101, align 4
  %102 = load ptr, ptr %69, align 4
  %103 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %102, i32 0, i32 7
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %267, label %106

106:                                              ; preds = %98
  %107 = icmp eq i32 %91, 0
  br i1 %107, label %140, label %108

108:                                              ; preds = %106
  %109 = call i32 @llvm.umax.i32(i32 %92, i32 1)
  %110 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #18
  %111 = icmp eq ptr %110, null
  br i1 %111, label %267, label %112, !prof !11

112:                                              ; preds = %134, %108
  %113 = phi ptr [ %138, %134 ], [ %110, %108 ]
  %114 = phi ptr [ %137, %134 ], [ %104, %108 ]
  %115 = phi i32 [ %131, %134 ], [ 0, %108 ]
  %116 = phi ptr [ %136, %134 ], [ %104, %108 ]
  %117 = load i32, ptr %113, align 4
  %118 = call i32 @llvm.bswap.i32(i32 %117) #18
  %119 = trunc i32 %118 to i16
  store i16 %119, ptr %114, align 2
  %120 = and i32 %118, 65535
  %121 = icmp ugt i32 %120, 128
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %120) #20
  br label %267

124:                                              ; preds = %112
  %125 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef %120) #18
  %126 = icmp eq ptr %125, null
  br i1 %126, label %267, label %127, !prof !11

127:                                              ; preds = %124
  %128 = getelementptr %struct.nfs_fh, ptr %116, i32 %115, i32 1
  %129 = load i16, ptr %114, align 2
  %130 = zext i16 %129 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %128, ptr nonnull align 4 %125, i32 %130, i1 false) #18
  %131 = add nuw i32 %115, 1
  %132 = icmp eq i32 %131, %109
  %133 = load ptr, ptr %69, align 4
  br i1 %132, label %140, label %134

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %133, i32 0, i32 7
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr %struct.nfs_fh, ptr %136, i32 %131
  %138 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #18
  %139 = icmp eq ptr %138, null
  br i1 %139, label %267, label %112, !prof !11

140:                                              ; preds = %127, %106
  %141 = phi ptr [ %102, %106 ], [ %133, %127 ]
  %142 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %141, i32 0, i32 6
  store i32 %92, ptr %142, align 8
  %143 = call fastcc i32 @decode_name(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %267

145:                                              ; preds = %140
  %146 = load i32, ptr %6, align 4
  %147 = call fastcc i32 @decode_name(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %267

149:                                              ; preds = %145
  %150 = load i32, ptr %6, align 4
  br i1 %45, label %153, label %151

151:                                              ; preds = %149
  %152 = call ptr @prepare_kernel_cred(ptr noundef null) #18
  br label %163

153:                                              ; preds = %149
  %154 = tail call ptr @llvm.thread.pointer() #18
  %155 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 262144
  %158 = or i32 %156, 262144
  store i32 %158, ptr %155, align 4
  %159 = call ptr @prepare_kernel_cred(ptr noundef null) #18
  %160 = load i32, ptr %155, align 4
  %161 = and i32 %160, -262145
  %162 = or i32 %161, %157
  store i32 %162, ptr %155, align 4
  br label %163

163:                                              ; preds = %153, %151
  %164 = phi ptr [ %152, %151 ], [ %159, %153 ]
  %165 = icmp eq ptr %164, null
  br i1 %165, label %267, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.cred, ptr %164, i32 0, i32 7
  store i32 %146, ptr %167, align 4
  %168 = getelementptr inbounds %struct.cred, ptr %164, i32 0, i32 8
  store i32 %150, ptr %168, align 4
  %169 = load i32, ptr %46, align 8
  %170 = icmp eq i32 %169, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18
  %171 = load ptr, ptr %69, align 4
  br i1 %170, label %172, label %174

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %171, i32 0, i32 9
  store volatile ptr %164, ptr %173, align 4
  br label %176

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %171, i32 0, i32 10
  store volatile ptr %164, ptr %175, align 8
  br label %176

176:                                              ; preds = %174, %172
  %177 = load ptr, ptr %69, align 4
  %178 = call fastcc ptr @ff_layout_add_mirror(ptr noundef %0, ptr noundef %177)
  %179 = load ptr, ptr %69, align 4
  %180 = icmp eq ptr %178, %179
  br i1 %180, label %202, label %181

181:                                              ; preds = %176
  %182 = load i32, ptr %46, align 8
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %178, i32 0, i32 9
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %186 = ptrtoint ptr %164 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %185) #18, !srcloc !13
  %187 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %186, ptr %185) #18, !srcloc !14
  %188 = extractvalue { i32, i32 } %187, 0
  %189 = inttoptr i32 %188 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %190 = load ptr, ptr %69, align 4
  %191 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %190, i32 0, i32 9
  store volatile ptr %189, ptr %191, align 4
  br label %200

192:                                              ; preds = %181
  %193 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %178, i32 0, i32 10
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  %194 = ptrtoint ptr %164 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %193) #18, !srcloc !13
  %195 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %194, ptr %193) #18, !srcloc !14
  %196 = extractvalue { i32, i32 } %195, 0
  %197 = inttoptr i32 %196 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %198 = load ptr, ptr %69, align 4
  %199 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %198, i32 0, i32 10
  store volatile ptr %197, ptr %199, align 8
  br label %200

200:                                              ; preds = %192, %184
  %201 = load ptr, ptr %69, align 4
  call fastcc void @ff_layout_free_mirror(ptr noundef %201)
  store ptr %178, ptr %69, align 4
  br label %202

202:                                              ; preds = %200, %176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  %203 = add nuw i32 %48, 1
  %204 = load i32, ptr %35, align 4
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %47, label %206

206:                                              ; preds = %202, %34
  %207 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #18
  %208 = icmp eq ptr %207, null
  br i1 %208, label %228, label %209

209:                                              ; preds = %206
  %210 = load i32, ptr %207, align 4
  %211 = call i32 @llvm.bswap.i32(i32 %210) #18
  %212 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 2
  store i32 %211, ptr %212, align 8
  %213 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #18
  %214 = icmp eq ptr %213, null
  br i1 %214, label %228, label %215

215:                                              ; preds = %209
  %216 = load i32, ptr %35, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %233, label %218

218:                                              ; preds = %218, %215
  %219 = phi i32 [ %225, %218 ], [ 0, %215 ]
  %220 = load i32, ptr %213, align 4
  %221 = call i32 @llvm.bswap.i32(i32 %220) #18
  %222 = getelementptr %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 4, i32 %219
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %223, i32 0, i32 17
  store i32 %221, ptr %224, align 8
  %225 = add nuw i32 %219, 1
  %226 = load i32, ptr %35, align 4
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %218, label %230

228:                                              ; preds = %209, %206
  %229 = load i32, ptr %35, align 4
  br label %230

230:                                              ; preds = %228, %218
  %231 = phi i32 [ %229, %228 ], [ %226, %218 ]
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %265, label %233

233:                                              ; preds = %230, %215
  %234 = phi i32 [ 0, %215 ], [ %231, %230 ]
  br label %239

235:                                              ; preds = %260, %239
  %236 = phi i32 [ %240, %239 ], [ %261, %260 ]
  %237 = add i32 %236, -1
  %238 = icmp ult i32 %242, %237
  br i1 %238, label %239, label %265

239:                                              ; preds = %235, %233
  %240 = phi i32 [ %236, %235 ], [ %234, %233 ]
  %241 = phi i32 [ %242, %235 ], [ 0, %233 ]
  %242 = add nuw i32 %241, 1
  %243 = icmp ult i32 %242, %240
  br i1 %243, label %244, label %235

244:                                              ; preds = %239
  %245 = getelementptr %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 4, i32 %241
  br label %246

246:                                              ; preds = %260, %244
  %247 = phi i32 [ %240, %244 ], [ %261, %260 ]
  %248 = phi i32 [ %240, %244 ], [ %262, %260 ]
  %249 = phi i32 [ %242, %244 ], [ %263, %260 ]
  %250 = load ptr, ptr %245, align 4
  %251 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %250, i32 0, i32 3
  %252 = load i32, ptr %251, align 8
  %253 = getelementptr %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 4, i32 %249
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %254, i32 0, i32 3
  %256 = load i32, ptr %255, align 8
  %257 = icmp ult i32 %252, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %246
  store ptr %254, ptr %245, align 4
  store ptr %250, ptr %253, align 4
  %259 = load i32, ptr %35, align 4
  br label %260

260:                                              ; preds = %258, %246
  %261 = phi i32 [ %247, %246 ], [ %259, %258 ]
  %262 = phi i32 [ %248, %246 ], [ %259, %258 ]
  %263 = add nuw i32 %249, 1
  %264 = icmp ult i32 %263, %262
  br i1 %264, label %246, label %235

265:                                              ; preds = %290, %235, %230
  %266 = phi ptr [ %292, %290 ], [ %32, %230 ], [ %32, %235 ]
  call void @__free_pages(ptr noundef nonnull %7, i32 noundef 0) #18
  br label %293

267:                                              ; preds = %163, %145, %140, %134, %124, %122, %108, %98, %85, %77, %73, %64, %62, %51, %47
  %268 = phi i32 [ -12, %62 ], [ -75, %122 ], [ -105, %124 ], [ -105, %134 ], [ -5, %47 ], [ -5, %51 ], [ -5, %73 ], [ -5, %85 ], [ -12, %98 ], [ %143, %140 ], [ %147, %145 ], [ -12, %163 ], [ -105, %64 ], [ -105, %77 ], [ -105, %108 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  %269 = load i32, ptr %35, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %289, label %271

271:                                              ; preds = %285, %267
  %272 = phi i32 [ %286, %285 ], [ 0, %267 ]
  %273 = getelementptr %struct.nfs4_ff_layout_segment, ptr %32, i32 0, i32 4, i32 %272
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %285, label %276

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %274, i32 0, i32 11
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %277) #18, !srcloc !13
  %278 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %277, ptr %277, i32 1, ptr elementtype(i32) %277) #18, !srcloc !21
  %279 = extractvalue { i32, i32, i32 } %278, 0
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %284, label %281

281:                                              ; preds = %276
  %282 = icmp sgt i32 %279, 0
  br i1 %282, label %285, label %283, !prof !9

283:                                              ; preds = %281
  call void @refcount_warn_saturate(ptr noundef %277, i32 noundef 3) #18
  br label %285

284:                                              ; preds = %276
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  call fastcc void @ff_layout_free_mirror(ptr noundef nonnull %274) #18
  br label %285

285:                                              ; preds = %284, %283, %281, %271
  %286 = add nuw i32 %272, 1
  %287 = load i32, ptr %35, align 4
  %288 = icmp ult i32 %286, %287
  br i1 %288, label %271, label %289

289:                                              ; preds = %285, %267
  call void @kfree(ptr noundef nonnull %32) #18
  br label %290

290:                                              ; preds = %289, %28, %20, %9
  %291 = phi i32 [ %268, %289 ], [ -5, %9 ], [ -12, %28 ], [ -5, %20 ]
  %292 = inttoptr i32 %291 to ptr
  br label %265

293:                                              ; preds = %265, %3
  %294 = phi ptr [ %266, %265 ], [ inttoptr (i32 -12 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #18
  ret ptr %294
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_free_lseg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %7, i32 0, i32 1
  tail call void @pnfs_generic_ds_cinfo_release_lseg(ptr noundef %11, ptr noundef %0) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %12 = load i16, ptr %10, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  br label %14

14:                                               ; preds = %5, %1
  %15 = icmp eq ptr %0, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %34, %16
  %21 = phi i32 [ %35, %34 ], [ 0, %16 ]
  %22 = getelementptr %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 4, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %23, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #18, !srcloc !13
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #18, !srcloc !21
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !9

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #18
  br label %34

33:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  tail call fastcc void @ff_layout_free_mirror(ptr noundef nonnull %23) #18
  br label %34

34:                                               ; preds = %33, %32, %30, %20
  %35 = add nuw i32 %21, 1
  %36 = load i32, ptr %17, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %20, label %38

38:                                               ; preds = %34, %16
  tail call void @kfree(ptr noundef nonnull %0) #18
  br label %39

39:                                               ; preds = %38, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_add_lseg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @pnfs_generic_layout_insert_lseg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ff_lseg_range_is_after, ptr noundef nonnull @ff_lseg_merge, ptr noundef %2) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @ff_layout_get_ds_info(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %3, i32 0, i32 1
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_nfs_generic_sync(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_read_pagelist(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 5
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr %struct.nfs4_ff_layout_segment, ptr %3, i32 0, i32 4, i32 %7
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi ptr [ %13, %11 ], [ null, %1 ]
  %16 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %3, ptr noundef %15, i1 noundef zeroext false) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %0, align 8
  %22 = tail call ptr @nfs4_ff_find_or_create_ds_client(ptr noundef %15, ptr noundef %20, ptr noundef %21) #18
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %67, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %3, i32 0, i32 3
  %26 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call ptr @ff_layout_get_ds_cred(ptr noundef %15, ptr noundef %25, ptr noundef %27) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %15, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 23
  store ptr @ff_layout_read_done_cb, ptr %36, align 4
  %37 = load ptr, ptr %19, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #18, !srcloc !13
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #18, !srcloc !27
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !11

41:                                               ; preds = %30
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %47, label %45, !prof !9

45:                                               ; preds = %41, %30
  %46 = phi i32 [ 2, %30 ], [ 1, %41 ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #18
  br label %47

47:                                               ; preds = %45, %41
  %48 = load ptr, ptr %19, align 4
  %49 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 26
  store ptr %48, ptr %49, align 8
  %50 = tail call ptr @nfs4_ff_layout_select_ds_fh(ptr noundef %15) #18
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 1
  store ptr %50, ptr %53, align 8
  br label %54

54:                                               ; preds = %52, %47
  %55 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 4
  tail call void @nfs4_ff_layout_select_ds_stateid(ptr noundef %15, ptr noundef %55) #18
  store i64 %5, ptr %4, align 8
  %56 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 24
  store i64 %5, ptr %56, align 8
  %57 = load ptr, ptr %19, align 4
  %58 = getelementptr inbounds %struct.nfs_client, ptr %57, i32 0, i32 12
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq i32 %35, 3
  %61 = select i1 %60, ptr @ff_layout_read_call_ops_v3, ptr @ff_layout_read_call_ops_v4
  %62 = tail call i32 @nfs_initiate_pgio(ptr noundef %22, ptr noundef %0, ptr noundef nonnull %28, ptr noundef %59, ptr noundef nonnull %61, i32 noundef 0, i32 noundef 1024) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #18, !srcloc !13
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #18, !srcloc !29
  %64 = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %54
  tail call void @__put_cred(ptr noundef nonnull %28) #18
  br label %92

67:                                               ; preds = %24, %18, %14
  %68 = tail call zeroext i1 @ff_layout_avoid_mds_available_ds(ptr noundef %3) #18
  br i1 %68, label %92, label %69

69:                                               ; preds = %67
  %70 = load ptr, ptr %0, align 8
  %71 = load i64, ptr %4, align 8
  %72 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 6
  %73 = load i32, ptr %72, align 8
  %74 = zext i32 %73 to i64
  %75 = getelementptr i8, ptr %70, i32 -24
  %76 = load ptr, ptr %75, align 8
  %77 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_read_pagelist, i32 0, i32 1), align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %69
  %80 = tail call ptr @llvm.thread.pointer() #18
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = lshr i32 %82, 5
  %84 = getelementptr i32, ptr @__cpu_online_mask, i32 %83
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %82, 31
  %87 = shl nuw i32 1, %86
  %88 = and i32 %87, %85
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %79
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !31
  %91 = tail call i32 @__traceiter_pnfs_mds_fallback_read_pagelist(ptr noundef null, ptr noundef %70, i64 noundef %71, i64 noundef %74, i32 noundef 1, ptr noundef %76, ptr noundef %3) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  br label %92

92:                                               ; preds = %90, %79, %69, %67, %66, %54
  %93 = phi i32 [ 2, %67 ], [ 0, %54 ], [ 0, %66 ], [ 1, %69 ], [ 1, %79 ], [ 1, %90 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_write_pagelist(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 28
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %8
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr %struct.nfs4_ff_layout_segment, ptr %4, i32 0, i32 4, i32 %8
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ null, %2 ]
  %17 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %4, ptr noundef %16, i1 noundef zeroext true) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %68, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %0, align 8
  %23 = tail call ptr @nfs4_ff_find_or_create_ds_client(ptr noundef %16, ptr noundef %21, ptr noundef %22) #18
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %68, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %4, i32 0, i32 3
  %27 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @ff_layout_get_ds_cred(ptr noundef %16, ptr noundef %26, ptr noundef %28) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %68, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %16, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 23
  store ptr @ff_layout_write_done_cb, ptr %37, align 4
  %38 = load ptr, ptr %20, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #18, !srcloc !13
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #18, !srcloc !27
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42, !prof !11

42:                                               ; preds = %31
  %43 = add i32 %40, 1
  %44 = or i32 %43, %40
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %48, label %46, !prof !9

46:                                               ; preds = %42, %31
  %47 = phi i32 [ 2, %31 ], [ 1, %42 ]
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef %47) #18
  br label %48

48:                                               ; preds = %46, %42
  %49 = load ptr, ptr %20, align 4
  %50 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 26
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 27
  store i32 %8, ptr %51, align 4
  %52 = tail call ptr @nfs4_ff_layout_select_ds_fh(ptr noundef %16) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 1
  store ptr %52, ptr %55, align 8
  br label %56

56:                                               ; preds = %54, %48
  %57 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 4
  tail call void @nfs4_ff_layout_select_ds_stateid(ptr noundef %16, ptr noundef %57) #18
  store i64 %6, ptr %5, align 8
  %58 = load ptr, ptr %20, align 4
  %59 = getelementptr inbounds %struct.nfs_client, ptr %58, i32 0, i32 12
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq i32 %36, 3
  %62 = select i1 %61, ptr @ff_layout_write_call_ops_v3, ptr @ff_layout_write_call_ops_v4
  %63 = tail call i32 @nfs_initiate_pgio(ptr noundef %23, ptr noundef %0, ptr noundef nonnull %29, ptr noundef %60, ptr noundef nonnull %62, i32 noundef %1, i32 noundef 1024) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %29) #18, !srcloc !13
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %29, ptr nonnull %29, i32 1, ptr nonnull elementtype(i32) %29) #18, !srcloc !29
  %65 = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %56
  tail call void @__put_cred(ptr noundef nonnull %29) #18
  br label %93

68:                                               ; preds = %25, %19, %15
  %69 = tail call zeroext i1 @ff_layout_avoid_mds_available_ds(ptr noundef %4) #18
  br i1 %69, label %93, label %70

70:                                               ; preds = %68
  %71 = load ptr, ptr %0, align 8
  %72 = load i64, ptr %5, align 8
  %73 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 6
  %74 = load i32, ptr %73, align 8
  %75 = zext i32 %74 to i64
  %76 = getelementptr i8, ptr %71, i32 -24
  %77 = load ptr, ptr %76, align 8
  %78 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_write_pagelist, i32 0, i32 1), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %70
  %81 = tail call ptr @llvm.thread.pointer() #18
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 5
  %85 = getelementptr i32, ptr @__cpu_online_mask, i32 %84
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %83, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %80
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  %92 = tail call i32 @__traceiter_pnfs_mds_fallback_write_pagelist(ptr noundef null, ptr noundef %71, i64 noundef %72, i64 noundef %75, i32 noundef 2, ptr noundef %77, ptr noundef %4) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !34
  br label %93

93:                                               ; preds = %91, %80, %70, %68, %67, %56
  %94 = phi i32 [ 2, %68 ], [ 0, %56 ], [ 0, %67 ], [ 1, %70 ], [ 1, %80 ], [ 1, %91 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_free_deviceid_node(ptr noundef %0) #0 {
  tail call void @nfs4_ff_layout_free_deviceid(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ff_layout_alloc_deviceid_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @nfs4_ff_alloc_deviceid_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_prepare_layoutreturn(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 344) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  %9 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %5, i32 0, i32 4
  store ptr %8, ptr %9, align 8
  %10 = icmp eq ptr %8, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  store volatile ptr %5, ptr %5, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %0, i32 0, i32 3
  %15 = tail call i32 @ff_layout_fetch_ds_ioerr(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %5, i32 noundef 20) #18
  %16 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %5, i32 0, i32 2
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %19) #18
  %20 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %5, i32 0, i32 1
  %21 = tail call fastcc i32 @ff_layout_mirror_prepare_stats(ptr noundef %3, ptr noundef %20)
  %22 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %5, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %27 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8
  store ptr @layoutreturn_ops, ptr %28, align 4
  %29 = load ptr, ptr %27, align 8
  %30 = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %29, i32 0, i32 1
  store ptr %5, ptr %30, align 4
  br label %32

31:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #18
  br label %32

32:                                               ; preds = %31, %11, %1
  %33 = phi i32 [ 0, %11 ], [ -12, %1 ], [ -12, %31 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_prepare_layoutstats(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3072, i32 noundef 320) #19
  %4 = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %0, i32 0, i32 5
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %9) #18
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 -24
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %4, align 4
  %14 = tail call fastcc i32 @ff_layout_mirror_prepare_stats(ptr noundef %12, ptr noundef %13)
  %15 = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %0, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %20 = load i32, ptr %15, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %23) #18
  store ptr null, ptr %4, align 4
  br label %24

24:                                               ; preds = %22, %6, %1
  %25 = phi i32 [ -2, %22 ], [ -12, %1 ], [ 0, %6 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_setup_ds_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @pnfs_alloc_commit_array(i32 noundef %8, i32 noundef 3072) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %12) #18
  %13 = tail call ptr @pnfs_add_commit_array(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %14 = load i16, ptr %12, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %16 = icmp eq ptr %13, %9
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @pnfs_free_commit_array(ptr noundef nonnull %9) #18
  br label %18

18:                                               ; preds = %17, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_release_ds_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #18
  tail call void @pnfs_generic_ds_cinfo_destroy(ptr noundef %0) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_commit_pagelist(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @pnfs_generic_commit_pagelist(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull @ff_layout_initiate_commit) #18
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_layout_mark_request_commit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_clear_request_commit(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_scan_commit_lists(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_recover_commit_reqs(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_alloc_commit_array(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_add_commit_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_free_commit_array(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_ds_cinfo_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_commit_pagelist(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_initiate_commit(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %4, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %80, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %4, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, %17
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = getelementptr %struct.nfs4_ff_layout_segment, ptr %4, i32 0, i32 4, i32 %17
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi ptr [ %23, %21 ], [ null, %15 ]
  %26 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef nonnull %4, ptr noundef %25, i1 noundef zeroext true) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %80, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %26, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = tail call ptr @nfs4_ff_find_or_create_ds_client(ptr noundef %25, ptr noundef %30, ptr noundef %32) #18
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %80, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %4, i32 0, i32 3
  %37 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = tail call ptr @ff_layout_get_ds_cred(ptr noundef %25, ptr noundef %36, ptr noundef %38) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %80, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %25, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 17
  store ptr @ff_layout_commit_done_cb, ptr %47, align 8
  store ptr %39, ptr %37, align 4
  %48 = load ptr, ptr %29, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #18, !srcloc !13
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #18, !srcloc !27
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !11

52:                                               ; preds = %41
  %53 = add i32 %50, 1
  %54 = or i32 %53, %50
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %58, label %56, !prof !9

56:                                               ; preds = %52, %41
  %57 = phi i32 [ 2, %41 ], [ 1, %52 ]
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef %57) #18
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr %29, align 4
  %60 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 12
  store ptr %59, ptr %60, align 8
  %61 = load i32, ptr %16, align 4
  %62 = getelementptr %struct.nfs4_ff_layout_segment, ptr %4, i32 0, i32 4, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %63, i32 0, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 8, i32 1
  store ptr %65, ptr %68, align 8
  br label %69

69:                                               ; preds = %67, %58
  %70 = load ptr, ptr %29, align 4
  %71 = getelementptr inbounds %struct.nfs_client, ptr %70, i32 0, i32 12
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq i32 %46, 3
  %74 = select i1 %73, ptr @ff_layout_commit_call_ops_v3, ptr @ff_layout_commit_call_ops_v4
  %75 = tail call i32 @nfs_initiate_commit(ptr noundef %33, ptr noundef %0, ptr noundef %72, ptr noundef nonnull %74, i32 noundef %1, i32 noundef 1024) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %39) #18, !srcloc !13
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %39, ptr nonnull %39, i32 1, ptr nonnull elementtype(i32) %39) #18, !srcloc !29
  %77 = extractvalue { i32, i32 } %76, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  tail call void @__put_cred(ptr noundef nonnull %39) #18
  br label %81

80:                                               ; preds = %35, %28, %24, %11, %2
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %0) #18
  tail call void @pnfs_generic_commit_release(ptr noundef %0) #18
  br label %81

81:                                               ; preds = %80, %79, %69
  %82 = phi i32 [ -11, %80 ], [ %75, %69 ], [ %75, %79 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_ff_layout_prepare_ds(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_ff_find_or_create_ds_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ff_layout_get_ds_cred(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_commit_done_cb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 8, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 8, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 9, i32 1
  tail call fastcc void @ff_layout_io_track_ds_error(ptr noundef %8, i32 noundef %10, i64 noundef %12, i64 noundef %15, ptr noundef %16, i32 noundef 5, i32 noundef %4)
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_commit_error, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %6
  %20 = tail call ptr @llvm.thread.pointer() #18
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !35
  %31 = tail call i32 @__traceiter_ff_layout_commit_error(ptr noundef null, ptr noundef %1) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  br label %32

32:                                               ; preds = %30, %19, %6, %2
  %33 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 12
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 13
  %38 = load i32, ptr %37, align 4
  %39 = tail call fastcc i32 @ff_layout_async_handle_error(ptr noundef %0, ptr noundef %34, ptr noundef %36, i32 noundef %38)
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_commit_ds, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = tail call ptr @llvm.thread.pointer() #18
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %54 = tail call i32 @__traceiter_nfs4_pnfs_commit_ds(ptr noundef null, ptr noundef %1, i32 noundef %39) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  br label %55

55:                                               ; preds = %53, %42, %32
  switch i32 %39, label %60 [
    i32 -12002, label %56
    i32 -12001, label %57
    i32 -11, label %58
  ]

56:                                               ; preds = %55
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %1) #18
  br label %71

57:                                               ; preds = %55
  tail call void @pnfs_generic_prepare_to_resend_writes(ptr noundef %1) #18
  br label %71

58:                                               ; preds = %55
  %59 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #18
  br label %71

60:                                               ; preds = %55
  %61 = load ptr, ptr %35, align 4
  %62 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 14
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  tail call void @pnfs_set_layoutcommit(ptr noundef %70, ptr noundef %61, i64 noundef %68) #18
  br label %71

71:                                               ; preds = %66, %60, %58, %57, %56
  %72 = phi i32 [ -11, %58 ], [ -11, %57 ], [ -11, %56 ], [ 0, %60 ], [ 0, %66 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_initiate_commit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_prepare_to_resend_writes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_commit_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ff_layout_io_track_ds_error(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  switch i32 %6, label %47 [
    i32 -110, label %12
    i32 -96, label %12
    i32 -93, label %12
    i32 -95, label %12
    i32 -111, label %12
    i32 -104, label %12
    i32 -112, label %12
    i32 -113, label %12
    i32 -101, label %12
    i32 -98, label %12
    i32 -105, label %12
    i32 -32, label %12
    i32 -1, label %12
    i32 -13, label %11
  ]

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %13 = phi i32 [ 13, %11 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ], [ 6, %10 ]
  store i32 %13, ptr %4, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 4, i32 %1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ null, %14 ]
  %24 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @ff_layout_track_ds_error(ptr noundef %25, ptr noundef %23, i64 noundef %2, i64 noundef %3, i32 noundef %15, i32 noundef %5, i32 noundef 3072) #18
  switch i32 %15, label %43 [
    i32 10008, label %47
    i32 10013, label %47
    i32 6, label %27
  ]

27:                                               ; preds = %22
  %28 = load i32, ptr %16, align 4
  %29 = icmp ugt i32 %28, %1
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = getelementptr %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 4, i32 %1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %32, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  %39 = or i1 %37, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void @nfs4_mark_deviceid_unavailable(ptr noundef nonnull %36) #18
  br label %41

41:                                               ; preds = %40, %34, %30, %27
  %42 = icmp eq i32 %5, 25
  br i1 %42, label %47, label %43

43:                                               ; preds = %41, %22
  %44 = load ptr, ptr %24, align 4
  %45 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %44, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %46, ptr noundef %0) #18
  br label %47

47:                                               ; preds = %43, %41, %22, %22, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ff_layout_async_handle_error(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_subversion, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %2, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %3
  br i1 %16, label %17, label %121

17:                                               ; preds = %13
  %18 = getelementptr %struct.nfs4_ff_layout_segment, ptr %2, i32 0, i32 4, i32 %3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %121, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %19, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %26 = or i1 %24, %25
  br i1 %26, label %121, label %27

27:                                               ; preds = %21
  tail call void @nfs4_mark_deviceid_available(ptr noundef nonnull %23) #18
  br label %121

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %2, i32 0, i32 6
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %121, label %33

33:                                               ; preds = %28
  switch i32 %9, label %118 [
    i32 3, label %34
    i32 4, label %79
  ]

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %2, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, %3
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = getelementptr %struct.nfs4_ff_layout_segment, ptr %2, i32 0, i32 4, i32 %3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %40, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %38, %34
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi ptr [ null, %48 ], [ %44, %42 ]
  switch i32 %11, label %73 [
    i32 -13, label %121
    i32 -116, label %121
    i32 -21, label %121
    i32 -521, label %121
    i32 -40, label %121
    i32 -28, label %121
    i32 -528, label %51
  ]

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %2, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %53, i32 0, i32 15
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 27
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !39
  %61 = getelementptr inbounds %struct.nfs_server, ptr %59, i32 0, i32 6
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr %struct.nfs_iostats, ptr %62, i32 0, i32 1, i32 24
  %64 = ptrtoint ptr %63 to i32
  %65 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %66 = inttoptr i32 %65 to ptr
  %67 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %66) #13, !srcloc !40
  %68 = add i32 %67, %64
  %69 = inttoptr i32 %68 to ptr
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #18, !srcloc !41
  store i32 0, ptr %10, align 4
  %72 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #18
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 500) #18
  br label %121

73:                                               ; preds = %49
  %74 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %50, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %50, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %50, i32 0, i32 6
  tail call void @nfs4_delete_deviceid(ptr noundef %75, ptr noundef %77, ptr noundef %78) #18
  br label %121

79:                                               ; preds = %33
  %80 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %2, i32 0, i32 7
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %81, i32 0, i32 15
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %2, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = icmp ugt i32 %85, %3
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = getelementptr %struct.nfs4_ff_layout_segment, ptr %2, i32 0, i32 4, i32 %3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %89, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  %95 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %87, %79
  br label %98

98:                                               ; preds = %97, %91
  %99 = phi ptr [ null, %97 ], [ %93, %91 ]
  %100 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 36
  %101 = load ptr, ptr %100, align 4
  switch i32 %11, label %114 [
    i32 -10052, label %102
    i32 -10053, label %102
    i32 -10077, label %102
    i32 -10078, label %102
    i32 -10055, label %102
    i32 -10076, label %102
    i32 -10063, label %102
    i32 -10008, label %103
    i32 -10013, label %103
    i32 -10068, label %117
    i32 -10080, label %104
    i32 -116, label %104
    i32 -521, label %104
    i32 -21, label %104
    i32 -10014, label %104
    i32 -10083, label %104
    i32 -111, label %107
    i32 -112, label %107
    i32 -113, label %107
    i32 -101, label %107
    i32 -5, label %107
    i32 -110, label %107
    i32 -32, label %107
  ]

102:                                              ; preds = %98, %98, %98, %98, %98, %98, %98
  tail call void @nfs4_schedule_session_recovery(ptr noundef %101, i32 noundef %11) #18
  br label %117

103:                                              ; preds = %98, %98
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 1500) #18
  br label %117

104:                                              ; preds = %98, %98, %98, %98, %98, %98
  %105 = getelementptr i8, ptr %83, i32 -296
  tail call void @pnfs_destroy_layout(ptr noundef %105) #18
  %106 = getelementptr inbounds %struct.nfs4_session, ptr %101, i32 0, i32 6, i32 4
  tail call void @rpc_wake_up(ptr noundef %106) #18
  br label %116

107:                                              ; preds = %98, %98, %98, %98, %98, %98, %98
  %108 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %99, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %99, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %99, i32 0, i32 6
  tail call void @nfs4_delete_deviceid(ptr noundef %109, ptr noundef %111, ptr noundef %112) #18
  %113 = getelementptr inbounds %struct.nfs4_session, ptr %101, i32 0, i32 6, i32 4
  tail call void @rpc_wake_up(ptr noundef %113) #18
  br label %114

114:                                              ; preds = %107, %98
  %115 = tail call zeroext i1 @ff_layout_avoid_mds_available_ds(ptr noundef %2) #18
  br i1 %115, label %121, label %116

116:                                              ; preds = %114, %104
  br label %121

117:                                              ; preds = %103, %102, %98
  store i32 0, ptr %10, align 4
  br label %121

118:                                              ; preds = %33
  %119 = load i1, ptr @ff_layout_async_handle_error.__already_done, align 1
  br i1 %119, label %121, label %120, !prof !9

120:                                              ; preds = %118
  store i1 true, ptr @ff_layout_async_handle_error.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1220, i32 noundef 9, ptr noundef null) #18
  br label %121

121:                                              ; preds = %120, %118, %117, %116, %114, %73, %51, %49, %49, %49, %49, %49, %49, %28, %27, %21, %17, %13
  %122 = phi i32 [ -12002, %28 ], [ 0, %120 ], [ 0, %118 ], [ 0, %13 ], [ 0, %17 ], [ 0, %21 ], [ 0, %27 ], [ -11, %51 ], [ -12002, %49 ], [ -12002, %49 ], [ -12002, %49 ], [ -12002, %49 ], [ -12002, %49 ], [ -12002, %49 ], [ -12002, %73 ], [ -12001, %116 ], [ -11, %117 ], [ -12002, %114 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ff_layout_track_ds_error(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_error_mark_layout_for_return(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_unavailable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ff_layout_commit_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_delete_deviceid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_session_recovery(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_layout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ff_layout_avoid_mds_available_ds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_commit_ds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_set_layoutcommit(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_commit_prepare_v3(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 18
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %12
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = getelementptr %struct.nfs4_ff_layout_segment, ptr %10, i32 0, i32 4, i32 %12
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi ptr [ %18, %16 ], [ null, %6 ]
  %21 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %22 = load i64, ptr %21, align 8
  tail call fastcc void @nfs4_ff_layout_stat_io_start_write(ptr noundef %8, ptr noundef %20, i64 noundef 0, i64 noundef %22) #18
  br label %23

23:                                               ; preds = %19, %2
  tail call void @rpc_call_start(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_commit_done(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @pnfs_generic_write_commit_done(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_commit_count_stats(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 18
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %23, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %21, %14 ], [ %12, %10 ]
  %16 = phi i64 [ %20, %14 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.nfs_page, ptr %15, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %16, %19
  %21 = load ptr, ptr %15, align 4
  %22 = icmp eq ptr %21, %11
  br i1 %22, label %23, label %14

23:                                               ; preds = %14, %10, %6
  %24 = phi i64 [ 0, %6 ], [ 0, %10 ], [ %20, %14 ]
  %25 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, %28
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = getelementptr %struct.nfs4_ff_layout_segment, ptr %26, i32 0, i32 4, i32 %28
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = phi ptr [ %34, %32 ], [ null, %23 ]
  tail call fastcc void @nfs4_ff_layout_stat_io_end_write(ptr noundef %0, ptr noundef %36, i64 noundef %24, i64 noundef %24, i32 noundef 2) #18
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %37, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %38) #18
  br label %39

39:                                               ; preds = %35, %2
  %40 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 27
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nfs_server, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.rpc_clnt, ptr %47, i32 0, i32 13
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.rpc_iostats, ptr %49, i32 3
  tail call void @rpc_count_iostats_metrics(ptr noundef %0, ptr noundef %50) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_commit_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 18
  %3 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %22, label %13

13:                                               ; preds = %13, %9
  %14 = phi ptr [ %20, %13 ], [ %11, %9 ]
  %15 = phi i64 [ %19, %13 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.nfs_page, ptr %14, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = add i64 %15, %18
  %20 = load ptr, ptr %14, align 4
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %22, label %13

22:                                               ; preds = %13, %9, %5
  %23 = phi i64 [ 0, %5 ], [ 0, %9 ], [ %19, %13 ]
  %24 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs_commit_data, ptr %0, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %25, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, %27
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = getelementptr %struct.nfs4_ff_layout_segment, ptr %25, i32 0, i32 4, i32 %27
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = phi ptr [ %33, %31 ], [ null, %22 ]
  tail call fastcc void @nfs4_ff_layout_stat_io_end_write(ptr noundef %0, ptr noundef %35, i64 noundef %23, i64 noundef %23, i32 noundef 2) #18
  %36 = load ptr, ptr %24, align 4
  %37 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %36, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %37) #18
  br label %38

38:                                               ; preds = %34, %1
  tail call void @pnfs_generic_commit_release(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_call_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs4_ff_layout_stat_io_start_write(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 1, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #18, !srcloc !13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #18, !srcloc !43
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !44
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 1
  store i64 %3, ptr %13, align 8
  br label %14

14:                                               ; preds = %12, %4
  %15 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 16
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64 %3, ptr %15, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 17
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = zext i32 %21 to i64
  %25 = mul nuw nsw i64 %24, 1000
  br label %32

26:                                               ; preds = %19
  %27 = load i32, ptr @layoutstats_timer, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = zext i32 %27 to i64
  %31 = mul nuw nsw i64 %30, 1000
  br label %32

32:                                               ; preds = %29, %26, %23
  %33 = phi i64 [ %25, %23 ], [ %31, %29 ], [ 60000, %26 ]
  %34 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %7, i32 0, i32 4
  %35 = load i64, ptr %34, align 8
  %36 = sub i64 %3, %35
  %37 = tail call i64 @llvm.abs.i64(i64 %36, i1 false) #18
  %38 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %37) #22, !srcloc !45
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %37, i64 %38, i32 0) #22, !srcloc !46
  %40 = extractvalue { i64, i32 } %39, 0
  %41 = icmp slt i64 %36, 0
  %42 = lshr i64 %40, 18
  %43 = sub nsw i64 0, %42
  %44 = select i1 %41, i64 %43, i64 %42
  %45 = icmp slt i64 %44, %33
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  store i64 %3, ptr %34, align 8
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i64, ptr %6, align 8
  %49 = add i64 %48, 1
  store i64 %49, ptr %6, align 8
  %50 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, %2
  store i64 %52, ptr %50, align 8
  %53 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %53) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %54 = load i16, ptr %5, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  br i1 %45, label %58, label %56

56:                                               ; preds = %47
  %57 = tail call i32 @pnfs_report_layoutstat(ptr noundef %0, i32 noundef 3072) #18
  br label %58

58:                                               ; preds = %56, %47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_report_layoutstat(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_write_commit_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_count_iostats_metrics(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs4_ff_layout_stat_io_end_write(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq i32 %4, 0
  %7 = select i1 %6, i64 0, i64 %3
  %8 = select i1 %6, i64 0, i64 %2
  %9 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %9) #18
  %10 = tail call i64 @ktime_get() #18
  %11 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %14, 1
  store i64 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, %7
  store i64 %18, ptr %16, align 8
  %19 = sub i64 %8, %7
  %20 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %19, %21
  store i64 %22, ptr %20, align 8
  %23 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 1, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #18, !srcloc !13
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #18, !srcloc !29
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i1, ptr @nfs4_ff_end_busy_timer.__already_done, align 1
  br i1 %28, label %30, label %29, !prof !9

29:                                               ; preds = %27
  store i1 true, ptr @nfs4_ff_end_busy_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 588, i32 noundef 9, ptr noundef null) #18
  br label %30

30:                                               ; preds = %29, %27, %5
  %31 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 1
  %32 = sub i64 %10, %12
  %33 = load i64, ptr %31, align 8
  store i64 %10, ptr %31, align 8
  %34 = sub i64 %10, %33
  %35 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 5
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %34, %36
  store i64 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 6
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %32, %39
  store i64 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %41) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %42 = load i16, ptr %9, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_commit_prepare_v4(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 8
  %6 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 9
  %7 = tail call i32 @nfs4_setup_sequence(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %0) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 18
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %10) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nfs_commit_data, ptr %1, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %17, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %19
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = getelementptr %struct.nfs4_ff_layout_segment, ptr %17, i32 0, i32 4, i32 %19
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %13
  %27 = phi ptr [ %25, %23 ], [ null, %13 ]
  %28 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %29 = load i64, ptr %28, align 8
  tail call fastcc void @nfs4_ff_layout_stat_io_start_write(ptr noundef %15, ptr noundef %27, i64 noundef 0, i64 noundef %29) #18
  br label %30

30:                                               ; preds = %26, %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_setup_sequence(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !11

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %7) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !11

12:                                               ; preds = %9
  %13 = tail call i32 @nfs_map_string_to_numeric(ptr noundef nonnull %10, i32 noundef %7, ptr noundef %1) #18
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 -22, i32 0
  br label %16

16:                                               ; preds = %12, %9, %5, %2
  %17 = phi i32 [ -105, %2 ], [ -22, %5 ], [ -105, %9 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ff_layout_add_mirror(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %83, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 4
  %11 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 6
  %12 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 7
  br label %13

13:                                               ; preds = %78, %9
  %14 = phi ptr [ %7, %9 ], [ %79, %78 ]
  %15 = getelementptr i8, ptr %14, i32 16
  %16 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %10, ptr noundef dereferenceable(16) %15, i32 16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %13
  %19 = load i32, ptr %11, align 8
  %20 = getelementptr i8, ptr %14, i32 36
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %18
  %24 = icmp eq i32 %19, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %14, i32 40
  %27 = load ptr, ptr %12, align 4
  %28 = load ptr, ptr %26, align 4
  br label %29

29:                                               ; preds = %47, %25
  %30 = phi i32 [ 0, %25 ], [ %48, %47 ]
  %31 = getelementptr %struct.nfs_fh, ptr %27, i32 %30
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr %struct.nfs_fh, ptr %27, i32 %30, i32 1
  br label %35

35:                                               ; preds = %44, %29
  %36 = phi i32 [ 0, %29 ], [ %45, %44 ]
  %37 = getelementptr %struct.nfs_fh, ptr %28, i32 %36
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %32, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr %struct.nfs_fh, ptr %28, i32 %36, i32 1
  %42 = tail call i32 @bcmp(ptr %34, ptr %41, i32 %33) #18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40, %35
  %45 = add nuw i32 %36, 1
  %46 = icmp eq i32 %45, %19
  br i1 %46, label %78, label %35

47:                                               ; preds = %40
  %48 = add nuw i32 %30, 1
  %49 = icmp eq i32 %48, %19
  br i1 %49, label %50, label %29

50:                                               ; preds = %47, %23
  %51 = getelementptr i8, ptr %14, i32 72
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %64, %50
  %55 = phi i32 [ %62, %64 ], [ %52, %50 ]
  %56 = add i32 %55, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #18, !srcloc !13
  br label %57

57:                                               ; preds = %57, %54
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 %55, i32 %56, ptr elementtype(i32) %51) #18, !srcloc !47
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %57

61:                                               ; preds = %57
  %62 = extractvalue { i32, i32 } %58, 1
  %63 = icmp eq i32 %62, %55
  br i1 %63, label %66, label %64, !prof !9

64:                                               ; preds = %61
  %65 = icmp eq i32 %62, 0
  br i1 %65, label %66, label %54

66:                                               ; preds = %64, %61, %50
  %67 = phi i32 [ 0, %50 ], [ 0, %64 ], [ %55, %61 ]
  %68 = add i32 %67, 1
  %69 = or i32 %68, %67
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %72, label %71, !prof !9

71:                                               ; preds = %66
  tail call void @refcount_warn_saturate(ptr noundef %51, i32 noundef 0) #18
  br label %72

72:                                               ; preds = %71, %66
  %73 = icmp eq i32 %67, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %72
  %75 = getelementptr i8, ptr %14, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %76 = load i16, ptr %5, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  br label %90

78:                                               ; preds = %72, %44, %18, %13
  %79 = load ptr, ptr %14, align 4
  %80 = icmp eq ptr %79, %6
  br i1 %80, label %81, label %13

81:                                               ; preds = %78
  %82 = load ptr, ptr %6, align 4
  br label %83

83:                                               ; preds = %81, %2
  %84 = phi ptr [ %82, %81 ], [ %6, %2 ]
  %85 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 1
  %86 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %85, ptr %86, align 4
  store ptr %84, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 1, i32 1
  store ptr %6, ptr %87, align 4
  store volatile ptr %85, ptr %6, align 4
  store ptr %0, ptr %1, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %88 = load i16, ptr %5, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  br label %90

90:                                               ; preds = %83, %74
  %91 = phi ptr [ %75, %74 ], [ %1, %83 ]
  ret ptr %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ff_layout_free_mirror(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %2, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %7) #18
  %8 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %13 = load i16, ptr %7, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  store ptr null, ptr %0, align 8
  br label %15

15:                                               ; preds = %4, %1
  %16 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #18
  %18 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 9
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %19) #18, !srcloc !13
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #18, !srcloc !29
  %23 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @__put_cred(ptr noundef nonnull %19) #18
  br label %26

26:                                               ; preds = %25, %21, %15
  %27 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 10
  %28 = load volatile ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #18, !srcloc !13
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #18, !srcloc !29
  %32 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @__put_cred(ptr noundef nonnull %28) #18
  br label %35

35:                                               ; preds = %34, %30, %26
  %36 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  tail call void @nfs4_ff_layout_put_deviceid(ptr noundef %37) #18
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_map_string_to_numeric(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_ff_layout_put_deviceid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_ds_cinfo_release_lseg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_layout_insert_lseg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ff_lseg_range_is_after(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i32, ptr %0, align 8
  %4 = load i32, ptr %1, align 8
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = icmp ne i32 %3, 1
  br label %32

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pnfs_layout_range, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pnfs_layout_range, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = xor i64 %10, -1
  %14 = icmp ult i64 %12, %13
  %15 = add i64 %10, -1
  %16 = add i64 %15, %12
  %17 = select i1 %14, i64 %16, i64 -1
  %18 = getelementptr inbounds %struct.pnfs_layout_range, ptr %1, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.pnfs_layout_range, ptr %1, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = xor i64 %19, -1
  %25 = icmp ult i64 %23, %24
  %26 = add i64 %19, -1
  %27 = add i64 %26, %23
  %28 = select i1 %25, i64 %27, i64 -1
  %29 = icmp ult i64 %28, %10
  %30 = icmp ule i64 %19, %10
  %31 = select i1 %29, i1 true, i1 %30
  br label %32

32:                                               ; preds = %21, %8, %6
  %33 = phi i1 [ %7, %6 ], [ false, %8 ], [ %31, %21 ]
  ret i1 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ff_lseg_merge(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 3, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %1, i32 0, i32 3, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = xor i64 %15, -1
  %19 = icmp ult i64 %17, %18
  %20 = add i64 %15, -1
  %21 = add i64 %20, %17
  %22 = select i1 %19, i64 %21, i64 -1
  %23 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %52, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = xor i64 %24, -1
  %30 = icmp ult i64 %28, %29
  %31 = add i64 %24, -1
  %32 = add i64 %31, %28
  %33 = select i1 %30, i64 %32, i64 -1
  %34 = icmp ult i64 %33, %15
  br i1 %34, label %52, label %35

35:                                               ; preds = %26
  %36 = tail call i64 @llvm.umax.i64(i64 %33, i64 %22)
  %37 = icmp ult i64 %24, %15
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i64 %15, ptr %23, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i64 [ %15, %38 ], [ %24, %35 ]
  %41 = icmp ne i64 %36, -1
  %42 = icmp ugt i64 %36, %40
  %43 = and i1 %41, %42
  %44 = add i64 %36, 1
  %45 = sub i64 %44, %40
  %46 = select i1 %43, i64 %45, i64 -1
  store i64 %46, ptr %27, align 8
  %47 = load volatile i32, ptr %3, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %51) #18
  br label %52

52:                                               ; preds = %50, %39, %26, %13, %7, %2
  %53 = phi i1 [ false, %2 ], [ false, %7 ], [ false, %13 ], [ false, %26 ], [ true, %50 ], [ true, %39 ]
  ret i1 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_pg_init_read(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 6
  %8 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  br label %9

9:                                                ; preds = %127, %2
  tail call void @pnfs_generic_pg_check_layout(ptr noundef %0) #18
  tail call void @pnfs_generic_pg_check_range(ptr noundef %0, ptr noundef %1) #18
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  tail call void @pnfs_put_lseg(ptr noundef null) #18
  %13 = load ptr, ptr %0, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.nfs_lock_context, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %5, align 4
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 12
  %20 = load i32, ptr %6, align 4
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %19, %21
  %23 = load i32, ptr %7, align 4
  %24 = zext i32 %23 to i64
  %25 = tail call ptr @pnfs_update_layout(ptr noundef %13, ptr noundef %16, i64 noundef %22, i64 noundef %24, i32 noundef 1, i1 noundef zeroext false, i32 noundef 3264) #18
  store ptr %25, ptr %3, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = ptrtoint ptr %25 to i32
  %29 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  store ptr null, ptr %3, align 4
  br label %163

30:                                               ; preds = %12
  %31 = icmp eq ptr %25, null
  br i1 %31, label %160, label %32

32:                                               ; preds = %30, %9
  %33 = phi ptr [ %25, %30 ], [ %10, %9 ]
  %34 = tail call zeroext i1 @ff_layout_avoid_read_on_rw(ptr noundef nonnull %33) #18
  %35 = load ptr, ptr %3, align 4
  br i1 %34, label %36, label %56

36:                                               ; preds = %32
  tail call void @pnfs_put_lseg(ptr noundef %35) #18
  %37 = load ptr, ptr %0, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds %struct.nfs_lock_context, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %5, align 4
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 12
  %44 = load i32, ptr %6, align 4
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %43, %45
  %47 = load i32, ptr %7, align 4
  %48 = zext i32 %47 to i64
  %49 = tail call ptr @pnfs_update_layout(ptr noundef %37, ptr noundef %40, i64 noundef %46, i64 noundef %48, i32 noundef 1, i1 noundef zeroext true, i32 noundef 3264) #18
  store ptr %49, ptr %3, align 4
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = ptrtoint ptr %49 to i32
  %53 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 %52, ptr %53, align 4
  store ptr null, ptr %3, align 4
  br label %163

54:                                               ; preds = %36
  %55 = icmp eq ptr %49, null
  br i1 %55, label %160, label %56

56:                                               ; preds = %54, %32
  %57 = phi ptr [ %49, %54 ], [ %35, %32 ]
  %58 = load i32, ptr %8, align 4
  %59 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %57, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, %58
  br i1 %61, label %62, label %76

62:                                               ; preds = %72, %56
  %63 = phi i32 [ %73, %72 ], [ %58, %56 ]
  %64 = getelementptr %struct.nfs4_ff_layout_segment, ptr %57, i32 0, i32 4, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %57, ptr noundef %65, i1 noundef zeroext false) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %65, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %70) #18
  br i1 %71, label %72, label %128

72:                                               ; preds = %68, %62
  %73 = add nuw i32 %63, 1
  %74 = load i32, ptr %59, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %62, label %76

76:                                               ; preds = %72, %56
  %77 = phi i32 [ %60, %56 ], [ %74, %72 ]
  %78 = icmp ugt i32 %77, %58
  br i1 %78, label %79, label %89

79:                                               ; preds = %85, %76
  %80 = phi i32 [ %86, %85 ], [ %58, %76 ]
  %81 = getelementptr %struct.nfs4_ff_layout_segment, ptr %57, i32 0, i32 4, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %57, ptr noundef %82, i1 noundef zeroext false) #18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %128

85:                                               ; preds = %79
  %86 = add nuw i32 %80, 1
  %87 = load i32, ptr %59, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %79, label %89

89:                                               ; preds = %85, %76
  %90 = phi i32 [ %77, %76 ], [ %87, %85 ]
  %91 = load i32, ptr %8, align 4
  %92 = icmp eq i32 %91, 0
  %93 = icmp eq i32 %90, 0
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %121, label %95

95:                                               ; preds = %105, %89
  %96 = phi i32 [ %106, %105 ], [ 0, %89 ]
  %97 = getelementptr %struct.nfs4_ff_layout_segment, ptr %57, i32 0, i32 4, i32 %96
  %98 = load ptr, ptr %97, align 4
  %99 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %57, ptr noundef %98, i1 noundef zeroext false) #18
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %98, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %103) #18
  br i1 %104, label %105, label %128

105:                                              ; preds = %101, %95
  %106 = add nuw i32 %96, 1
  %107 = load i32, ptr %59, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %95, label %109

109:                                              ; preds = %105
  %110 = icmp eq i32 %107, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %117, %109
  %112 = phi i32 [ %118, %117 ], [ 0, %109 ]
  %113 = getelementptr %struct.nfs4_ff_layout_segment, ptr %57, i32 0, i32 4, i32 %112
  %114 = load ptr, ptr %113, align 4
  %115 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %57, ptr noundef %114, i1 noundef zeroext false) #18
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = add nuw i32 %112, 1
  %119 = load i32, ptr %59, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %111, label %121

121:                                              ; preds = %117, %109, %89
  %122 = load ptr, ptr %3, align 4
  %123 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %122, i32 0, i32 2
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %166, label %127

127:                                              ; preds = %121
  tail call void @pnfs_generic_pg_cleanup(ptr noundef %0) #18
  tail call void @msleep(i32 noundef 1000) #18
  br label %9

128:                                              ; preds = %111, %101, %79, %68
  %129 = phi i32 [ %112, %111 ], [ %96, %101 ], [ %80, %79 ], [ %63, %68 ]
  %130 = load ptr, ptr %3, align 4
  %131 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %130, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = icmp ugt i32 %132, %129
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = getelementptr %struct.nfs4_ff_layout_segment, ptr %130, i32 0, i32 4, i32 %129
  %136 = load ptr, ptr %135, align 4
  br label %137

137:                                              ; preds = %134, %128
  %138 = phi ptr [ %136, %134 ], [ null, %128 ]
  %139 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %138, i32 0, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %144, i32 0, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds %struct.nfs_pgio_mirror, ptr %140, i32 0, i32 3
  store i32 %146, ptr %147, align 4
  store i32 %129, ptr %8, align 4
  %148 = load ptr, ptr %0, align 4
  %149 = getelementptr inbounds %struct.inode, ptr %148, i32 0, i32 8
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.super_block, ptr %150, i32 0, i32 27
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.nfs_server, ptr %152, i32 0, i32 8
  %154 = load i32, ptr %153, align 8
  %155 = and i32 %154, 4194305
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %188, label %157

157:                                              ; preds = %137
  %158 = load i16, ptr @io_maxretrans, align 2
  %159 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 16
  store i16 %158, ptr %159, align 4
  br label %188

160:                                              ; preds = %54, %30
  %161 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  %162 = load i32, ptr %161, align 4
  br label %163

163:                                              ; preds = %160, %51, %27
  %164 = phi i32 [ %162, %160 ], [ %52, %51 ], [ %28, %27 ]
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %188, label %166

166:                                              ; preds = %163, %121
  %167 = phi ptr [ null, %163 ], [ %122, %121 ]
  %168 = load ptr, ptr %0, align 4
  %169 = getelementptr i8, ptr %168, i32 -24
  %170 = load ptr, ptr %169, align 8
  %171 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_init_read, i32 0, i32 1), align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = tail call ptr @llvm.thread.pointer() #18
  %175 = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %176 = load i32, ptr %175, align 8
  %177 = lshr i32 %176, 5
  %178 = getelementptr i32, ptr @__cpu_online_mask, i32 %177
  %179 = load volatile i32, ptr %178, align 4
  %180 = and i32 %176, 31
  %181 = shl nuw i32 1, %180
  %182 = and i32 %181, %179
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %173
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !48
  %185 = tail call i32 @__traceiter_pnfs_mds_fallback_pg_init_read(ptr noundef null, ptr noundef %168, i64 noundef 0, i64 noundef -1, i32 noundef 1, ptr noundef %170, ptr noundef %167) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !49
  br label %186

186:                                              ; preds = %184, %173, %166
  %187 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 16
  store i16 0, ptr %187, align 4
  tail call void @nfs_pageio_reset_read_mds(ptr noundef %0) #18
  br label %188

188:                                              ; preds = %186, %163, %157, %137
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_test(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_readpages(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_cleanup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ff_layout_avoid_read_on_rw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_read_mds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_check_layout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_pg_check_range(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_put_lseg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pnfs_update_layout(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_pg_init_read(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_pg_init_write(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 6
  %8 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 11
  %9 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  br label %10

10:                                               ; preds = %59, %2
  tail call void @pnfs_generic_pg_check_layout(ptr noundef %0) #18
  tail call void @pnfs_generic_pg_check_range(ptr noundef %0, ptr noundef %1) #18
  %11 = load ptr, ptr %3, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.nfs_lock_context, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %5, align 4
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 12
  %21 = load i32, ptr %6, align 4
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %20, %22
  %24 = load i32, ptr %7, align 4
  %25 = zext i32 %24 to i64
  %26 = tail call ptr @pnfs_update_layout(ptr noundef %14, ptr noundef %17, i64 noundef %23, i64 noundef %25, i32 noundef 2, i1 noundef zeroext false, i32 noundef 3136) #18
  store ptr %26, ptr %3, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = ptrtoint ptr %26 to i32
  %30 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 %29, ptr %30, align 4
  store ptr null, ptr %3, align 4
  br label %114

31:                                               ; preds = %13
  %32 = icmp eq ptr %26, null
  br i1 %32, label %91, label %33

33:                                               ; preds = %31, %10
  %34 = phi ptr [ %26, %31 ], [ %11, %10 ]
  %35 = load i32, ptr %8, align 4
  %36 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %34, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %33
  %40 = icmp eq i32 %35, 0
  br i1 %40, label %76, label %41

41:                                               ; preds = %72, %39
  %42 = phi i32 [ %75, %72 ], [ %35, %39 ]
  %43 = phi ptr [ %73, %72 ], [ %34, %39 ]
  %44 = phi i32 [ %69, %72 ], [ 0, %39 ]
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr %struct.nfs4_ff_layout_segment, ptr %43, i32 0, i32 4, i32 %44
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi ptr [ %48, %46 ], [ null, %41 ]
  %51 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %43, ptr noundef %50, i1 noundef zeroext true) #18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %91, label %59

59:                                               ; preds = %53
  tail call void @pnfs_generic_pg_cleanup(ptr noundef %0) #18
  tail call void @msleep(i32 noundef 1000) #18
  br label %10

60:                                               ; preds = %49
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %50, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %65, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.nfs_pgio_mirror, ptr %61, i32 %44, i32 3
  store i32 %67, ptr %68, align 4
  %69 = add nuw i32 %44, 1
  %70 = load i32, ptr %8, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %73, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  br label %41

76:                                               ; preds = %60, %39
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 27
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nfs_server, ptr %81, i32 0, i32 8
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 4194305
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %114, label %86

86:                                               ; preds = %76
  %87 = load i16, ptr @io_maxretrans, align 2
  %88 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 16
  store i16 %87, ptr %88, align 4
  br label %114

89:                                               ; preds = %33
  tail call void @pnfs_generic_pg_cleanup(ptr noundef %0) #18
  %90 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 -11, ptr %90, align 4
  br label %114

91:                                               ; preds = %53, %31
  %92 = phi ptr [ %54, %53 ], [ null, %31 ]
  %93 = load ptr, ptr %0, align 4
  %94 = getelementptr i8, ptr %93, i32 -24
  %95 = load ptr, ptr %94, align 8
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_init_write, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = tail call ptr @llvm.thread.pointer() #18
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = lshr i32 %101, 5
  %103 = getelementptr i32, ptr @__cpu_online_mask, i32 %102
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %101, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %98
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !50
  %110 = tail call i32 @__traceiter_pnfs_mds_fallback_pg_init_write(ptr noundef null, ptr noundef %93, i64 noundef 0, i64 noundef -1, i32 noundef 2, ptr noundef %95, ptr noundef %92) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !51
  br label %111

111:                                              ; preds = %109, %98, %91
  %112 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 16
  store i16 0, ptr %112, align 4
  tail call void @nfs_pageio_reset_write_mds(ptr noundef %0) #18
  %113 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 -11, ptr %113, align 4
  br label %114

114:                                              ; preds = %111, %89, %86, %76, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_generic_pg_writepages(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_pg_get_mirror_count_write(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_lock_context, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 12
  %16 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %15, %18
  %20 = getelementptr inbounds %struct.nfs_page, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = tail call ptr @pnfs_update_layout(ptr noundef %7, ptr noundef %11, i64 noundef %19, i64 noundef %22, i32 noundef 2, i1 noundef zeroext false, i32 noundef 3136) #18
  store ptr %23, ptr %3, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = ptrtoint ptr %23 to i32
  %27 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  store ptr null, ptr %3, align 4
  br label %54

28:                                               ; preds = %6
  %29 = icmp eq ptr %23, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %28, %2
  %31 = phi ptr [ %23, %28 ], [ %4, %2 ]
  %32 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  br label %54

34:                                               ; preds = %28
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr i8, ptr %35, i32 -24
  %37 = load ptr, ptr %36, align 8
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_pg_get_mirror_count, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = tail call ptr @llvm.thread.pointer() #18
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !52
  %52 = tail call i32 @__traceiter_pnfs_mds_fallback_pg_get_mirror_count(ptr noundef null, ptr noundef %35, i64 noundef 0, i64 noundef -1, i32 noundef 2, ptr noundef %37, ptr noundef null) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !53
  br label %53

53:                                               ; preds = %51, %40, %34
  tail call void @nfs_pageio_reset_write_mds(ptr noundef %0) #18
  br label %54

54:                                               ; preds = %53, %30, %25
  %55 = phi i32 [ %33, %30 ], [ 1, %53 ], [ 1, %25 ]
  ret i32 %55
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @ff_layout_pg_get_mirror_write(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.nfs_pgio_mirror, ptr %4, i32 %1
  ret ptr %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ff_layout_pg_set_mirror_write(ptr nocapture noundef %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.nfs_pageio_descriptor, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  store i32 %1, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_pageio_reset_write_mds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_pg_init_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_pg_get_mirror_count(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_read_done_cb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 3
  tail call fastcc void @ff_layout_io_track_ds_error(ptr noundef %8, i32 noundef %10, i64 noundef %12, i64 noundef %15, ptr noundef %16, i32 noundef 25, i32 noundef %4)
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_read_error, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %6
  %20 = tail call ptr @llvm.thread.pointer() #18
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !54
  %31 = tail call i32 @__traceiter_ff_layout_read_error(ptr noundef null, ptr noundef %1) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !55
  br label %32

32:                                               ; preds = %30, %19, %6, %2
  %33 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 26
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  %38 = load i32, ptr %37, align 8
  %39 = tail call fastcc i32 @ff_layout_async_handle_error(ptr noundef %0, ptr noundef %34, ptr noundef %36, i32 noundef %38)
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_read, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = tail call ptr @llvm.thread.pointer() #18
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !56
  %54 = tail call i32 @__traceiter_nfs4_pnfs_read(ptr noundef null, ptr noundef %1, i32 noundef %39) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !57
  br label %55

55:                                               ; preds = %53, %42, %32
  %56 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %56) #18
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %56) #18
  switch i32 %39, label %63 [
    i32 -12002, label %57
    i32 -12001, label %59
    i32 -11, label %61
  ]

57:                                               ; preds = %55
  tail call void @_set_bit(i32 noundef 4, ptr noundef %56) #18
  %58 = load i32, ptr %3, align 4
  br label %63

59:                                               ; preds = %55
  tail call void @_set_bit(i32 noundef 5, ptr noundef %56) #18
  %60 = load i32, ptr %3, align 4
  br label %63

61:                                               ; preds = %55
  %62 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #18
  br label %63

63:                                               ; preds = %61, %59, %57, %55
  %64 = phi i32 [ -11, %61 ], [ %60, %59 ], [ %58, %57 ], [ 0, %55 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_ff_layout_select_ds_fh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_ff_layout_select_ds_stateid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_initiate_pgio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ff_layout_read_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_read_prepare_v3(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @ff_layout_read_prepare_common(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @rpc_call_start(ptr noundef %0) #18
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_read_call_done(ptr noundef %0, ptr noundef %1) #0 {
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
  %13 = tail call i32 @nfs4_sequence_done(ptr noundef %0, ptr noundef %12) #18
  br label %19

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rpc_call_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, ptr noundef %1) #18
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_read_count_stats(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @ff_layout_read_record_layoutstats_done(ptr noundef %0, ptr noundef %1)
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.rpc_iostats, ptr %11, i32 1
  tail call void @rpc_count_iostats_metrics(ptr noundef %0, ptr noundef %12) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_read_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 18
  tail call fastcc void @ff_layout_read_record_layoutstats_done(ptr noundef %2, ptr noundef %0)
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 17
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 28
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %10
  br i1 %15, label %16, label %30

16:                                               ; preds = %22, %7
  %17 = phi i32 [ %23, %22 ], [ %10, %7 ]
  %18 = getelementptr %struct.nfs4_ff_layout_segment, ptr %12, i32 0, i32 4, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @nfs4_ff_layout_prepare_ds(ptr noundef %12, ptr noundef %19, i1 noundef zeroext false) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = add nuw i32 %17, 1
  %24 = load i32, ptr %13, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %16, label %28

26:                                               ; preds = %16
  %27 = load ptr, ptr %11, align 4
  tail call void @ff_layout_send_layouterror(ptr noundef %27) #18
  br label %33

28:                                               ; preds = %22
  %29 = load ptr, ptr %11, align 4
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi ptr [ %29, %28 ], [ %12, %7 ]
  %32 = load ptr, ptr %0, align 8
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %32, ptr noundef %31) #18
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ 0, %30 ], [ %17, %26 ]
  tail call void @pnfs_read_resend_pnfs(ptr noundef %0, i32 noundef %34) #18
  br label %75

35:                                               ; preds = %1
  %36 = load volatile i32, ptr %3, align 4
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %75, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 8
  %41 = tail call i32 @pnfs_layoutcommit_inode(ptr noundef %40, i1 noundef zeroext false) #18
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %42, ptr noundef %44) #18
  %45 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %3) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %39
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 5
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = zext i32 %52 to i64
  %54 = getelementptr i8, ptr %48, i32 -24
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %43, align 4
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_read_done, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  %60 = tail call ptr @llvm.thread.pointer() #18
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !58
  %71 = tail call i32 @__traceiter_pnfs_mds_fallback_read_done(ptr noundef null, ptr noundef %48, i64 noundef %50, i64 noundef %53, i32 noundef 1, ptr noundef %55, ptr noundef %56) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !59
  br label %72

72:                                               ; preds = %70, %59, %47
  %73 = tail call i32 @pnfs_read_done_resend_to_mds(ptr noundef %0) #18
  %74 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 18, i32 1
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %72, %39, %35, %33
  tail call void @pnfs_generic_rw_release(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ff_layout_read_prepare_common(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_open_context, ptr %4, i32 0, i32 7
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %2
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -5) #18
  br label %86

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %12 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %11) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %86

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %17, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %19
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = getelementptr %struct.nfs4_ff_layout_segment, ptr %17, i32 0, i32 4, i32 %19
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi ptr [ %25, %23 ], [ null, %14 ]
  %28 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %27, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  %34 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %27, i32 0, i32 14
  %35 = load ptr, ptr %27, align 8
  %36 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %27, i32 0, i32 14, i32 1, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #18, !srcloc !13
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #18, !srcloc !43
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !44
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %27, i32 0, i32 14, i32 1
  store i64 %32, ptr %41, align 8
  br label %42

42:                                               ; preds = %40, %26
  %43 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %27, i32 0, i32 16
  %44 = load i64, ptr %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i64 %32, ptr %43, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %27, i32 0, i32 17
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = zext i32 %49 to i64
  %53 = mul nuw nsw i64 %52, 1000
  br label %60

54:                                               ; preds = %47
  %55 = load i32, ptr @layoutstats_timer, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = zext i32 %55 to i64
  %59 = mul nuw nsw i64 %58, 1000
  br label %60

60:                                               ; preds = %57, %54, %51
  %61 = phi i64 [ %53, %51 ], [ %59, %57 ], [ 60000, %54 ]
  %62 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %35, i32 0, i32 4
  %63 = load i64, ptr %62, align 8
  %64 = sub i64 %32, %63
  %65 = tail call i64 @llvm.abs.i64(i64 %64, i1 false) #18
  %66 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %65) #22, !srcloc !45
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %65, i64 %66, i32 0) #22, !srcloc !46
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = icmp slt i64 %64, 0
  %70 = lshr i64 %68, 18
  %71 = sub nsw i64 0, %70
  %72 = select i1 %69, i64 %71, i64 %70
  %73 = icmp slt i64 %72, %61
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  store i64 %32, ptr %62, align 8
  br label %75

75:                                               ; preds = %74, %60
  %76 = load i64, ptr %34, align 8
  %77 = add i64 %76, 1
  store i64 %77, ptr %34, align 8
  %78 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %27, i32 0, i32 14, i32 0, i32 1
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %79, %30
  store i64 %80, ptr %78, align 8
  %81 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %27, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %81) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %82 = load i16, ptr %33, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  br i1 %73, label %86, label %84

84:                                               ; preds = %75
  %85 = tail call i32 @pnfs_report_layoutstat(ptr noundef %15, i32 noundef 3264) #18
  br label %86

86:                                               ; preds = %84, %75, %10, %9
  %87 = phi i32 [ -5, %9 ], [ 0, %10 ], [ 0, %75 ], [ 0, %84 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_sequence_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ff_layout_read_record_layoutstats_done(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %10
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 4, i32 %10
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi ptr [ %16, %14 ], [ null, %6 ]
  %19 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %24) #18
  %25 = tail call i64 @ktime_get() #18
  %26 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 14, i32 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, ptr %28, align 8
  %31 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 14, i32 0, i32 3
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, %23
  store i64 %33, ptr %31, align 8
  %34 = sub i64 %21, %23
  %35 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 14, i32 0, i32 4
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %34, %36
  store i64 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 14, i32 1, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #18, !srcloc !13
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #18, !srcloc !29
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %17
  %43 = load i1, ptr @nfs4_ff_end_busy_timer.__already_done, align 1
  br i1 %43, label %45, label %44, !prof !9

44:                                               ; preds = %42
  store i1 true, ptr @nfs4_ff_end_busy_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 588, i32 noundef 9, ptr noundef null) #18
  br label %45

45:                                               ; preds = %44, %42, %17
  %46 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 14, i32 1
  %47 = sub i64 %25, %27
  %48 = load i64, ptr %46, align 8
  store i64 %25, ptr %46, align 8
  %49 = sub i64 %25, %48
  %50 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 14, i32 0, i32 5
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %49, %51
  store i64 %52, ptr %50, align 8
  %53 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 14, i32 0, i32 6
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %47, %54
  store i64 %55, ptr %53, align 8
  %56 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %56) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %57 = load i16, ptr %24, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %59, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %60) #18
  br label %61

61:                                               ; preds = %45, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_generic_rw_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_read_resend_pnfs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_layoutcommit_inode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_read_done_resend_to_mds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_read_done(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_read_prepare_v4(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 26
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20
  %6 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21
  %7 = tail call i32 @nfs4_setup_sequence(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %0) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @ff_layout_read_prepare_common(ptr noundef %0, ptr noundef %1)
  br label %11

11:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_read_pagelist(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ff_layout_write_done_cb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 3
  tail call fastcc void @ff_layout_io_track_ds_error(ptr noundef %8, i32 noundef %10, i64 noundef %12, i64 noundef %15, ptr noundef %16, i32 noundef 38, i32 noundef %4)
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ff_layout_write_error, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %6
  %20 = tail call ptr @llvm.thread.pointer() #18
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !60
  %31 = tail call i32 @__traceiter_ff_layout_write_error(ptr noundef null, ptr noundef %1) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !61
  br label %32

32:                                               ; preds = %30, %19, %6, %2
  %33 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 26
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  %38 = load i32, ptr %37, align 8
  %39 = tail call fastcc i32 @ff_layout_async_handle_error(ptr noundef %0, ptr noundef %34, ptr noundef %36, i32 noundef %38)
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_pnfs_write, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = tail call ptr @llvm.thread.pointer() #18
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !62
  %54 = tail call i32 @__traceiter_nfs4_pnfs_write(ptr noundef null, ptr noundef %1, i32 noundef %39) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !63
  br label %55

55:                                               ; preds = %53, %42, %32
  %56 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %56) #18
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %56) #18
  switch i32 %39, label %61 [
    i32 -12002, label %57
    i32 -12001, label %59
    i32 -11, label %88
  ]

57:                                               ; preds = %55
  tail call void @_set_bit(i32 noundef 4, ptr noundef %56) #18
  %58 = load i32, ptr %3, align 4
  br label %88

59:                                               ; preds = %55
  tail call void @_set_bit(i32 noundef 5, ptr noundef %56) #18
  %60 = load i32, ptr %3, align 4
  br label %88

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nfs_writeverf, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 24
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %72 = load i64, ptr %71, align 8
  %73 = add i64 %72, %70
  br label %74

74:                                               ; preds = %68, %61
  %75 = phi i64 [ %73, %68 ], [ 0, %61 ]
  %76 = load ptr, ptr %35, align 4
  %77 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load ptr, ptr %1, align 8
  tail call void @pnfs_set_layoutcommit(ptr noundef %82, ptr noundef %76, i64 noundef %75) #18
  br label %83

83:                                               ; preds = %81, %74
  %84 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 19
  store i32 0, ptr %84, align 8
  %85 = load i32, ptr %3, align 4
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  tail call void @nfs_writeback_update_inode(ptr noundef %1) #18
  br label %88

88:                                               ; preds = %87, %83, %59, %57, %55
  %89 = phi i32 [ %60, %59 ], [ %58, %57 ], [ %39, %55 ], [ 0, %87 ], [ 0, %83 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_writeback_update_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ff_layout_write_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_pnfs_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_write_prepare_v3(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_open_context, ptr %4, i32 0, i32 7
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %32, !prof !9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %10) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %16, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %18
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = getelementptr %struct.nfs4_ff_layout_segment, ptr %16, i32 0, i32 4, i32 %18
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %13
  %26 = phi ptr [ %24, %22 ], [ null, %13 ]
  %27 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %31 = load i64, ptr %30, align 8
  tail call fastcc void @nfs4_ff_layout_stat_io_start_write(ptr noundef %14, ptr noundef %26, i64 noundef %29, i64 noundef %31) #18
  br label %33

32:                                               ; preds = %2
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -5) #18
  br label %34

33:                                               ; preds = %25, %9
  tail call void @rpc_call_start(ptr noundef %0) #18
  br label %34

34:                                               ; preds = %33, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_write_call_done(ptr noundef %0, ptr noundef %1) #0 {
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
  %13 = tail call i32 @nfs4_sequence_done(ptr noundef %0, ptr noundef %12) #18
  br label %19

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rpc_call_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, ptr noundef %1) #18
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_write_count_stats(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %10
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 4, i32 %10
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi ptr [ %16, %14 ], [ null, %6 ]
  %19 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs_writeverf, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  tail call fastcc void @nfs4_ff_layout_stat_io_end_write(ptr noundef %0, ptr noundef %18, i64 noundef %21, i64 noundef %23, i32 noundef %27) #18
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %28, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %29) #18
  br label %30

30:                                               ; preds = %17, %2
  %31 = load ptr, ptr %1, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 27
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nfs_server, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rpc_clnt, ptr %37, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr %struct.rpc_iostats, ptr %39, i32 2
  tail call void @rpc_count_iostats_metrics(ptr noundef %0, ptr noundef %40) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_write_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 18
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 17
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 28
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %10
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr %struct.nfs4_ff_layout_segment, ptr %8, i32 0, i32 4, i32 %10
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi ptr [ %16, %14 ], [ null, %6 ]
  %19 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 21, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 21, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs_writeverf, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  tail call fastcc void @nfs4_ff_layout_stat_io_end_write(ptr noundef %2, ptr noundef %18, i64 noundef %21, i64 noundef %23, i32 noundef %27) #18
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %28, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %29) #18
  br label %30

30:                                               ; preds = %17, %1
  %31 = load volatile i32, ptr %3, align 4
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  tail call void @ff_layout_send_layouterror(ptr noundef %36)
  %37 = load ptr, ptr %0, align 8
  %38 = tail call i32 @pnfs_layoutcommit_inode(ptr noundef %37, i1 noundef zeroext false) #18
  %39 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 10
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nfs_pgio_completion_ops, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0) #18
  br label %81

43:                                               ; preds = %30
  %44 = load volatile i32, ptr %3, align 4
  %45 = and i32 %44, 32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %81, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 8
  %49 = tail call i32 @pnfs_layoutcommit_inode(ptr noundef %48, i1 noundef zeroext false) #18
  %50 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %3) #18
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %47
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 5
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 20, i32 6
  %57 = load i32, ptr %56, align 8
  %58 = zext i32 %57 to i64
  %59 = getelementptr i8, ptr %53, i32 -24
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pnfs_mds_fallback_write_done, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %52
  %66 = tail call ptr @llvm.thread.pointer() #18
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !64
  %77 = tail call i32 @__traceiter_pnfs_mds_fallback_write_done(ptr noundef null, ptr noundef %53, i64 noundef %55, i64 noundef %58, i32 noundef 2, ptr noundef %60, ptr noundef %62) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !65
  br label %78

78:                                               ; preds = %76, %65, %52
  %79 = tail call i32 @pnfs_write_done_resend_to_mds(ptr noundef %0) #18
  %80 = getelementptr inbounds %struct.nfs_pgio_header, ptr %0, i32 0, i32 18, i32 1
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %78, %47, %43, %34
  tail call void @pnfs_generic_rw_release(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_write_done_resend_to_mds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_write_done(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_write_prepare_v4(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 26
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20
  %6 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 21
  %7 = tail call i32 @nfs4_setup_sequence(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %0) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_open_context, ptr %11, i32 0, i32 7
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %9
  tail call void @rpc_exit(ptr noundef %0, i32 noundef -5) #18
  br label %40

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 17
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %18) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8
  %23 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 28
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %24, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %26
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = getelementptr %struct.nfs4_ff_layout_segment, ptr %24, i32 0, i32 4, i32 %26
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %21
  %34 = phi ptr [ %32, %30 ], [ null, %21 ]
  %35 = getelementptr inbounds %struct.nfs_pgio_header, ptr %1, i32 0, i32 20, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %39 = load i64, ptr %38, align 8
  tail call fastcc void @nfs4_ff_layout_stat_io_start_write(ptr noundef %22, ptr noundef %34, i64 noundef %37, i64 noundef %39) #18
  br label %40

40:                                               ; preds = %33, %17, %16, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pnfs_mds_fallback_write_pagelist(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_ff_layout_free_deviceid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_ff_alloc_deviceid_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ff_layout_mirror_prepare_stats(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %76, label %6

6:                                                ; preds = %69, %2
  %7 = phi ptr [ %72, %69 ], [ %4, %2 ]
  %8 = phi ptr [ %71, %69 ], [ %1, %2 ]
  %9 = phi i32 [ %70, %69 ], [ 0, %2 ]
  %10 = getelementptr i8, ptr %7, i32 -4
  %11 = getelementptr i8, ptr %7, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %69, label %16

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %7, i32 80
  %18 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %17) #18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %7, i32 72
  %22 = load volatile i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %34, %20
  %25 = phi i32 [ %32, %34 ], [ %22, %20 ]
  %26 = add i32 %25, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #18, !srcloc !13
  br label %27

27:                                               ; preds = %27, %24
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 %25, i32 %26, ptr elementtype(i32) %21) #18, !srcloc !47
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27
  %32 = extractvalue { i32, i32 } %28, 1
  %33 = icmp eq i32 %32, %25
  br i1 %33, label %36, label %34, !prof !9

34:                                               ; preds = %31
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %36, label %24

36:                                               ; preds = %34, %31, %20
  %37 = phi i32 [ 0, %20 ], [ 0, %34 ], [ %25, %31 ]
  %38 = add i32 %37, 1
  %39 = or i32 %38, %37
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef 0) #18
  br label %42

42:                                               ; preds = %41, %36
  %43 = icmp eq i32 %37, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %45, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %46, i32 16, i1 false)
  %47 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %8, i32 0, i32 1
  store i64 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %8, i32 0, i32 2
  store i64 -1, ptr %48, align 8
  %49 = getelementptr i8, ptr %7, i32 76
  tail call void @_raw_spin_lock(ptr noundef %49) #18
  %50 = getelementptr i8, ptr %7, i32 100
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %8, i32 0, i32 3
  store i64 %51, ptr %52, align 8
  %53 = getelementptr i8, ptr %7, i32 108
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %8, i32 0, i32 4
  store i64 %54, ptr %55, align 8
  %56 = getelementptr i8, ptr %7, i32 172
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %8, i32 0, i32 5
  store i64 %57, ptr %58, align 8
  %59 = getelementptr i8, ptr %7, i32 180
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %8, i32 0, i32 6
  store i64 %60, ptr %61, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %62 = load i16, ptr %49, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %64 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %8, i32 0, i32 7
  store i32 4, ptr %64, align 8
  %65 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %8, i32 0, i32 8
  store ptr @layoutstat_ops, ptr %65, align 4
  %66 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, ptr %8, i32 0, i32 8, i32 1
  store ptr %10, ptr %66, align 4
  %67 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %8, i32 1
  %68 = add i32 %9, 1
  br label %69

69:                                               ; preds = %44, %42, %16, %6
  %70 = phi i32 [ %9, %6 ], [ %68, %44 ], [ %9, %42 ], [ %9, %16 ]
  %71 = phi ptr [ %8, %6 ], [ %67, %44 ], [ %8, %42 ], [ %8, %16 ]
  %72 = load ptr, ptr %7, align 4
  %73 = icmp eq ptr %72, %3
  %74 = icmp sgt i32 %70, 3
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %6

76:                                               ; preds = %69, %2
  %77 = phi i32 [ 0, %2 ], [ %70, %69 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_encode_layoutstats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #18
  %5 = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call fastcc void @ff_layout_encode_ff_layoutupdate(ptr noundef %0, ptr noundef %6)
  %7 = load ptr, ptr %0, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = ptrtoint ptr %4 to i32
  %10 = sub i32 -4, %9
  %11 = add i32 %10, %8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  store i32 %12, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_free_layoutstats(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %3, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #18, !srcloc !13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #18, !srcloc !21
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %14, label %12, !prof !9

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #18
  br label %14

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  tail call fastcc void @ff_layout_free_mirror(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %13, %12, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ff_layout_encode_ff_layoutupdate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca [9 x i8], align 1
  %9 = alloca [57 x i8], align 4
  %10 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 -132
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %8, i8 0, i32 9, i1 false) #18, !annotation !10
  call void @llvm.lifetime.start.p0(i64 57, ptr nonnull %9) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(57) %9, i8 0, i32 57, i1 false) #18, !annotation !10
  %19 = load i16, ptr %18, align 2
  switch i16 %19, label %54 [
    i16 2, label %20
    i16 10, label %24
  ]

20:                                               ; preds = %2
  %21 = getelementptr i8, ptr %17, i32 -128
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 57, ptr noundef nonnull @.str.6, ptr noundef %21) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %76, label %57

24:                                               ; preds = %2
  %25 = getelementptr i8, ptr %17, i32 -124
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %17, i32 -120
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %26
  %30 = getelementptr i8, ptr %17, i32 -116
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %29, %31
  %33 = getelementptr i8, ptr %17, i32 -112
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(3) %9, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i32 3, i1 false) #18
  br label %57

38:                                               ; preds = %24
  %39 = xor i32 %34, 16777216
  %40 = or i32 %39, %32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 3226170, ptr %9, align 4
  br label %57

43:                                               ; preds = %38
  %44 = xor i32 %31, -65536
  %45 = or i32 %44, %29
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 57, ptr noundef nonnull @.str.9, ptr noundef %33) #18
  br label %51

49:                                               ; preds = %43
  %50 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 57, ptr noundef nonnull @.str.10, ptr noundef %25) #18
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %76, label %57

54:                                               ; preds = %2
  %55 = load i1, ptr @ff_layout_encode_netaddr.__already_done, align 1
  br i1 %55, label %76, label %56, !prof !9

56:                                               ; preds = %54
  store i1 true, ptr @ff_layout_encode_netaddr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2297, i32 noundef 9, ptr noundef null) #18
  br label %76

57:                                               ; preds = %51, %42, %37, %20
  %58 = getelementptr i8, ptr %17, i32 -130
  %59 = load i16, ptr %58, align 2
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #18
  %61 = zext i16 %60 to i32
  %62 = lshr i32 %61, 8
  %63 = and i32 %61, 255
  %64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %8, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %62, i32 noundef %63) #18
  %65 = call i32 @strlcat(ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef 57) #18
  %66 = getelementptr i8, ptr %17, i32 12
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 @strlen(ptr noundef %67) #18
  %69 = add i32 %68, 4
  %70 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %69) #18
  %71 = load ptr, ptr %66, align 4
  %72 = call ptr @xdr_encode_opaque(ptr noundef %70, ptr noundef %71, i32 noundef %68) #18
  %73 = add i32 %65, 4
  %74 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %73) #18
  %75 = call ptr @xdr_encode_opaque(ptr noundef %74, ptr noundef nonnull %9, i32 noundef %65) #18
  br label %76

76:                                               ; preds = %57, %56, %54, %51, %20
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %8) #18
  %77 = load i16, ptr %15, align 2
  %78 = zext i16 %77 to i32
  %79 = add nuw nsw i32 %78, 4
  %80 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %79) #18
  %81 = getelementptr inbounds %struct.nfs_fh, ptr %15, i32 0, i32 1
  %82 = load i16, ptr %15, align 2
  %83 = zext i16 %82 to i32
  %84 = call ptr @xdr_encode_opaque(ptr noundef %80, ptr noundef %81, i32 noundef %83) #18
  %85 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %85) #18
  %86 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 14
  %87 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 40) #18
  %88 = load i64, ptr %86, align 8
  %89 = call i64 @llvm.bswap.i64(i64 %88) #18
  store i64 %89, ptr %87, align 1
  %90 = getelementptr i32, ptr %87, i32 2
  %91 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 14, i32 0, i32 1
  %92 = load i64, ptr %91, align 8
  %93 = call i64 @llvm.bswap.i64(i64 %92) #18
  store i64 %93, ptr %90, align 1
  %94 = getelementptr i32, ptr %87, i32 4
  %95 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 14, i32 0, i32 2
  %96 = load i64, ptr %95, align 8
  %97 = call i64 @llvm.bswap.i64(i64 %96) #18
  store i64 %97, ptr %94, align 1
  %98 = getelementptr i32, ptr %87, i32 6
  %99 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 14, i32 0, i32 3
  %100 = load i64, ptr %99, align 8
  %101 = call i64 @llvm.bswap.i64(i64 %100) #18
  store i64 %101, ptr %98, align 1
  %102 = getelementptr i32, ptr %87, i32 8
  %103 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 14, i32 0, i32 4
  %104 = load i64, ptr %103, align 8
  %105 = call i64 @llvm.bswap.i64(i64 %104) #18
  store i64 %105, ptr %102, align 1
  %106 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 14, i32 0, i32 5
  %107 = load i64, ptr %106, align 8
  %108 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 12) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %7, i64 noundef %107) #18
  %109 = load i64, ptr %7, align 8
  %110 = getelementptr inbounds i8, ptr %7, i32 8
  %111 = load i32, ptr %110, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  %112 = call i64 @llvm.bswap.i64(i64 %109) #18
  store i64 %112, ptr %108, align 1
  %113 = getelementptr i32, ptr %108, i32 2
  %114 = call i32 @llvm.bswap.i32(i32 %111) #18
  store i32 %114, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 14, i32 0, i32 6
  %116 = load i64, ptr %115, align 8
  %117 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 12) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %6, i64 noundef %116) #18
  %118 = load i64, ptr %6, align 8
  %119 = getelementptr inbounds i8, ptr %6, i32 8
  %120 = load i32, ptr %119, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  %121 = call i64 @llvm.bswap.i64(i64 %118) #18
  store i64 %121, ptr %117, align 1
  %122 = getelementptr i32, ptr %117, i32 2
  %123 = call i32 @llvm.bswap.i32(i32 %120) #18
  store i32 %123, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15
  %125 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 40) #18
  %126 = load i64, ptr %124, align 8
  %127 = call i64 @llvm.bswap.i64(i64 %126) #18
  store i64 %127, ptr %125, align 1
  %128 = getelementptr i32, ptr %125, i32 2
  %129 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 1
  %130 = load i64, ptr %129, align 8
  %131 = call i64 @llvm.bswap.i64(i64 %130) #18
  store i64 %131, ptr %128, align 1
  %132 = getelementptr i32, ptr %125, i32 4
  %133 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 2
  %134 = load i64, ptr %133, align 8
  %135 = call i64 @llvm.bswap.i64(i64 %134) #18
  store i64 %135, ptr %132, align 1
  %136 = getelementptr i32, ptr %125, i32 6
  %137 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 3
  %138 = load i64, ptr %137, align 8
  %139 = call i64 @llvm.bswap.i64(i64 %138) #18
  store i64 %139, ptr %136, align 1
  %140 = getelementptr i32, ptr %125, i32 8
  %141 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 4
  %142 = load i64, ptr %141, align 8
  %143 = call i64 @llvm.bswap.i64(i64 %142) #18
  store i64 %143, ptr %140, align 1
  %144 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 5
  %145 = load i64, ptr %144, align 8
  %146 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 12) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %145) #18
  %147 = load i64, ptr %5, align 8
  %148 = getelementptr inbounds i8, ptr %5, i32 8
  %149 = load i32, ptr %148, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  %150 = call i64 @llvm.bswap.i64(i64 %147) #18
  store i64 %150, ptr %146, align 1
  %151 = getelementptr i32, ptr %146, i32 2
  %152 = call i32 @llvm.bswap.i32(i32 %149) #18
  store i32 %152, ptr %151, align 4
  %153 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 15, i32 0, i32 6
  %154 = load i64, ptr %153, align 8
  %155 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 12) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %154) #18
  %156 = load i64, ptr %4, align 8
  %157 = getelementptr inbounds i8, ptr %4, i32 8
  %158 = load i32, ptr %157, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  %159 = call i64 @llvm.bswap.i64(i64 %156) #18
  store i64 %159, ptr %155, align 1
  %160 = getelementptr i32, ptr %155, i32 2
  %161 = call i32 @llvm.bswap.i32(i32 %158) #18
  store i32 %161, ptr %160, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %162 = load i16, ptr %85, align 4
  %163 = add i16 %162, 1
  store i16 %163, ptr %85, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %164 = call i64 @ktime_get() #18
  %165 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 16
  %166 = load i64, ptr %165, align 8
  %167 = sub i64 %164, %166
  %168 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 12) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %167) #18
  %169 = load i64, ptr %3, align 8
  %170 = getelementptr inbounds i8, ptr %3, i32 8
  %171 = load i32, ptr %170, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  %172 = call i64 @llvm.bswap.i64(i64 %169) #18
  store i64 %172, ptr %168, align 1
  %173 = getelementptr i32, ptr %168, i32 2
  %174 = call i32 @llvm.bswap.i32(i32 %171) #18
  store i32 %174, ptr %173, align 4
  %175 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #18
  store i32 0, ptr %175, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_encode_layoutreturn(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.xdr_buf, align 4
  %5 = alloca %struct.xdr_stream, align 4
  %6 = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #18
  %8 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 4
  %9 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call ptr @page_address(ptr noundef %10) #18
  store ptr %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 7
  store i32 4096, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false), !annotation !10
  call void @xdr_init_encode(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #18
  %13 = call ptr @xdr_reserve_space(ptr noundef nonnull %5, i32 noundef 4) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !11

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = call i32 @llvm.bswap.i32(i32 %17) #18
  store i32 %18, ptr %13, align 4
  %19 = call i32 @ff_layout_encode_ds_ioerr(ptr noundef nonnull %5, ptr noundef %7) #18
  br label %20

20:                                               ; preds = %15, %3
  %21 = call ptr @xdr_reserve_space(ptr noundef nonnull %5, i32 noundef 4) #18
  %22 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #18
  store i32 %24, ptr %21, align 4
  %25 = load i32, ptr %22, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %79, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %1, i32 0, i32 1
  br label %29

29:                                               ; preds = %73, %27
  %30 = phi i32 [ 0, %27 ], [ %76, %73 ]
  %31 = load ptr, ptr %28, align 8
  %32 = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 1, i32 %30
  %33 = call ptr @xdr_reserve_space(ptr noundef nonnull %5, i32 noundef 16) #18
  %34 = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 1, i32 %30, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35) #18
  store i64 %36, ptr %33, align 1
  %37 = getelementptr i32, ptr %33, i32 2
  %38 = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 1, i32 %30, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39) #18
  store i64 %40, ptr %37, align 1
  %41 = call ptr @xdr_reserve_space(ptr noundef nonnull %5, i32 noundef 16) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43, !prof !11

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %31, i32 0, i32 9
  %45 = call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %41, ptr noundef %44, i32 noundef 16) #18
  br label %49

46:                                               ; preds = %29
  %47 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %46
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2020, i32 noundef 9, ptr noundef null) #18
  br label %49

49:                                               ; preds = %48, %46, %43
  %50 = call ptr @xdr_reserve_space(ptr noundef nonnull %5, i32 noundef 32) #18
  %51 = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 1, i32 %30, i32 3
  %52 = load i64, ptr %51, align 8
  %53 = call i64 @llvm.bswap.i64(i64 %52) #18
  store i64 %53, ptr %50, align 1
  %54 = getelementptr i32, ptr %50, i32 2
  %55 = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 1, i32 %30, i32 4
  %56 = load i64, ptr %55, align 8
  %57 = call i64 @llvm.bswap.i64(i64 %56) #18
  store i64 %57, ptr %54, align 1
  %58 = getelementptr i32, ptr %50, i32 4
  %59 = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 1, i32 %30, i32 5
  %60 = load i64, ptr %59, align 8
  %61 = call i64 @llvm.bswap.i64(i64 %60) #18
  store i64 %61, ptr %58, align 1
  %62 = getelementptr i32, ptr %50, i32 6
  %63 = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 1, i32 %30, i32 6
  %64 = load i64, ptr %63, align 8
  %65 = call i64 @llvm.bswap.i64(i64 %64) #18
  store i64 %65, ptr %62, align 1
  %66 = call ptr @xdr_reserve_space(ptr noundef nonnull %5, i32 noundef 16) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !11

68:                                               ; preds = %49
  %69 = call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %66, ptr noundef %32, i32 noundef 16) #18
  br label %73

70:                                               ; preds = %49
  %71 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %70
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2020, i32 noundef 9, ptr noundef null) #18
  br label %73

73:                                               ; preds = %72, %70, %68
  %74 = getelementptr %struct.nfs4_flexfile_layoutreturn_args, ptr %7, i32 0, i32 1, i32 %30, i32 8, i32 1
  %75 = load ptr, ptr %74, align 4
  call fastcc void @ff_layout_encode_ff_layoutupdate(ptr noundef nonnull %5, ptr noundef %75) #18
  %76 = add nuw i32 %30, 1
  %77 = load i32, ptr %22, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %29, label %79

79:                                               ; preds = %73, %20
  %80 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #18
  %81 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 8
  %82 = load i32, ptr %81, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  store i32 %83, ptr %80, align 4
  %84 = load i32, ptr %81, align 4
  call void @xdr_write_pages(ptr noundef %0, ptr noundef %8, i32 noundef 0, i32 noundef %84) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ff_layout_free_layoutreturn(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs4_xdr_opaque_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  tail call void @ff_layout_free_ds_ioerr(ptr noundef nonnull %3) #18
  %6 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %20, %5
  %11 = phi i32 [ %21, %20 ], [ 0, %5 ]
  %12 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %6, i32 %11, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.nfs4_xdr_opaque_ops, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %12) #18
  br label %20

20:                                               ; preds = %19, %15, %10
  %21 = add nuw i32 %11, 1
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %23, label %10

23:                                               ; preds = %20, %5
  %24 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, ptr %3, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !9

30:                                               ; preds = %23
  %31 = add i32 %27, -1
  br label %34

32:                                               ; preds = %23
  %33 = ptrtoint ptr %25 to i32
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #18, !srcloc !13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #18, !srcloc !29
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  tail call void @__put_page(ptr noundef %36) #18
  br label %42

42:                                               ; preds = %41, %34
  tail call void @kfree(ptr noundef nonnull %3) #18
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ff_layout_encode_ds_ioerr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_register_layoutdriver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2158379988}
!13 = !{i64 559109, i64 2148049080, i64 2148049106, i64 2148049153, i64 2148049175, i64 2148049203, i64 2148049223}
!14 = !{i64 568556, i64 568573, i64 568597, i64 568623, i64 568641}
!15 = !{i64 2158380308}
!16 = !{i64 2158386360}
!17 = !{i64 2158390057}
!18 = !{i64 2158390377}
!19 = !{i64 2158396429}
!20 = !{i64 2148162948}
!21 = !{i64 2148065107, i64 2148065139, i64 2148065168, i64 2148065202, i64 2148065233, i64 2148065256}
!22 = !{i64 2149071789}
!23 = !{i64 2149003801}
!24 = !{i64 2148999625}
!25 = !{i64 2148999700, i64 2148999727, i64 2148999774, i64 2148999796, i64 2148999824, i64 2148999844}
!26 = !{i64 2149026804}
!27 = !{i64 2148062750, i64 2148062782, i64 2148062811, i64 2148062845, i64 2148062876, i64 2148062899}
!28 = !{i64 2148161947}
!29 = !{i64 2148064333, i64 2148064365, i64 2148064394, i64 2148064428, i64 2148064459, i64 2148064482}
!30 = !{i64 2148162150}
!31 = !{i64 2158022493}
!32 = !{i64 2158022737}
!33 = !{i64 2158042795}
!34 = !{i64 2158043041}
!35 = !{i64 2158154896}
!36 = !{i64 2158155060}
!37 = !{i64 2157760085}
!38 = !{i64 2157760257}
!39 = !{i64 454348, i64 454409}
!40 = !{i64 473048}
!41 = !{i64 457365}
!42 = !{i64 2148159114}
!43 = !{i64 2148061976, i64 2148062008, i64 2148062037, i64 2148062071, i64 2148062102, i64 2148062125}
!44 = !{i64 2148159317}
!45 = !{i64 988641, i64 988668}
!46 = !{i64 989336, i64 989363, i64 989396, i64 989417, i64 989444, i64 989470}
!47 = !{i64 545172, i64 545196, i64 545217, i64 545234, i64 545251}
!48 = !{i64 2157913203}
!49 = !{i64 2157913445}
!50 = !{i64 2157933412}
!51 = !{i64 2157933656}
!52 = !{i64 2157957970}
!53 = !{i64 2157958226}
!54 = !{i64 2158117544}
!55 = !{i64 2158117702}
!56 = !{i64 2157690433}
!57 = !{i64 2157690593}
!58 = !{i64 2157978401}
!59 = !{i64 2157978637}
!60 = !{i64 2158134206}
!61 = !{i64 2158134366}
!62 = !{i64 2157723046}
!63 = !{i64 2157723208}
!64 = !{i64 2157998331}
!65 = !{i64 2157998569}
